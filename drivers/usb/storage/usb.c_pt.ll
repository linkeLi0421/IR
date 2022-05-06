; ModuleID = '/llk/IR/drivers/usb/storage/usb.c_pt.bc'
source_filename = "../drivers/usb/storage/usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_resume\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_reset_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_reset_resume\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_reset_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_pre_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_pre_reset\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_pre_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_post_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_post_reset\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_post_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fill_inquiry_response:\09\09\09\09\09"
module asm "\09.asciz \09\22fill_inquiry_response\22\09\09\09\09\09"
module asm "__kstrtabns_fill_inquiry_response:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_adjust_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_adjust_quirks\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_adjust_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_probe1:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_probe1\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_probe1:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_probe2:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_probe2\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_probe2:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.73 }
%union.anon.73 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.us_unusual_dev = type { ptr, ptr, i8, i8, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.us_data = type { %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, [32 x i8], ptr, ptr, %struct.usb_sg_request, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, ptr, ptr, ptr, i32, i32 }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.79, i32 }
%union.anon.79 = type { ptr }

@__UNIQUE_ID_author282 = internal constant [65 x i8] c"usb_storage.author=Matthew Dharm <mdharm-usb@one-eyed-alien.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description283 = internal constant [58 x i8] c"usb_storage.description=USB Mass Storage driver for Linux\00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [49 x i8] c"usb_storage.file=drivers/usb/storage/usb-storage\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [24 x i8] c"usb_storage.license=GPL\00", section ".modinfo", align 1
@__param_str_delay_use = internal constant [22 x i8] c"usb_storage.delay_use\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@delay_use = internal global i32 1, align 4
@__param_delay_use = internal constant %struct.kernel_param { ptr @__param_str_delay_use, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.73 { ptr @delay_use } }, section "__param", align 4
@__UNIQUE_ID_delay_usetype286 = internal constant [36 x i8] c"usb_storage.parmtype=delay_use:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_delay_use287 = internal constant [70 x i8] c"usb_storage.parm=delay_use:seconds to delay before using a new device\00", section ".modinfo", align 1
@__param_str_quirks = internal constant [19 x i8] c"usb_storage.quirks\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_quirks = internal constant %struct.kparam_string { i32 128, ptr @quirks }, align 4
@__param_quirks = internal constant %struct.kernel_param { ptr @__param_str_quirks, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.73 { ptr @__param_string_quirks } }, section "__param", align 4
@__UNIQUE_ID_quirkstype288 = internal constant [35 x i8] c"usb_storage.parmtype=quirks:string\00", section ".modinfo", align 1
@__UNIQUE_ID_quirks289 = internal constant [73 x i8] c"usb_storage.parm=quirks:supplemental list of device IDs and their quirks\00", section ".modinfo", align 1
@__kstrtab_usb_stor_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_suspend to i32), ptr @__kstrtab_usb_stor_suspend, ptr @__kstrtabns_usb_stor_suspend }, section "___ksymtab_gpl+usb_stor_suspend", align 4
@__kstrtab_usb_stor_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_resume to i32), ptr @__kstrtab_usb_stor_resume, ptr @__kstrtabns_usb_stor_resume }, section "___ksymtab_gpl+usb_stor_resume", align 4
@__kstrtab_usb_stor_reset_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_reset_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_reset_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_reset_resume to i32), ptr @__kstrtab_usb_stor_reset_resume, ptr @__kstrtabns_usb_stor_reset_resume }, section "___ksymtab_gpl+usb_stor_reset_resume", align 4
@__kstrtab_usb_stor_pre_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_pre_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_pre_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_pre_reset to i32), ptr @__kstrtab_usb_stor_pre_reset, ptr @__kstrtabns_usb_stor_pre_reset }, section "___ksymtab_gpl+usb_stor_pre_reset", align 4
@__kstrtab_usb_stor_post_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_post_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_post_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_post_reset to i32), ptr @__kstrtab_usb_stor_post_reset, ptr @__kstrtabns_usb_stor_post_reset }, section "___ksymtab_gpl+usb_stor_post_reset", align 4
@__kstrtab_fill_inquiry_response = external dso_local constant [0 x i8], align 1
@__kstrtabns_fill_inquiry_response = external dso_local constant [0 x i8], align 1
@__ksymtab_fill_inquiry_response = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fill_inquiry_response to i32), ptr @__kstrtab_fill_inquiry_response, ptr @__kstrtabns_fill_inquiry_response }, section "___ksymtab_gpl+fill_inquiry_response", align 4
@quirks = internal global [128 x i8] zeroinitializer, align 1
@__kstrtab_usb_stor_adjust_quirks = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_adjust_quirks = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_adjust_quirks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_adjust_quirks to i32), ptr @__kstrtab_usb_stor_adjust_quirks, ptr @__kstrtabns_usb_stor_adjust_quirks }, section "___ksymtab_gpl+usb_stor_adjust_quirks", align 4
@.str = private unnamed_addr constant [34 x i8] c"USB Mass Storage device detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to allocate the scsi host\0A\00", align 1
@usb_stor_probe1.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&(us->dev_mutex)\00", align 1
@usb_stor_probe1.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"&us->delay_wait\00", align 1
@__kstrtab_usb_stor_probe1 = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_probe1 = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_probe1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_probe1 to i32), ptr @__kstrtab_usb_stor_probe1, ptr @__kstrtabns_usb_stor_probe1 }, section "___ksymtab_gpl+usb_stor_probe1", align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"usb-storage %s\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Unable to add the scsi host\0A\00", align 1
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_usb_stor_probe2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_probe2 = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_probe2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_probe2 to i32), ptr @__kstrtab_usb_stor_probe2, ptr @__kstrtabns_usb_stor_probe2 }, section "___ksymtab_gpl+usb_stor_probe2", align 4
@__kstrtab_usb_stor_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_disconnect to i32), ptr @__kstrtab_usb_stor_disconnect, ptr @__kstrtabns_usb_stor_disconnect }, section "___ksymtab_gpl+usb_stor_disconnect", align 4
@__initcall__kmod_usb_storage__296_1159_usb_storage_driver_init6 = internal global ptr @usb_storage_driver_init, section ".initcall6.init", align 4
@usb_storage_driver = internal global %struct.usb_driver { ptr @.str.23, ptr @storage_probe, ptr @usb_stor_disconnect, ptr null, ptr @usb_stor_suspend, ptr @usb_stor_resume, ptr @usb_stor_reset_resume, ptr @usb_stor_pre_reset, ptr @usb_stor_post_reset, ptr @usb_storage_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 10 }, align 4
@__exitcall_usb_storage_driver_exit = internal global ptr @usb_storage_driver_exit, section ".exitcall.exit", align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"device ignored\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Quirks match for vid %04x pid %04x: %lx\0A\00", align 1
@get_device_info.msgs = internal unnamed_addr constant [3 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12], align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"an unneeded SubClass entry\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"an unneeded Protocol entry\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"unneeded SubClass and Protocol entries\00", align 1
@.str.13 = private unnamed_addr constant [193 x i8] c"This device (%04x,%04x,%04x S %02x P %02x) has %s in unusual_devs.h (kernel %s)\0A   Please send a copy of this message to <linux-usb@vger.kernel.org> and <usb-storage@lists.one-eyed-alien.net>\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Control/Bulk\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Control/Bulk/Interrupt\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Bulk\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Reduced Block Commands (RBC)\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"8020i\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"QIC-157\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"8070i\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Transparent SCSI\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Uniform Floppy Interface (UFI)\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"usb-storage\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"Unable to start control thread\0A\00", align 1
@usb_stor_host_template = internal global %struct.scsi_host_template zeroinitializer, align 8
@.str.25 = private unnamed_addr constant [12 x i8] c"usb_storage\00", align 1
@usb_storage_usb_ids = external dso_local constant [0 x %struct.usb_device_id], align 4
@us_unusual_dev_list = internal constant [352 x %struct.us_unusual_dev] [%struct.us_unusual_dev { ptr @.str.31, ptr @.str.32, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.33, ptr @.str.34, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.35, ptr @.str.36, i8 5, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.35, ptr @.str.37, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.35, ptr @.str.38, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.39, ptr @.str.40, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.41, ptr @.str.42, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.33, ptr @.str.43, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.44, ptr @.str.45, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.46, ptr @.str.47, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.48, ptr @.str.47, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.49, ptr @.str.50, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.49, ptr @.str.51, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.52, ptr @.str.53, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.54, ptr @.str.55, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.54, ptr @.str.56, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.54, ptr @.str.57, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.54, ptr @.str.58, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.54, ptr @.str.59, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.54, ptr @.str.60, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.54, ptr @.str.61, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.54, ptr @.str.62, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.54, ptr @.str.63, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.54, ptr @.str.64, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.54, ptr @.str.65, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.54, ptr @.str.66, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.54, ptr @.str.67, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.68, ptr @.str.69, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.70, ptr @.str.71, i8 -1, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.72, ptr @.str.73, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.74, ptr @.str.75, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.76, ptr @.str.77, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.78, ptr @.str.79, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.80, ptr @.str.81, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.82, ptr @.str.83, i8 5, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.82, ptr @.str.84, i8 5, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.82, ptr @.str.85, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.82, ptr @.str.86, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.87, ptr @.str.88, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.89, ptr @.str.90, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.91, ptr @.str.92, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.93, ptr @.str.94, i8 -1, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.95, ptr @.str.96, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.95, ptr @.str.97, i8 6, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.98, ptr @.str.99, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.100, ptr @.str.101, i8 4, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.102, ptr @.str.103, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.102, ptr @.str.103, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.104, ptr @.str.105, i8 4, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.106, ptr @.str.107, i8 5, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.104, ptr @.str.108, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.109, ptr @.str.110, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.111, ptr @.str.112, i8 2, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.113, ptr @.str.114, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.115, ptr @.str.116, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.117, ptr @.str.118, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.113, ptr @.str.118, i8 6, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.120, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.113, ptr @.str.121, i8 2, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.113, ptr @.str.116, i8 2, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.113, ptr @.str.114, i8 6, i8 80, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.113, ptr @.str.114, i8 6, i8 80, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.115, ptr @.str.122, i8 6, i8 80, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.113, ptr @.str.123, i8 2, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.48, ptr @.str.124, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.48, ptr @.str.125, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.48, ptr @.str.126, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.127, ptr @.str.128, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.129, ptr @.str.130, i8 6, i8 80, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.131, ptr @.str.132, i8 5, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.133, ptr @.str.134, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.89, ptr @.str.90, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.89, ptr @.str.90, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.89, ptr @.str.90, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.89, ptr @.str.135, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.89, ptr @.str.135, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.136, i8 6, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.137, i8 5, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.138, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.139, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.140, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.141, i8 6, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.142, i8 4, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.143, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.144, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.145, i8 4, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.146, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.146, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.146, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.147, ptr @.str.148, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.149, ptr @.str.150, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.151, ptr @.str.152, i8 -1, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.151, ptr @.str.153, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.154, ptr @.str.155, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.100, ptr @.str.156, i8 5, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.131, ptr @.str.157, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.131, ptr @.str.158, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.159, ptr @.str.160, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.159, ptr @.str.161, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.162, ptr @.str.163, i8 6, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.164, ptr @.str.165, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.164, ptr @.str.165, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.164, ptr @.str.165, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.164, ptr @.str.165, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.164, ptr @.str.165, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.166, ptr @.str.167, i8 -1, i8 -1, ptr @option_ms_init }, %struct.us_unusual_dev { ptr @.str.168, ptr @.str.169, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.170, ptr @.str.171, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.170, ptr @.str.172, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.170, ptr @.str.173, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.174, ptr @.str.175, i8 6, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.176, ptr @.str.177, i8 4, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.178, ptr @.str.179, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.180, ptr @.str.181, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.180, ptr @.str.182, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.183, ptr @.str.182, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.183, ptr @.str.184, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.185, ptr @.str.186, i8 6, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.185, ptr @.str.187, i8 6, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.188, ptr @.str.189, i8 6, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.190, ptr @.str.191, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.192, ptr @.str.193, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.194, ptr @.str.195, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.194, ptr @.str.196, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.194, ptr @.str.197, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.31, ptr @.str.32, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.198, ptr @.str.199, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.200, ptr @.str.201, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.198, ptr @.str.202, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.203, ptr @.str.204, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.68, ptr @.str.205, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.68, ptr @.str.206, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.68, ptr @.str.69, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.207, ptr @.str.208, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.209, ptr @.str.210, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.211, ptr @.str.212, i8 5, i8 1, ptr null }, %struct.us_unusual_dev { ptr @.str.211, ptr @.str.213, i8 5, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.48, ptr @.str.214, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.215, ptr @.str.216, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.215, ptr @.str.216, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.215, ptr @.str.216, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.217, ptr @.str.218, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.219, ptr @.str.220, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.221, ptr @.str.222, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.223, ptr @.str.224, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.225, ptr @.str.226, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.225, ptr @.str.227, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.228, ptr @.str.229, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.230, ptr @.str.231, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.232, ptr @.str.233, i8 -1, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.234, ptr @.str.235, i8 4, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.232, ptr @.str.236, i8 1, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.48, ptr @.str.237, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.238, ptr @.str.239, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.240, ptr @.str.241, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.238, ptr @.str.242, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.243, ptr @.str.244, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.245, ptr @.str.246, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.247, ptr @.str.248, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.166, ptr @.str.167, i8 -1, i8 -1, ptr @option_ms_init }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.250, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.251, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.252, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.252, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.253, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.254, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.254, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.255, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.255, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.255, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.256, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.257, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.258, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.259, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.260, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.249, ptr @.str.257, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.261, ptr @.str.262, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.261, ptr @.str.263, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.261, ptr @.str.264, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.265, ptr @.str.173, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.266, ptr @.str.266, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.267, ptr @.str.268, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.269, ptr @.str.270, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.271, ptr @.str.272, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.273, ptr @.str.274, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.273, ptr @.str.275, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.276, ptr @.str.277, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.278, ptr @.str.279, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.280, ptr @.str.281, i8 -1, i8 80, ptr null }, %struct.us_unusual_dev { ptr @.str.282, ptr @.str.283, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.284, ptr @.str.75, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.282, ptr @.str.75, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.285, ptr @.str.286, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.287, ptr @.str.288, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.289, ptr @.str.290, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.291, ptr @.str.292, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.293, ptr @.str.294, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.295, ptr @.str.296, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.295, ptr @.str.297, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.295, ptr @.str.298, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.295, ptr @.str.299, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.295, ptr @.str.300, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.301, ptr @.str.302, i8 -1, i8 -1, ptr @usb_stor_ucr61s2b_init }, %struct.us_unusual_dev { ptr @.str.303, ptr @.str.161, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.303, ptr @.str.304, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.305, ptr @.str.306, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.307, ptr @.str.308, i8 -1, i8 -1, ptr @option_ms_init }, %struct.us_unusual_dev { ptr @.str.309, ptr @.str.310, i8 -1, i8 -1, ptr @sierra_ms_init }, %struct.us_unusual_dev { ptr @.str.311, ptr @.str.312, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.313, ptr @.str.167, i8 -1, i8 -1, ptr @usb_stor_huawei_e220_init }, %struct.us_unusual_dev { ptr @.str.185, ptr @.str.314, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.315, ptr @.str.316, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.317, ptr @.str.318, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.319, ptr @.str.320, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.321, ptr @.str.322, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.323, ptr @.str.324, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.323, ptr @.str.325, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.323, ptr @.str.324, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.323, ptr @.str.324, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.323, ptr @.str.324, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.323, ptr @.str.326, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.327, ptr @.str.328, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.329, ptr @.str.330, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.331, ptr @.str.332, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.333, ptr @.str.334, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.335, ptr @.str.336, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.337, ptr @.str.224, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.337, ptr @.str.224, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.337, ptr @.str.224, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.338, ptr @.str.339, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.340, ptr @.str.341, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.342, ptr @.str.343, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.344, ptr @.str.345, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.346, ptr @.str.347, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.348, ptr @.str.47, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.349, ptr @.str.350, i8 -1, i8 -1, ptr @usb_stor_euscsi_init }, %struct.us_unusual_dev { ptr @.str.351, ptr @.str.352, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.353, ptr @.str.354, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.355, ptr @.str.356, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.355, ptr @.str.357, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.358, ptr @.str.359, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.360, ptr @.str.361, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.76, ptr @.str.362, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.323, ptr @.str.324, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.363, ptr @.str.364, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.363, ptr @.str.365, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.131, ptr @.str.366, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.367, ptr @.str.161, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.368, ptr @.str.369, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.370, ptr @.str.371, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.372, ptr @.str.373, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.119, ptr @.str.374, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.159, ptr @.str.375, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.159, ptr @.str.376, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.377, ptr @.str.378, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.261, ptr @.str.379, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.317, ptr @.str.380, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.323, ptr @.str.381, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.323, ptr @.str.325, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.323, ptr @.str.325, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.382, ptr @.str.383, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.382, ptr @.str.383, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.384, ptr @.str.385, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.386, ptr @.str.387, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.323, ptr @.str.388, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.87, ptr @.str.161, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.367, ptr @.str.161, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr @.str.367, ptr @.str.161, i8 -1, i8 -1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 1, i8 1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 2, i8 1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 3, i8 1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 4, i8 1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 5, i8 1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 6, i8 1, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 1, i8 0, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 2, i8 0, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 3, i8 0, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 4, i8 0, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 5, i8 0, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 6, i8 0, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 1, i8 80, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 2, i8 80, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 3, i8 80, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 4, i8 80, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 5, i8 80, ptr null }, %struct.us_unusual_dev { ptr null, ptr null, i8 6, i8 80, ptr null }, %struct.us_unusual_dev zeroinitializer], align 4
@for_dynamic_ids = internal constant %struct.us_unusual_dev { ptr null, ptr null, i8 6, i8 80, ptr null }, align 4
@.str.26 = private unnamed_addr constant [59 x i8] c"UAS is ignored for this device, using usb-storage instead\0A\00", align 1
@.str.27 = private unnamed_addr constant [79 x i8] c"The driver for the USB controller %s does not support scatter-gather which is\0A\00", align 1
@.str.28 = private unnamed_addr constant [88 x i8] c"required by the UAS driver. Please try an other USB controller if you wish to use UAS.\0A\00", align 1
@.str.29 = private unnamed_addr constant [83 x i8] c"USB controller %s does not support streams, which are required by the UAS driver.\0A\00", align 1
@.str.30 = private unnamed_addr constant [60 x i8] c"Please try an other USB controller if you wish to use UAS.\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"ATMEL\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"SND1 Storage\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"VIA Technologies Inc.\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Mitsumi multi cardreader\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"CD-Writer+\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"Personal Media Drive\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"PhotoSmart R707\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"Adaptec\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"USBConnect 2000\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"NEC\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"NEC USB UF000x\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"USB 2.0 Card Reader\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"Buffalo\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"DUB-P40G HDD\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"Samsung Info. Systems America, Inc.\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"MP3 Player\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"Samsung\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"TrekStor\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"i.Beat 115 2.0\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"i.Beat Joy 2.0\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"GENERIC\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"MP3 PLAYER\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"Nokia\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"Nokia 6288\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Nokia 3250\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"E70\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"E60\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"N91\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"N80\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"E61\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"6131\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"Nokia 6233\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"6234\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"5300\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"305\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"502\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"Microtech\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"CameraMate\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"Neuros Audio\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"USB 2.0 HD 2.5\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"USBest Technology\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c"USB Mass Storage Device\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"USB 2.0\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"Flash Disk\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"Mitac\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"GPS\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"AMI\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"Virtual Floppy\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"Toshiba\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"External USB 3.0\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"Kyocera\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"Finecam S3x\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"Finecam S4\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"Finecam S5\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"CONTAX SL300R T*\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"Hitachi\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"DVD-CAM DZ-MV100A Camcorder\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"Tekom Technologies, Inc\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"300_CAMERA\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"NIKON\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"NIKON DSC E2000\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"IBM\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"IBM RSA2\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"Epson\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"875DC Storage\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"785EPX Storage\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"iODD\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"2531/2541\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"Fujifilm\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"FinePix 1400Zoom\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"ScanLogic\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"SL11R-IDE\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"Panasonic\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"LS-120 Camera\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"Sharp CE-CW05\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"CD-R/RW Drive\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"DMC-LCx Camera\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"LEICA\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"D-LUX Camera\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"Matshita\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"LS-120\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"Shuttle\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"eUSCSI Bridge\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"SCM Microsystems\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"eUSB CompactFlash Adapter\00", align 1
@.str.117 = private unnamed_addr constant [22 x i8] c"SCM Microsystems Inc.\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"eUSB MMC Adapter\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"Sony\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"Hifd\00", align 1
@.str.121 = private unnamed_addr constant [23 x i8] c"eUSB ATA/ATAPI Adapter\00", align 1
@.str.122 = private unnamed_addr constant [32 x i8] c"eUSB SCSI Adapter (Bus Powered)\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"CD-RW Device\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"YP-U3\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"YP-CP3\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"YP-Z3\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"Kobian Mercury\00", align 1
@.str.128 = private unnamed_addr constant [16 x i8] c"Binocam DCB-132\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"Belkin\00", align 1
@.str.130 = private unnamed_addr constant [17 x i8] c"USB SCSI Adaptor\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"Iomega\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"USB Clik! 40\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"Linux\00", align 1
@.str.134 = private unnamed_addr constant [27 x i8] c"File-backed Storage Gadget\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"400_CAMERA\00", align 1
@.str.136 = private unnamed_addr constant [39 x i8] c"DSC-S30/S70/S75/505V/F505/F707/F717/P8\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"DSC-T1/T5/H5\00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"Memorystick NW-MS7\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"USB Floppy Drive\00", align 1
@.str.140 = private unnamed_addr constant [21 x i8] c"Memorystick MSAC-US1\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"Handycam\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"Handycam HC-85\00", align 1
@.str.143 = private unnamed_addr constant [21 x i8] c"Memorystick MSC-U01N\00", align 1
@.str.144 = private unnamed_addr constant [22 x i8] c"PEG N760c Memorystick\00", align 1
@.str.145 = private unnamed_addr constant [20 x i8] c"Memorystick MSC-U03\00", align 1
@.str.146 = private unnamed_addr constant [17 x i8] c"PEG Mass Storage\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"Sony Corp.\00", align 1
@.str.148 = private unnamed_addr constant [23 x i8] c"MicroVault Flash Drive\00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"SAMSUNG\00", align 1
@.str.150 = private unnamed_addr constant [17 x i8] c"SFD-321U [FW 0C]\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"Y-E Data\00", align 1
@.str.152 = private unnamed_addr constant [14 x i8] c"Flashbuster-U\00", align 1
@.str.153 = private unnamed_addr constant [18 x i8] c"Silicon Media R/W\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"JetFlash\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"TS1GJF2A/120\00", align 1
@.str.156 = private unnamed_addr constant [25 x i8] c"Digital Camera EX-20 DSC\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"ZIP 100\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"Jaz USB Adapter\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"LaCie\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"DVD+-RW\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"External HDD\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"In-System\00", align 1
@.str.163 = private unnamed_addr constant [45 x i8] c"PyroGate External CD-ROM Enclosure (FCD-523)\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"Apple\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"iPod\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"Option N.V.\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"Mass Storage\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"Lexar\00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c"USB CF Reader\00", align 1
@.str.170 = private unnamed_addr constant [14 x i8] c"Genesys Logic\00", align 1
@.str.171 = private unnamed_addr constant [19 x i8] c"USB to IDE Optical\00", align 1
@.str.172 = private unnamed_addr constant [16 x i8] c"USB to IDE Disk\00", align 1
@.str.173 = private unnamed_addr constant [12 x i8] c"USB to SATA\00", align 1
@.str.174 = private unnamed_addr constant [8 x i8] c"Vivitar\00", align 1
@.str.175 = private unnamed_addr constant [13 x i8] c"Vivicam 35Xx\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"TEAC\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"Floppy Drive\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"SigmaTel\00", align 1
@.str.179 = private unnamed_addr constant [20 x i8] c"USBMSC Audio Player\00", align 1
@.str.180 = private unnamed_addr constant [26 x i8] c"Prolific Technology, Inc.\00", align 1
@.str.181 = private unnamed_addr constant [24 x i8] c"Prolific Storage Gadget\00", align 1
@.str.182 = private unnamed_addr constant [20 x i8] c"Mass Storage Device\00", align 1
@.str.183 = private unnamed_addr constant [25 x i8] c"Prolific Technology Inc.\00", align 1
@.str.184 = private unnamed_addr constant [26 x i8] c"ATAPI-6 Bridge Controller\00", align 1
@.str.185 = private unnamed_addr constant [8 x i8] c"Minolta\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"Dimage F300\00", align 1
@.str.187 = private unnamed_addr constant [12 x i8] c"DIMAGE E223\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"Hagiwara\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"Flashgate\00", align 1
@.str.190 = private unnamed_addr constant [24 x i8] c"Thomson Multimedia Inc.\00", align 1
@.str.191 = private unnamed_addr constant [22 x i8] c"RCA RD1080 MP3 Player\00", align 1
@.str.192 = private unnamed_addr constant [17 x i8] c"Newer Technology\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"uSCSI\00", align 1
@.str.194 = private unnamed_addr constant [9 x i8] c"RockChip\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"MP3\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"MTP\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"ROCK MP3\00", align 1
@.str.198 = private unnamed_addr constant [8 x i8] c"Sandisk\00", align 1
@.str.199 = private unnamed_addr constant [19 x i8] c"ImageMate SDDR-05a\00", align 1
@.str.200 = private unnamed_addr constant [20 x i8] c"SanDisk Corporation\00", align 1
@.str.201 = private unnamed_addr constant [27 x i8] c"ImageMate CompactFlash USB\00", align 1
@.str.202 = private unnamed_addr constant [18 x i8] c"ImageMate SDDR-12\00", align 1
@.str.203 = private unnamed_addr constant [21 x i8] c"Freecom Technologies\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"FHD-Classic\00", align 1
@.str.205 = private unnamed_addr constant [14 x i8] c"USB-SCSI-DB25\00", align 1
@.str.206 = private unnamed_addr constant [14 x i8] c"USB-SCSI-HD50\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"Datafab\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"KECF-USB\00", align 1
@.str.209 = private unnamed_addr constant [20 x i8] c"Simple Tech/Datafab\00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"CF+SM Reader\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"Casio\00", align 1
@.str.212 = private unnamed_addr constant [17 x i8] c"QV DigitalCamera\00", align 1
@.str.213 = private unnamed_addr constant [20 x i8] c"EX-N1 DigitalCamera\00", align 1
@.str.214 = private unnamed_addr constant [12 x i8] c"Digimax 410\00", align 1
@.str.215 = private unnamed_addr constant [7 x i8] c"Argosy\00", align 1
@.str.216 = private unnamed_addr constant [8 x i8] c"Storage\00", align 1
@.str.217 = private unnamed_addr constant [19 x i8] c"Castlewood Systems\00", align 1
@.str.218 = private unnamed_addr constant [18 x i8] c"USB to SCSI cable\00", align 1
@.str.219 = private unnamed_addr constant [10 x i8] c"Grandtech\00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"DC2MEGA\00", align 1
@.str.221 = private unnamed_addr constant [11 x i8] c"MagicPixel\00", align 1
@.str.222 = private unnamed_addr constant [10 x i8] c"FW_Omega2\00", align 1
@.str.223 = private unnamed_addr constant [11 x i8] c"PanDigital\00", align 1
@.str.224 = private unnamed_addr constant [12 x i8] c"Photo Frame\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"Xircom\00", align 1
@.str.226 = private unnamed_addr constant [33 x i8] c"PortGear USB-SCSI (Mac USB Dock)\00", align 1
@.str.227 = private unnamed_addr constant [31 x i8] c"PortGear USB to SCSI Converter\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"CITIZEN\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"X1DE-USB\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"AIPTEK\00", align 1
@.str.231 = private unnamed_addr constant [31 x i8] c"Aiptek USB Keychain MP3 Player\00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c"Trumpion\00", align 1
@.str.233 = private unnamed_addr constant [33 x i8] c"t33520 USB Flash Card Controller\00", align 1
@.str.234 = private unnamed_addr constant [32 x i8] c"Trumpion Microelectronics, Inc.\00", align 1
@.str.235 = private unnamed_addr constant [33 x i8] c"33520 USB Digital Voice Recorder\00", align 1
@.str.236 = private unnamed_addr constant [11 x i8] c"MP3 player\00", align 1
@.str.237 = private unnamed_addr constant [16 x i8] c"Flash Drive FIT\00", align 1
@.str.238 = private unnamed_addr constant [6 x i8] c"Feiya\00", align 1
@.str.239 = private unnamed_addr constant [19 x i8] c"5-in-1 Card Reader\00", align 1
@.str.240 = private unnamed_addr constant [4 x i8] c"SMI\00", align 1
@.str.241 = private unnamed_addr constant [38 x i8] c"SM3350 UFS-to-USB-Mass-Storage bridge\00", align 1
@.str.242 = private unnamed_addr constant [20 x i8] c"SD/SDHC Card Reader\00", align 1
@.str.243 = private unnamed_addr constant [7 x i8] c"Pentax\00", align 1
@.str.244 = private unnamed_addr constant [14 x i8] c"Optio 2/3/400\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"ZyXEL\00", align 1
@.str.246 = private unnamed_addr constant [24 x i8] c"G-220F USB-WLAN Install\00", align 1
@.str.247 = private unnamed_addr constant [8 x i8] c"SiteCom\00", align 1
@.str.248 = private unnamed_addr constant [24 x i8] c"WL-117 USB-WLAN Install\00", align 1
@.str.249 = private unnamed_addr constant [7 x i8] c"Option\00", align 1
@.str.250 = private unnamed_addr constant [16 x i8] c"GI 0401 SD-Card\00", align 1
@.str.251 = private unnamed_addr constant [16 x i8] c"GI 0431 SD-Card\00", align 1
@.str.252 = private unnamed_addr constant [16 x i8] c"GI 0451 SD-Card\00", align 1
@.str.253 = private unnamed_addr constant [16 x i8] c"GI 0452 SD-Card\00", align 1
@.str.254 = private unnamed_addr constant [16 x i8] c"GI 0461 SD-Card\00", align 1
@.str.255 = private unnamed_addr constant [16 x i8] c"GI 033x SD-Card\00", align 1
@.str.256 = private unnamed_addr constant [16 x i8] c"GI 070x SD-Card\00", align 1
@.str.257 = private unnamed_addr constant [16 x i8] c"GI 1505 SD-Card\00", align 1
@.str.258 = private unnamed_addr constant [16 x i8] c"GI 1509 SD-Card\00", align 1
@.str.259 = private unnamed_addr constant [16 x i8] c"GI 1515 SD-Card\00", align 1
@.str.260 = private unnamed_addr constant [16 x i8] c"GI 1215 SD-Card\00", align 1
@.str.261 = private unnamed_addr constant [8 x i8] c"Seagate\00", align 1
@.str.262 = private unnamed_addr constant [13 x i8] c"Portable HDD\00", align 1
@.str.263 = private unnamed_addr constant [14 x i8] c"FreeAgent Pro\00", align 1
@.str.264 = private unnamed_addr constant [9 x i8] c"External\00", align 1
@.str.265 = private unnamed_addr constant [7 x i8] c"Maxtor\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.267 = private unnamed_addr constant [7 x i8] c"Medion\00", align 1
@.str.268 = private unnamed_addr constant [8 x i8] c"MD 7425\00", align 1
@.str.269 = private unnamed_addr constant [9 x i8] c"Jenoptik\00", align 1
@.str.270 = private unnamed_addr constant [11 x i8] c"JD 5200 z3\00", align 1
@.str.271 = private unnamed_addr constant [28 x i8] c"Macpower Technology Co.LTD.\00", align 1
@.str.272 = private unnamed_addr constant [20 x i8] c"USB 2.0 3.5\22 DEVICE\00", align 1
@.str.273 = private unnamed_addr constant [6 x i8] c"Netac\00", align 1
@.str.274 = private unnamed_addr constant [12 x i8] c"USB-CF-Card\00", align 1
@.str.275 = private unnamed_addr constant [15 x i8] c"USB Flash Disk\00", align 1
@.str.276 = private unnamed_addr constant [8 x i8] c"WINWARD\00", align 1
@.str.277 = private unnamed_addr constant [11 x i8] c"Music Disk\00", align 1
@.str.278 = private unnamed_addr constant [8 x i8] c"PNP_MP3\00", align 1
@.str.279 = private unnamed_addr constant [15 x i8] c"PNP_MP3 PLAYER\00", align 1
@.str.280 = private unnamed_addr constant [14 x i8] c"Cowon Systems\00", align 1
@.str.281 = private unnamed_addr constant [10 x i8] c"iAUDIO M5\00", align 1
@.str.282 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.283 = private unnamed_addr constant [17 x i8] c"Solid state disk\00", align 1
@.str.284 = private unnamed_addr constant [16 x i8] c"Ours Technology\00", align 1
@.str.285 = private unnamed_addr constant [8 x i8] c"Typhoon\00", align 1
@.str.286 = private unnamed_addr constant [11 x i8] c"My DJ 1820\00", align 1
@.str.287 = private unnamed_addr constant [16 x i8] c"Oracom Co., Ltd\00", align 1
@.str.288 = private unnamed_addr constant [9 x i8] c"ORC-200M\00", align 1
@.str.289 = private unnamed_addr constant [6 x i8] c"C-MEX\00", align 1
@.str.290 = private unnamed_addr constant [6 x i8] c"A-VOX\00", align 1
@.str.291 = private unnamed_addr constant [6 x i8] c"VTech\00", align 1
@.str.292 = private unnamed_addr constant [9 x i8] c"Kidizoom\00", align 1
@.str.293 = private unnamed_addr constant [19 x i8] c"Research In Motion\00", align 1
@.str.294 = private unnamed_addr constant [21 x i8] c"BlackBerry Bold 9000\00", align 1
@.str.295 = private unnamed_addr constant [14 x i8] c"Sony Ericsson\00", align 1
@.str.296 = private unnamed_addr constant [18 x i8] c"V800-Vodafone 802\00", align 1
@.str.297 = private unnamed_addr constant [6 x i8] c"MD400\00", align 1
@.str.298 = private unnamed_addr constant [6 x i8] c"P990i\00", align 1
@.str.299 = private unnamed_addr constant [6 x i8] c"M600i\00", align 1
@.str.300 = private unnamed_addr constant [4 x i8] c"P1i\00", align 1
@.str.301 = private unnamed_addr constant [9 x i8] c"Desknote\00", align 1
@.str.302 = private unnamed_addr constant [10 x i8] c"UCR-61S2B\00", align 1
@.str.303 = private unnamed_addr constant [16 x i8] c"Western Digital\00", align 1
@.str.304 = private unnamed_addr constant [16 x i8] c"My Passport HDD\00", align 1
@.str.305 = private unnamed_addr constant [22 x i8] c"Actions Semiconductor\00", align 1
@.str.306 = private unnamed_addr constant [11 x i8] c"Mtp device\00", align 1
@.str.307 = private unnamed_addr constant [7 x i8] c"D-Link\00", align 1
@.str.308 = private unnamed_addr constant [17 x i8] c"USB Mass Storage\00", align 1
@.str.309 = private unnamed_addr constant [16 x i8] c"Sierra Wireless\00", align 1
@.str.310 = private unnamed_addr constant [16 x i8] c"USB MMC Storage\00", align 1
@.str.311 = private unnamed_addr constant [13 x i8] c"Digitech HMG\00", align 1
@.str.312 = private unnamed_addr constant [22 x i8] c"DigiTech Mass Storage\00", align 1
@.str.313 = private unnamed_addr constant [14 x i8] c"HUAWEI MOBILE\00", align 1
@.str.314 = private unnamed_addr constant [11 x i8] c"Dimage Z10\00", align 1
@.str.315 = private unnamed_addr constant [9 x i8] c"SWISSBIT\00", align 1
@.str.316 = private unnamed_addr constant [13 x i8] c"Black Silver\00", align 1
@.str.317 = private unnamed_addr constant [19 x i8] c"Initio Corporation\00", align 1
@.str.318 = private unnamed_addr constant [10 x i8] c"INIC-3619\00", align 1
@.str.319 = private unnamed_addr constant [9 x i8] c"Kingston\00", align 1
@.str.320 = private unnamed_addr constant [10 x i8] c"DT 101 G2\00", align 1
@.str.321 = private unnamed_addr constant [10 x i8] c"Super Top\00", align 1
@.str.322 = private unnamed_addr constant [11 x i8] c"IDE DEVICE\00", align 1
@.str.323 = private unnamed_addr constant [8 x i8] c"JMicron\00", align 1
@.str.324 = private unnamed_addr constant [24 x i8] c"USB to ATA/ATAPI Bridge\00", align 1
@.str.325 = private unnamed_addr constant [7 x i8] c"JMS567\00", align 1
@.str.326 = private unnamed_addr constant [7 x i8] c"JMS56x\00", align 1
@.str.327 = private unnamed_addr constant [21 x i8] c"Entrega Technologies\00", align 1
@.str.328 = private unnamed_addr constant [22 x i8] c"USB to SCSI Converter\00", align 1
@.str.329 = private unnamed_addr constant [5 x i8] c"Teac\00", align 1
@.str.330 = private unnamed_addr constant [11 x i8] c"HD-35PUK-B\00", align 1
@.str.331 = private unnamed_addr constant [8 x i8] c"ASMedia\00", align 1
@.str.332 = private unnamed_addr constant [7 x i8] c"AS2105\00", align 1
@.str.333 = private unnamed_addr constant [7 x i8] c"Yarvik\00", align 1
@.str.334 = private unnamed_addr constant [7 x i8] c"PMP400\00", align 1
@.str.335 = private unnamed_addr constant [21 x i8] c"Ariston Technologies\00", align 1
@.str.336 = private unnamed_addr constant [29 x i8] c"iConnect USB to SCSI adapter\00", align 1
@.str.337 = private unnamed_addr constant [9 x i8] c"BUILDWIN\00", align 1
@.str.338 = private unnamed_addr constant [7 x i8] c"Amazon\00", align 1
@.str.339 = private unnamed_addr constant [7 x i8] c"Kindle\00", align 1
@.str.340 = private unnamed_addr constant [17 x i8] c"ZTE,Incorporated\00", align 1
@.str.341 = private unnamed_addr constant [27 x i8] c"ZTE WCDMA Technologies MSM\00", align 1
@.str.342 = private unnamed_addr constant [8 x i8] c"Corsair\00", align 1
@.str.343 = private unnamed_addr constant [11 x i8] c"Padlock v2\00", align 1
@.str.344 = private unnamed_addr constant [29 x i8] c"Grain-media Technology Corp.\00", align 1
@.str.345 = private unnamed_addr constant [23 x i8] c"USB3.0 Device GM12U320\00", align 1
@.str.346 = private unnamed_addr constant [23 x i8] c"TrekStor GmbH & Co. KG\00", align 1
@.str.347 = private unnamed_addr constant [21 x i8] c"DataStation maxi g.u\00", align 1
@.str.348 = private unnamed_addr constant [17 x i8] c"Coby Electronics\00", align 1
@.str.349 = private unnamed_addr constant [20 x i8] c"Double-H Technology\00", align 1
@.str.350 = private unnamed_addr constant [30 x i8] c"USB to SCSI Intelligent Cable\00", align 1
@.str.351 = private unnamed_addr constant [15 x i8] c"VIA Labs, Inc.\00", align 1
@.str.352 = private unnamed_addr constant [18 x i8] c"VL817 SATA Bridge\00", align 1
@.str.353 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@.str.354 = private unnamed_addr constant [3 x i8] c"2A\00", align 1
@.str.355 = private unnamed_addr constant [9 x i8] c"Motorola\00", align 1
@.str.356 = private unnamed_addr constant [9 x i8] c"RAZR V3x\00", align 1
@.str.357 = private unnamed_addr constant [6 x i8] c"MSnc.\00", align 1
@.str.358 = private unnamed_addr constant [5 x i8] c"MPIO\00", align 1
@.str.359 = private unnamed_addr constant [6 x i8] c"HS200\00", align 1
@.str.360 = private unnamed_addr constant [4 x i8] c"DJI\00", align 1
@.str.361 = private unnamed_addr constant [8 x i8] c"CineSSD\00", align 1
@.str.362 = private unnamed_addr constant [24 x i8] c"Mio DigiWalker USB Sync\00", align 1
@.str.363 = private unnamed_addr constant [7 x i8] c"iRiver\00", align 1
@.str.364 = private unnamed_addr constant [8 x i8] c"MP3 T10\00", align 1
@.str.365 = private unnamed_addr constant [4 x i8] c"P7K\00", align 1
@.str.366 = private unnamed_addr constant [15 x i8] c"Micro Mini 1GB\00", align 1
@.str.367 = private unnamed_addr constant [11 x i8] c"SimpleTech\00", align 1
@.str.368 = private unnamed_addr constant [20 x i8] c"Keil Software, Inc.\00", align 1
@.str.369 = private unnamed_addr constant [16 x i8] c"V2M MotherBoard\00", align 1
@.str.370 = private unnamed_addr constant [9 x i8] c"DataStor\00", align 1
@.str.371 = private unnamed_addr constant [15 x i8] c"USB4500 FW1.04\00", align 1
@.str.372 = private unnamed_addr constant [4 x i8] c"TGE\00", align 1
@.str.373 = private unnamed_addr constant [25 x i8] c"Digital MP3 Audio Player\00", align 1
@.str.374 = private unnamed_addr constant [8 x i8] c"PSZ-HA*\00", align 1
@.str.375 = private unnamed_addr constant [17 x i8] c"2Big Quadra USB3\00", align 1
@.str.376 = private unnamed_addr constant [15 x i8] c"Rugged USB3-FW\00", align 1
@.str.377 = private unnamed_addr constant [9 x i8] c"Apricorn\00", align 1
@.str.378 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.379 = private unnamed_addr constant [15 x i8] c"Expansion Desk\00", align 1
@.str.380 = private unnamed_addr constant [10 x i8] c"INIC-3069\00", align 1
@.str.381 = private unnamed_addr constant [7 x i8] c"JMS539\00", align 1
@.str.382 = private unnamed_addr constant [4 x i8] c"PNY\00", align 1
@.str.383 = private unnamed_addr constant [14 x i8] c"Pro Elite SSD\00", align 1
@.str.384 = private unnamed_addr constant [4 x i8] c"VIA\00", align 1
@.str.385 = private unnamed_addr constant [6 x i8] c"VL711\00", align 1
@.str.386 = private unnamed_addr constant [9 x i8] c"Norelsys\00", align 1
@.str.387 = private unnamed_addr constant [8 x i8] c"NS1068X\00", align 1
@.str.388 = private unnamed_addr constant [7 x i8] c"JMS566\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_delay_use287, ptr @__UNIQUE_ID_delay_usetype286, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__UNIQUE_ID_quirks289, ptr @__UNIQUE_ID_quirkstype288, ptr @__exitcall_usb_storage_driver_exit, ptr @__initcall__kmod_usb_storage__296_1159_usb_storage_driver_init6, ptr @__ksymtab_fill_inquiry_response, ptr @__ksymtab_usb_stor_adjust_quirks, ptr @__ksymtab_usb_stor_disconnect, ptr @__ksymtab_usb_stor_post_reset, ptr @__ksymtab_usb_stor_pre_reset, ptr @__ksymtab_usb_stor_probe1, ptr @__ksymtab_usb_stor_probe2, ptr @__ksymtab_usb_stor_reset_resume, ptr @__ksymtab_usb_stor_resume, ptr @__ksymtab_usb_stor_suspend, ptr @__param_delay_use, ptr @__param_quirks, ptr @usb_storage_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #0 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.us_data, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %4, i32 noundef 0) #12
  br label %9

9:                                                ; preds = %8, %2
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 37
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %3, i32 noundef 1) #12
  br label %8

8:                                                ; preds = %7, %1
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_reset_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @usb_stor_report_bus_reset(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_report_bus_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_pre_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_post_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @usb_stor_report_bus_reset(ptr noundef %3) #12
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fill_inquiry_response(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 36
  br i1 %4, label %45, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %1, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(28) %6, i8 32, i32 28, i1 false)
  %7 = load i8, ptr %1, align 1
  %8 = and i8 %7, 32
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 16, i32 9
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @strlen(ptr noundef %17)
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 8)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %6, ptr align 1 %17, i32 %19, i1 false)
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr inbounds %struct.us_unusual_dev, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @strlen(ptr noundef %22)
  %24 = getelementptr i8, ptr %1, i32 16
  %25 = tail call i32 @llvm.smin.i32(i32 %23, i32 16)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %24, ptr align 1 %22, i32 %25, i1 false)
  %26 = lshr i16 %14, 12
  %27 = trunc i16 %26 to i8
  %28 = or i8 %27, 48
  %29 = getelementptr i8, ptr %1, i32 32
  store i8 %28, ptr %29, align 1
  %30 = lshr i16 %14, 8
  %31 = trunc i16 %30 to i8
  %32 = and i8 %31, 15
  %33 = or i8 %32, 48
  %34 = getelementptr i8, ptr %1, i32 33
  store i8 %33, ptr %34, align 1
  %35 = trunc i16 %14 to i8
  %36 = lshr i8 %35, 4
  %37 = or i8 %36, 48
  %38 = getelementptr i8, ptr %1, i32 34
  store i8 %37, ptr %38, align 1
  %39 = and i8 %35, 15
  %40 = or i8 %39, 48
  %41 = getelementptr i8, ptr %1, i32 35
  store i8 %40, ptr %41, align 1
  br label %42

42:                                               ; preds = %10, %5
  %43 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 22
  %44 = load ptr, ptr %43, align 4
  tail call void @usb_stor_set_xfer_buf(ptr noundef %1, i32 noundef %2, ptr noundef %44) #12
  br label %45

45:                                               ; preds = %42, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_set_xfer_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_stor_adjust_quirks(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 7
  %5 = load i16, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 8
  %7 = load i16, ptr %6, align 2
  store ptr @quirks, ptr %3, align 4
  %8 = load i8, ptr @quirks, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %99, label %10

10:                                               ; preds = %2
  %11 = zext i16 %5 to i32
  %12 = zext i16 %7 to i32
  br label %13

13:                                               ; preds = %39, %10
  %14 = phi ptr [ @quirks, %10 ], [ %36, %39 ]
  %15 = call i32 @simple_strtoul(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 16) #12
  %16 = icmp eq i32 %15, %11
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 4
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 58
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %18, i32 1
  %23 = call i32 @simple_strtoul(ptr noundef %22, ptr noundef nonnull %3, i32 noundef 16) #12
  %24 = icmp eq i32 %23, %12
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 4
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 58
  br i1 %28, label %42, label %29

29:                                               ; preds = %25, %21, %17, %13
  %30 = load ptr, ptr %3, align 4
  br label %31

31:                                               ; preds = %35, %29
  %32 = phi ptr [ %36, %35 ], [ %30, %29 ]
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %99, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %32, i32 1
  store ptr %36, ptr %3, align 4
  %37 = load i8, ptr %32, align 1
  %38 = icmp eq i8 %37, 44
  br i1 %38, label %39, label %31

39:                                               ; preds = %35
  %40 = load i8, ptr %36, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %99, label %13

42:                                               ; preds = %49, %25
  %43 = phi ptr [ %45, %49 ], [ %26, %25 ]
  %44 = phi i32 [ %50, %49 ], [ 0, %25 ]
  %45 = getelementptr i8, ptr %43, i32 1
  store ptr %45, ptr %3, align 4
  %46 = load i8, ptr %45, align 1
  switch i8 %46, label %47 [
    i8 0, label %95
    i8 44, label %95
  ]

47:                                               ; preds = %42
  %48 = or i8 %46, 32
  switch i8 %48, label %49 [
    i8 97, label %51
    i8 98, label %53
    i8 99, label %55
    i8 100, label %57
    i8 101, label %59
    i8 102, label %61
    i8 103, label %63
    i8 104, label %65
    i8 105, label %67
    i8 106, label %69
    i8 107, label %71
    i8 108, label %73
    i8 109, label %75
    i8 110, label %77
    i8 111, label %79
    i8 112, label %81
    i8 114, label %83
    i8 115, label %85
    i8 116, label %87
    i8 117, label %89
    i8 119, label %91
    i8 121, label %93
  ]

49:                                               ; preds = %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %47
  %50 = phi i32 [ %44, %47 ], [ %94, %93 ], [ %92, %91 ], [ %90, %89 ], [ %88, %87 ], [ %86, %85 ], [ %84, %83 ], [ %82, %81 ], [ %80, %79 ], [ %78, %77 ], [ %76, %75 ], [ %74, %73 ], [ %72, %71 ], [ %70, %69 ], [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], [ %56, %55 ], [ %54, %53 ], [ %52, %51 ]
  br label %42

51:                                               ; preds = %47
  %52 = or i32 %44, 32768
  br label %49

53:                                               ; preds = %47
  %54 = or i32 %44, 131072
  br label %49

55:                                               ; preds = %47
  %56 = or i32 %44, 16
  br label %49

57:                                               ; preds = %47
  %58 = or i32 %44, 262144
  br label %49

59:                                               ; preds = %47
  %60 = or i32 %44, 524288
  br label %49

61:                                               ; preds = %47
  %62 = or i32 %44, 67108864
  br label %49

63:                                               ; preds = %47
  %64 = or i32 %44, 134217728
  br label %49

65:                                               ; preds = %47
  %66 = or i32 %44, 4096
  br label %49

67:                                               ; preds = %47
  %68 = or i32 %44, 2048
  br label %49

69:                                               ; preds = %47
  %70 = or i32 %44, 268435456
  br label %49

71:                                               ; preds = %47
  %72 = or i32 %44, 1073741824
  br label %49

73:                                               ; preds = %47
  %74 = or i32 %44, 128
  br label %49

75:                                               ; preds = %47
  %76 = or i32 %44, 1024
  br label %49

77:                                               ; preds = %47
  %78 = or i32 %44, 1048576
  br label %49

79:                                               ; preds = %47
  %80 = or i32 %44, 65536
  br label %49

81:                                               ; preds = %47
  %82 = or i32 %44, 2097152
  br label %49

83:                                               ; preds = %47
  %84 = or i32 %44, 32
  br label %49

85:                                               ; preds = %47
  %86 = or i32 %44, 1
  br label %49

87:                                               ; preds = %47
  %88 = or i32 %44, 33554432
  br label %49

89:                                               ; preds = %47
  %90 = or i32 %44, 8388608
  br label %49

91:                                               ; preds = %47
  %92 = or i32 %44, 512
  br label %49

93:                                               ; preds = %47
  %94 = or i32 %44, 536870912
  br label %49

95:                                               ; preds = %42, %42
  %96 = load i32, ptr %1, align 4
  %97 = and i32 %96, -1052745394
  %98 = or i32 %97, %44
  store i32 %98, ptr %1, align 4
  br label %99

99:                                               ; preds = %95, %39, %31, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_probe1(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str) #13
  %7 = tail call ptr @scsi_host_alloc(ptr noundef %4, i32 noundef 308) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.1) #13
  br label %200

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 24
  store i16 16, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -64
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.usb_bus, ptr %15, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = trunc i32 %17 to i16
  %20 = select i1 %18, i16 128, i16 %19
  %21 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 28
  store i16 %20, ptr %21, align 2
  %22 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 53
  store ptr %22, ptr %0, align 4
  tail call void @__mutex_init(ptr noundef %22, ptr noundef nonnull @.str.2, ptr noundef nonnull @usb_stor_probe1.__key) #12
  %23 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 13, i32 14
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 13, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %24, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #12
  %25 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 16
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 17
  tail call void @__init_swait_queue_head(ptr noundef %26, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #12
  %27 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef nonnull @usb_stor_probe1.__key.3) #12
  %28 = getelementptr inbounds %struct.us_data, ptr %22, i32 0, i32 34
  store i32 -32, ptr %28, align 4
  %29 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 23
  store volatile ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 24
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 25
  store ptr @usb_stor_scan_dwork, ptr %31, align 4
  %32 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 26
  tail call void @init_timer_key(ptr noundef %32, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #12
  %33 = load ptr, ptr %12, align 4
  %34 = getelementptr i8, ptr %33, i32 -128
  %35 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 2, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 3
  store ptr %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %38, i32 0, i32 2
  %40 = load i8, ptr %39, align 2
  %41 = getelementptr inbounds %struct.us_data, ptr %22, i32 0, i32 17
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 8
  store ptr %22, ptr %42, align 8
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3264, i32 noundef 8) #14
  %45 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 13, i32 2
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  br i1 %46, label %198, label %47

47:                                               ; preds = %10
  %48 = load ptr, ptr %35, align 4
  %49 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 13, i32 13, i32 3
  %50 = tail call ptr @usb_alloc_coherent(ptr noundef %48, i32 noundef 64, i32 noundef 3264, ptr noundef %49) #12
  %51 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 13, i32 13, i32 2
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %198, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %35, align 4
  %55 = load ptr, ptr %36, align 4
  %56 = getelementptr inbounds %struct.usb_interface, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.usb_interface, ptr %55, i32 0, i32 7
  %59 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 4
  store ptr %3, ptr %59, align 4
  %60 = getelementptr inbounds %struct.us_unusual_dev, ptr %3, i32 0, i32 2
  %61 = load i8, ptr %60, align 4
  %62 = icmp eq i8 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %57, i32 0, i32 6
  %65 = load i8, ptr %64, align 1
  br label %66

66:                                               ; preds = %63, %53
  %67 = phi i8 [ %65, %63 ], [ %61, %53 ]
  %68 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 9
  store i8 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.us_unusual_dev, ptr %3, i32 0, i32 3
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %57, i32 0, i32 7
  %74 = load i8, ptr %73, align 1
  br label %75

75:                                               ; preds = %72, %66
  %76 = phi i8 [ %74, %72 ], [ %70, %66 ]
  %77 = getelementptr inbounds %struct.us_data, ptr %22, i32 0, i32 15
  store i8 %76, ptr %77, align 1
  %78 = getelementptr inbounds %struct.usb_device_id, ptr %2, i32 0, i32 12
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 5
  store i32 %79, ptr %80, align 4
  tail call void @usb_stor_adjust_quirks(ptr noundef %54, ptr noundef %80) #12
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 2048
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %158

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = and i32 %81, -257
  store i32 %89, ptr %80, align 4
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi i32 [ %89, %88 ], [ %81, %84 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 16, i32 7
  %95 = load i16, ptr %94, align 8
  %96 = zext i16 %95 to i32
  %97 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 16, i32 8
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.9, i32 noundef %96, i32 noundef %99, i32 noundef %91) #13
  br label %100

100:                                              ; preds = %93, %90
  %101 = getelementptr inbounds %struct.usb_device_id, ptr %2, i32 0, i32 1
  %102 = load i16, ptr %101, align 2
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.usb_device_id, ptr %2, i32 0, i32 2
  %106 = load i16, ptr %105, align 4
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %159, label %108

108:                                              ; preds = %104, %100
  %109 = load i8, ptr %60, align 4
  %110 = icmp eq i8 %109, -1
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = load i8, ptr %68, align 4
  %113 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %57, i32 0, i32 6
  %114 = load i8, ptr %113, align 1
  %115 = icmp ne i8 %112, %114
  %116 = sext i1 %115 to i32
  br label %117

117:                                              ; preds = %111, %108
  %118 = phi i32 [ -1, %108 ], [ %116, %111 ]
  %119 = load i8, ptr %69, align 1
  %120 = icmp eq i8 %119, -1
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = load i8, ptr %77, align 1
  %123 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %57, i32 0, i32 7
  %124 = load i8, ptr %123, align 1
  %125 = icmp eq i8 %122, %124
  %126 = add nsw i32 %118, 2
  br i1 %125, label %129, label %127

127:                                              ; preds = %121, %117
  %128 = icmp sgt i32 %118, -1
  br i1 %128, label %129, label %159

129:                                              ; preds = %127, %121
  %130 = phi i32 [ 0, %127 ], [ %126, %121 ]
  %131 = load i32, ptr %80, align 4
  %132 = and i32 %131, 2
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %159

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 16, i32 7
  %136 = load i16, ptr %135, align 1
  %137 = zext i16 %136 to i32
  %138 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 16, i32 8
  %139 = load i16, ptr %138, align 1
  %140 = zext i16 %139 to i32
  %141 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 16, i32 9
  %142 = load i16, ptr %141, align 1
  %143 = zext i16 %142 to i32
  %144 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %57, i32 0, i32 6
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %57, i32 0, i32 7
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = getelementptr [3 x ptr], ptr @get_device_info.msgs, i32 0, i32 %130
  %151 = load ptr, ptr %150, align 4
  %152 = tail call ptr @llvm.thread.pointer() #12
  %153 = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 92
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.nsproxy, ptr %154, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.new_utsname, ptr %156, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %58, ptr noundef nonnull @.str.13, i32 noundef %137, i32 noundef %140, i32 noundef %143, i32 noundef %146, i32 noundef %149, ptr noundef %151, ptr noundef %157) #13
  br label %159

158:                                              ; preds = %75
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.8) #13
  br label %198

159:                                              ; preds = %134, %129, %127, %104
  %160 = load i8, ptr %77, align 1
  switch i8 %160, label %175 [
    i8 1, label %161
    i8 0, label %166
    i8 80, label %171
  ]

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 7
  store ptr @.str.14, ptr %162, align 4
  %163 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 10, i32 1
  store ptr @usb_stor_CB_transport, ptr %163, align 4
  %164 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 10, i32 1, i32 1
  store ptr @usb_stor_CB_reset, ptr %164, align 4
  %165 = getelementptr inbounds %struct.us_data, ptr %22, i32 0, i32 16
  store i8 7, ptr %165, align 2
  br label %175

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 7
  store ptr @.str.15, ptr %167, align 4
  %168 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 10, i32 1
  store ptr @usb_stor_CB_transport, ptr %168, align 4
  %169 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 10, i32 1, i32 1
  store ptr @usb_stor_CB_reset, ptr %169, align 4
  %170 = getelementptr inbounds %struct.us_data, ptr %22, i32 0, i32 16
  store i8 7, ptr %170, align 2
  br label %175

171:                                              ; preds = %159
  %172 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 7
  store ptr @.str.16, ptr %172, align 4
  %173 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 10, i32 1
  store ptr @usb_stor_Bulk_transport, ptr %173, align 4
  %174 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 10, i32 1, i32 1
  store ptr @usb_stor_Bulk_reset, ptr %174, align 4
  br label %175

175:                                              ; preds = %171, %166, %161, %159
  %176 = load i8, ptr %68, align 4
  switch i8 %176, label %200 [
    i8 1, label %177
    i8 2, label %180
    i8 3, label %184
    i8 5, label %188
    i8 6, label %192
    i8 4, label %195
  ]

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 7, i32 1
  store ptr @.str.17, ptr %178, align 4
  %179 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 11
  store ptr @usb_stor_transparent_scsi_command, ptr %179, align 4
  br label %200

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 7, i32 1
  store ptr @.str.18, ptr %181, align 4
  %182 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 11
  store ptr @usb_stor_pad12_command, ptr %182, align 4
  %183 = getelementptr inbounds %struct.us_data, ptr %22, i32 0, i32 16
  store i8 0, ptr %183, align 2
  br label %200

184:                                              ; preds = %175
  %185 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 7, i32 1
  store ptr @.str.19, ptr %185, align 4
  %186 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 11
  store ptr @usb_stor_pad12_command, ptr %186, align 4
  %187 = getelementptr inbounds %struct.us_data, ptr %22, i32 0, i32 16
  store i8 0, ptr %187, align 2
  br label %200

188:                                              ; preds = %175
  %189 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 7, i32 1
  store ptr @.str.20, ptr %189, align 4
  %190 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 11
  store ptr @usb_stor_pad12_command, ptr %190, align 4
  %191 = getelementptr inbounds %struct.us_data, ptr %22, i32 0, i32 16
  store i8 0, ptr %191, align 2
  br label %200

192:                                              ; preds = %175
  %193 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 7, i32 1
  store ptr @.str.21, ptr %193, align 4
  %194 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 11
  store ptr @usb_stor_transparent_scsi_command, ptr %194, align 4
  br label %200

195:                                              ; preds = %175
  %196 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 7, i32 1
  store ptr @.str.22, ptr %196, align 4
  %197 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 1, i32 11
  store ptr @usb_stor_ufi_command, ptr %197, align 4
  br label %200

198:                                              ; preds = %158, %47, %10
  %199 = phi i32 [ -19, %158 ], [ -12, %10 ], [ -12, %47 ]
  tail call fastcc void @release_everything(ptr noundef %22)
  br label %200

200:                                              ; preds = %198, %195, %192, %188, %184, %180, %177, %175, %9
  %201 = phi i32 [ %199, %198 ], [ -12, %9 ], [ 0, %175 ], [ 0, %177 ], [ 0, %180 ], [ 0, %184 ], [ 0, %188 ], [ 0, %192 ], [ 0, %195 ]
  ret i32 %201
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_stor_scan_dwork(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -244
  %3 = getelementptr i8, ptr %0, i32 -171
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 80
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -212
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  tail call void @mutex_lock(ptr noundef %2) #12
  %12 = tail call i32 @usb_stor_Bulk_max_lun(ptr noundef %2) #12
  %13 = trunc i32 %12 to i8
  %14 = getelementptr i8, ptr %0, i32 -170
  store i8 %13, ptr %14, align 2
  %15 = and i32 %12, 255
  %16 = icmp ugt i32 %15, 7
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = add nuw nsw i32 %15, 1
  %19 = zext i32 %18 to i64
  %20 = getelementptr i8, ptr %0, i32 -1316
  store i64 %19, ptr %20, align 8
  br label %21

21:                                               ; preds = %17, %11
  tail call void @mutex_unlock(ptr noundef %2) #12
  br label %22

22:                                               ; preds = %21, %6, %1
  %23 = getelementptr i8, ptr %0, i32 -220
  %24 = getelementptr i8, ptr %0, i32 -1556
  tail call void @scsi_scan_host(ptr noundef %24) #12
  %25 = load ptr, ptr %23, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %25) #12
  %26 = getelementptr i8, ptr %0, i32 -208
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %26) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @release_everything(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 31
  tail call void @complete(ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @kthread_stop(ptr noundef nonnull %4) #12
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 36
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 35
  %14 = load ptr, ptr %13, align 4
  tail call void %10(ptr noundef %14) #12
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 35
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #12
  %18 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 25
  %19 = load ptr, ptr %18, align 4
  tail call void @usb_free_urb(ptr noundef %19) #12
  %20 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 26
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #12
  %22 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 28
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 29
  %27 = load i32, ptr %26, align 4
  tail call void @usb_free_coherent(ptr noundef %23, i32 noundef 64, ptr noundef %25, i32 noundef %27) #12
  %28 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_interface, ptr %29, i32 0, i32 7, i32 8
  store ptr null, ptr %30, align 8
  %31 = getelementptr i8, ptr %0, i32 -1312
  tail call void @scsi_host_put(ptr noundef %31) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_probe2(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %151, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 21
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %151, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 16
  store i8 7, ptr %21, align 2
  %22 = getelementptr i8, ptr %0, i32 -1056
  store i32 7, ptr %22, align 8
  br label %30

23:                                               ; preds = %15
  %24 = getelementptr i8, ptr %0, i32 -1076
  store i32 1, ptr %24, align 4
  %25 = icmp eq ptr %9, @usb_stor_Bulk_transport
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %0, i32 -1016
  %28 = load i16, ptr %27, align 8
  %29 = or i16 %28, 1024
  store i16 %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %26, %23, %20
  %31 = and i32 %17, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 16
  store i8 0, ptr %34, align 2
  br label %35

35:                                               ; preds = %33, %30
  %36 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4, !annotation !8
  %38 = call i32 @usb_find_common_endpoints(ptr noundef %37, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %96

40:                                               ; preds = %35
  %41 = call i32 @usb_find_common_endpoints(ptr noundef %37, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, ptr noundef null) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 15
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %96, label %47

47:                                               ; preds = %43, %40
  %48 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %49, align 8
  %51 = shl i32 %50, 8
  %52 = or i32 %51, -2147483648
  %53 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 8
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr %49, align 8
  %55 = shl i32 %54, 8
  %56 = or i32 %55, -2147483520
  %57 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 9
  store i32 %56, ptr %57, align 4
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %58, i32 0, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = and i8 %60, 15
  %62 = zext i8 %61 to i32
  %63 = load i32, ptr %49, align 8
  %64 = shl i32 %63, 8
  %65 = shl nuw nsw i32 %62, 15
  %66 = or i32 %64, %65
  %67 = or i32 %66, -1073741824
  %68 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 6
  store i32 %67, ptr %68, align 4
  %69 = load ptr, ptr %2, align 4
  %70 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %69, i32 0, i32 2
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, 15
  %73 = zext i8 %72 to i32
  %74 = load i32, ptr %49, align 8
  %75 = shl i32 %74, 8
  %76 = shl nuw nsw i32 %73, 15
  %77 = or i32 %75, %76
  %78 = or i32 %77, -1073741696
  %79 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 7
  store i32 %78, ptr %79, align 4
  %80 = load ptr, ptr %4, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %98, label %82

82:                                               ; preds = %47
  %83 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %80, i32 0, i32 2
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, 15
  %86 = zext i8 %85 to i32
  %87 = load i32, ptr %49, align 8
  %88 = shl i32 %87, 8
  %89 = shl nuw nsw i32 %86, 15
  %90 = or i32 %88, %89
  %91 = or i32 %90, 1073741952
  %92 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 10
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %80, i32 0, i32 5
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 18
  store i8 %94, ptr %95, align 4
  br label %98

96:                                               ; preds = %43, %35
  %97 = phi i32 [ %38, %35 ], [ %41, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %151

98:                                               ; preds = %82, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %99 = load i32, ptr %16, align 4
  %100 = and i32 %99, 1048576
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 5
  call void @_set_bit(i32 noundef 7, ptr noundef %103) #12
  br label %104

104:                                              ; preds = %102, %98
  %105 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %106 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 25
  store ptr %105, ptr %106, align 4
  %107 = icmp eq ptr %105, null
  br i1 %107, label %151, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.us_unusual_dev, ptr %110, i32 0, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = call i32 %112(ptr noundef %0) #12
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %151

117:                                              ; preds = %114, %108
  %118 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @usb_stor_control_thread, ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.23) #12
  %119 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %119, label %129, label %120

120:                                              ; preds = %117
  %121 = call i32 @wake_up_process(ptr noundef %118) #12
  %122 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 30
  store ptr %118, ptr %122, align 4
  %123 = load ptr, ptr %5, align 4
  call void @usb_autopm_get_interface_no_resume(ptr noundef %123) #12
  %124 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 24
  %125 = load ptr, ptr %5, align 4
  %126 = getelementptr inbounds %struct.usb_interface, ptr %125, i32 0, i32 7, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %136

129:                                              ; preds = %117
  %130 = load ptr, ptr %5, align 4
  %131 = getelementptr inbounds %struct.usb_interface, ptr %130, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %131, ptr noundef nonnull @.str.24) #13
  %132 = ptrtoint ptr %118 to i32
  br label %151

133:                                              ; preds = %120
  %134 = getelementptr inbounds %struct.usb_interface, ptr %125, i32 0, i32 7
  %135 = load ptr, ptr %134, align 4
  br label %136

136:                                              ; preds = %133, %120
  %137 = phi ptr [ %135, %133 ], [ %127, %120 ]
  %138 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %124, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %137)
  %139 = getelementptr i8, ptr %0, i32 -1312
  %140 = call i32 @scsi_add_host_with_dma(ptr noundef %139, ptr noundef %7, ptr noundef %7) #12
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %136
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.6) #13
  %143 = load ptr, ptr %5, align 4
  call void @usb_autopm_put_interface_no_suspend(ptr noundef %143) #12
  br label %151

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 5
  call void @_set_bit(i32 noundef 6, ptr noundef %145) #12
  %146 = load i32, ptr @delay_use, align 4
  %147 = load ptr, ptr @system_freezable_wq, align 4
  %148 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 34
  %149 = mul i32 %146, 100
  %150 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %147, ptr noundef %148, i32 noundef %149) #12
  br label %153

151:                                              ; preds = %142, %129, %114, %104, %96, %11, %1
  %152 = phi i32 [ %97, %96 ], [ %132, %129 ], [ %140, %142 ], [ -6, %11 ], [ -6, %1 ], [ %115, %114 ], [ -12, %104 ]
  call fastcc void @release_everything(ptr noundef %0)
  br label %153

153:                                              ; preds = %151, %144
  %154 = phi i32 [ %152, %151 ], [ 0, %144 ]
  ret i32 %154
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_Bulk_transport(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_get_interface_no_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface_no_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_stor_disconnect(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %10) #12
  %11 = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 33
  tail call void @__wake_up(ptr noundef %11, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 34
  %14 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %13) #12
  %15 = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 5
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void @usb_autopm_put_interface_no_suspend(ptr noundef %21) #12
  br label %22

22:                                               ; preds = %19, %12
  %23 = getelementptr i8, ptr %3, i32 -1312
  tail call void @scsi_remove_host(ptr noundef %23) #12
  %24 = getelementptr i8, ptr %3, i32 -1284
  %25 = load ptr, ptr %24, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %25) #12
  tail call void @_set_bit(i32 noundef 3, ptr noundef %15) #12
  %26 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %27 = load i16, ptr %26, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %29 = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 33
  tail call void @__wake_up(ptr noundef %29, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  tail call fastcc void @release_everything(ptr noundef %3)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @usb_storage_driver_init() #8 section ".init.text" {
  tail call void @usb_stor_host_template_init(ptr noundef nonnull @usb_stor_host_template, ptr noundef nonnull @.str.23, ptr noundef null) #12
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_storage_driver, ptr noundef null, ptr noundef nonnull @.str.25) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @usb_storage_driver_exit() #8 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @usb_storage_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_Bulk_max_lun(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_CB_transport(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_CB_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_Bulk_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_transparent_scsi_command(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_pad12_command(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_ufi_command(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_stor_control_thread(ptr noundef %0) #0 {
  %2 = alloca [36 x i8], align 8
  %3 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 31
  %4 = call i32 @wait_for_completion_interruptible(ptr noundef %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %130

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -1284
  %8 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 22
  %9 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 5
  %10 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 4
  %11 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 16
  %12 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, ptr %2, i32 0, i32 1
  %13 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, ptr %2, i32 0, i32 2
  %14 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, ptr %2, i32 0, i32 3
  %15 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, ptr %2, i32 0, i32 4
  %16 = getelementptr inbounds i8, ptr %2, i32 8
  %17 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 3
  %19 = getelementptr inbounds i8, ptr %2, i32 16
  %20 = getelementptr inbounds i8, ptr %2, i32 32
  %21 = getelementptr inbounds i8, ptr %2, i32 33
  %22 = getelementptr inbounds i8, ptr %2, i32 34
  %23 = getelementptr inbounds i8, ptr %2, i32 35
  %24 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 21
  %25 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 32
  br label %26

26:                                               ; preds = %127, %6
  call void @mutex_lock(ptr noundef %0) #12
  %27 = load ptr, ptr %7, align 4
  call void @_raw_spin_lock_irq(ptr noundef %27) #12
  %28 = load ptr, ptr %8, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load ptr, ptr %7, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %32 = load i16, ptr %31, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  call void @mutex_unlock(ptr noundef %0) #12
  br label %130

34:                                               ; preds = %26
  %35 = load volatile i32, ptr %9, align 4
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  store i32 327680, ptr %39, align 4
  br label %114

40:                                               ; preds = %34
  %41 = load ptr, ptr %7, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %42 = load i16, ptr %41, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %41, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %44 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 15
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  store i32 458752, ptr %48, align 4
  br label %109

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.scsi_device, ptr %51, i32 0, i32 16
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32, ptr %10, align 4
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  store i32 262144, ptr %60, align 4
  br label %109

61:                                               ; preds = %55, %49
  %62 = getelementptr inbounds %struct.scsi_device, ptr %51, i32 0, i32 18
  %63 = load i64, ptr %62, align 8
  %64 = load i8, ptr %11, align 2
  %65 = zext i8 %64 to i64
  %66 = icmp ugt i64 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  store i32 262144, ptr %68, align 4
  br label %109

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 16
  %71 = load ptr, ptr %70, align 4
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 18
  br i1 %73, label %74, label %104

74:                                               ; preds = %69
  %75 = load i32, ptr %10, align 4
  %76 = and i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %104, label %78

78:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8
  store i8 -128, ptr %12, align 1
  store i8 2, ptr %13, align 2
  store i8 2, ptr %14, align 1
  store i8 31, ptr %15, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(28) %16, i8 32, i32 28, i1 false) #12
  %79 = load ptr, ptr %17, align 4
  %80 = getelementptr inbounds %struct.usb_device, ptr %79, i32 0, i32 16, i32 9
  %81 = load i16, ptr %80, align 4
  %82 = load ptr, ptr %18, align 4
  %83 = load ptr, ptr %82, align 4
  %84 = call i32 @strlen(ptr noundef %83) #12
  %85 = call i32 @llvm.smin.i32(i32 %84, i32 8) #12
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %16, ptr align 1 %83, i32 %85, i1 false) #12
  %86 = getelementptr inbounds %struct.us_unusual_dev, ptr %82, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = call i32 @strlen(ptr noundef %87) #12
  %89 = call i32 @llvm.smin.i32(i32 %88, i32 16) #12
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %19, ptr align 1 %87, i32 %89, i1 false) #12
  %90 = lshr i16 %81, 12
  %91 = trunc i16 %90 to i8
  %92 = or i8 %91, 48
  store i8 %92, ptr %20, align 8
  %93 = lshr i16 %81, 8
  %94 = trunc i16 %93 to i8
  %95 = and i8 %94, 15
  %96 = or i8 %95, 48
  store i8 %96, ptr %21, align 1
  %97 = trunc i16 %81 to i8
  %98 = lshr i8 %97, 4
  %99 = or i8 %98, 48
  store i8 %99, ptr %22, align 2
  %100 = and i8 %97, 15
  %101 = or i8 %100, 48
  store i8 %101, ptr %23, align 1
  %102 = load ptr, ptr %8, align 4
  call void @usb_stor_set_xfer_buf(ptr noundef nonnull %2, i32 noundef 36, ptr noundef %102) #12
  %103 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  store i32 0, ptr %103, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #12
  br label %109

104:                                              ; preds = %74, %69
  %105 = load ptr, ptr %24, align 4
  call void %105(ptr noundef nonnull %28, ptr noundef %0) #12
  %106 = load ptr, ptr %17, align 4
  %107 = call i64 @ktime_get_mono_fast_ns() #12
  %108 = getelementptr inbounds %struct.usb_device, ptr %106, i32 0, i32 15, i32 11, i32 22
  store volatile i64 %107, ptr %108, align 8
  br label %109

109:                                              ; preds = %104, %78, %67, %59, %47
  %110 = load ptr, ptr %7, align 4
  call void @_raw_spin_lock_irq(ptr noundef %110) #12
  %111 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 24
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 327680
  br i1 %113, label %114, label %115

114:                                              ; preds = %109, %38
  br label %115

115:                                              ; preds = %114, %109
  %116 = phi ptr [ null, %114 ], [ %28, %109 ]
  %117 = load volatile i32, ptr %9, align 4
  %118 = and i32 %117, 32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  call void @complete(ptr noundef %25) #12
  call void @_clear_bit(i32 noundef 2, ptr noundef %9) #12
  call void @_clear_bit(i32 noundef 5, ptr noundef %9) #12
  br label %121

121:                                              ; preds = %120, %115
  store ptr null, ptr %8, align 4
  %122 = load ptr, ptr %7, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %123 = load i16, ptr %122, align 4
  %124 = add i16 %123, 1
  store i16 %124, ptr %122, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  call void @mutex_unlock(ptr noundef %0) #12
  %125 = icmp eq ptr %116, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  call void @scsi_done(ptr noundef nonnull %116) #12
  br label %127

127:                                              ; preds = %126, %121
  %128 = call i32 @wait_for_completion_interruptible(ptr noundef %3) #12
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %26, label %130

130:                                              ; preds = %127, %30, %1
  %131 = tail call ptr @llvm.thread.pointer() #12
  %132 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 1
  store volatile i32 1, ptr %132, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %133 = call zeroext i1 @kthread_should_stop() #12
  br i1 %133, label %136, label %134

134:                                              ; preds = %134, %130
  call void @schedule() #12
  store volatile i32 1, ptr %132, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %135 = call zeroext i1 @kthread_should_stop() #12
  br i1 %135, label %136, label %134

136:                                              ; preds = %134, %130
  store volatile i32 0, ptr %132, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_host_template_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @storage_probe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [4 x ptr], align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #12
  %6 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -128
  %9 = getelementptr i8, ptr %7, i32 -64
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %11 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %152, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %0, align 8
  br label %18

18:                                               ; preds = %32, %16
  %19 = phi i32 [ 0, %16 ], [ %33, %32 ]
  %20 = getelementptr %struct.usb_host_interface, ptr %17, i32 %19
  %21 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %20, i32 0, i32 5
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 8
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %20, i32 0, i32 6
  %26 = load i8, ptr %25, align 2
  %27 = icmp eq i8 %26, 6
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %20, i32 0, i32 7
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 98
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %24, %18
  %33 = add nuw i32 %19, 1
  %34 = icmp eq i32 %33, %14
  br i1 %34, label %152, label %18

35:                                               ; preds = %28
  %36 = icmp eq ptr %20, null
  br i1 %36, label %152, label %37

37:                                               ; preds = %35
  %38 = getelementptr %struct.usb_host_interface, ptr %17, i32 %19, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %20, i32 0, i32 4
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = icmp eq i8 %41, 0
  br i1 %43, label %152, label %44

44:                                               ; preds = %74, %37
  %45 = phi i32 [ %75, %74 ], [ 0, %37 ]
  %46 = getelementptr %struct.usb_host_endpoint, ptr %39, i32 %45
  %47 = getelementptr %struct.usb_host_endpoint, ptr %39, i32 %45, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, 2
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = getelementptr %struct.usb_host_endpoint, ptr %39, i32 %45, i32 7
  %52 = load ptr, ptr %51, align 4
  br label %53

53:                                               ; preds = %68, %50
  %54 = phi i32 [ %71, %68 ], [ %48, %50 ]
  %55 = phi ptr [ %72, %68 ], [ %52, %50 ]
  %56 = getelementptr i8, ptr %55, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 36
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %55, i32 2
  %61 = load i8, ptr %60, align 1
  %62 = add i8 %61, -1
  %63 = icmp ult i8 %62, 4
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = zext i8 %61 to i32
  %66 = add nsw i32 %65, -1
  %67 = getelementptr ptr, ptr %3, i32 %66
  store ptr %46, ptr %67, align 4
  br label %74

68:                                               ; preds = %53
  %69 = load i8, ptr %55, align 1
  %70 = zext i8 %69 to i32
  %71 = sub nsw i32 %54, %70
  %72 = getelementptr i8, ptr %55, i32 %70
  %73 = icmp sgt i32 %71, 2
  br i1 %73, label %53, label %74

74:                                               ; preds = %68, %64, %59, %44
  %75 = add nuw nsw i32 %45, 1
  %76 = icmp eq i32 %75, %42
  br i1 %76, label %77, label %44

77:                                               ; preds = %74
  %78 = load ptr, ptr %3, align 4
  %79 = getelementptr inbounds ptr, ptr %3, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds ptr, ptr %3, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds ptr, ptr %3, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %78, null
  %86 = icmp eq ptr %82, null
  %87 = icmp eq ptr %84, null
  %88 = icmp eq ptr %80, null
  %89 = select i1 %85, i1 true, i1 %88
  %90 = select i1 %89, i1 true, i1 %86
  %91 = select i1 %90, i1 true, i1 %87
  br i1 %91, label %152, label %92

92:                                               ; preds = %77
  %93 = getelementptr i8, ptr %7, i32 480
  %94 = load i16, ptr %93, align 8
  switch i16 %94, label %121 [
    i16 5964, label %95
    i16 3010, label %119
  ]

95:                                               ; preds = %92
  %96 = getelementptr i8, ptr %7, i32 482
  %97 = load i16, ptr %96, align 2
  switch i16 %97, label %121 [
    i16 20742, label %98
    i16 21930, label %98
  ]

98:                                               ; preds = %95, %95
  %99 = getelementptr i8, ptr %7, i32 500
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.usb_config_descriptor, ptr %100, i32 0, i32 7
  %102 = load i8, ptr %101, align 4
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %121, label %104

104:                                              ; preds = %98
  %105 = getelementptr i8, ptr %7, i32 -100
  %106 = load i32, ptr %105, align 4
  %107 = icmp ult i32 %106, 5
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = or i32 %12, 8388608
  store i32 %109, ptr %4, align 4
  br label %121

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.usb_host_endpoint, ptr %80, i32 0, i32 1, i32 3
  %112 = load i8, ptr %111, align 1
  %113 = and i8 %112, 31
  %114 = icmp eq i8 %113, 5
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = or i32 %12, 8388608
  store i32 %116, ptr %4, align 4
  br label %121

117:                                              ; preds = %110
  %118 = or i32 %12, 134217728
  store i32 %118, ptr %4, align 4
  br label %121

119:                                              ; preds = %92
  %120 = or i32 %12, 33554432
  store i32 %120, ptr %4, align 4
  br label %121

121:                                              ; preds = %119, %117, %115, %108, %98, %95, %92
  call void @usb_stor_adjust_quirks(ptr noundef %8, ptr noundef nonnull %4) #12
  %122 = load i32, ptr %4, align 4
  %123 = and i32 %122, 8388608
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %149

125:                                              ; preds = %121
  %126 = load ptr, ptr %9, align 8
  %127 = getelementptr inbounds %struct.usb_bus, ptr %126, i32 0, i32 7
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 9
  %132 = load ptr, ptr %131, align 4
  br label %144

133:                                              ; preds = %125
  %134 = getelementptr i8, ptr %7, i32 -100
  %135 = load i32, ptr %134, align 4
  %136 = icmp ugt i32 %135, 4
  br i1 %136, label %137, label %151

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 14
  %139 = load i16, ptr %138, align 8
  %140 = and i16 %139, 512
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.usb_bus, ptr %10, i32 0, i32 3
  br label %144

144:                                              ; preds = %142, %130
  %145 = phi ptr [ %132, %130 ], [ %143, %142 ]
  %146 = phi ptr [ @.str.27, %130 ], [ @.str.29, %142 ]
  %147 = phi ptr [ @.str.28, %130 ], [ @.str.30, %142 ]
  %148 = load ptr, ptr %145, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull %146, ptr noundef %148) #13
  br label %149

149:                                              ; preds = %144, %121
  %150 = phi ptr [ @.str.26, %121 ], [ %147, %144 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull %150) #13
  br label %152

151:                                              ; preds = %137, %133
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %169

152:                                              ; preds = %149, %77, %37, %35, %32, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  %153 = tail call i32 @usb_usual_ignore_device(ptr noundef %0) #12
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %152
  %156 = icmp uge ptr %1, @usb_storage_usb_ids
  %157 = icmp ult ptr %1, getelementptr inbounds ([0 x %struct.usb_device_id], ptr @usb_storage_usb_ids, i32 0, i32 352)
  %158 = select i1 %156, i1 %157, i1 false
  %159 = ptrtoint ptr %1 to i32
  %160 = sub i32 %159, ptrtoint (ptr @usb_storage_usb_ids to i32)
  %161 = sdiv exact i32 %160, 24
  %162 = getelementptr %struct.us_unusual_dev, ptr @us_unusual_dev_list, i32 %161
  %163 = select i1 %158, ptr %162, ptr @for_dynamic_ids
  %164 = call i32 @usb_stor_probe1(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, ptr noundef %163, ptr noundef nonnull @usb_stor_host_template)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %155
  %167 = load ptr, ptr %5, align 4
  %168 = tail call i32 @usb_stor_probe2(ptr noundef %167)
  br label %169

169:                                              ; preds = %166, %155, %152, %151
  %170 = phi i32 [ %168, %166 ], [ -6, %151 ], [ -6, %152 ], [ %164, %155 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %170
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_usual_ignore_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_euscsi_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @option_ms_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_ucr61s2b_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sierra_ms_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_huawei_e220_init(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!9 = !{i64 2149194354}
!10 = !{i64 2149190178}
!11 = !{i64 2149190253, i64 2149190280, i64 2149190327, i64 2149190349, i64 2149190377, i64 2149190397}
!12 = !{i64 575133}
!13 = !{i64 2149218498}
!14 = !{i64 2153870184}
