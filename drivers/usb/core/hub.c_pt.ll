; ModuleID = '/llk/IR/drivers/usb/core/hub.c_pt.bc'
source_filename = "../drivers/usb/core/hub.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ehci_cf_port_reset_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22ehci_cf_port_reset_rwsem\22\09\09\09\09\09"
module asm "__kstrtabns_ehci_cf_port_reset_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_wakeup_notification:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_wakeup_notification\22\09\09\09\09\09"
module asm "__kstrtabns_usb_wakeup_notification:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hub_clear_tt_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hub_clear_tt_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hub_clear_tt_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hub_claim_port:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hub_claim_port\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hub_claim_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hub_release_port:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hub_release_port\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hub_release_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_set_device_state:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_set_device_state\22\09\09\09\09\09"
module asm "__kstrtabns_usb_set_device_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_disable_ltm:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_disable_ltm\22\09\09\09\09\09"
module asm "__kstrtabns_usb_disable_ltm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_enable_ltm:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_enable_ltm\22\09\09\09\09\09"
module asm "__kstrtabns_usb_enable_ltm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_wakeup_enabled_descendants:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_wakeup_enabled_descendants\22\09\09\09\09\09"
module asm "__kstrtabns_usb_wakeup_enabled_descendants:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_root_hub_lost_power:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_root_hub_lost_power\22\09\09\09\09\09"
module asm "__kstrtabns_usb_root_hub_lost_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_disable_lpm:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_disable_lpm\22\09\09\09\09\09"
module asm "__kstrtabns_usb_disable_lpm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_unlocked_disable_lpm:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_unlocked_disable_lpm\22\09\09\09\09\09"
module asm "__kstrtabns_usb_unlocked_disable_lpm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_enable_lpm:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_enable_lpm\22\09\09\09\09\09"
module asm "__kstrtabns_usb_enable_lpm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_unlocked_enable_lpm:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_unlocked_enable_lpm\22\09\09\09\09\09"
module asm "__kstrtabns_usb_unlocked_enable_lpm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep0_reinit:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep0_reinit\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep0_reinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_reset_device:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_reset_device\22\09\09\09\09\09"
module asm "__kstrtabns_usb_reset_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_queue_reset_device:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_queue_reset_device\22\09\09\09\09\09"
module asm "__kstrtabns_usb_queue_reset_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_hub_find_child:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_hub_find_child\22\09\09\09\09\09"
module asm "__kstrtabns_usb_hub_find_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type {}
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_host_bos = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ext_cap_descriptor = type <{ i8, i8, i8, i32 }>
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_hub = type { ptr, ptr, %struct.kref, ptr, ptr, ptr, %struct.mutex, i32, i32, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, %struct.usb_tt, i32, i32, i8, [31 x i8], %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.spinlock, %struct.timer_list, ptr }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_tt_clear = type { %struct.list_head, i32, i16, ptr, ptr }
%struct.usb_port = type { ptr, %struct.device, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, i8, i32, i8 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.76, i32 }
%union.anon.76 = type { ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_descriptor = type { i8, i8, i8 }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.73 }>
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { [4 x i8], [4 x i8] }
%struct.usb_set_sel_req = type { i8, i8, i16, i16 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.usb_port_status = type { i16, i16, i32 }
%struct.usbdevfs_hub_portinfo = type { i8, [127 x i8] }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_hub_status = type { i16, i16 }
%struct.usb_ssp_cap_descriptor = type { i8, i8, i8, i8, i32, i16, i16, [1 x i32] }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>

@usb_port_peer_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @usb_port_peer_mutex, i64 12), ptr getelementptr (i8, ptr @usb_port_peer_mutex, i64 12) } }, align 4
@__param_str_blinkenlights = internal constant [22 x i8] c"usbcore.blinkenlights\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@blinkenlights = internal global i8 0, align 1
@__param_blinkenlights = internal constant %struct.kernel_param { ptr @__param_str_blinkenlights, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @blinkenlights } }, section "__param", align 4
@__UNIQUE_ID_blinkenlightstype258 = internal constant [36 x i8] c"usbcore.parmtype=blinkenlights:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_blinkenlights259 = internal constant [54 x i8] c"usbcore.parm=blinkenlights:true to cycle leds on hubs\00", section ".modinfo", align 1
@__param_str_initial_descriptor_timeout = internal constant [35 x i8] c"usbcore.initial_descriptor_timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@initial_descriptor_timeout = internal global i32 5000, align 4
@__param_initial_descriptor_timeout = internal constant %struct.kernel_param { ptr @__param_str_initial_descriptor_timeout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @initial_descriptor_timeout } }, section "__param", align 4
@__UNIQUE_ID_initial_descriptor_timeouttype260 = internal constant [48 x i8] c"usbcore.parmtype=initial_descriptor_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_initial_descriptor_timeout261 = internal constant [128 x i8] c"usbcore.parm=initial_descriptor_timeout:initial 64-byte descriptor request timeout in milliseconds (default 5000 - 5.0 seconds)\00", section ".modinfo", align 1
@__param_str_old_scheme_first = internal constant [25 x i8] c"usbcore.old_scheme_first\00", align 1
@old_scheme_first = internal global i8 0, align 1
@__param_old_scheme_first = internal constant %struct.kernel_param { ptr @__param_str_old_scheme_first, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @old_scheme_first } }, section "__param", align 4
@__UNIQUE_ID_old_scheme_firsttype262 = internal constant [39 x i8] c"usbcore.parmtype=old_scheme_first:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_old_scheme_first263 = internal constant [78 x i8] c"usbcore.parm=old_scheme_first:start with the old device initialization scheme\00", section ".modinfo", align 1
@__param_str_use_both_schemes = internal constant [25 x i8] c"usbcore.use_both_schemes\00", align 1
@use_both_schemes = internal global i8 1, align 1
@__param_use_both_schemes = internal constant %struct.kernel_param { ptr @__param_str_use_both_schemes, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @use_both_schemes } }, section "__param", align 4
@__UNIQUE_ID_use_both_schemestype264 = internal constant [39 x i8] c"usbcore.parmtype=use_both_schemes:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_both_schemes265 = internal constant [96 x i8] c"usbcore.parm=use_both_schemes:try the other device initialization scheme if the first one fails\00", section ".modinfo", align 1
@ehci_cf_port_reset_rwsem = dso_local global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ehci_cf_port_reset_rwsem, i64 16), ptr getelementptr (i8, ptr @ehci_cf_port_reset_rwsem, i64 16) } }, align 4
@__kstrtab_ehci_cf_port_reset_rwsem = external dso_local constant [0 x i8], align 1
@__kstrtabns_ehci_cf_port_reset_rwsem = external dso_local constant [0 x i8], align 1
@__ksymtab_ehci_cf_port_reset_rwsem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ehci_cf_port_reset_rwsem to i32), ptr @__kstrtab_ehci_cf_port_reset_rwsem, ptr @__kstrtabns_ehci_cf_port_reset_rwsem }, section "___ksymtab_gpl+ehci_cf_port_reset_rwsem", align 4
@.str = private unnamed_addr constant [48 x i8] c"No LPM exit latency info found, disabling LPM.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"LPM exit latency is zeroed, disabling LPM.\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"We don't know the algorithms for LPM for this host, disabling LPM.\0A\00", align 1
@__kstrtab_usb_wakeup_notification = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_wakeup_notification = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_wakeup_notification = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_wakeup_notification to i32), ptr @__kstrtab_usb_wakeup_notification, ptr @__kstrtabns_usb_wakeup_notification }, section "___ksymtab_gpl+usb_wakeup_notification", align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"can't save CLEAR_TT_BUFFER state\0A\00", align 1
@__kstrtab_usb_hub_clear_tt_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hub_clear_tt_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hub_clear_tt_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hub_clear_tt_buffer to i32), ptr @__kstrtab_usb_hub_clear_tt_buffer, ptr @__kstrtabns_usb_hub_clear_tt_buffer }, section "___ksymtab_gpl+usb_hub_clear_tt_buffer", align 4
@__kstrtab_usb_hub_claim_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hub_claim_port = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hub_claim_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hub_claim_port to i32), ptr @__kstrtab_usb_hub_claim_port, ptr @__kstrtabns_usb_hub_claim_port }, section "___ksymtab_gpl+usb_hub_claim_port", align 4
@__kstrtab_usb_hub_release_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hub_release_port = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hub_release_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hub_release_port to i32), ptr @__kstrtab_usb_hub_release_port, ptr @__kstrtabns_usb_hub_release_port }, section "___ksymtab_gpl+usb_hub_release_port", align 4
@device_state_lock = internal global %struct.spinlock zeroinitializer, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_usb_set_device_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_set_device_state = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_set_device_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_set_device_state to i32), ptr @__kstrtab_usb_set_device_state, ptr @__kstrtabns_usb_set_device_state }, section "___ksymtab_gpl+usb_set_device_state", align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"USB disconnect, device number %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"can't device_add, error %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"can't autoresume for authorization: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"can't re-read device descriptor for authorization: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"can't set config #%d, error %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"authorized to connect\0A\00", align 1
@__kstrtab_usb_disable_ltm = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_disable_ltm = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_disable_ltm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_disable_ltm to i32), ptr @__kstrtab_usb_disable_ltm, ptr @__kstrtabns_usb_disable_ltm }, section "___ksymtab_gpl+usb_disable_ltm", align 4
@__kstrtab_usb_enable_ltm = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_enable_ltm = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_enable_ltm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_enable_ltm to i32), ptr @__kstrtab_usb_enable_ltm, ptr @__kstrtabns_usb_enable_ltm }, section "___ksymtab_gpl+usb_enable_ltm", align 4
@__kstrtab_usb_wakeup_enabled_descendants = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_wakeup_enabled_descendants = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_wakeup_enabled_descendants = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_wakeup_enabled_descendants to i32), ptr @__kstrtab_usb_wakeup_enabled_descendants, ptr @__kstrtabns_usb_wakeup_enabled_descendants }, section "___ksymtab_gpl+usb_wakeup_enabled_descendants", align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"Failed to disable LTM before suspend\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"root hub lost power or was reset\0A\00", align 1
@__kstrtab_usb_root_hub_lost_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_root_hub_lost_power = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_root_hub_lost_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_root_hub_lost_power to i32), ptr @__kstrtab_usb_root_hub_lost_power, ptr @__kstrtabns_usb_root_hub_lost_power }, section "___ksymtab_gpl+usb_root_hub_lost_power", align 4
@__kstrtab_usb_disable_lpm = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_disable_lpm = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_disable_lpm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_disable_lpm to i32), ptr @__kstrtab_usb_disable_lpm, ptr @__kstrtabns_usb_disable_lpm }, section "___ksymtab_gpl+usb_disable_lpm", align 4
@__kstrtab_usb_unlocked_disable_lpm = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_unlocked_disable_lpm = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_unlocked_disable_lpm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_unlocked_disable_lpm to i32), ptr @__kstrtab_usb_unlocked_disable_lpm, ptr @__kstrtabns_usb_unlocked_disable_lpm }, section "___ksymtab_gpl+usb_unlocked_disable_lpm", align 4
@__kstrtab_usb_enable_lpm = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_enable_lpm = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_enable_lpm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_enable_lpm to i32), ptr @__kstrtab_usb_enable_lpm, ptr @__kstrtabns_usb_enable_lpm }, section "___ksymtab_gpl+usb_enable_lpm", align 4
@__kstrtab_usb_unlocked_enable_lpm = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_unlocked_enable_lpm = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_unlocked_enable_lpm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_unlocked_enable_lpm to i32), ptr @__kstrtab_usb_unlocked_enable_lpm, ptr @__kstrtabns_usb_unlocked_enable_lpm }, section "___ksymtab_gpl+usb_unlocked_enable_lpm", align 4
@__kstrtab_usb_ep0_reinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep0_reinit = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep0_reinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep0_reinit to i32), ptr @__kstrtab_usb_ep0_reinit, ptr @__kstrtabns_usb_ep0_reinit }, section "___ksymtab_gpl+usb_ep0_reinit", align 4
@hub_driver = internal global %struct.usb_driver { ptr @.str.44, ptr @hub_probe, ptr @hub_disconnect, ptr @hub_ioctl, ptr @hub_suspend, ptr @hub_resume, ptr @hub_reset_resume, ptr @hub_pre_reset, ptr @hub_post_reset, ptr @hub_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 2 }, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"usbcore\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\013%s: can't register hub driver\0A\00", align 1
@usbcore_name = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"usb_hub_wq\00", align 1
@hub_wq = internal unnamed_addr global ptr null, align 4
@.str.17 = private unnamed_addr constant [44 x i8] c"\013%s: can't allocate workqueue for usb hub\0A\00", align 1
@__kstrtab_usb_reset_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_reset_device = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_reset_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_reset_device to i32), ptr @__kstrtab_usb_reset_device, ptr @__kstrtabns_usb_reset_device }, section "___ksymtab_gpl+usb_reset_device", align 4
@__kstrtab_usb_queue_reset_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_queue_reset_device = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_queue_reset_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_queue_reset_device to i32), ptr @__kstrtab_usb_queue_reset_device, ptr @__kstrtabns_usb_queue_reset_device }, section "___ksymtab_gpl+usb_queue_reset_device", align 4
@__kstrtab_usb_hub_find_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_hub_find_child = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_hub_find_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_hub_find_child to i32), ptr @__kstrtab_usb_hub_find_child, ptr @__kstrtabns_usb_hub_find_child }, section "___ksymtab_gpl+usb_hub_find_child", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.18 = private unnamed_addr constant [37 x i8] c"can't read configurations, error %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"Dual-Role OTG device on %sHNP port\0A\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"non-\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"can't set HNP mode: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"set a_alt_hnp_support failed: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"%s failed (err = %d)\0A\00", align 1
@__func__.hub_ext_port_status = private unnamed_addr constant [20 x i8] c"hub_ext_port_status\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"%s: Can't disable non-U1 or U2 state.\0A\00", align 1
@__func__.usb_disable_link_state = private unnamed_addr constant [23 x i8] c"usb_disable_link_state\00", align 1
@.str.26 = private unnamed_addr constant [76 x i8] c"Could not disable xHCI %s timeout, bus schedule bandwidth may be impacted.\0A\00", align 1
@usb3_lpm_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], align 4
@.str.27 = private unnamed_addr constant [47 x i8] c"%s: Can't set timeout for non-U1 or U2 state.\0A\00", align 1
@__func__.usb_set_lpm_timeout = private unnamed_addr constant [20 x i8] c"usb_set_lpm_timeout\00", align 1
@.str.28 = private unnamed_addr constant [62 x i8] c"Failed to set %s timeout to 0x%x, which is a reserved value.\0A\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"Failed to set %s timeout to 0x%x,error code %i\0A\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"%s: Can't %s non-U1 or U2 state.\0A\00", align 1
@__func__.usb_set_device_initiated_lpm = private unnamed_addr constant [29 x i8] c"usb_set_device_initiated_lpm\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"%s of device-initiated %s failed.\0A\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"U0\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"U1\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"U2\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"U3\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"Set SEL for device-initiated %s failed.\0A\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"Could not enable %s link state, xHCI error %i.\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"cannot disable (err = %d)\0A\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"Port disable: can't disable remote wake\0A\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"hub\00", align 1
@hub_id_table = internal constant [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 131, i16 1060, i16 21812, i16 0, i16 0, i8 0, i8 0, i8 0, i8 9, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1204, i16 25968, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 129, i16 1507, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 9, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 16, i16 0, i16 0, i16 0, i16 0, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 128, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 9, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], align 4
@.str.45 = private unnamed_addr constant [47 x i8] c"Unsupported bus topology: hub nested too deep\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"bad descriptor, ignoring hub\0A\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"USB hub found\0A\00", align 1
@highspeed_hubs = internal unnamed_addr global i32 0, align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.48 = private unnamed_addr constant [23 x i8] c"get_hub_status failed\0A\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"over-current condition\0A\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"disabled by hub (EMI?), re-enabling...\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"config error\0A\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"over_current_count\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"OVER_CURRENT_PORT=%s\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"OVER_CURRENT_COUNT=%u\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"only USB3 hub support warm reset\0A\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"cannot %sreset (err = %d)\0A\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"warm \00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"Cannot enable. Maybe the USB cable is bad?\0A\00", align 1
@hub_port_connect.unreliable_port = internal unnamed_addr global i32 -1, align 4
@__func__.hub_port_connect = private unnamed_addr constant [17 x i8] c"hub_port_connect\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"connect-debounce failed\0A\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"couldn't allocate usb_device\0A\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"can't connect bus-powered hub to this port\0A\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"attempt power cycle\0A\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"unable to enumerate USB device\0A\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"variable speed Wireless\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"%s %s USB device number %d using %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"parent hub has no TT\0A\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"hub failed to enable device, error %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [37 x i8] c"device descriptor read/64, error %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c"device not accepting address %d, error %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [49 x i8] c"%s SuperSpeed%s%s USB device number %d using %s\0A\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c" Plus\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c" Gen 2x2\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c" Gen 2x1\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c" Gen 1x2\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"device descriptor read/8, error %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [50 x i8] c"got a wrong device descriptor, warm reset device\0A\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"Invalid ep0 maxpacket: %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"Using ep0 maxpacket: %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"device descriptor read/all, error %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [55 x i8] c"not running at top speed; connect to a high speed hub\0A\00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"%dmA is over %umA budget!\0A\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"%dmA over power budget!\0A\00", align 1
@__func__.hub_hub_status = private unnamed_addr constant [15 x i8] c"hub_hub_status\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"resubmit --> %d\0A\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@hub_configure.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"&hub->status_mutex\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c"can't read hub descriptor\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"hub has too many ports!\00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c"hub doesn't have any ports!\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"%d port%s detected\0A\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"Using single TT (err %d)\0A\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"can't get hub status\00", align 1
@.str.95 = private unnamed_addr constant [58 x i8] c"insufficient power available to use all downstream ports\0A\00", align 1
@.str.96 = private unnamed_addr constant [32 x i8] c"couldn't create port%d device.\0A\00", align 1
@.str.97 = private unnamed_addr constant [26 x i8] c"can't update HCD hub info\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"config failed, %s (err %d)\0A\00", align 1
@.str.99 = private unnamed_addr constant [29 x i8] c"clear tt %d (%04x) error %d\0A\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"include/linux/usb.h\00", align 1
@.str.101 = private unnamed_addr constant [22 x i8] c"set hub depth failed\0A\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"Host not accepting hub info update\0A\00", align 1
@.str.103 = private unnamed_addr constant [52 x i8] c"LS/FS devices and hubs may not work under this hub\0A\00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"activate --> %d\0A\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"device %s not suspended yet\0A\00", align 1
@.str.106 = private unnamed_addr constant [26 x i8] c"%s Failed to disable LPM\0A\00", align 1
@__func__.usb_reset_and_verify_device = private unnamed_addr constant [28 x i8] c"usb_reset_and_verify_device\00", align 1
@.str.107 = private unnamed_addr constant [25 x i8] c"device firmware changed\0A\00", align 1
@.str.108 = private unnamed_addr constant [61 x i8] c"Busted HC?  Not enough HCD resources for old configuration.\0A\00", align 1
@.str.109 = private unnamed_addr constant [44 x i8] c"can't restore configuration #%d (error=%d)\0A\00", align 1
@.str.110 = private unnamed_addr constant [57 x i8] c"failed to restore interface %d altsetting %d (error=%d)\0A\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_blinkenlights259, ptr @__UNIQUE_ID_blinkenlightstype258, ptr @__UNIQUE_ID_initial_descriptor_timeout261, ptr @__UNIQUE_ID_initial_descriptor_timeouttype260, ptr @__UNIQUE_ID_old_scheme_first263, ptr @__UNIQUE_ID_old_scheme_firsttype262, ptr @__UNIQUE_ID_use_both_schemes265, ptr @__UNIQUE_ID_use_both_schemestype264, ptr @__ksymtab_ehci_cf_port_reset_rwsem, ptr @__ksymtab_usb_disable_lpm, ptr @__ksymtab_usb_disable_ltm, ptr @__ksymtab_usb_enable_lpm, ptr @__ksymtab_usb_enable_ltm, ptr @__ksymtab_usb_ep0_reinit, ptr @__ksymtab_usb_hub_claim_port, ptr @__ksymtab_usb_hub_clear_tt_buffer, ptr @__ksymtab_usb_hub_find_child, ptr @__ksymtab_usb_hub_release_port, ptr @__ksymtab_usb_queue_reset_device, ptr @__ksymtab_usb_reset_device, ptr @__ksymtab_usb_root_hub_lost_power, ptr @__ksymtab_usb_set_device_state, ptr @__ksymtab_usb_unlocked_disable_lpm, ptr @__ksymtab_usb_unlocked_enable_lpm, ptr @__ksymtab_usb_wakeup_enabled_descendants, ptr @__ksymtab_usb_wakeup_notification, ptr @__param_blinkenlights, ptr @__param_initial_descriptor_timeout, ptr @__param_old_scheme_first, ptr @__param_use_both_schemes], section "llvm.metadata"
@switch.table.usb_new_device = private unnamed_addr constant [3 x i32] [i32 3, i32 2, i32 2], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @usb_hub_to_struct_hub(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_host_config, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7, i32 8
  %15 = load ptr, ptr %14, align 8
  br label %16

16:                                               ; preds = %11, %7, %3, %1
  %17 = phi ptr [ %15, %11 ], [ null, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_device_supports_lpm(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 36
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %54

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -2
  %10 = icmp eq i32 %9, 2
  %11 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 18
  %12 = load ptr, ptr %11, align 4
  br i1 %10, label %13, label %23

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.usb_host_bos, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usb_ext_cap_descriptor, ptr %15, i32 0, i32 3
  %19 = load i32, ptr %18, align 1
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %17, %13
  br label %54

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.usb_host_bos, ptr %12, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str) #19
  br label %54

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %25, i32 0, i32 6
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %25, i32 0, i32 7
  %35 = load i16, ptr %34, align 1
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  %41 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  br i1 %40, label %43, label %42

42:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.1) #19
  br label %54

43:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.2) #19
  br label %54

44:                                               ; preds = %33, %29
  %45 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 28
  %50 = load i16, ptr %49, align 1
  %51 = lshr i16 %50, 6
  %52 = and i16 %51, 1
  %53 = zext i16 %52 to i32
  br label %54

54:                                               ; preds = %48, %44, %43, %42, %27, %22, %17, %1
  %55 = phi i32 [ 0, %22 ], [ 0, %27 ], [ 0, %1 ], [ 1, %17 ], [ 0, %43 ], [ 0, %42 ], [ 1, %44 ], [ %53, %48 ]
  ret i32 %55
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_clear_port_feature(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load i32, ptr %0, align 8
  %5 = shl i32 %4, 8
  %6 = or i32 %5, -2147483648
  %7 = trunc i32 %2 to i16
  %8 = trunc i32 %1 to i16
  %9 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext %7, i16 noundef zeroext %8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_kick_hub_wq(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_host_config, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call fastcc void @kick_hub_wq(ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %17, %11, %7, %3, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @kick_hub_wq(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 20
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 24
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr i8, ptr %12, i32 -32
  tail call void @usb_autopm_get_interface_no_resume(ptr noundef %13) #20
  %14 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #20, !srcloc !8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #20, !srcloc !9
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !10

18:                                               ; preds = %11
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !11

22:                                               ; preds = %18, %11
  %23 = phi i32 [ 2, %11 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #20
  br label %24

24:                                               ; preds = %22, %18
  %25 = load ptr, ptr @hub_wq, align 4
  %26 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %7) #20
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  tail call void @usb_autopm_put_interface_async(ptr noundef %13) #20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #20, !srcloc !8
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #20, !srcloc !13
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %39, label %33, !prof !11

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #20
  br label %39

34:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !14
  %35 = getelementptr %struct.usb_hub, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void @usb_put_dev(ptr noundef %36) #20
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr i8, ptr %37, i32 -32
  tail call void @usb_put_intf(ptr noundef %38) #20
  tail call void @kfree(ptr noundef %0) #20
  br label %39

39:                                               ; preds = %34, %33, %31, %24, %6, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_wakeup_notification(ptr noundef readonly %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_host_config, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.usb_hub, ptr %16, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  %21 = add i32 %1, -1
  %22 = getelementptr ptr, ptr %20, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  tail call void @pm_wakeup_dev_event(ptr noundef %29, i32 noundef 0, i1 noundef zeroext false) #20
  br label %30

30:                                               ; preds = %28, %25, %18
  %31 = getelementptr inbounds %struct.usb_hub, ptr %16, i32 0, i32 12
  tail call void @_set_bit(i32 noundef %1, ptr noundef %31) #20
  tail call fastcc void @kick_hub_wq(ptr noundef nonnull %16)
  br label %32

32:                                               ; preds = %30, %12, %8, %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hub_set_port_power(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = load i32, ptr %0, align 8
  %6 = shl i32 %5, 8
  %7 = or i32 %6, -2147483648
  %8 = trunc i32 %2 to i16
  br i1 %3, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %7, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 8, i16 noundef zeroext %8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %19

12:                                               ; preds = %4
  %13 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 8, i16 noundef zeroext %8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.usb_hub, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef %2, ptr noundef %16) #20
  br label %19

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.usb_hub, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef %2, ptr noundef %18) #20
  br label %19

19:                                               ; preds = %17, %15, %12, %9
  %20 = phi i32 [ %10, %9 ], [ 0, %17 ], [ 0, %15 ], [ %13, %12 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hub_clear_tt_buffer(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2592, i32 noundef 24) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.3) #19
  br label %55

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.usb_tt, ptr %7, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 9
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %19, %17 ], [ 1, %13 ]
  %22 = getelementptr inbounds %struct.usb_tt_clear, ptr %9, i32 0, i32 1
  store i32 %21, ptr %22, align 8
  %23 = lshr i32 %5, 15
  %24 = trunc i32 %23 to i16
  %25 = and i16 %24, 15
  %26 = getelementptr inbounds %struct.usb_tt_clear, ptr %9, i32 0, i32 2
  %27 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 27
  %28 = load i8, ptr %27, align 8
  %29 = zext i8 %28 to i16
  %30 = shl nuw nsw i16 %29, 4
  %31 = or i16 %30, %25
  %32 = and i32 %5, -1073741824
  %33 = icmp eq i32 %32, -2147483648
  %34 = select i1 %33, i16 0, i16 4096
  %35 = or i16 %31, %34
  %36 = trunc i32 %5 to i16
  %37 = shl i16 %36, 8
  %38 = and i16 %37, -32768
  %39 = or i16 %35, %38
  store i16 %39, ptr %26, align 4
  %40 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.usb_tt_clear, ptr %9, i32 0, i32 3
  store ptr %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 9
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.usb_tt_clear, ptr %9, i32 0, i32 4
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.usb_tt, ptr %7, i32 0, i32 4
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #20
  %48 = getelementptr inbounds %struct.usb_tt, ptr %7, i32 0, i32 5
  %49 = getelementptr inbounds %struct.usb_tt, ptr %7, i32 0, i32 5, i32 1
  %50 = load ptr, ptr %49, align 4
  store ptr %9, ptr %49, align 4
  store ptr %48, ptr %9, align 8
  %51 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %50, ptr %51, align 4
  store volatile ptr %9, ptr %50, align 4
  %52 = getelementptr inbounds %struct.usb_tt, ptr %7, i32 0, i32 6
  %53 = load ptr, ptr @system_wq, align 4
  %54 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %53, ptr noundef %52) #20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %47) #20
  br label %55

55:                                               ; preds = %20, %11
  %56 = phi i32 [ -12, %11 ], [ 0, %20 ]
  ret i32 %56
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_remove_device(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 35
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_host_config, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 8
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %13, %9, %5
  %19 = phi ptr [ %17, %13 ], [ null, %9 ], [ null, %5 ]
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 -32
  %22 = tail call i32 @usb_autopm_get_interface(ptr noundef %21) #20
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 25
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.usb_hub, ptr %19, i32 0, i32 11
  tail call void @_set_bit(i32 noundef %27, ptr noundef %28) #20
  %29 = load i8, ptr %25, align 2
  %30 = zext i8 %29 to i32
  %31 = tail call fastcc i32 @hub_port_disable(ptr noundef %19, i32 noundef %30, i32 noundef 1) #20
  %32 = getelementptr inbounds %struct.usb_hub, ptr %19, i32 0, i32 10
  tail call void @_set_bit(i32 noundef %30, ptr noundef %32) #20
  tail call fastcc void @kick_hub_wq(ptr noundef %19) #20
  tail call void @usb_autopm_put_interface(ptr noundef %21) #20
  br label %33

33:                                               ; preds = %24, %18, %1
  %34 = phi i32 [ 0, %24 ], [ -22, %1 ], [ %22, %18 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_hub_claim_port(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_host_config, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 8
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %13, %9, %5, %3
  %19 = phi ptr [ %17, %13 ], [ null, %9 ], [ null, %5 ], [ null, %3 ]
  %20 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, %1
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.usb_hub, ptr %19, i32 0, i32 27
  %31 = load ptr, ptr %30, align 4
  %32 = add i32 %1, -1
  %33 = getelementptr ptr, ptr %31, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_port, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store ptr %2, ptr %35, align 4
  br label %39

39:                                               ; preds = %38, %29, %25, %23, %18
  %40 = phi i32 [ 0, %38 ], [ -16, %29 ], [ -22, %23 ], [ -22, %25 ], [ -19, %18 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_hub_release_port(ptr noundef readonly %0, i32 noundef %1, ptr noundef readnone %2) #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_host_config, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 8
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %13, %9, %5, %3
  %19 = phi ptr [ %17, %13 ], [ null, %9 ], [ null, %5 ], [ null, %3 ]
  %20 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, %1
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.usb_hub, ptr %19, i32 0, i32 27
  %31 = load ptr, ptr %30, align 4
  %32 = add i32 %1, -1
  %33 = getelementptr ptr, ptr %31, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_port, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store ptr null, ptr %35, align 4
  br label %39

39:                                               ; preds = %38, %29, %25, %23, %18
  %40 = phi i32 [ 0, %38 ], [ -2, %29 ], [ -22, %23 ], [ -22, %25 ], [ -19, %18 ]
  ret i32 %40
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hub_release_all_ports(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_host_config, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7, i32 8
  %16 = load ptr, ptr %15, align 8
  br label %17

17:                                               ; preds = %12, %8, %4, %2
  %18 = phi ptr [ %16, %12 ], [ null, %8 ], [ null, %4 ], [ null, %2 ]
  %19 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.usb_hub, ptr %18, i32 0, i32 27
  br label %24

24:                                               ; preds = %35, %22
  %25 = phi i32 [ %20, %22 ], [ %36, %35 ]
  %26 = phi i32 [ 0, %22 ], [ %37, %35 ]
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr ptr, ptr %27, i32 %26
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_port, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  store ptr null, ptr %30, align 8
  %34 = load i32, ptr %19, align 4
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi i32 [ %25, %24 ], [ %34, %33 ]
  %37 = add nuw nsw i32 %26, 1
  %38 = icmp slt i32 %37, %36
  br i1 %38, label %24, label %39

39:                                               ; preds = %35, %17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @usb_device_is_owned(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 35
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usb_host_config, ptr %11, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7, i32 8
  %21 = load ptr, ptr %20, align 8
  br label %22

22:                                               ; preds = %17, %13, %9
  %23 = phi ptr [ %21, %17 ], [ null, %13 ], [ null, %9 ]
  %24 = getelementptr inbounds %struct.usb_hub, ptr %23, i32 0, i32 27
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 25
  %27 = load i8, ptr %26, align 2
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %28, -1
  %30 = getelementptr ptr, ptr %25, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.usb_port, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = icmp ne ptr %33, null
  br label %35

35:                                               ; preds = %22, %5, %1
  %36 = phi i1 [ %34, %22 ], [ false, %5 ], [ false, %1 ]
  ret i1 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_set_device_state(ptr noundef %0, i32 noundef %1) #1 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @device_state_lock) #20
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %5, 8
  %15 = icmp eq i32 %1, 8
  %16 = or i1 %15, %14
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %1, 7
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 36
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 512
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_config_descriptor, ptr %26, i32 0, i32 6
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 32
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %24, %19, %17, %13, %9
  %32 = phi i32 [ -1, %13 ], [ -1, %9 ], [ %30, %24 ], [ 0, %19 ], [ 0, %17 ]
  %33 = icmp eq i32 %5, 8
  %34 = icmp ne i32 %1, 8
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 38
  %39 = load i32, ptr %38, align 8
  %40 = sub i32 %39, %37
  store i32 %40, ptr %38, align 8
  br label %50

41:                                               ; preds = %31
  %42 = select i1 %34, i1 true, i1 %33
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 38
  %46 = load i32, ptr %45, align 8
  %47 = add i32 %46, %44
  store i32 %47, ptr %45, align 8
  br label %50

48:                                               ; preds = %7
  tail call fastcc void @recursively_mark_NOTATTACHED(ptr noundef %0)
  br label %49

49:                                               ; preds = %48, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %3) #20
  br label %55

50:                                               ; preds = %43, %41, %36
  store i32 %1, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %3) #20
  %51 = icmp sgt i32 %32, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %54 = icmp ne i32 %32, 0
  tail call void @device_set_wakeup_capable(ptr noundef %53, i1 noundef zeroext %54) #20
  br label %55

55:                                               ; preds = %52, %50, %49
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @recursively_mark_NOTATTACHED(ptr noundef %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_host_config, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7, i32 8
  %15 = load ptr, ptr %14, align 8
  br label %16

16:                                               ; preds = %11, %7, %3, %1
  %17 = phi ptr [ %15, %11 ], [ null, %7 ], [ null, %3 ], [ null, %1 ]
  %18 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.usb_hub, ptr %17, i32 0, i32 27
  br label %23

23:                                               ; preds = %33, %21
  %24 = phi i32 [ %19, %21 ], [ %34, %33 ]
  %25 = phi i32 [ 0, %21 ], [ %35, %33 ]
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr ptr, ptr %26, i32 %25
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  tail call fastcc void @recursively_mark_NOTATTACHED(ptr noundef nonnull %29)
  %32 = load i32, ptr %18, align 4
  br label %33

33:                                               ; preds = %31, %23
  %34 = phi i32 [ %24, %23 ], [ %32, %31 ]
  %35 = add nuw nsw i32 %25, 1
  %36 = icmp slt i32 %35, %34
  br i1 %36, label %23, label %37

37:                                               ; preds = %33, %16
  %38 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 38
  %44 = load i32, ptr %43, align 8
  %45 = sub i32 %44, %42
  store i32 %45, ptr %43, align 8
  br label %46

46:                                               ; preds = %41, %37
  store i32 0, ptr %38, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_disconnect(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @device_state_lock) #20
  %4 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call fastcc void @recursively_mark_NOTATTACHED(ptr noundef %2) #20
  br label %8

8:                                                ; preds = %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %3) #20
  %9 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %10 = load i32, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef %10) #19
  %11 = tail call i32 @pm_runtime_barrier(ptr noundef %9) #20
  %12 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15, i32 9
  tail call void @mutex_lock(ptr noundef %12) #20
  %13 = icmp eq ptr %2, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 20
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 35
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.usb_host_config, ptr %16, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7, i32 8
  %26 = load ptr, ptr %25, align 8
  br label %27

27:                                               ; preds = %22, %18, %14, %8
  %28 = phi ptr [ %26, %22 ], [ null, %18 ], [ null, %14 ], [ null, %8 ]
  %29 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 35
  %30 = load i32, ptr %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.usb_hub, ptr %28, i32 0, i32 27
  br label %34

34:                                               ; preds = %44, %32
  %35 = phi i32 [ %30, %32 ], [ %45, %44 ]
  %36 = phi i32 [ 0, %32 ], [ %46, %44 ]
  %37 = load ptr, ptr %33, align 4
  %38 = getelementptr ptr, ptr %37, i32 %36
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  tail call void @usb_disconnect(ptr noundef %39) #20
  %43 = load i32, ptr %29, align 4
  br label %44

44:                                               ; preds = %42, %34
  %45 = phi i32 [ %43, %42 ], [ %35, %34 ]
  %46 = add nuw nsw i32 %36, 1
  %47 = icmp slt i32 %46, %45
  br i1 %47, label %34, label %48

48:                                               ; preds = %44, %27
  tail call void @usb_disable_device(ptr noundef %2, i32 noundef 0) #20
  tail call void @usb_hcd_synchronize_unlinks(ptr noundef %2) #20
  %49 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 11
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %81, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 25
  %54 = load i8, ptr %53, align 2
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 20
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 35
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.usb_host_config, ptr %57, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.usb_interface, ptr %65, i32 0, i32 7, i32 8
  %67 = load ptr, ptr %66, align 8
  br label %68

68:                                               ; preds = %63, %59, %52
  %69 = phi ptr [ %67, %63 ], [ null, %59 ], [ null, %52 ]
  %70 = getelementptr inbounds %struct.usb_hub, ptr %69, i32 0, i32 27
  %71 = load ptr, ptr %70, align 4
  %72 = add nsw i32 %55, -1
  %73 = getelementptr ptr, ptr %71, i32 %72
  %74 = load ptr, ptr %73, align 4
  tail call void @sysfs_remove_link(ptr noundef %9, ptr noundef nonnull @.str.5) #20
  %75 = getelementptr inbounds %struct.usb_port, ptr %74, i32 0, i32 1
  tail call void @sysfs_remove_link(ptr noundef %75, ptr noundef nonnull @.str.6) #20
  %76 = getelementptr inbounds %struct.usb_hub, ptr %69, i32 0, i32 14
  %77 = tail call i32 @_test_and_set_bit(i32 noundef %55, ptr noundef %76) #20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = tail call i32 @__pm_runtime_resume(ptr noundef %75, i32 noundef 4) #20
  br label %81

81:                                               ; preds = %79, %68, %48
  %82 = phi ptr [ %74, %68 ], [ %74, %79 ], [ null, %48 ]
  %83 = phi ptr [ %69, %68 ], [ %69, %79 ], [ null, %48 ]
  %84 = phi i32 [ %55, %68 ], [ %55, %79 ], [ 1, %48 ]
  %85 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 13
  tail call void @usb_remove_ep_devs(ptr noundef %85) #20
  tail call void @mutex_unlock(ptr noundef %12) #20
  tail call void @device_del(ptr noundef %9) #20
  %86 = load i32, ptr %2, align 8
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 12
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %struct.usb_bus, ptr %90, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef %86, ptr noundef %91) #20
  store i32 -1, ptr %2, align 8
  br label %92

92:                                               ; preds = %88, %81
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @device_state_lock) #20
  store ptr null, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %93 = load i16, ptr @device_state_lock, align 4
  %94 = add i16 %93, 1
  store i16 %94, ptr @device_state_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !19
  %95 = icmp eq ptr %82, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.usb_hub, ptr %83, i32 0, i32 14
  %98 = tail call i32 @_test_and_clear_bit(i32 noundef %84, ptr noundef %97) #20
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.usb_port, ptr %82, i32 0, i32 1
  %102 = tail call i32 @__pm_runtime_idle(ptr noundef %101, i32 noundef 5) #20
  br label %103

103:                                              ; preds = %100, %96, %92
  %104 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 12
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.usb_hcd, ptr %105, i32 0, i32 9
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.hc_driver, ptr %107, i32 0, i32 28
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %103
  %112 = load ptr, ptr %49, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  tail call void %109(ptr noundef %105, ptr noundef %2) #20
  br label %115

115:                                              ; preds = %114, %111, %103
  tail call void @put_device(ptr noundef %9) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_barrier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_disable_device(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_synchronize_unlinks(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_ep_devs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_new_device(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %8 = tail call i32 @device_init_wakeup(ptr noundef %7, i1 noundef zeroext false) #20
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %11 = tail call i32 @__pm_runtime_set_status(ptr noundef %10, i32 noundef 0) #20
  %12 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #20, !srcloc !8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #20, !srcloc !20
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %10, i1 noundef zeroext true) #20
  tail call void @pm_runtime_enable(ptr noundef %10) #20
  tail call void @usb_disable_autosuspend(ptr noundef %0) #20
  %14 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %15 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 19
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %9
  %19 = tail call i32 @usb_get_configuration(ptr noundef %0) #20
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = icmp eq i32 %19, -19
  br i1 %22, label %247, label %23

23:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.18, i32 noundef %19) #19
  br label %247

24:                                               ; preds = %18, %9
  %25 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 11
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = tail call ptr @usb_cache_string(ptr noundef %0, i32 noundef %27) #20
  %29 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 31
  store ptr %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 10
  %31 = load i8, ptr %30, align 2
  %32 = zext i8 %31 to i32
  %33 = tail call ptr @usb_cache_string(ptr noundef %0, i32 noundef %32) #20
  %34 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 32
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 12
  %36 = load i8, ptr %35, align 8
  %37 = zext i8 %36 to i32
  %38 = tail call ptr @usb_cache_string(ptr noundef %0, i32 noundef %37) #20
  %39 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 33
  store ptr %38, ptr %39, align 8
  %40 = load ptr, ptr %14, align 8
  %41 = getelementptr inbounds %struct.usb_bus, ptr %40, i32 0, i32 6
  %42 = load i8, ptr %41, align 2
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %103

45:                                               ; preds = %24
  %46 = load ptr, ptr %15, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %103, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr inbounds %struct.usb_bus, ptr %40, i32 0, i32 11
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %53, label %103

53:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  store ptr null, ptr %2, align 4
  %54 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 25
  %55 = load i8, ptr %54, align 2
  %56 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 23
  %57 = load ptr, ptr %56, align 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.usb_config_descriptor, ptr %46, i32 0, i32 2
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = call i32 @__usb_get_extra_descriptor(ptr noundef %58, i32 noundef %61, i8 noundef zeroext 9, ptr noundef nonnull %2, i32 noundef 3) #20
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %99

64:                                               ; preds = %53
  %65 = load ptr, ptr %2, align 4
  %66 = getelementptr inbounds %struct.usb_otg_descriptor, ptr %65, i32 0, i32 2
  %67 = load i8, ptr %66, align 1
  %68 = and i8 %67, 2
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %99, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.usb_bus, ptr %40, i32 0, i32 5
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %55, %72
  %74 = select i1 %73, ptr @.str.20, ptr @.str.21
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.19, ptr noundef nonnull %74) #19
  %75 = load i8, ptr %71, align 1
  %76 = icmp eq i8 %55, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load i8, ptr %41, align 2
  %79 = or i8 %78, 2
  store i8 %79, ptr %41, align 2
  %80 = load i32, ptr %0, align 8
  %81 = shl i32 %80, 8
  %82 = or i32 %81, -2147483648
  %83 = call i32 @usb_control_msg(ptr noundef %0, i32 noundef %82, i8 noundef zeroext 3, i8 noundef zeroext 0, i16 noundef zeroext 3, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %77
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.22, i32 noundef %83) #19
  %86 = load i8, ptr %41, align 2
  %87 = and i8 %86, -3
  store i8 %87, ptr %41, align 2
  br label %101

88:                                               ; preds = %70
  %89 = load ptr, ptr %2, align 4
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %90, 3
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i32, ptr %0, align 8
  %94 = shl i32 %93, 8
  %95 = or i32 %94, -2147483648
  %96 = call i32 @usb_control_msg(ptr noundef %0, i32 noundef %95, i8 noundef zeroext 3, i8 noundef zeroext 0, i16 noundef zeroext 5, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.23, i32 noundef %96) #19
  br label %101

99:                                               ; preds = %64, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  br label %103

100:                                              ; preds = %92, %88, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  br label %103

101:                                              ; preds = %98, %85
  %102 = phi i32 [ %96, %98 ], [ %83, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  br label %247

103:                                              ; preds = %100, %99, %48, %45, %24
  call void @usb_detect_interface_quirks(ptr noundef %0) #20
  %104 = load ptr, ptr %14, align 8
  %105 = getelementptr inbounds %struct.usb_bus, ptr %104, i32 0, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = shl i32 %106, 7
  %108 = load i32, ptr %0, align 8
  %109 = add i32 %108, -129
  %110 = add i32 %109, %107
  %111 = or i32 %110, 198180864
  %112 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 27
  store i32 %111, ptr %112, align 8
  %113 = load ptr, ptr %39, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %103
  %116 = call i32 @strlen(ptr noundef nonnull %113)
  call void @add_device_randomness(ptr noundef nonnull %113, i32 noundef %116) #20
  br label %117

117:                                              ; preds = %115, %103
  %118 = load ptr, ptr %29, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = call i32 @strlen(ptr noundef nonnull %118)
  call void @add_device_randomness(ptr noundef nonnull %118, i32 noundef %121) #20
  br label %122

122:                                              ; preds = %120, %117
  %123 = load ptr, ptr %34, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = call i32 @strlen(ptr noundef nonnull %123)
  call void @add_device_randomness(ptr noundef nonnull %123, i32 noundef %126) #20
  br label %127

127:                                              ; preds = %125, %122
  %128 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 11, i32 1
  %129 = load i16, ptr %128, align 4
  %130 = and i16 %129, 8
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = or i16 %129, 2
  store i16 %133, ptr %128, align 4
  br label %134

134:                                              ; preds = %132, %127
  %135 = load ptr, ptr %3, align 4
  %136 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 25
  %137 = load i8, ptr %136, align 2
  %138 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 36
  store i32 1, ptr %138, align 8
  %139 = icmp eq ptr %135, null
  br i1 %139, label %199, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.usb_device, ptr %135, i32 0, i32 20
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %153, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.usb_device, ptr %135, i32 0, i32 35
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.usb_host_config, ptr %142, i32 0, i32 3
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.usb_interface, ptr %150, i32 0, i32 7, i32 8
  %152 = load ptr, ptr %151, align 8
  br label %153

153:                                              ; preds = %148, %144, %140
  %154 = phi ptr [ %152, %148 ], [ null, %144 ], [ null, %140 ]
  %155 = getelementptr inbounds %struct.usb_hub, ptr %154, i32 0, i32 27
  %156 = load ptr, ptr %155, align 4
  %157 = zext i8 %137 to i32
  %158 = add nsw i32 %157, -1
  %159 = getelementptr ptr, ptr %156, i32 %158
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.usb_port, ptr %160, i32 0, i32 5
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %162, -1
  %164 = icmp ult i32 %163, 3
  br i1 %164, label %194, label %165

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct.usb_hub, ptr %154, i32 0, i32 16
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %167, i32 0, i32 3
  %169 = load i16, ptr %168, align 1
  %170 = and i16 %169, 4
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %199, label %172

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.usb_device, ptr %135, i32 0, i32 16, i32 5
  %174 = load i8, ptr %173, align 2
  %175 = icmp eq i8 %174, 3
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %167, i32 0, i32 6, i32 0, i32 0, i32 3
  %178 = load i16, ptr %177, align 1
  %179 = zext i16 %178 to i32
  %180 = shl nuw i32 1, %157
  %181 = and i32 %180, %179
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %197, label %193

183:                                              ; preds = %172
  %184 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %167, i32 0, i32 6
  %185 = lshr i32 %157, 3
  %186 = getelementptr [4 x i8], ptr %184, i32 0, i32 %185
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  %189 = and i32 %157, 7
  %190 = shl nuw nsw i32 1, %189
  %191 = and i32 %190, %188
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %183, %176
  br label %197

194:                                              ; preds = %153
  %195 = getelementptr inbounds [3 x i32], ptr @switch.table.usb_new_device, i32 0, i32 %163
  %196 = load i32, ptr %195, align 4
  br label %197

197:                                              ; preds = %194, %193, %183, %176
  %198 = phi i32 [ 2, %193 ], [ 3, %176 ], [ 3, %183 ], [ %196, %194 ]
  store i32 %198, ptr %138, align 8
  br label %199

199:                                              ; preds = %197, %165, %134
  %200 = call i32 @device_add(ptr noundef %10) #20
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.7, i32 noundef %200) #19
  br label %247

203:                                              ; preds = %199
  %204 = load ptr, ptr %3, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %241, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.usb_device, ptr %204, i32 0, i32 20
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %219, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.usb_device, ptr %204, i32 0, i32 35
  %212 = load i32, ptr %211, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.usb_host_config, ptr %208, i32 0, i32 3
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.usb_interface, ptr %216, i32 0, i32 7, i32 8
  %218 = load ptr, ptr %217, align 8
  br label %219

219:                                              ; preds = %214, %210, %206
  %220 = phi ptr [ %218, %214 ], [ null, %210 ], [ null, %206 ]
  %221 = load i8, ptr %136, align 2
  %222 = zext i8 %221 to i32
  %223 = getelementptr inbounds %struct.usb_hub, ptr %220, i32 0, i32 27
  %224 = load ptr, ptr %223, align 4
  %225 = add nsw i32 %222, -1
  %226 = getelementptr ptr, ptr %224, i32 %225
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.usb_port, ptr %227, i32 0, i32 1
  %229 = call i32 @sysfs_create_link(ptr noundef %10, ptr noundef %228, ptr noundef nonnull @.str.5) #20
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %247

231:                                              ; preds = %219
  %232 = call i32 @sysfs_create_link(ptr noundef %228, ptr noundef %10, ptr noundef nonnull @.str.6) #20
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %231
  call void @sysfs_remove_link(ptr noundef %10, ptr noundef nonnull @.str.5) #20
  br label %247

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.usb_hub, ptr %220, i32 0, i32 14
  %237 = call i32 @_test_and_set_bit(i32 noundef %222, ptr noundef %236) #20
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = call i32 @__pm_runtime_resume(ptr noundef %228, i32 noundef 4) #20
  br label %241

241:                                              ; preds = %239, %235, %203
  %242 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 13
  %243 = call i32 @usb_create_ep_devs(ptr noundef %10, ptr noundef %242, ptr noundef %0) #20
  %244 = call i64 @ktime_get_mono_fast_ns() #20
  %245 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 11, i32 22
  store volatile i64 %244, ptr %245, align 8
  %246 = call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 12) #20
  br label %256

247:                                              ; preds = %234, %219, %202, %101, %23, %21
  %248 = phi i32 [ %200, %202 ], [ %232, %234 ], [ %229, %219 ], [ %102, %101 ], [ -19, %21 ], [ %19, %23 ]
  %249 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @device_state_lock) #20
  %250 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %251 = load i32, ptr %250, align 8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %247
  call fastcc void @recursively_mark_NOTATTACHED(ptr noundef %0) #20
  br label %254

254:                                              ; preds = %253, %247
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %249) #20
  call void @__pm_runtime_disable(ptr noundef %10, i1 noundef zeroext true) #20
  %255 = call i32 @__pm_runtime_set_status(ptr noundef %10, i32 noundef 2) #20
  br label %256

256:                                              ; preds = %254, %241
  %257 = phi i32 [ %248, %254 ], [ 0, %241 ]
  ret i32 %257
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_disable_autosuspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_create_ep_devs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_deauthorize_device(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 9
  tail call void @mutex_lock(ptr noundef %2) #20
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %4 = load i16, ptr %3, align 1
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = and i16 %4, -9
  store i16 %8, ptr %3, align 1
  %9 = tail call i32 @usb_set_configuration(ptr noundef %0, i32 noundef -1) #20
  br label %10

10:                                               ; preds = %7, %1
  tail call void @mutex_unlock(ptr noundef %2) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_authorize_device(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 9
  tail call void @mutex_lock(ptr noundef %3) #20
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %5 = load i16, ptr %4, align 1
  %6 = and i16 %5, 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = tail call i32 @usb_autoresume_device(ptr noundef %0) #20
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %9) #19
  br label %36

12:                                               ; preds = %8
  %13 = load i16, ptr %4, align 1
  %14 = and i16 %13, 32
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @usb_get_device_descriptor(ptr noundef %0, i32 noundef 18) #20
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i16, ptr %4, align 1
  br label %22

21:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %17) #19
  br label %34

22:                                               ; preds = %19, %12
  %23 = phi i16 [ %20, %19 ], [ %13, %12 ]
  %24 = phi i32 [ %17, %19 ], [ %9, %12 ]
  %25 = or i16 %23, 8
  store i16 %25, ptr %4, align 1
  %26 = tail call i32 @usb_choose_configuration(ptr noundef %0) #20
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = tail call i32 @usb_set_configuration(ptr noundef %0, i32 noundef %26) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %26, i32 noundef %29) #19
  br label %32

32:                                               ; preds = %31, %28, %22
  %33 = phi i32 [ %29, %31 ], [ 0, %28 ], [ %24, %22 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.11) #19
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi i32 [ %17, %21 ], [ %33, %32 ]
  tail call void @usb_autosuspend_device(ptr noundef %0) #20
  br label %36

36:                                               ; preds = %34, %11, %1
  %37 = phi i32 [ 0, %1 ], [ %9, %11 ], [ %35, %34 ]
  tail call void @mutex_unlock(ptr noundef %3) #20
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autoresume_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_device_descriptor(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_choose_configuration(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autosuspend_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_disable_ltm(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 5
  br i1 %8, label %48, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 18
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_host_bos, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %15, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, 5
  br i1 %25, label %48, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 18
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.usb_host_bos, ptr %28, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %32, i32 0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 2
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %0, align 8
  %45 = shl i32 %44, 8
  %46 = or i32 %45, -2147483648
  %47 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %46, i8 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext 50, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %48

48:                                               ; preds = %43, %39, %34, %30, %26, %22, %17, %13, %9, %1
  %49 = phi i32 [ %47, %43 ], [ 0, %34 ], [ 0, %17 ], [ 0, %39 ], [ 0, %13 ], [ 0, %9 ], [ 0, %1 ], [ 0, %30 ], [ 0, %26 ], [ 0, %22 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_enable_ltm(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 5
  br i1 %8, label %48, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 18
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_host_bos, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %15, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, 5
  br i1 %25, label %48, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 18
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.usb_host_bos, ptr %28, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %32, i32 0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 2
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %0, align 8
  %45 = shl i32 %44, 8
  %46 = or i32 %45, -2147483648
  %47 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %46, i8 noundef zeroext 3, i8 noundef zeroext 0, i16 noundef zeroext 50, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %48

48:                                               ; preds = %43, %39, %34, %30, %26, %22, %17, %13, %9, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_wakeup_enabled_descendants(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7, %3, %1
  %12 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 40
  %13 = load i8, ptr %12, align 8
  br label %25

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.usb_host_config, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 40
  %20 = load i8, ptr %19, align 8
  %21 = icmp eq ptr %18, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.usb_hub, ptr %18, i32 0, i32 19
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %14, %11
  %26 = phi i8 [ %20, %22 ], [ %20, %14 ], [ %13, %11 ]
  %27 = phi i32 [ %24, %22 ], [ 0, %14 ], [ 0, %11 ]
  %28 = and i8 %26, 1
  %29 = zext i8 %28 to i32
  %30 = add i32 %27, %29
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_port_suspend(ptr noundef %0, [1 x i32] %1) local_unnamed_addr #1 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = extractvalue [1 x i32] %1, 0
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 35
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usb_host_config, ptr %11, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7, i32 8
  %21 = load ptr, ptr %20, align 8
  br label %22

22:                                               ; preds = %17, %13, %9, %2
  %23 = phi ptr [ %21, %17 ], [ null, %13 ], [ null, %9 ], [ null, %2 ]
  %24 = getelementptr inbounds %struct.usb_hub, ptr %23, i32 0, i32 27
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 25
  %27 = load i8, ptr %26, align 2
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %28, -1
  %30 = getelementptr ptr, ptr %25, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.usb_port, ptr %31, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %32) #20
  %33 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 40
  %34 = load i8, ptr %33, align 8
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %39, 5
  %41 = load i32, ptr %0, align 8
  %42 = shl i32 %41, 8
  %43 = or i32 %42, -2147483648
  br i1 %40, label %44, label %46

44:                                               ; preds = %37
  %45 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %43, i8 noundef zeroext 3, i8 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %48

46:                                               ; preds = %37
  %47 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %43, i8 noundef zeroext 3, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 768, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %5, 1024
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %54, label %242

54:                                               ; preds = %48, %22
  %55 = tail call i32 @usb_disable_usb2_hardware_lpm(ptr noundef %0) #20
  %56 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.usb_bus, ptr %57, i32 0, i32 11
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp ult i32 %61, 5
  br i1 %62, label %107, label %63

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 18
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %107, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.usb_host_bos, ptr %65, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %107, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %69, i32 0, i32 3
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 2
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %107, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = icmp ult i32 %78, 5
  br i1 %79, label %107, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 18
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %107, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.usb_host_bos, ptr %82, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %107, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %86, i32 0, i32 3
  %90 = load i8, ptr %89, align 1
  %91 = and i8 %90, 2
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %107, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %0, align 8
  %99 = shl i32 %98, 8
  %100 = or i32 %99, -2147483648
  %101 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %100, i8 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext 50, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.12) #19
  %105 = and i32 %5, 1024
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %225

107:                                              ; preds = %103, %97, %93, %88, %84, %80, %76, %71, %67, %63, %54
  %108 = getelementptr inbounds %struct.usb_hub, ptr %23, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.usb_device, ptr %109, i32 0, i32 16, i32 5
  %111 = load i8, ptr %110, align 2
  %112 = icmp eq i8 %111, 3
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load i32, ptr %109, align 8
  %115 = shl i32 %114, 8
  %116 = or i32 %115, -2147483648
  %117 = zext i8 %27 to i16
  %118 = or i16 %117, 768
  %119 = tail call i32 @usb_control_msg(ptr noundef %109, i32 noundef %116, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 5, i16 noundef zeroext %118, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %158

120:                                              ; preds = %107
  %121 = and i32 %5, 1024
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %152

123:                                              ; preds = %120
  %124 = icmp eq ptr %0, null
  br i1 %124, label %133, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129, %125, %123
  %134 = load i8, ptr %33, align 8
  br label %145

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.usb_host_config, ptr %127, i32 0, i32 3
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.usb_interface, ptr %137, i32 0, i32 7, i32 8
  %139 = load ptr, ptr %138, align 8
  %140 = load i8, ptr %33, align 8
  %141 = icmp eq ptr %139, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.usb_hub, ptr %139, i32 0, i32 19
  %144 = load i32, ptr %143, align 4
  br label %145

145:                                              ; preds = %142, %135, %133
  %146 = phi i8 [ %140, %142 ], [ %140, %135 ], [ %134, %133 ]
  %147 = phi i32 [ %144, %142 ], [ 0, %135 ], [ 0, %133 ]
  %148 = and i8 %146, 1
  %149 = zext i8 %148 to i32
  %150 = sub nsw i32 0, %149
  %151 = icmp eq i32 %147, %150
  br i1 %151, label %251, label %152

152:                                              ; preds = %145, %120
  %153 = load i32, ptr %109, align 8
  %154 = shl i32 %153, 8
  %155 = or i32 %154, -2147483648
  %156 = zext i8 %27 to i16
  %157 = tail call i32 @usb_control_msg(ptr noundef %109, i32 noundef %155, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 2, i16 noundef zeroext %156, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %158

158:                                              ; preds = %152, %113
  %159 = phi i32 [ %119, %113 ], [ %157, %152 ]
  switch i32 %159, label %179 [
    i32 0, label %248
    i32 -110, label %160
  ]

160:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #20
  store i16 0, ptr %3, align 2
  %161 = call fastcc i32 @hub_ext_port_status(ptr noundef %23, i32 noundef %28, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #20
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = load i16, ptr %3, align 2
  %165 = zext i16 %164 to i32
  %166 = load ptr, ptr %108, align 4
  %167 = getelementptr inbounds %struct.usb_device, ptr %166, i32 0, i32 16, i32 5
  %168 = load i8, ptr %167, align 2
  %169 = icmp eq i8 %168, 3
  %170 = and i32 %165, 480
  %171 = icmp eq i32 %170, 96
  %172 = zext i1 %171 to i32
  %173 = lshr i32 %165, 2
  %174 = and i32 %173, 1
  %175 = select i1 %169, i32 %172, i32 %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %163, %160
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  br label %179

178:                                              ; preds = %163
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  br label %248

179:                                              ; preds = %177, %158
  %180 = load ptr, ptr %56, align 8
  %181 = getelementptr inbounds %struct.usb_bus, ptr %180, i32 0, i32 11
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds %struct.usb_device, ptr %182, i32 0, i32 4
  %184 = load i32, ptr %183, align 4
  %185 = icmp ult i32 %184, 5
  br i1 %185, label %225, label %186

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.usb_device, ptr %182, i32 0, i32 18
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %225, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.usb_host_bos, ptr %188, i32 0, i32 2
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %225, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %192, i32 0, i32 3
  %196 = load i8, ptr %195, align 1
  %197 = and i8 %196, 2
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %225, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %201 = load i32, ptr %200, align 4
  %202 = icmp ult i32 %201, 5
  br i1 %202, label %225, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 18
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %225, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.usb_host_bos, ptr %205, i32 0, i32 2
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %225, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %209, i32 0, i32 3
  %213 = load i8, ptr %212, align 1
  %214 = and i8 %213, 2
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %225, label %216

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %225, label %220

220:                                              ; preds = %216
  %221 = load i32, ptr %0, align 8
  %222 = shl i32 %221, 8
  %223 = or i32 %222, -2147483648
  %224 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %223, i8 noundef zeroext 3, i8 noundef zeroext 0, i16 noundef zeroext 50, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %225

225:                                              ; preds = %220, %216, %211, %207, %203, %199, %194, %190, %186, %179, %103
  %226 = phi i32 [ -12, %103 ], [ %159, %179 ], [ %159, %186 ], [ %159, %190 ], [ %159, %194 ], [ %159, %199 ], [ %159, %203 ], [ %159, %207 ], [ %159, %211 ], [ %159, %216 ], [ %159, %220 ]
  %227 = tail call i32 @usb_enable_usb2_hardware_lpm(ptr noundef %0) #20
  %228 = load i8, ptr %33, align 8
  %229 = and i8 %228, 1
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %242, label %231

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %233 = load i32, ptr %232, align 4
  %234 = icmp ult i32 %233, 5
  %235 = load i32, ptr %0, align 8
  %236 = shl i32 %235, 8
  %237 = or i32 %236, -2147483648
  br i1 %234, label %238, label %240

238:                                              ; preds = %231
  %239 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %237, i8 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %242

240:                                              ; preds = %231
  %241 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %237, i8 noundef zeroext 3, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %242

242:                                              ; preds = %240, %238, %225, %48
  %243 = phi i32 [ %226, %225 ], [ %49, %48 ], [ %226, %238 ], [ %226, %240 ]
  %244 = and i32 %5, 1024
  %245 = icmp eq i32 %244, 0
  %246 = icmp eq i32 %243, 0
  %247 = select i1 %245, i1 true, i1 %246
  br i1 %247, label %262, label %278

248:                                              ; preds = %178, %158
  %249 = load i8, ptr %33, align 8
  %250 = or i8 %249, 4
  store i8 %250, ptr %33, align 8
  tail call void @msleep(i32 noundef 10) #20
  br label %251

251:                                              ; preds = %248, %145
  %252 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @device_state_lock) #20
  %253 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %254 = load i32, ptr %253, align 8
  switch i32 %254, label %255 [
    i32 0, label %261
    i32 8, label %260
  ]

255:                                              ; preds = %251
  %256 = load volatile i32, ptr @jiffies, align 64
  %257 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 38
  %258 = load i32, ptr %257, align 8
  %259 = add i32 %258, %256
  store i32 %259, ptr %257, align 8
  br label %260

260:                                              ; preds = %255, %251
  store i32 8, ptr %253, align 8
  br label %261

261:                                              ; preds = %260, %251
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %252) #20
  br label %262

262:                                              ; preds = %261, %242
  %263 = load i8, ptr %33, align 8
  %264 = and i8 %263, 1
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %278

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %268 = load i16, ptr %267, align 1
  %269 = and i16 %268, 2
  %270 = icmp eq i16 %269, 0
  br i1 %270, label %278, label %271

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.usb_hub, ptr %23, i32 0, i32 14
  %273 = tail call i32 @_test_and_clear_bit(i32 noundef %28, ptr noundef %272) #20
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.usb_port, ptr %31, i32 0, i32 1
  %277 = tail call i32 @__pm_runtime_idle(ptr noundef %276, i32 noundef 4) #20
  br label %278

278:                                              ; preds = %275, %271, %266, %262, %242
  %279 = phi i32 [ 0, %275 ], [ 0, %271 ], [ 0, %266 ], [ 0, %262 ], [ %243, %242 ]
  %280 = getelementptr inbounds %struct.usb_hub, ptr %23, i32 0, i32 1
  %281 = load ptr, ptr %280, align 4
  %282 = tail call i64 @ktime_get_mono_fast_ns() #20
  %283 = getelementptr inbounds %struct.usb_device, ptr %281, i32 0, i32 15, i32 11, i32 22
  store volatile i64 %282, ptr %283, align 8
  tail call void @mutex_unlock(ptr noundef %32) #20
  ret i32 %279
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disable_usb2_hardware_lpm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_enable_usb2_hardware_lpm(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_disable_remote_wakeup(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 5
  %5 = load i32, ptr %0, align 8
  %6 = shl i32 %5, 8
  %7 = or i32 %6, -2147483648
  br i1 %4, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %12

10:                                               ; preds = %1
  %11 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %7, i8 noundef zeroext 3, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_port_resume(ptr noundef %0, [1 x i32] %1) local_unnamed_addr #1 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 35
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.usb_host_config, ptr %13, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7, i32 8
  %23 = load ptr, ptr %22, align 8
  br label %24

24:                                               ; preds = %19, %15, %11, %2
  %25 = phi ptr [ %23, %19 ], [ null, %15 ], [ null, %11 ], [ null, %2 ]
  %26 = getelementptr inbounds %struct.usb_hub, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 25
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %30, -1
  %32 = getelementptr ptr, ptr %27, i32 %31
  %33 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #20
  store i16 0, ptr %6, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #20
  store i16 0, ptr %7, align 2, !annotation !21
  %34 = getelementptr inbounds %struct.usb_hub, ptr %25, i32 0, i32 14
  %35 = tail call i32 @_test_and_set_bit(i32 noundef %30, ptr noundef %34) #20
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.usb_port, ptr %33, i32 0, i32 1
  %39 = tail call i32 @__pm_runtime_resume(ptr noundef %38, i32 noundef 4) #20
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.usb_port, ptr %33, i32 0, i32 1, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #20, !srcloc !8
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 0, i32 -1, ptr elementtype(i32) %42) #20, !srcloc !23
  %44 = extractvalue { i32, i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %367, label %46

46:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !24
  br label %367

47:                                               ; preds = %37, %24
  %48 = getelementptr inbounds %struct.usb_port, ptr %33, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %48) #20
  %49 = call fastcc i32 @hub_ext_port_status(ptr noundef %25, i32 noundef %30, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef null) #20
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.usb_hub, ptr %25, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 16, i32 5
  %55 = load i8, ptr %54, align 2
  br label %77

56:                                               ; preds = %47
  %57 = load i16, ptr %7, align 2
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.usb_hub, ptr %25, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.usb_device, ptr %60, i32 0, i32 16, i32 5
  %62 = load i8, ptr %61, align 2
  %63 = icmp eq i8 %62, 3
  %64 = and i32 %58, 480
  %65 = icmp eq i32 %64, 96
  %66 = zext i1 %65 to i32
  %67 = lshr i32 %58, 2
  %68 = and i32 %67, 1
  %69 = select i1 %63, i32 %66, i32 %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = load i16, ptr %6, align 2
  %73 = and i16 %72, 4
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void @pm_wakeup_dev_event(ptr noundef %76, i32 noundef 0, i1 noundef zeroext false) #20
  br label %95

77:                                               ; preds = %56, %51
  %78 = phi i8 [ %55, %51 ], [ %62, %56 ]
  %79 = phi ptr [ %53, %51 ], [ %60, %56 ]
  %80 = icmp eq i8 %78, 3
  %81 = load i32, ptr %79, align 8
  %82 = shl i32 %81, 8
  %83 = or i32 %82, -2147483648
  %84 = zext i8 %29 to i16
  br i1 %80, label %85, label %87

85:                                               ; preds = %77
  %86 = tail call i32 @usb_control_msg(ptr noundef %79, i32 noundef %83, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 5, i16 noundef zeroext %84, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %89

87:                                               ; preds = %77
  %88 = tail call i32 @usb_control_msg(ptr noundef %79, i32 noundef %83, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 2, i16 noundef zeroext %84, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %119

92:                                               ; preds = %89
  tail call void @msleep(i32 noundef 40) #20
  %93 = call fastcc i32 @hub_ext_port_status(ptr noundef %25, i32 noundef %30, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef null) #20
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %92, %75, %71
  %96 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 40
  %97 = load i8, ptr %96, align 8
  %98 = and i8 %97, -5
  store i8 %98, ptr %96, align 8
  %99 = getelementptr inbounds %struct.usb_hub, ptr %25, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.usb_device, ptr %100, i32 0, i32 16, i32 5
  %102 = load i8, ptr %101, align 2
  %103 = icmp eq i8 %102, 3
  %104 = load i16, ptr %6, align 2
  br i1 %103, label %105, label %108

105:                                              ; preds = %95
  %106 = and i16 %104, 64
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %118, label %111

108:                                              ; preds = %95
  %109 = and i16 %104, 4
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %108, %105
  %112 = phi i16 [ 25, %105 ], [ 18, %108 ]
  %113 = load i32, ptr %100, align 8
  %114 = shl i32 %113, 8
  %115 = or i32 %114, -2147483648
  %116 = zext i8 %29 to i16
  %117 = tail call i32 @usb_control_msg(ptr noundef %100, i32 noundef %115, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext %112, i16 noundef zeroext %116, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %118

118:                                              ; preds = %111, %108, %105
  tail call void @msleep(i32 noundef 10) #20
  br label %119

119:                                              ; preds = %118, %92, %89
  %120 = phi i32 [ 0, %118 ], [ %93, %92 ], [ %90, %89 ]
  %121 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %122 = load i16, ptr %121, align 1
  %123 = and i16 %122, 2
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %150, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.usb_hub, ptr %25, i32 0, i32 1
  br label %127

127:                                              ; preds = %144, %125
  %128 = phi i32 [ 0, %125 ], [ %145, %144 ]
  %129 = load i16, ptr %7, align 2
  %130 = zext i16 %129 to i32
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %127
  %134 = load i16, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5)
  store i16 %134, ptr %4, align 2
  store i16 %129, ptr %5, align 2
  br label %155

135:                                              ; preds = %127
  %136 = load ptr, ptr %126, align 4
  %137 = getelementptr inbounds %struct.usb_device, ptr %136, i32 0, i32 16, i32 5
  %138 = load i8, ptr %137, align 2
  %139 = icmp eq i8 %138, 3
  %140 = select i1 %139, i32 512, i32 256
  %141 = and i32 %140, %130
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5)
  br label %247

144:                                              ; preds = %135
  tail call void @msleep(i32 noundef 20) #20
  %145 = add nuw nsw i32 %128, 20
  %146 = call fastcc i32 @hub_ext_port_status(ptr noundef %25, i32 noundef %30, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef null) #20
  %147 = icmp ugt i32 %128, 1979
  %148 = icmp ne i32 %146, 0
  %149 = select i1 %147, i1 true, i1 %148
  br i1 %149, label %150, label %127

150:                                              ; preds = %144, %119
  %151 = phi i32 [ %120, %119 ], [ %146, %144 ]
  %152 = load i16, ptr %6, align 2
  %153 = load i16, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5)
  store i16 %152, ptr %4, align 2
  store i16 %153, ptr %5, align 2
  %154 = icmp eq i32 %151, 0
  br i1 %154, label %155, label %198

155:                                              ; preds = %150, %133
  %156 = phi i16 [ %129, %133 ], [ %153, %150 ]
  %157 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 40
  %158 = getelementptr inbounds %struct.usb_hub, ptr %25, i32 0, i32 1
  %159 = getelementptr inbounds %struct.usb_hub, ptr %25, i32 0, i32 15
  %160 = lshr i32 %30, 5
  %161 = getelementptr i32, ptr %159, i32 %160
  %162 = and i32 %30, 31
  %163 = shl nuw i32 1, %162
  br label %164

164:                                              ; preds = %209, %155
  %165 = phi i16 [ %156, %155 ], [ %211, %209 ]
  %166 = phi i32 [ 3, %155 ], [ %210, %209 ]
  %167 = load i8, ptr %157, align 8
  %168 = and i8 %167, 2
  %169 = icmp eq i8 %168, 0
  %170 = load ptr, ptr %158, align 4
  %171 = getelementptr inbounds %struct.usb_device, ptr %170, i32 0, i32 16, i32 5
  %172 = load i8, ptr %171, align 2
  %173 = xor i1 %169, true
  %174 = icmp eq i8 %172, 3
  %175 = select i1 %173, i1 %174, i1 false
  br i1 %175, label %176, label %183

176:                                              ; preds = %164
  %177 = load volatile i32, ptr %161, align 4
  %178 = and i32 %177, %163
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %224

180:                                              ; preds = %176
  %181 = trunc i16 %165 to i9
  %182 = and i9 %181, -32
  switch i9 %182, label %183 [
    i9 -192, label %224
    i9 192, label %224
  ]

183:                                              ; preds = %180, %164
  %184 = phi i8 [ 3, %180 ], [ %172, %164 ]
  %185 = zext i16 %165 to i32
  %186 = icmp eq i8 %184, 3
  %187 = and i32 %185, 480
  %188 = icmp eq i32 %187, 96
  %189 = zext i1 %188 to i32
  %190 = lshr i32 %185, 2
  %191 = and i32 %190, 1
  %192 = select i1 %186, i32 %189, i32 %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %222

194:                                              ; preds = %183
  %195 = select i1 %186, i32 512, i32 256
  %196 = and i32 %195, %185
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %222, label %201

198:                                              ; preds = %206, %150
  %199 = phi i32 [ %151, %150 ], [ %207, %206 ]
  %200 = icmp sgt i32 %199, -1
  br i1 %200, label %222, label %247

201:                                              ; preds = %194
  %202 = and i32 %185, 1
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = icmp eq i32 %166, 0
  br i1 %205, label %247, label %206

206:                                              ; preds = %204
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #20
  %207 = call fastcc i32 @hub_ext_port_status(ptr noundef %25, i32 noundef %30, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef null) #20
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %198

209:                                              ; preds = %206
  %210 = add nsw i32 %166, -1
  %211 = load i16, ptr %5, align 2
  br label %164

212:                                              ; preds = %201
  %213 = and i16 %165, 2
  %214 = icmp ne i16 %213, 0
  %215 = select i1 %214, i1 true, i1 %173
  br i1 %215, label %223, label %216

216:                                              ; preds = %212
  %217 = load i16, ptr %121, align 1
  %218 = and i16 %217, 2
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %247, label %220

220:                                              ; preds = %216
  %221 = or i8 %167, 2
  store i8 %221, ptr %157, align 8
  br label %224

222:                                              ; preds = %198, %194, %183
  br label %247

223:                                              ; preds = %212
  br i1 %169, label %249, label %224

224:                                              ; preds = %223, %220, %180, %180, %176
  %225 = load i16, ptr %4, align 2
  %226 = and i16 %225, 1
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %224
  %229 = load ptr, ptr %158, align 4
  %230 = load i32, ptr %229, align 8
  %231 = shl i32 %230, 8
  %232 = or i32 %231, -2147483648
  %233 = zext i8 %29 to i16
  %234 = tail call i32 @usb_control_msg(ptr noundef %229, i32 noundef %232, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 16, i16 noundef zeroext %233, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %235

235:                                              ; preds = %228, %224
  %236 = and i16 %225, 2
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %235
  %239 = load ptr, ptr %158, align 4
  %240 = load i32, ptr %239, align 8
  %241 = shl i32 %240, 8
  %242 = or i32 %241, -2147483648
  %243 = zext i8 %29 to i16
  %244 = tail call i32 @usb_control_msg(ptr noundef %239, i32 noundef %242, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 17, i16 noundef zeroext %243, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %245

245:                                              ; preds = %238, %235
  %246 = getelementptr inbounds %struct.usb_hub, ptr %25, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef %30, ptr noundef %246) #20
  br label %249

247:                                              ; preds = %222, %216, %204, %198, %143
  %248 = phi i32 [ -19, %143 ], [ -19, %222 ], [ -19, %216 ], [ %199, %198 ], [ -19, %204 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5)
  br label %313

249:                                              ; preds = %245, %223
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #20
  store i16 0, ptr %3, align 2
  %250 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  %253 = select i1 %252, i32 6, i32 7
  tail call void @usb_set_device_state(ptr noundef %0, i32 noundef %253) #20
  %254 = load i8, ptr %157, align 8
  %255 = and i8 %254, 2
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %278, %249
  %258 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 36
  %259 = load i32, ptr %258, align 8
  %260 = and i32 %259, 16
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %257
  %263 = call fastcc i32 @usb_reset_and_verify_device(ptr noundef %0) #20
  br label %264

264:                                              ; preds = %262, %257, %249
  %265 = phi i32 [ %263, %262 ], [ 0, %249 ], [ -19, %257 ]
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %310

267:                                              ; preds = %264
  store i16 0, ptr %3, align 2
  %268 = call i32 @usb_get_status(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #20
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %280, label %270

270:                                              ; preds = %267
  %271 = load i8, ptr %157, align 8
  %272 = and i8 %271, 2
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %310

274:                                              ; preds = %270
  %275 = load i16, ptr %121, align 1
  %276 = and i16 %275, 2
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %310, label %278

278:                                              ; preds = %274
  %279 = or i8 %271, 2
  store i8 %279, ptr %157, align 8
  br label %257

280:                                              ; preds = %267
  %281 = load ptr, ptr %250, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %309, label %283

283:                                              ; preds = %280
  %284 = load i8, ptr %157, align 8
  %285 = and i8 %284, 2
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %287, label %309

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %289 = load i32, ptr %288, align 4
  %290 = icmp ult i32 %289, 5
  br i1 %290, label %291, label %300

291:                                              ; preds = %287
  %292 = load i16, ptr %3, align 2
  %293 = and i16 %292, 2
  %294 = icmp eq i16 %293, 0
  br i1 %294, label %309, label %295

295:                                              ; preds = %291
  %296 = load i32, ptr %0, align 8
  %297 = shl i32 %296, 8
  %298 = or i32 %297, -2147483648
  %299 = call i32 @usb_control_msg(ptr noundef %0, i32 noundef %298, i8 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %309

300:                                              ; preds = %287
  %301 = call i32 @usb_get_status(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #20
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %300
  %304 = load i16, ptr %3, align 2
  %305 = and i16 %304, 3
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %309, label %307

307:                                              ; preds = %303
  %308 = call fastcc i32 @usb_disable_remote_wakeup(ptr noundef %0) #20
  br label %309

309:                                              ; preds = %307, %303, %300, %295, %291, %283, %280
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  br label %317

310:                                              ; preds = %274, %270, %264
  %311 = phi i32 [ %265, %264 ], [ %268, %274 ], [ %268, %270 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %310, %247
  %314 = phi i32 [ %248, %247 ], [ %311, %310 ]
  %315 = call fastcc i32 @hub_port_disable(ptr noundef %25, i32 noundef %30, i32 noundef 1) #20
  %316 = getelementptr inbounds %struct.usb_hub, ptr %25, i32 0, i32 10
  call void @_set_bit(i32 noundef %30, ptr noundef %316) #20
  call fastcc void @kick_hub_wq(ptr noundef %25) #20
  br label %365

317:                                              ; preds = %310, %309
  %318 = phi i32 [ 0, %309 ], [ %311, %310 ]
  %319 = call i32 @usb_enable_usb2_hardware_lpm(ptr noundef %0) #20
  %320 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %321 = load ptr, ptr %320, align 8
  %322 = getelementptr inbounds %struct.usb_bus, ptr %321, i32 0, i32 11
  %323 = load ptr, ptr %322, align 8
  %324 = getelementptr inbounds %struct.usb_device, ptr %323, i32 0, i32 4
  %325 = load i32, ptr %324, align 4
  %326 = icmp ult i32 %325, 5
  br i1 %326, label %365, label %327

327:                                              ; preds = %317
  %328 = getelementptr inbounds %struct.usb_device, ptr %323, i32 0, i32 18
  %329 = load ptr, ptr %328, align 4
  %330 = icmp eq ptr %329, null
  br i1 %330, label %365, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.usb_host_bos, ptr %329, i32 0, i32 2
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %365, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %333, i32 0, i32 3
  %337 = load i8, ptr %336, align 1
  %338 = and i8 %337, 2
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %365, label %340

340:                                              ; preds = %335
  %341 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %342 = load i32, ptr %341, align 4
  %343 = icmp ult i32 %342, 5
  br i1 %343, label %365, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 18
  %346 = load ptr, ptr %345, align 4
  %347 = icmp eq ptr %346, null
  br i1 %347, label %365, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.usb_host_bos, ptr %346, i32 0, i32 2
  %350 = load ptr, ptr %349, align 4
  %351 = icmp eq ptr %350, null
  br i1 %351, label %365, label %352

352:                                              ; preds = %348
  %353 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %350, i32 0, i32 3
  %354 = load i8, ptr %353, align 1
  %355 = and i8 %354, 2
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %365, label %357

357:                                              ; preds = %352
  %358 = load ptr, ptr %250, align 4
  %359 = icmp eq ptr %358, null
  br i1 %359, label %365, label %360

360:                                              ; preds = %357
  %361 = load i32, ptr %0, align 8
  %362 = shl i32 %361, 8
  %363 = or i32 %362, -2147483648
  %364 = call i32 @usb_control_msg(ptr noundef %0, i32 noundef %363, i8 noundef zeroext 3, i8 noundef zeroext 0, i16 noundef zeroext 50, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %365

365:                                              ; preds = %360, %357, %352, %348, %344, %340, %335, %331, %327, %317, %313
  %366 = phi i32 [ %314, %313 ], [ %318, %317 ], [ %318, %327 ], [ %318, %331 ], [ %318, %335 ], [ %318, %340 ], [ %318, %344 ], [ %318, %348 ], [ %318, %352 ], [ %318, %357 ], [ %318, %360 ]
  call void @mutex_unlock(ptr noundef %48) #20
  br label %367

367:                                              ; preds = %365, %46, %41
  %368 = phi i32 [ %366, %365 ], [ %39, %41 ], [ %39, %46 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #20
  ret i32 %368
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_remote_wakeup(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 9
  tail call void @mutex_lock(ptr noundef %2) #20
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @usb_autoresume_device(ptr noundef %0) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @usb_autosuspend_device(ptr noundef %0) #20
  br label %10

10:                                               ; preds = %9, %6, %1
  %11 = phi i32 [ 0, %9 ], [ %7, %6 ], [ 0, %1 ]
  tail call void @mutex_unlock(ptr noundef %2) #20
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_root_hub_lost_power(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %2, ptr noundef nonnull @.str.13) #19
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 40
  %4 = load i8, ptr %3, align 8
  %5 = or i8 %4, 2
  store i8 %5, ptr %3, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_disable_lpm(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 5
  br i1 %10, label %48, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %13 = load i16, ptr %12, align 1
  %14 = and i16 %13, 64
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = icmp ult i32 %18, 7
  br i1 %19, label %48, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.usb_hcd, ptr %22, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.hc_driver, ptr %26, i32 0, i32 42
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 47
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 45, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 46, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37, %30
  %42 = tail call fastcc i32 @usb_disable_link_state(ptr noundef nonnull %22, ptr noundef nonnull %0, i32 noundef 1)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = tail call fastcc i32 @usb_disable_link_state(ptr noundef nonnull %22, ptr noundef nonnull %0, i32 noundef 2)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44, %41
  tail call void @usb_enable_lpm(ptr noundef nonnull %0)
  br label %48

48:                                               ; preds = %47, %44, %37, %24, %20, %16, %11, %7, %3, %1
  %49 = phi i32 [ -16, %47 ], [ 0, %16 ], [ 0, %11 ], [ 0, %7 ], [ 0, %3 ], [ 0, %1 ], [ 0, %24 ], [ 0, %20 ], [ 0, %37 ], [ 0, %44 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_disable_link_state(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.usb_disable_link_state) #19
  br label %70

8:                                                ; preds = %3
  switch i32 %2, label %9 [
    i32 1, label %11
    i32 2, label %12
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.usb_set_lpm_timeout) #19
  br label %70

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i1 [ true, %11 ], [ false, %8 ]
  %14 = phi i16 [ 23, %11 ], [ 24, %8 ]
  %15 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 25
  %18 = load i8, ptr %17, align 2
  %19 = load i32, ptr %16, align 8
  %20 = shl i32 %19, 8
  %21 = or i32 %20, -2147483648
  %22 = zext i8 %18 to i16
  %23 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %21, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext %14, i16 noundef zeroext %22, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %27 = getelementptr [4 x ptr], ptr @usb3_lpm_names, i32 0, i32 %2
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.29, ptr noundef %28, i32 noundef 0, i32 noundef %23) #19
  br label %70

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46, i32 3
  %31 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 3
  %32 = select i1 %13, ptr %31, ptr %30
  store i32 0, ptr %32, align 4
  switch i32 %2, label %34 [
    i32 1, label %36
    i32 2, label %33
  ]

33:                                               ; preds = %29
  br label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.usb_set_device_initiated_lpm, ptr noundef nonnull @.str.32) #19
  br label %51

36:                                               ; preds = %33, %29
  %37 = phi i16 [ 49, %33 ], [ 48, %29 ]
  %38 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 3
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, ptr %1, align 8
  %43 = shl i32 %42, 8
  %44 = or i32 %43, -2147483648
  %45 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %44, i8 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext %37, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %49 = getelementptr [4 x ptr], ptr @usb3_lpm_names, i32 0, i32 %2
  %50 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.35, ptr noundef %50) #19
  br label %51

51:                                               ; preds = %47, %41, %36, %34
  %52 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.hc_driver, ptr %53, i32 0, i32 42
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %55(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %60 = getelementptr [4 x ptr], ptr @usb3_lpm_names, i32 0, i32 %2
  %61 = load ptr, ptr %60, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.26, ptr noundef %61) #19
  br label %62

62:                                               ; preds = %58, %51
  %63 = icmp eq i32 %2, 1
  %64 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 28
  %65 = load i16, ptr %64, align 1
  br i1 %63, label %66, label %68

66:                                               ; preds = %62
  %67 = and i16 %65, -2049
  store i16 %67, ptr %64, align 1
  br label %70

68:                                               ; preds = %62
  %69 = and i16 %65, -4097
  store i16 %69, ptr %64, align 1
  br label %70

70:                                               ; preds = %68, %66, %25, %9, %6
  %71 = phi i32 [ -22, %6 ], [ 0, %68 ], [ 0, %66 ], [ -16, %9 ], [ -16, %25 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_enable_lpm(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %73, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %73, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 5
  br i1 %10, label %73, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %13 = load i16, ptr %12, align 1
  %14 = and i16 %13, 64
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %73, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = icmp ult i32 %18, 7
  br i1 %19, label %73, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 47
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %73, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.usb_hcd, ptr %25, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.hc_driver, ptr %29, i32 0, i32 41
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %73, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.hc_driver, ptr %29, i32 0, i32 42
  %35 = load ptr, ptr %34, align 4
  %36 = icmp ne ptr %35, null
  %37 = icmp eq i32 %23, 0
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %73

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 20
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %73, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 35
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %73, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.usb_host_config, ptr %41, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.usb_interface, ptr %49, i32 0, i32 7, i32 8
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %73, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.usb_hub, ptr %51, i32 0, i32 27
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 25
  %57 = load i8, ptr %56, align 2
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %58, -1
  %60 = getelementptr ptr, ptr %55, i32 %59
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.usb_port, ptr %61, i32 0, i32 11
  %63 = load i8, ptr %62, align 4
  %64 = and i8 %63, 2
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %53
  tail call fastcc void @usb_enable_link_state(ptr noundef nonnull %25, ptr noundef nonnull %0, i32 noundef 1)
  %67 = load i8, ptr %62, align 4
  br label %68

68:                                               ; preds = %66, %53
  %69 = phi i8 [ %67, %66 ], [ %63, %53 ]
  %70 = and i8 %69, 4
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call fastcc void @usb_enable_link_state(ptr noundef nonnull %25, ptr noundef nonnull %0, i32 noundef 2)
  br label %73

73:                                               ; preds = %72, %68, %47, %43, %39, %33, %27, %20, %16, %11, %7, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_unlocked_disable_lpm(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  tail call void @mutex_lock(ptr noundef %7) #20
  %8 = tail call i32 @usb_disable_lpm(ptr noundef %0)
  %9 = load ptr, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef %9) #20
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %8, %5 ], [ -22, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usb_enable_link_state(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_host_bos, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %7, i32 0, i32 6
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i32 %2, 1
  %11 = icmp eq i8 %9, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %168, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %7, i32 0, i32 7
  %15 = load i16, ptr %14, align 1
  %16 = icmp eq i32 %2, 2
  %17 = icmp eq i16 %15, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %168, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 999
  %27 = udiv i32 %26, 1000
  %28 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 999
  %31 = udiv i32 %30, 1000
  %32 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 999
  %35 = udiv i32 %34, 1000
  %36 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 999
  %39 = udiv i32 %38, 1000
  switch i32 %2, label %48 [
    i32 1, label %40
    i32 2, label %44
  ]

40:                                               ; preds = %23
  %41 = icmp ugt i32 %26, 255999
  %42 = icmp ugt i32 %30, 255999
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %69, label %48

44:                                               ; preds = %23
  %45 = icmp ugt i32 %34, 65535999
  %46 = icmp ugt i32 %38, 65535999
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %69, label %48

48:                                               ; preds = %44, %40, %23
  %49 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3072, i32 noundef 6) #21
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52

52:                                               ; preds = %48
  %53 = tail call i32 @llvm.umin.i32(i32 %39, i32 65535) #20
  %54 = tail call i32 @llvm.umin.i32(i32 %35, i32 65535) #20
  %55 = tail call i32 @llvm.umin.i32(i32 %31, i32 255) #20
  %56 = tail call i32 @llvm.umin.i32(i32 %27, i32 255) #20
  %57 = trunc i32 %56 to i8
  store i8 %57, ptr %50, align 8
  %58 = trunc i32 %55 to i8
  %59 = getelementptr inbounds %struct.usb_set_sel_req, ptr %50, i32 0, i32 1
  store i8 %58, ptr %59, align 1
  %60 = trunc i32 %54 to i16
  %61 = getelementptr inbounds %struct.usb_set_sel_req, ptr %50, i32 0, i32 2
  store i16 %60, ptr %61, align 2
  %62 = trunc i32 %53 to i16
  %63 = getelementptr inbounds %struct.usb_set_sel_req, ptr %50, i32 0, i32 3
  store i16 %62, ptr %63, align 4
  %64 = load i32, ptr %1, align 8
  %65 = shl i32 %64, 8
  %66 = or i32 %65, -2147483648
  %67 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %66, i8 noundef zeroext 48, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %50, i16 noundef zeroext 6, i32 noundef 5000) #20
  tail call void @kfree(ptr noundef nonnull %50) #20
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %52, %48, %44, %40
  %70 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %71 = getelementptr [4 x ptr], ptr @usb3_lpm_names, i32 0, i32 %2
  %72 = load ptr, ptr %71, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.40, ptr noundef %72) #19
  br label %168

73:                                               ; preds = %52, %19
  %74 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.hc_driver, ptr %75, i32 0, i32 41
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 %77(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %168, label %80

80:                                               ; preds = %73
  %81 = icmp slt i32 %78, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %84 = getelementptr [4 x ptr], ptr @usb3_lpm_names, i32 0, i32 %2
  %85 = load ptr, ptr %84, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.41, ptr noundef %85, i32 noundef %78) #19
  br label %168

86:                                               ; preds = %80
  %87 = tail call fastcc i32 @usb_set_lpm_timeout(ptr noundef %1, i32 noundef %2, i32 noundef %78)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %74, align 4
  %91 = getelementptr inbounds %struct.hc_driver, ptr %90, i32 0, i32 42
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 %92(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  br label %168

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 20
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %158, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.usb_config_descriptor, ptr %96, i32 0, i32 3
  %100 = load i8, ptr %99, align 4
  %101 = zext i8 %100 to i32
  %102 = icmp eq i8 %100, 0
  br i1 %102, label %149, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 2
  %105 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46, i32 2
  %106 = select i1 %10, ptr %104, ptr %105
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, 999
  %109 = udiv i32 %108, 1000
  %110 = add nuw nsw i32 %109, 125
  br label %111

111:                                              ; preds = %143, %103
  %112 = phi i1 [ true, %103 ], [ %145, %143 ]
  %113 = phi i32 [ 0, %103 ], [ %144, %143 ]
  %114 = getelementptr %struct.usb_host_config, ptr %96, i32 0, i32 3, i32 %113
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %143, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.usb_interface, ptr %115, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %119, i32 0, i32 4
  %121 = load i8, ptr %120, align 4
  %122 = zext i8 %121 to i32
  %123 = icmp eq i8 %121, 0
  br i1 %123, label %143, label %124

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.usb_host_interface, ptr %119, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  br label %127

127:                                              ; preds = %140, %124
  %128 = phi i32 [ 0, %124 ], [ %141, %140 ]
  %129 = getelementptr %struct.usb_host_endpoint, ptr %126, i32 %128
  %130 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %129, i32 0, i32 3
  %131 = load i8, ptr %130, align 1
  %132 = trunc i8 %131 to i2
  switch i2 %132, label %140 [
    i2 -1, label %133
    i2 1, label %133
  ]

133:                                              ; preds = %127, %127
  %134 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %129, i32 0, i32 5
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = add nsw i32 %136, -1
  %138 = shl i32 125, %137
  %139 = icmp ugt i32 %110, %138
  br i1 %139, label %147, label %140

140:                                              ; preds = %133, %127
  %141 = add nuw nsw i32 %128, 1
  %142 = icmp eq i32 %141, %122
  br i1 %142, label %143, label %127

143:                                              ; preds = %140, %117, %111
  %144 = add nuw nsw i32 %113, 1
  %145 = icmp ult i32 %144, %101
  %146 = icmp eq i32 %144, %101
  br i1 %146, label %147, label %111

147:                                              ; preds = %143, %133
  %148 = phi i1 [ %112, %133 ], [ %145, %143 ]
  br i1 %148, label %158, label %149

149:                                              ; preds = %147, %98
  %150 = tail call fastcc i32 @usb_set_device_initiated_lpm(ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = tail call fastcc i32 @usb_set_lpm_timeout(ptr noundef %1, i32 noundef %2, i32 noundef 0)
  %154 = load ptr, ptr %74, align 4
  %155 = getelementptr inbounds %struct.hc_driver, ptr %154, i32 0, i32 42
  %156 = load ptr, ptr %155, align 4
  %157 = tail call i32 %156(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  br label %168

158:                                              ; preds = %149, %147, %94
  br i1 %10, label %159, label %163

159:                                              ; preds = %158
  %160 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 28
  %161 = load i16, ptr %160, align 1
  %162 = or i16 %161, 2048
  store i16 %162, ptr %160, align 1
  br label %168

163:                                              ; preds = %158
  br i1 %16, label %164, label %168

164:                                              ; preds = %163
  %165 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 28
  %166 = load i16, ptr %165, align 1
  %167 = or i16 %166, 4096
  store i16 %167, ptr %165, align 1
  br label %168

168:                                              ; preds = %164, %163, %159, %152, %89, %82, %73, %69, %13, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_unlocked_enable_lpm(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  tail call void @mutex_lock(ptr noundef %7) #20
  tail call void @usb_enable_lpm(ptr noundef %0)
  %8 = load ptr, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef %8) #20
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_port_disable(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 35
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_host_config, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 8
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %13, %9, %5, %1
  %19 = phi ptr [ %17, %13 ], [ null, %9 ], [ null, %5 ], [ null, %1 ]
  %20 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 25
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = tail call fastcc i32 @hub_port_disable(ptr noundef %19, i32 noundef %22, i32 noundef 0)
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hub_port_disable(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = add i32 %1, -1
  %7 = getelementptr ptr, ptr %5, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %71

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 16, i32 5
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i8 %16, 3
  br i1 %17, label %18, label %65

18:                                               ; preds = %14
  %19 = load ptr, ptr %8, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %55, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 40
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, 5
  %25 = icmp eq i8 %24, 5
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.usb_port, ptr %8, i32 0, i32 9
  %28 = load i8, ptr %27, align 4
  %29 = load i32, ptr %10, align 8
  %30 = shl i32 %29, 8
  %31 = or i32 %30, -2147483648
  %32 = zext i8 %28 to i16
  %33 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %31, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 5, i16 noundef zeroext %32, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %26
  tail call void @msleep(i32 noundef 40) #20
  %36 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp ult i32 %37, 5
  %39 = load i32, ptr %19, align 8
  %40 = shl i32 %39, 8
  %41 = or i32 %40, -2147483648
  br i1 %38, label %42, label %44

42:                                               ; preds = %35
  %43 = tail call i32 @usb_control_msg(ptr noundef nonnull %19, i32 noundef %41, i8 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %46

44:                                               ; preds = %35
  %45 = tail call i32 @usb_control_msg(ptr noundef nonnull %19, i32 noundef %41, i8 noundef zeroext 3, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46, %26
  %50 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.43) #19
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i8, ptr %22, align 8
  %53 = and i8 %52, -2
  store i8 %53, ptr %22, align 8
  %54 = load ptr, ptr %9, align 4
  br label %55

55:                                               ; preds = %51, %21, %18
  %56 = phi ptr [ %10, %18 ], [ %10, %21 ], [ %54, %51 ]
  %57 = getelementptr inbounds %struct.usb_port, ptr %8, i32 0, i32 9
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i16
  %60 = or i16 %59, 768
  %61 = load i32, ptr %56, align 8
  %62 = shl i32 %61, 8
  %63 = or i32 %62, -2147483648
  %64 = tail call i32 @usb_control_msg(ptr noundef %56, i32 noundef %63, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 5, i16 noundef zeroext %60, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %71

65:                                               ; preds = %14
  %66 = load i32, ptr %10, align 8
  %67 = shl i32 %66, 8
  %68 = or i32 %67, -2147483648
  %69 = trunc i32 %1 to i16
  %70 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %68, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 1, i16 noundef zeroext %69, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %71

71:                                               ; preds = %65, %55, %3
  %72 = phi i32 [ 0, %3 ], [ %64, %55 ], [ %70, %65 ]
  %73 = load ptr, ptr %8, align 8
  %74 = icmp ne ptr %73, null
  %75 = icmp ne i32 %2, 0
  %76 = and i1 %75, %74
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @device_state_lock) #20
  %79 = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 3
  %80 = load i32, ptr %79, align 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  tail call fastcc void @recursively_mark_NOTATTACHED(ptr noundef nonnull %73) #20
  br label %83

83:                                               ; preds = %82, %77
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %78) #20
  br label %84

84:                                               ; preds = %83, %71
  switch i32 %72, label %85 [
    i32 -19, label %87
    i32 0, label %87
  ]

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.usb_port, ptr %8, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.42, i32 noundef %72) #19
  br label %87

87:                                               ; preds = %85, %84, %84
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hub_port_debounce(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #20
  store i16 0, ptr %4, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #20
  store i16 0, ptr %5, align 2, !annotation !21
  %6 = call fastcc i32 @hub_ext_port_status(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef null) #20
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 1
  %10 = trunc i32 %1 to i16
  %11 = xor i1 %2, true
  br label %12

12:                                               ; preds = %40, %8
  %13 = phi i32 [ 0, %8 ], [ %37, %40 ]
  %14 = phi i32 [ 0, %8 ], [ %41, %40 ]
  %15 = phi i32 [ 65535, %8 ], [ %38, %40 ]
  %16 = load i16, ptr %4, align 2
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  %19 = load i16, ptr %5, align 2
  %20 = and i16 %19, 1
  %21 = zext i16 %20 to i32
  br i1 %18, label %22, label %30

22:                                               ; preds = %12
  %23 = icmp eq i32 %15, %21
  br i1 %23, label %24, label %36

24:                                               ; preds = %22
  %25 = icmp eq i32 %15, 1
  %26 = select i1 %11, i1 true, i1 %25
  %27 = add nsw i32 %13, 25
  %28 = select i1 %26, i32 %27, i32 %13
  %29 = icmp sgt i32 %28, 99
  br i1 %29, label %44, label %36

30:                                               ; preds = %12
  %31 = load ptr, ptr %9, align 4
  %32 = load i32, ptr %31, align 8
  %33 = shl i32 %32, 8
  %34 = or i32 %33, -2147483648
  %35 = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %34, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 16, i16 noundef zeroext %10, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %36

36:                                               ; preds = %30, %24, %22
  %37 = phi i32 [ 0, %30 ], [ %28, %24 ], [ 0, %22 ]
  %38 = phi i32 [ %21, %30 ], [ %15, %24 ], [ %21, %22 ]
  %39 = icmp ugt i32 %14, 1999
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  tail call void @msleep(i32 noundef 25) #20
  %41 = add nuw nsw i32 %14, 25
  %42 = call fastcc i32 @hub_ext_port_status(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef null) #20
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %46, label %12

44:                                               ; preds = %24
  %45 = zext i16 %19 to i32
  br label %46

46:                                               ; preds = %44, %40, %36, %3
  %47 = phi i32 [ %45, %44 ], [ %6, %3 ], [ %42, %40 ], [ -110, %36 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_ep0_reinit(ptr noundef %0) #1 {
  tail call void @usb_disable_endpoint(ptr noundef %0, i32 noundef 128, i1 noundef zeroext true) #20
  tail call void @usb_disable_endpoint(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true) #20
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 13
  tail call void @usb_enable_endpoint(ptr noundef %0, ptr noundef %2, i1 noundef zeroext true) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_disable_endpoint(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_endpoint(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_hub_init() local_unnamed_addr #1 {
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @hub_driver, ptr noundef null, ptr noundef nonnull @.str.14) #20
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.16, i32 noundef 4, i32 noundef 0) #20
  store ptr %4, ptr @hub_wq, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  tail call void @usb_deregister(ptr noundef nonnull @hub_driver) #20
  br label %7

7:                                                ; preds = %6, %0
  %8 = phi ptr [ @.str.17, %6 ], [ @.str.15, %0 ]
  %9 = load ptr, ptr @usbcore_name, align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %8, ptr noundef %9) #19
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 0, %3 ], [ -1, %7 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hub_cleanup() local_unnamed_addr #1 {
  %1 = load ptr, ptr @hub_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #20
  tail call void @usb_deregister(ptr noundef nonnull @hub_driver) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_reset_device(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 35
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.usb_host_config, ptr %9, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7, i32 8
  %19 = load ptr, ptr %18, align 8
  br label %20

20:                                               ; preds = %15, %11, %7
  %21 = phi ptr [ %19, %15 ], [ null, %11 ], [ null, %7 ]
  %22 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %125, label %30

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 -22, i32 -21
  br label %125

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.usb_hub, ptr %21, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 25
  %34 = load i8, ptr %33, align 2
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -1
  %37 = getelementptr ptr, ptr %32, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = tail call ptr @llvm.thread.pointer() #20
  %40 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 524288
  %43 = or i32 %41, 524288
  store i32 %43, ptr %40, align 4
  %44 = tail call i32 @usb_autoresume_device(ptr noundef %0) #20
  %45 = icmp eq ptr %3, null
  br i1 %45, label %78, label %46

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.usb_config_descriptor, ptr %3, i32 0, i32 3
  %48 = load i8, ptr %47, align 4
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %78, label %50

50:                                               ; preds = %73, %46
  %51 = phi i32 [ %74, %73 ], [ 0, %46 ]
  %52 = getelementptr %struct.usb_host_config, ptr %3, i32 0, i32 3, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.usb_interface, ptr %53, i32 0, i32 7, i32 6
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %73, label %57

57:                                               ; preds = %50
  %58 = getelementptr i8, ptr %55, i32 -28
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %55, i32 -24
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds %struct.usb_interface, ptr %53, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %72, label %73

69:                                               ; preds = %61
  %70 = tail call i32 %59(ptr noundef %53) #20
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69, %65
  tail call void @usb_forced_unbind_intf(ptr noundef %53) #20
  br label %73

73:                                               ; preds = %72, %69, %65, %50
  %74 = add nuw nsw i32 %51, 1
  %75 = load i8, ptr %47, align 4
  %76 = zext i8 %75 to i32
  %77 = icmp ult i32 %74, %76
  br i1 %77, label %50, label %78

78:                                               ; preds = %73, %46, %30
  %79 = getelementptr inbounds %struct.usb_port, ptr %38, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %79) #20
  %80 = tail call fastcc i32 @usb_reset_and_verify_device(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %79) #20
  br i1 %45, label %121, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.usb_config_descriptor, ptr %3, i32 0, i32 3
  %83 = load i8, ptr %82, align 4
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %118, label %85

85:                                               ; preds = %81
  %86 = zext i8 %83 to i32
  br label %87

87:                                               ; preds = %116, %85
  %88 = phi i32 [ %89, %116 ], [ %86, %85 ]
  %89 = add nsw i32 %88, -1
  %90 = getelementptr %struct.usb_host_config, ptr %3, i32 0, i32 3, i32 %89
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.usb_interface, ptr %91, i32 0, i32 6
  %93 = load i8, ptr %92, align 8
  %94 = and i8 %93, 32
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.usb_interface, ptr %91, i32 0, i32 7, i32 6
  %98 = load ptr, ptr %97, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %116, label %100

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %98, i32 -24
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.usb_interface, ptr %91, i32 0, i32 5
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %113, label %116

108:                                              ; preds = %100
  %109 = tail call i32 %102(ptr noundef %91) #20
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load i8, ptr %92, align 8
  br label %113

113:                                              ; preds = %111, %104
  %114 = phi i8 [ %112, %111 ], [ %93, %104 ]
  %115 = or i8 %114, 32
  store i8 %115, ptr %92, align 8
  br label %116

116:                                              ; preds = %113, %108, %104, %96, %87
  %117 = icmp ugt i32 %88, 1
  br i1 %117, label %87, label %118

118:                                              ; preds = %116, %81
  %119 = icmp eq i32 %80, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  tail call void @usb_unbind_and_rebind_marked_interfaces(ptr noundef %0) #20
  br label %121

121:                                              ; preds = %120, %118, %78
  tail call void @usb_autosuspend_device(ptr noundef %0) #20
  %122 = load i32, ptr %40, align 4
  %123 = and i32 %122, -524289
  %124 = or i32 %123, %42
  store i32 %124, ptr %40, align 4
  br label %125

125:                                              ; preds = %121, %25, %20
  %126 = phi i32 [ %80, %121 ], [ -22, %20 ], [ %29, %25 ]
  ret i32 %126
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_forced_unbind_intf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_reset_and_verify_device(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.usb_device_descriptor, align 1
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #20
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(18) %2, ptr noundef align 8 dereferenceable(18) %7, i32 18, i1 false)
  %8 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 25
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  switch i32 %12, label %13 [
    i32 0, label %225
    i32 8, label %225
  ]

13:                                               ; preds = %1
  %14 = icmp eq ptr %4, null
  br i1 %14, label %225, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 20
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 35
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.usb_host_config, ptr %17, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 7, i32 8
  %27 = load ptr, ptr %26, align 8
  br label %28

28:                                               ; preds = %23, %19, %15
  %29 = phi ptr [ %27, %23 ], [ null, %19 ], [ null, %15 ]
  %30 = tail call i32 @usb_disable_usb2_hardware_lpm(ptr noundef %0) #20
  %31 = load ptr, ptr %5, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %31, i32 0, i32 23
  %35 = load ptr, ptr %34, align 4
  tail call void @mutex_lock(ptr noundef %35) #20
  %36 = tail call i32 @usb_disable_lpm(ptr noundef %0) #20
  %37 = load ptr, ptr %34, align 4
  tail call void @mutex_unlock(ptr noundef %37) #20
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33, %28
  %40 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.106, ptr noundef nonnull @__func__.usb_reset_and_verify_device) #19
  br label %222

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 18
  %43 = load ptr, ptr %42, align 4
  store ptr null, ptr %42, align 4
  %44 = getelementptr inbounds %struct.usb_hcd, ptr %6, i32 0, i32 22
  %45 = load ptr, ptr %44, align 8
  tail call void @mutex_lock(ptr noundef %45) #20
  %46 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 13
  tail call void @usb_disable_endpoint(ptr noundef %0, i32 noundef 128, i1 noundef zeroext true) #20
  tail call void @usb_disable_endpoint(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true) #20
  tail call void @usb_enable_endpoint(ptr noundef %0, ptr noundef %46, i1 noundef zeroext true) #20
  %47 = tail call fastcc i32 @hub_port_init(ptr noundef %29, ptr noundef %0, i32 noundef %10, i32 noundef 0)
  %48 = freeze i32 %47
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %70, label %50

50:                                               ; preds = %41
  switch i32 %48, label %51 [
    i32 -19, label %66
    i32 -107, label %66
  ]

51:                                               ; preds = %50
  tail call void @usb_disable_endpoint(ptr noundef %0, i32 noundef 128, i1 noundef zeroext true) #20
  tail call void @usb_disable_endpoint(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true) #20
  tail call void @usb_enable_endpoint(ptr noundef %0, ptr noundef %46, i1 noundef zeroext true) #20
  %52 = tail call fastcc i32 @hub_port_init(ptr noundef %29, ptr noundef %0, i32 noundef %10, i32 noundef 1)
  %53 = freeze i32 %52
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %70, label %55

55:                                               ; preds = %51
  switch i32 %53, label %56 [
    i32 -19, label %66
    i32 -107, label %66
  ]

56:                                               ; preds = %55
  tail call void @usb_disable_endpoint(ptr noundef %0, i32 noundef 128, i1 noundef zeroext true) #20
  tail call void @usb_disable_endpoint(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true) #20
  tail call void @usb_enable_endpoint(ptr noundef %0, ptr noundef %46, i1 noundef zeroext true) #20
  %57 = tail call fastcc i32 @hub_port_init(ptr noundef %29, ptr noundef %0, i32 noundef %10, i32 noundef 2)
  %58 = freeze i32 %57
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %70, label %60

60:                                               ; preds = %56
  switch i32 %58, label %61 [
    i32 -19, label %66
    i32 -107, label %66
  ]

61:                                               ; preds = %60
  tail call void @usb_disable_endpoint(ptr noundef %0, i32 noundef 128, i1 noundef zeroext true) #20
  tail call void @usb_disable_endpoint(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true) #20
  tail call void @usb_enable_endpoint(ptr noundef %0, ptr noundef %46, i1 noundef zeroext true) #20
  %62 = tail call fastcc i32 @hub_port_init(ptr noundef %29, ptr noundef %0, i32 noundef %10, i32 noundef 3)
  %63 = freeze i32 %62
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  switch i32 %63, label %68 [
    i32 -19, label %66
    i32 -107, label %66
  ]

66:                                               ; preds = %65, %65, %60, %60, %55, %55, %50, %50
  %67 = load ptr, ptr %44, align 8
  tail call void @mutex_unlock(ptr noundef %67) #20
  br label %221

68:                                               ; preds = %65
  %69 = load ptr, ptr %44, align 8
  tail call void @mutex_unlock(ptr noundef %69) #20
  br label %221

70:                                               ; preds = %61, %56, %51, %41
  %71 = load ptr, ptr %44, align 8
  tail call void @mutex_unlock(ptr noundef %71) #20
  %72 = call fastcc i32 @descriptors_changed(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %43)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.107) #19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(18) %7, ptr noundef nonnull align 1 dereferenceable(18) %2, i32 18, i1 false)
  br label %221

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %167, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.usb_hcd, ptr %6, i32 0, i32 23
  %82 = load ptr, ptr %81, align 4
  tail call void @mutex_lock(ptr noundef %82) #20
  %83 = load ptr, ptr %77, align 4
  %84 = tail call i32 @usb_hcd_alloc_bandwidth(ptr noundef %0, ptr noundef %83, ptr noundef null, ptr noundef null) #20
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.108) #19
  %88 = load ptr, ptr %81, align 4
  tail call void @mutex_unlock(ptr noundef %88) #20
  br label %221

89:                                               ; preds = %80
  %90 = load i32, ptr %0, align 8
  %91 = shl i32 %90, 8
  %92 = or i32 %91, -2147483648
  %93 = load ptr, ptr %77, align 4
  %94 = getelementptr inbounds %struct.usb_config_descriptor, ptr %93, i32 0, i32 4
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i16
  %97 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %92, i8 noundef zeroext 9, i8 noundef zeroext 0, i16 noundef zeroext %96, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %101 = load ptr, ptr %77, align 4
  %102 = getelementptr inbounds %struct.usb_config_descriptor, ptr %101, i32 0, i32 4
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.109, i32 noundef %104, i32 noundef %97) #19
  %105 = load ptr, ptr %81, align 4
  tail call void @mutex_unlock(ptr noundef %105) #20
  br label %221

106:                                              ; preds = %89
  %107 = load ptr, ptr %81, align 4
  tail call void @mutex_unlock(ptr noundef %107) #20
  tail call void @usb_set_device_state(ptr noundef %0, i32 noundef 7)
  %108 = load ptr, ptr %77, align 4
  %109 = getelementptr inbounds %struct.usb_config_descriptor, ptr %108, i32 0, i32 3
  %110 = load i8, ptr %109, align 4
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %167, label %112

112:                                              ; preds = %160, %106
  %113 = phi ptr [ %162, %160 ], [ %108, %106 ]
  %114 = phi i32 [ %161, %160 ], [ 0, %106 ]
  %115 = getelementptr %struct.usb_host_config, ptr %113, i32 0, i32 3, i32 %114
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.usb_interface, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %118, i32 0, i32 3
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  tail call void @usb_disable_interface(ptr noundef %0, ptr noundef %116, i1 noundef zeroext true) #20
  tail call void @usb_enable_interface(ptr noundef %0, ptr noundef %116, i1 noundef zeroext true) #20
  br label %136

123:                                              ; preds = %112
  %124 = getelementptr inbounds %struct.usb_interface, ptr %116, i32 0, i32 6
  %125 = load i8, ptr %124, align 8
  %126 = or i8 %125, 64
  store i8 %126, ptr %124, align 8
  %127 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %118, i32 0, i32 2
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i8, ptr %119, align 1
  %131 = zext i8 %130 to i32
  %132 = tail call i32 @usb_set_interface(ptr noundef %0, i32 noundef %129, i32 noundef %131) #20
  %133 = load i8, ptr %124, align 8
  %134 = and i8 %133, -65
  store i8 %134, ptr %124, align 8
  %135 = icmp slt i32 %132, 0
  br i1 %135, label %153, label %136

136:                                              ; preds = %123, %122
  %137 = load ptr, ptr %117, align 4
  %138 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %137, i32 0, i32 4
  %139 = load i8, ptr %138, align 4
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %160, label %141

141:                                              ; preds = %141, %136
  %142 = phi ptr [ %148, %141 ], [ %137, %136 ]
  %143 = phi i32 [ %147, %141 ], [ 0, %136 ]
  %144 = getelementptr inbounds %struct.usb_host_interface, ptr %142, i32 0, i32 3
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr %struct.usb_host_endpoint, ptr %145, i32 %143, i32 10
  store i32 0, ptr %146, align 4
  %147 = add nuw nsw i32 %143, 1
  %148 = load ptr, ptr %117, align 4
  %149 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %148, i32 0, i32 4
  %150 = load i8, ptr %149, align 4
  %151 = zext i8 %150 to i32
  %152 = icmp ult i32 %147, %151
  br i1 %152, label %141, label %160

153:                                              ; preds = %123
  %154 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %155 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %118, i32 0, i32 2
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, ptr %119, align 1
  %159 = zext i8 %158 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.110, i32 noundef %157, i32 noundef %159, i32 noundef %132) #19
  br label %221

160:                                              ; preds = %141, %136
  %161 = add nuw nsw i32 %114, 1
  %162 = load ptr, ptr %77, align 4
  %163 = getelementptr inbounds %struct.usb_config_descriptor, ptr %162, i32 0, i32 3
  %164 = load i8, ptr %163, align 4
  %165 = zext i8 %164 to i32
  %166 = icmp ult i32 %161, %165
  br i1 %166, label %112, label %167

167:                                              ; preds = %160, %106, %76
  %168 = tail call i32 @usb_enable_usb2_hardware_lpm(ptr noundef %0) #20
  %169 = load ptr, ptr %5, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %176, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.usb_hcd, ptr %169, i32 0, i32 23
  %173 = load ptr, ptr %172, align 4
  tail call void @mutex_lock(ptr noundef %173) #20
  tail call void @usb_enable_lpm(ptr noundef %0) #20
  %174 = load ptr, ptr %172, align 4
  tail call void @mutex_unlock(ptr noundef %174) #20
  %175 = load ptr, ptr %5, align 8
  br label %176

176:                                              ; preds = %171, %167
  %177 = phi ptr [ null, %167 ], [ %175, %171 ]
  %178 = getelementptr inbounds %struct.usb_bus, ptr %177, i32 0, i32 11
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.usb_device, ptr %179, i32 0, i32 4
  %181 = load i32, ptr %180, align 4
  %182 = icmp ult i32 %181, 5
  br i1 %182, label %220, label %183

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.usb_device, ptr %179, i32 0, i32 18
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %220, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.usb_host_bos, ptr %185, i32 0, i32 2
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %220, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %189, i32 0, i32 3
  %193 = load i8, ptr %192, align 1
  %194 = and i8 %193, 2
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %220, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %198 = load i32, ptr %197, align 4
  %199 = icmp ult i32 %198, 5
  br i1 %199, label %220, label %200

200:                                              ; preds = %196
  %201 = load ptr, ptr %42, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %220, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.usb_host_bos, ptr %201, i32 0, i32 2
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %220, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %205, i32 0, i32 3
  %209 = load i8, ptr %208, align 1
  %210 = and i8 %209, 2
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %220, label %212

212:                                              ; preds = %207
  %213 = load ptr, ptr %77, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %220, label %215

215:                                              ; preds = %212
  %216 = load i32, ptr %0, align 8
  %217 = shl i32 %216, 8
  %218 = or i32 %217, -2147483648
  %219 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %218, i8 noundef zeroext 3, i8 noundef zeroext 0, i16 noundef zeroext 50, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %220

220:                                              ; preds = %215, %212, %207, %203, %200, %196, %191, %187, %183, %176
  tail call void @usb_release_bos_descriptor(ptr noundef %0) #20
  store ptr %43, ptr %42, align 4
  br label %225

221:                                              ; preds = %153, %99, %86, %74, %68, %66
  tail call void @usb_release_bos_descriptor(ptr noundef %0) #20
  store ptr %43, ptr %42, align 4
  br label %222

222:                                              ; preds = %221, %39
  %223 = tail call fastcc i32 @hub_port_disable(ptr noundef %29, i32 noundef %10, i32 noundef 1) #20
  %224 = getelementptr inbounds %struct.usb_hub, ptr %29, i32 0, i32 10
  tail call void @_set_bit(i32 noundef %10, ptr noundef %224) #20
  tail call fastcc void @kick_hub_wq(ptr noundef %29) #20
  br label %225

225:                                              ; preds = %222, %220, %13, %1, %1
  %226 = phi i32 [ -19, %222 ], [ 0, %220 ], [ -22, %1 ], [ -22, %1 ], [ -21, %13 ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #20
  ret i32 %226
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unbind_and_rebind_marked_interfaces(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_queue_reset_device(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #20
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @usb_get_intf(ptr noundef %0) #20
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @usb_hub_find_child(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_host_config, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7, i32 8
  %16 = load ptr, ptr %15, align 8
  br label %17

17:                                               ; preds = %12, %8, %4, %2
  %18 = phi ptr [ %16, %12 ], [ null, %8 ], [ null, %4 ], [ null, %2 ]
  %19 = icmp slt i32 %1, 1
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %22, %1
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.usb_hub, ptr %18, i32 0, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = add nsw i32 %1, -1
  %28 = getelementptr ptr, ptr %26, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 8
  br label %31

31:                                               ; preds = %24, %20, %17
  %32 = phi ptr [ %30, %24 ], [ null, %20 ], [ null, %17 ]
  ret ptr %32
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_hub_adjust_deviceremovable(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %84, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %84, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %84, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_host_config, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %84, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 5
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 3
  br i1 %21, label %54, label %22

22:                                               ; preds = %18
  %23 = icmp slt i32 %10, 1
  br i1 %23, label %84, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.usb_hub, ptr %16, i32 0, i32 27
  %26 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %1, i32 0, i32 6
  br label %27

27:                                               ; preds = %50, %24
  %28 = phi i32 [ %10, %24 ], [ %51, %50 ]
  %29 = phi i32 [ 1, %24 ], [ %52, %50 ]
  %30 = load ptr, ptr %25, align 4
  %31 = add i32 %29, -1
  %32 = getelementptr ptr, ptr %30, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.usb_port, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %50

37:                                               ; preds = %27
  %38 = and i32 %29, 7
  %39 = shl nuw nsw i32 1, %38
  %40 = sdiv i32 %29, 8
  %41 = getelementptr [4 x i8], ptr %26, i32 0, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %39, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = trunc i32 %39 to i8
  %48 = or i8 %42, %47
  store i8 %48, ptr %41, align 1
  %49 = load i32, ptr %9, align 4
  br label %50

50:                                               ; preds = %46, %37, %27
  %51 = phi i32 [ %28, %37 ], [ %49, %46 ], [ %28, %27 ]
  %52 = add i32 %29, 1
  %53 = icmp sgt i32 %52, %51
  br i1 %53, label %84, label %27

54:                                               ; preds = %18
  %55 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 3
  %56 = load i16, ptr %55, align 1
  %57 = icmp slt i32 %10, 1
  br i1 %57, label %82, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.usb_hub, ptr %16, i32 0, i32 27
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %78, %58
  %62 = phi i16 [ %56, %58 ], [ %79, %78 ]
  %63 = phi i32 [ 1, %58 ], [ %80, %78 ]
  %64 = add i32 %63, -1
  %65 = getelementptr ptr, ptr %60, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.usb_port, ptr %66, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = shl nuw i32 1, %63
  %72 = zext i16 %62 to i32
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  %75 = trunc i32 %71 to i16
  %76 = select i1 %74, i16 %75, i16 0
  %77 = or i16 %76, %62
  br label %78

78:                                               ; preds = %70, %61
  %79 = phi i16 [ %77, %70 ], [ %62, %61 ]
  %80 = add i32 %63, 1
  %81 = icmp sgt i32 %80, %10
  br i1 %81, label %82, label %61

82:                                               ; preds = %78, %54
  %83 = phi i16 [ %56, %54 ], [ %79, %78 ]
  store i16 %83, ptr %55, align 1
  br label %84

84:                                               ; preds = %82, %50, %22, %12, %8, %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_get_interface_no_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface_async(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_configuration(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_cache_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_detect_interface_quirks(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usb_get_extra_descriptor(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hub_ext_port_status(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr noundef writeonly %5) unnamed_addr #1 {
  %7 = icmp ne i32 %2, 0
  %8 = select i1 %7, i32 8, i32 4
  %9 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %9) #20
  %10 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = trunc i32 %2 to i16
  %15 = trunc i32 %8 to i16
  %16 = trunc i32 %1 to i16
  %17 = load i32, ptr %11, align 8
  %18 = shl i32 %17, 8
  %19 = or i32 %18, -2147483520
  %20 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %19, i8 noundef zeroext 0, i8 noundef zeroext -93, i16 noundef zeroext %14, i16 noundef zeroext %16, ptr noundef %13, i16 noundef zeroext %15, i32 noundef 1000) #20
  switch i32 %20, label %41 [
    i32 -32, label %21
    i32 -110, label %21
  ]

21:                                               ; preds = %6, %6
  %22 = load i32, ptr %11, align 8
  %23 = shl i32 %22, 8
  %24 = or i32 %23, -2147483520
  %25 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %24, i8 noundef zeroext 0, i8 noundef zeroext -93, i16 noundef zeroext %14, i16 noundef zeroext %16, ptr noundef %13, i16 noundef zeroext %15, i32 noundef 1000) #20
  switch i32 %25, label %41 [
    i32 -32, label %26
    i32 -110, label %26
  ]

26:                                               ; preds = %21, %21
  %27 = load i32, ptr %11, align 8
  %28 = shl i32 %27, 8
  %29 = or i32 %28, -2147483520
  %30 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %29, i8 noundef zeroext 0, i8 noundef zeroext -93, i16 noundef zeroext %14, i16 noundef zeroext %16, ptr noundef %13, i16 noundef zeroext %15, i32 noundef 1000) #20
  switch i32 %30, label %41 [
    i32 -32, label %31
    i32 -110, label %31
  ]

31:                                               ; preds = %26, %26
  %32 = load i32, ptr %11, align 8
  %33 = shl i32 %32, 8
  %34 = or i32 %33, -2147483520
  %35 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %34, i8 noundef zeroext 0, i8 noundef zeroext -93, i16 noundef zeroext %14, i16 noundef zeroext %16, ptr noundef %13, i16 noundef zeroext %15, i32 noundef 1000) #20
  switch i32 %35, label %41 [
    i32 -32, label %36
    i32 -110, label %36
  ]

36:                                               ; preds = %31, %31
  %37 = load i32, ptr %11, align 8
  %38 = shl i32 %37, 8
  %39 = or i32 %38, -2147483520
  %40 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %39, i8 noundef zeroext 0, i8 noundef zeroext -93, i16 noundef zeroext %14, i16 noundef zeroext %16, ptr noundef %13, i16 noundef zeroext %15, i32 noundef 1000) #20
  br label %41

41:                                               ; preds = %36, %31, %26, %21, %6
  %42 = phi i32 [ %20, %6 ], [ %25, %21 ], [ %30, %26 ], [ %35, %31 ], [ %40, %36 ]
  %43 = icmp slt i32 %42, %8
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = icmp eq i32 %42, -19
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.hub_ext_port_status, i32 noundef %42) #19
  br label %48

48:                                               ; preds = %46, %44
  %49 = icmp sgt i32 %42, -1
  %50 = select i1 %49, i32 -5, i32 %42
  br label %63

51:                                               ; preds = %41
  %52 = load ptr, ptr %12, align 4
  %53 = load i16, ptr %52, align 1
  store i16 %53, ptr %3, align 2
  %54 = load ptr, ptr %12, align 4
  %55 = getelementptr inbounds %struct.usb_port_status, ptr %54, i32 0, i32 1
  %56 = load i16, ptr %55, align 1
  store i16 %56, ptr %4, align 2
  %57 = icmp ne ptr %5, null
  %58 = and i1 %7, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load ptr, ptr %12, align 4
  %61 = getelementptr inbounds %struct.usb_port_status, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 1
  store i32 %62, ptr %5, align 4
  br label %63

63:                                               ; preds = %59, %51, %48
  %64 = phi i32 [ %50, %48 ], [ 0, %59 ], [ 0, %51 ]
  tail call void @mutex_unlock(ptr noundef %9) #20
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_status(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_set_lpm_timeout(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  switch i32 %1, label %4 [
    i32 1, label %6
    i32 2, label %12
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.usb_set_lpm_timeout) #19
  br label %37

6:                                                ; preds = %3
  %7 = icmp sgt i32 %2, 127
  %8 = icmp ne i32 %2, 255
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.37, i32 noundef %2) #19
  br label %37

12:                                               ; preds = %6, %3
  %13 = phi i1 [ true, %6 ], [ false, %3 ]
  %14 = phi i16 [ 23, %6 ], [ 24, %3 ]
  %15 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = shl i32 %2, 8
  %18 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 25
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = or i32 %17, %20
  %22 = load i32, ptr %16, align 8
  %23 = shl i32 %22, 8
  %24 = or i32 %23, -2147483648
  %25 = trunc i32 %21 to i16
  %26 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %24, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext %14, i16 noundef zeroext %25, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %30 = getelementptr [4 x ptr], ptr @usb3_lpm_names, i32 0, i32 %1
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.29, ptr noundef %31, i32 noundef %2, i32 noundef %26) #19
  br label %37

32:                                               ; preds = %12
  br i1 %13, label %33, label %35

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 45, i32 3
  store i32 %2, ptr %34, align 4
  br label %37

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 46, i32 3
  store i32 %2, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %33, %28, %10, %4
  %38 = phi i32 [ -22, %4 ], [ -22, %10 ], [ -16, %28 ], [ 0, %35 ], [ 0, %33 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_set_device_initiated_lpm(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
  switch i32 %1, label %5 [
    i32 1, label %8
    i32 2, label %4
  ]

4:                                                ; preds = %3
  br label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %7 = select i1 %2, ptr @.str.31, ptr @.str.32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.usb_set_device_initiated_lpm, ptr noundef nonnull %7) #19
  br label %25

8:                                                ; preds = %4, %3
  %9 = phi i16 [ 49, %4 ], [ 48, %3 ]
  %10 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load i32, ptr %0, align 8
  %15 = shl i32 %14, 8
  %16 = or i32 %15, -2147483648
  %17 = select i1 %2, i8 3, i8 1
  %18 = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %16, i8 noundef zeroext %17, i8 noundef zeroext 0, i16 noundef zeroext %9, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %22 = select i1 %2, ptr @.str.34, ptr @.str.35
  %23 = getelementptr [4 x ptr], ptr @usb3_lpm_names, i32 0, i32 %1
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.33, ptr noundef nonnull %22, ptr noundef %24) #19
  br label %25

25:                                               ; preds = %20, %13, %8, %5
  %26 = phi i32 [ -22, %5 ], [ -16, %20 ], [ 0, %8 ], [ 0, %13 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -128
  %10 = getelementptr i8, ptr %8, i32 288
  %11 = load i32, ptr %10, align 8
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %8, i32 noundef 0) #20
  br label %14

14:                                               ; preds = %13, %2
  %15 = getelementptr i8, ptr %8, i32 -68
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %8, i32 -64
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.hc_driver, ptr %22, i32 0, i32 20
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.hc_driver, ptr %22, i32 0, i32 21
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %14
  tail call void @usb_enable_autosuspend(ptr noundef %9) #20
  br label %31

31:                                               ; preds = %30, %26, %18
  %32 = getelementptr i8, ptr %8, i32 639
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 6
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.45) #19
  br label %412

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 6
  %39 = load i8, ptr %38, align 2
  %40 = icmp ult i8 %39, 2
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 4
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 1
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %47, i32 0, i32 3
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 3
  %51 = icmp eq i8 %50, 3
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %47, i32 0, i32 2
  %54 = load i8, ptr %53, align 1
  %55 = icmp sgt i8 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %45, %41, %37
  %57 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.46) #19
  br label %412

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.47) #19
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 300) #21
  %62 = icmp eq ptr %61, null
  br i1 %62, label %412, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 2
  store volatile i32 1, ptr %64, align 8
  store ptr %59, ptr %61, align 8
  %65 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 1
  store ptr %9, ptr %65, align 4
  %66 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 22
  store i32 -32, ptr %66, align 8
  %67 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 22, i32 0, i32 1
  store volatile ptr %67, ptr %67, align 4
  %68 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 22, i32 0, i32 1, i32 1
  store ptr %67, ptr %68, align 8
  %69 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 22, i32 0, i32 2
  store ptr @led_work, ptr %69, align 4
  %70 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 22, i32 1
  tail call void @init_timer_key(ptr noundef %70, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #20
  %71 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 23
  store i32 -32, ptr %71, align 4
  %72 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 23, i32 0, i32 1
  store volatile ptr %72, ptr %72, align 8
  %73 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 23, i32 0, i32 1, i32 1
  store ptr %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 23, i32 0, i32 2
  store ptr null, ptr %74, align 8
  %75 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 23, i32 1
  tail call void @init_timer_key(ptr noundef %75, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #20
  %76 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 24
  store i32 -32, ptr %76, align 8
  %77 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 24, i32 1
  store volatile ptr %77, ptr %77, align 4
  %78 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 24, i32 1, i32 1
  store ptr %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 24, i32 2
  store ptr @hub_event, ptr %79, align 4
  %80 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 25
  store i32 0, ptr %80, align 8
  %81 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 26
  tail call void @init_timer_key(ptr noundef %81, ptr noundef nonnull @hub_retry_irq_urb, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  %82 = tail call ptr @usb_get_intf(ptr noundef %0) #20
  %83 = tail call ptr @usb_get_dev(ptr noundef %9) #20
  %84 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  store ptr %61, ptr %84, align 8
  %85 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 6
  %86 = load i8, ptr %85, align 8
  %87 = or i8 %86, 8
  store i8 %87, ptr %85, align 8
  %88 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 11, i32 15
  %89 = load i16, ptr %88, align 8
  %90 = or i16 %89, 256
  store i16 %90, ptr %88, align 8
  %91 = getelementptr i8, ptr %8, i32 -100
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %94, label %97

94:                                               ; preds = %63
  %95 = load i32, ptr @highspeed_hubs, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr @highspeed_hubs, align 4
  br label %97

97:                                               ; preds = %94, %63
  %98 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 12
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 20
  %104 = load i8, ptr %103, align 8
  %105 = or i8 %104, 32
  store i8 %105, ptr %103, align 8
  br label %106

106:                                              ; preds = %102, %97
  %107 = and i32 %99, 2
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 20
  %111 = load i8, ptr %110, align 8
  %112 = or i8 %111, 16
  store i8 %112, ptr %110, align 8
  tail call void @usb_autopm_get_interface_no_resume(ptr noundef %0) #20
  br label %113

113:                                              ; preds = %109, %106
  %114 = load ptr, ptr %46, align 4
  %115 = load ptr, ptr %65, align 4
  %116 = load ptr, ptr %61, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #20
  store i16 0, ptr %3, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #20
  %117 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %118 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %117, i32 noundef 3264, i32 noundef 8) #21
  %119 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 4
  store ptr %118, ptr %119, align 8
  %120 = icmp eq ptr %118, null
  br i1 %120, label %406, label %121

121:                                              ; preds = %113
  %122 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %123 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %122, i32 noundef 3264, i32 noundef 8) #21
  %124 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 5
  store ptr %123, ptr %124, align 4
  %125 = icmp eq ptr %123, null
  br i1 %125, label %406, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %127, ptr noundef nonnull @.str.87, ptr noundef nonnull @hub_configure.__key) #20
  %128 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %129 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %128, i32 noundef 3520, i32 noundef 15) #21
  %130 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 16
  store ptr %129, ptr %130, align 8
  %131 = icmp eq ptr %129, null
  br i1 %131, label %406, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.usb_device, ptr %115, i32 0, i32 16, i32 5
  %134 = load i8, ptr %133, align 2
  %135 = icmp eq i8 %134, 3
  %136 = select i1 %135, i32 12, i32 15
  %137 = select i1 %135, i16 10752, i16 10496
  %138 = trunc i32 %136 to i16
  %139 = load i32, ptr %115, align 8
  %140 = shl i32 %139, 8
  %141 = or i32 %140, -2147483520
  %142 = tail call i32 @usb_control_msg(ptr noundef %115, i32 noundef %141, i8 noundef zeroext 6, i8 noundef zeroext -96, i16 noundef zeroext %137, i16 noundef zeroext 0, ptr noundef nonnull %129, i16 noundef zeroext %138, i32 noundef 5000) #20
  %143 = load i8, ptr %133, align 2
  %144 = icmp eq i8 %143, 3
  br i1 %144, label %145, label %147

145:                                              ; preds = %132
  %146 = icmp eq i32 %142, %136
  br i1 %146, label %180, label %158

147:                                              ; preds = %132
  %148 = icmp sgt i32 %142, 8
  br i1 %148, label %149, label %158

149:                                              ; preds = %176, %165, %147
  %150 = phi i8 [ %143, %147 ], [ %163, %165 ], [ %174, %176 ]
  %151 = phi i32 [ %142, %147 ], [ %162, %165 ], [ %173, %176 ]
  %152 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %129, i32 0, i32 2
  %153 = load i8, ptr %152, align 2
  %154 = lshr i8 %153, 3
  %155 = add nuw nsw i8 %154, 8
  %156 = zext i8 %155 to i32
  %157 = icmp ult i32 %151, %156
  br i1 %157, label %406, label %180

158:                                              ; preds = %147, %145
  %159 = load i32, ptr %115, align 8
  %160 = shl i32 %159, 8
  %161 = or i32 %160, -2147483520
  %162 = tail call i32 @usb_control_msg(ptr noundef %115, i32 noundef %161, i8 noundef zeroext 6, i8 noundef zeroext -96, i16 noundef zeroext %137, i16 noundef zeroext 0, ptr noundef nonnull %129, i16 noundef zeroext %138, i32 noundef 5000) #20
  %163 = load i8, ptr %133, align 2
  %164 = icmp eq i8 %163, 3
  br i1 %164, label %167, label %165

165:                                              ; preds = %158
  %166 = icmp sgt i32 %162, 8
  br i1 %166, label %149, label %169

167:                                              ; preds = %158
  %168 = icmp eq i32 %162, %136
  br i1 %168, label %180, label %169

169:                                              ; preds = %167, %165
  %170 = load i32, ptr %115, align 8
  %171 = shl i32 %170, 8
  %172 = or i32 %171, -2147483520
  %173 = tail call i32 @usb_control_msg(ptr noundef %115, i32 noundef %172, i8 noundef zeroext 6, i8 noundef zeroext -96, i16 noundef zeroext %137, i16 noundef zeroext 0, ptr noundef nonnull %129, i16 noundef zeroext %138, i32 noundef 5000) #20
  %174 = load i8, ptr %133, align 2
  %175 = icmp eq i8 %174, 3
  br i1 %175, label %178, label %176

176:                                              ; preds = %169
  %177 = icmp sgt i32 %173, 8
  br i1 %177, label %149, label %406

178:                                              ; preds = %169
  %179 = icmp eq i32 %173, %136
  br i1 %179, label %180, label %406

180:                                              ; preds = %178, %167, %149, %145
  %181 = phi i8 [ 3, %145 ], [ 3, %167 ], [ 3, %178 ], [ %150, %149 ]
  %182 = icmp eq i8 %181, 3
  %183 = select i1 %182, i32 15, i32 31
  %184 = load ptr, ptr %130, align 8
  %185 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %184, i32 0, i32 2
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp ult i32 %183, %187
  br i1 %188, label %406, label %189

189:                                              ; preds = %180
  %190 = icmp eq i8 %186, 0
  br i1 %190, label %406, label %191

191:                                              ; preds = %189
  br i1 %182, label %192, label %214

192:                                              ; preds = %191
  %193 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %184, i32 0, i32 6, i32 0, i32 0, i32 1
  %194 = load i16, ptr %193, align 1
  %195 = zext i16 %194 to i32
  %196 = getelementptr inbounds %struct.usb_device, ptr %115, i32 0, i32 11
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %204, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.usb_device, ptr %197, i32 0, i32 48
  %201 = load i16, ptr %200, align 8
  %202 = zext i16 %201 to i32
  %203 = add nuw nsw i32 %202, %195
  br label %204

204:                                              ; preds = %199, %192
  %205 = phi i32 [ %203, %199 ], [ %195, %192 ]
  %206 = tail call i32 @llvm.umin.i32(i32 %205, i32 65495) #20
  %207 = trunc i32 %206 to i16
  %208 = add nuw i16 %207, 40
  %209 = getelementptr inbounds %struct.usb_device, ptr %115, i32 0, i32 48
  store i16 %208, ptr %209, align 8
  %210 = load ptr, ptr %130, align 8
  %211 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %210, i32 0, i32 2
  %212 = load i8, ptr %211, align 1
  %213 = zext i8 %212 to i32
  br label %214

214:                                              ; preds = %204, %191
  %215 = phi i32 [ %187, %191 ], [ %213, %204 ]
  %216 = phi i8 [ %186, %191 ], [ %212, %204 ]
  %217 = icmp eq i8 %216, 1
  %218 = select i1 %217, ptr @.str.20, ptr @.str.92
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %116, ptr noundef nonnull @.str.91, i32 noundef %215, ptr noundef nonnull %218) #19
  %219 = shl nuw nsw i32 %215, 2
  %220 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %219, i32 noundef 3520) #22
  %221 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 27
  store ptr %220, ptr %221, align 8
  %222 = icmp eq ptr %220, null
  br i1 %222, label %406, label %223

223:                                              ; preds = %214
  %224 = load ptr, ptr %130, align 8
  %225 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %224, i32 0, i32 3
  %226 = load i16, ptr %225, align 1
  %227 = load i8, ptr %133, align 2
  %228 = icmp eq i8 %227, 3
  %229 = select i1 %228, i32 150, i32 100
  %230 = select i1 %228, i32 900, i32 500
  %231 = zext i16 %226 to i32
  %232 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 17
  %233 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 17, i32 4
  store i32 0, ptr %233, align 4
  %234 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 17, i32 5
  store volatile ptr %234, ptr %234, align 8
  %235 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 17, i32 5, i32 1
  store ptr %234, ptr %235, align 4
  %236 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 17, i32 6
  store i32 -32, ptr %236, align 8
  %237 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 17, i32 6, i32 1
  store volatile ptr %237, ptr %237, align 4
  %238 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 17, i32 6, i32 1, i32 1
  store ptr %237, ptr %238, align 8
  %239 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 17, i32 6, i32 2
  store ptr @hub_tt_work, ptr %239, align 4
  %240 = load i8, ptr %133, align 2
  switch i8 %240, label %248 [
    i8 2, label %241
    i8 1, label %247
  ]

241:                                              ; preds = %223
  %242 = tail call i32 @usb_set_interface(ptr noundef %115, i32 noundef 0, i32 noundef 1) #20
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 17, i32 1
  store i32 1, ptr %245, align 8
  br label %247

246:                                              ; preds = %241
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.93, i32 noundef %242) #19
  br label %247

247:                                              ; preds = %246, %244, %223
  store ptr %115, ptr %232, align 4
  br label %248

248:                                              ; preds = %247, %223
  %249 = lshr i32 %231, 5
  %250 = and i32 %249, 3
  switch i32 %250, label %256 [
    i32 0, label %251
    i32 1, label %257
    i32 2, label %254
    i32 3, label %255
  ]

251:                                              ; preds = %248
  %252 = load i8, ptr %133, align 2
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %260, label %257

254:                                              ; preds = %248
  br label %257

255:                                              ; preds = %248
  br label %257

256:                                              ; preds = %248
  unreachable

257:                                              ; preds = %255, %254, %251, %248
  %258 = phi i32 [ 2664, %255 ], [ 1998, %254 ], [ 666, %251 ], [ 1332, %248 ]
  %259 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 17, i32 2
  store i32 %258, ptr %259, align 4
  br label %260

260:                                              ; preds = %257, %251
  %261 = and i32 %231, 128
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 20
  %265 = load i8, ptr %264, align 8
  %266 = or i8 %265, 64
  store i8 %266, ptr %264, align 8
  br label %267

267:                                              ; preds = %263, %260
  %268 = call i32 @usb_get_status(ptr noundef %115, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #20
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %409

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.usb_device, ptr %115, i32 0, i32 12
  %272 = load ptr, ptr %271, align 8
  %273 = getelementptr inbounds %struct.usb_bus, ptr %272, i32 0, i32 11
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %115, %274
  br i1 %275, label %276, label %292

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.usb_hcd, ptr %272, i32 0, i32 19
  %278 = load i32, ptr %277, align 4
  %279 = icmp eq i32 %278, 0
  %280 = mul nuw nsw i32 %230, %215
  %281 = select i1 %279, i32 %280, i32 %278
  %282 = trunc i32 %281 to i16
  %283 = getelementptr inbounds %struct.usb_device, ptr %115, i32 0, i32 24
  store i16 %282, ptr %283, align 4
  %284 = and i32 %281, 65535
  %285 = icmp ugt i32 %230, %284
  %286 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 18
  br i1 %285, label %288, label %287

287:                                              ; preds = %276
  store i32 %230, ptr %286, align 8
  br label %315

288:                                              ; preds = %276
  store i32 %284, ptr %286, align 8
  %289 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 20
  %290 = load i8, ptr %289, align 8
  %291 = or i8 %290, 1
  store i8 %291, ptr %289, align 8
  br label %315

292:                                              ; preds = %270
  %293 = load i16, ptr %3, align 2
  %294 = and i16 %293, 1
  %295 = icmp eq i16 %294, 0
  br i1 %295, label %296, label %313

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.usb_device, ptr %115, i32 0, i32 24
  %298 = load i16, ptr %297, align 4
  %299 = zext i16 %298 to i32
  %300 = load ptr, ptr %130, align 8
  %301 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %300, i32 0, i32 5
  %302 = load i8, ptr %301, align 1
  %303 = zext i8 %302 to i32
  %304 = sub nsw i32 %299, %303
  %305 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 20
  %306 = load i8, ptr %305, align 8
  %307 = or i8 %306, 1
  store i8 %307, ptr %305, align 8
  %308 = mul nuw nsw i32 %229, %215
  %309 = icmp ult i32 %304, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %296
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %116, ptr noundef nonnull @.str.95) #19
  br label %311

311:                                              ; preds = %310, %296
  %312 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 18
  store i32 %229, ptr %312, align 8
  br label %315

313:                                              ; preds = %292
  %314 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 18
  store i32 %230, ptr %314, align 8
  br label %315

315:                                              ; preds = %313, %311, %288, %287
  %316 = call fastcc i32 @hub_hub_status(ptr noundef nonnull %61, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %406, label %318

318:                                              ; preds = %315
  %319 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %114, i32 0, i32 2
  %320 = load i8, ptr %319, align 1
  %321 = zext i8 %320 to i32
  %322 = load i32, ptr %115, align 8
  %323 = shl i32 %322, 8
  %324 = shl nuw nsw i32 %321, 15
  %325 = or i32 %323, %324
  %326 = or i32 %325, 1073741952
  %327 = call fastcc zeroext i16 @usb_maxpacket(ptr noundef %115, i32 noundef %326) #20
  %328 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #20
  %329 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 3
  store ptr %328, ptr %329, align 4
  %330 = icmp eq ptr %328, null
  br i1 %330, label %406, label %331

331:                                              ; preds = %318
  %332 = call i16 @llvm.umin.i16(i16 %327, i16 8) #20
  %333 = zext i16 %332 to i32
  %334 = load ptr, ptr %119, align 8
  %335 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %114, i32 0, i32 5
  %336 = load i8, ptr %335, align 1
  %337 = zext i8 %336 to i32
  %338 = getelementptr inbounds %struct.urb, ptr %328, i32 0, i32 8
  store ptr %115, ptr %338, align 4
  %339 = getelementptr inbounds %struct.urb, ptr %328, i32 0, i32 10
  store i32 %326, ptr %339, align 4
  %340 = getelementptr inbounds %struct.urb, ptr %328, i32 0, i32 14
  store ptr %334, ptr %340, align 4
  %341 = getelementptr inbounds %struct.urb, ptr %328, i32 0, i32 19
  store i32 %333, ptr %341, align 4
  %342 = getelementptr inbounds %struct.urb, ptr %328, i32 0, i32 28
  store ptr @hub_irq, ptr %342, align 4
  %343 = getelementptr inbounds %struct.urb, ptr %328, i32 0, i32 27
  store ptr %61, ptr %343, align 4
  %344 = getelementptr inbounds %struct.usb_device, ptr %115, i32 0, i32 4
  %345 = load i32, ptr %344, align 4
  %346 = icmp eq i32 %345, 3
  %347 = icmp ugt i32 %345, 4
  %348 = or i1 %346, %347
  br i1 %348, label %349, label %354

349:                                              ; preds = %331
  %350 = call i32 @llvm.smax.i32(i32 %337, i32 1) #20
  %351 = call i32 @llvm.umin.i32(i32 %350, i32 16) #20
  %352 = add nsw i32 %351, -1
  %353 = shl nuw nsw i32 1, %352
  br label %354

354:                                              ; preds = %349, %331
  %355 = phi i32 [ %353, %349 ], [ %337, %331 ]
  %356 = getelementptr inbounds %struct.urb, ptr %328, i32 0, i32 25
  store i32 %355, ptr %356, align 4
  %357 = getelementptr inbounds %struct.urb, ptr %328, i32 0, i32 23
  store i32 -1, ptr %357, align 4
  %358 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 20
  %359 = load i8, ptr %358, align 8
  %360 = and i8 %359, 64
  %361 = icmp eq i8 %360, 0
  %362 = load i8, ptr @blinkenlights, align 1
  %363 = icmp eq i8 %362, 0
  %364 = select i1 %361, i1 true, i1 %363
  br i1 %364, label %367, label %365

365:                                              ; preds = %354
  %366 = getelementptr inbounds %struct.usb_hub, ptr %61, i32 0, i32 21
  store i8 1, ptr %366, align 1
  br label %367

367:                                              ; preds = %365, %354
  call void @mutex_lock(ptr noundef nonnull @usb_port_peer_mutex) #20
  %368 = icmp eq i8 %216, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %367
  %370 = getelementptr inbounds %struct.usb_device, ptr %115, i32 0, i32 35
  store i32 0, ptr %370, align 4
  call void @mutex_unlock(ptr noundef nonnull @usb_port_peer_mutex) #20
  br label %395

371:                                              ; preds = %373
  %372 = icmp eq i32 %375, %215
  br i1 %372, label %380, label %373

373:                                              ; preds = %371, %367
  %374 = phi i32 [ %375, %371 ], [ 0, %367 ]
  %375 = add nuw nsw i32 %374, 1
  %376 = call i32 @usb_hub_create_port_device(ptr noundef %61, i32 noundef %375) #20
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %371

378:                                              ; preds = %373
  %379 = load ptr, ptr %61, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %379, ptr noundef nonnull @.str.96, i32 noundef %375) #19
  br label %380

380:                                              ; preds = %378, %371
  %381 = phi i32 [ %374, %378 ], [ %215, %371 ]
  %382 = getelementptr inbounds %struct.usb_device, ptr %115, i32 0, i32 35
  store i32 %381, ptr %382, align 4
  %383 = icmp sgt i32 %381, 0
  br i1 %383, label %384, label %394

384:                                              ; preds = %384, %380
  %385 = phi i32 [ %391, %384 ], [ 0, %380 ]
  %386 = load ptr, ptr %221, align 8
  %387 = getelementptr ptr, ptr %386, i32 %385
  %388 = load ptr, ptr %387, align 4
  %389 = getelementptr inbounds %struct.usb_port, ptr %388, i32 0, i32 1
  %390 = call i32 @__pm_runtime_idle(ptr noundef %389, i32 noundef 5) #20
  %391 = add nuw nsw i32 %385, 1
  %392 = load i32, ptr %382, align 4
  %393 = icmp slt i32 %391, %392
  br i1 %393, label %384, label %394

394:                                              ; preds = %384, %380
  call void @mutex_unlock(ptr noundef nonnull @usb_port_peer_mutex) #20
  br i1 %377, label %406, label %395

395:                                              ; preds = %394, %369
  %396 = getelementptr inbounds %struct.usb_hcd, ptr %272, i32 0, i32 9
  %397 = load ptr, ptr %396, align 4
  %398 = getelementptr inbounds %struct.hc_driver, ptr %397, i32 0, i32 37
  %399 = load ptr, ptr %398, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %404, label %401

401:                                              ; preds = %395
  %402 = call i32 %399(ptr noundef %272, ptr noundef %115, ptr noundef %232, i32 noundef 3264) #20
  %403 = icmp slt i32 %402, 0
  br i1 %403, label %406, label %404

404:                                              ; preds = %401, %395
  %405 = load ptr, ptr %130, align 8
  call void @usb_hub_adjust_deviceremovable(ptr noundef %115, ptr noundef %405) #20
  call fastcc void @hub_activate(ptr noundef %61, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  br label %412

406:                                              ; preds = %401, %394, %318, %315, %214, %189, %180, %178, %176, %149, %126, %121, %113
  %407 = phi ptr [ @.str.88, %149 ], [ @.str.88, %176 ], [ @.str.88, %178 ], [ @.str.97, %401 ], [ @.str.86, %318 ], [ @.str.94, %315 ], [ @.str.86, %214 ], [ @.str.90, %189 ], [ @.str.89, %180 ], [ @.str.86, %126 ], [ @.str.86, %121 ], [ @.str.86, %113 ], [ @.str.86, %394 ]
  %408 = phi i32 [ -90, %149 ], [ -22, %176 ], [ -22, %178 ], [ %402, %401 ], [ -12, %318 ], [ %316, %315 ], [ -12, %214 ], [ -19, %189 ], [ -19, %180 ], [ -12, %126 ], [ -12, %121 ], [ -12, %113 ], [ %376, %394 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.98, ptr noundef nonnull %407, i32 noundef %408) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  br label %411

409:                                              ; preds = %267
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.94, i32 noundef %268) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  %410 = icmp sgt i32 %268, -1
  br i1 %410, label %412, label %411

411:                                              ; preds = %409, %406
  call void @hub_disconnect(ptr noundef %0)
  br label %412

412:                                              ; preds = %411, %409, %404, %58, %56, %35
  %413 = phi i32 [ -7, %35 ], [ -19, %411 ], [ -5, %56 ], [ -12, %58 ], [ 0, %409 ], [ 0, %404 ]
  ret i32 %413
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hub_disconnect(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 20
  %7 = load i8, ptr %6, align 4
  %8 = or i8 %7, 4
  store i8 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 7
  store i32 0, ptr %9, align 4
  tail call fastcc void @hub_quiesce(ptr noundef %3, i32 noundef 0)
  tail call void @mutex_lock(ptr noundef nonnull @usb_port_peer_mutex) #20
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @device_state_lock) #20
  %10 = getelementptr i8, ptr %5, i32 668
  %11 = load i32, ptr %10, align 4
  store i32 0, ptr %10, align 4
  store ptr null, ptr %2, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %12 = load i16, ptr @device_state_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @device_state_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !19
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %15, %1
  %16 = phi i32 [ %17, %15 ], [ %11, %1 ]
  tail call void @usb_hub_remove_port_device(ptr noundef %3, i32 noundef %16) #20
  %17 = add nsw i32 %16, -1
  %18 = icmp ugt i32 %16, 1
  br i1 %18, label %15, label %19

19:                                               ; preds = %15, %1
  tail call void @mutex_unlock(ptr noundef nonnull @usb_port_peer_mutex) #20
  %20 = getelementptr %struct.usb_hub, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, ptr @highspeed_hubs, align 4
  %27 = add i32 %26, -1
  store i32 %27, ptr @highspeed_hubs, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  tail call void @usb_free_urb(ptr noundef %30) #20
  %31 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #20
  %33 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 16
  %34 = load ptr, ptr %33, align 4
  tail call void @kfree(ptr noundef %34) #20
  %35 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  tail call void @kfree(ptr noundef %36) #20
  %37 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %38) #20
  %39 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 11, i32 15
  %40 = load i16, ptr %39, align 8
  %41 = and i16 %40, -257
  store i16 %41, ptr %39, align 8
  %42 = load i8, ptr %6, align 4
  %43 = and i8 %42, 16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %28
  tail call void @usb_autopm_put_interface(ptr noundef %0) #20
  br label %46

46:                                               ; preds = %45, %28
  %47 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #20, !srcloc !8
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #20, !srcloc !13
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = icmp sgt i32 %49, 0
  br i1 %52, label %58, label %53, !prof !11

53:                                               ; preds = %51
  tail call void @refcount_warn_saturate(ptr noundef %47, i32 noundef 3) #20
  br label %58

54:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !14
  %55 = load ptr, ptr %20, align 4
  tail call void @usb_put_dev(ptr noundef %55) #20
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr i8, ptr %56, i32 -32
  tail call void @usb_put_intf(ptr noundef %57) #20
  tail call void @kfree(ptr noundef %3) #20
  br label %58

58:                                               ; preds = %54, %53, %51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -128
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %5, i32 500
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %5, i32 668
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usb_host_config, ptr %10, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7, i32 8
  %20 = load ptr, ptr %19, align 8
  br label %21

21:                                               ; preds = %16, %12, %8, %3
  %22 = phi ptr [ %20, %16 ], [ null, %12 ], [ null, %8 ], [ null, %3 ]
  %23 = icmp eq i32 %1, -2139073261
  br i1 %23, label %24, label %57

24:                                               ; preds = %21
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @device_state_lock) #20
  %25 = load i32, ptr %6, align 8
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i8 0, ptr %2, align 1
  br label %51

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %5, i32 668
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %30 to i8
  store i8 %31, ptr %2, align 1
  %32 = and i32 %30, 255
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.usb_hub, ptr %22, i32 0, i32 27
  br label %36

36:                                               ; preds = %46, %34
  %37 = phi i32 [ 0, %34 ], [ %49, %46 ]
  %38 = load ptr, ptr %35, align 4
  %39 = getelementptr ptr, ptr %38, i32 %37
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, ptr %41, align 8
  %45 = trunc i32 %44 to i8
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi i8 [ %45, %43 ], [ 0, %36 ]
  %48 = getelementptr %struct.usbdevfs_hub_portinfo, ptr %2, i32 0, i32 1, i32 %37
  store i8 %47, ptr %48, align 1
  %49 = add nuw nsw i32 %37, 1
  %50 = icmp eq i32 %49, %32
  br i1 %50, label %51, label %36

51:                                               ; preds = %46, %28, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %52 = load i16, ptr @device_state_lock, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr @device_state_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !19
  %54 = load i8, ptr %2, align 1
  %55 = zext i8 %54 to i32
  %56 = add nuw nsw i32 %55, 1
  br label %57

57:                                               ; preds = %51, %21
  %58 = phi i32 [ %56, %51 ], [ -38, %21 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #1 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = extractvalue [1 x i32] %1, 0
  %6 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.usb_hub, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_hub, ptr %7, i32 0, i32 19
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 35
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %77, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.usb_hub, ptr %7, i32 0, i32 27
  %16 = and i32 %5, 1024
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %73, %14
  %19 = phi i32 [ %12, %14 ], [ %74, %73 ]
  %20 = phi i32 [ 1, %14 ], [ %75, %73 ]
  %21 = load ptr, ptr %15, align 4
  %22 = add i32 %20, -1
  %23 = getelementptr ptr, ptr %21, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %73, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 28
  %29 = load i16, ptr %28, align 1
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.usb_port, ptr %24, i32 0, i32 1
  %34 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi ptr [ %39, %37 ], [ %35, %32 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.105, ptr noundef %41) #19
  br i1 %17, label %42, label %133

42:                                               ; preds = %40, %27
  %43 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 20
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 35
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %42
  %51 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 40
  %52 = load i8, ptr %51, align 8
  br label %64

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.usb_host_config, ptr %44, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.usb_interface, ptr %55, i32 0, i32 7, i32 8
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 40
  %59 = load i8, ptr %58, align 8
  %60 = icmp eq ptr %57, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.usb_hub, ptr %57, i32 0, i32 19
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %53, %50
  %65 = phi i8 [ %59, %61 ], [ %59, %53 ], [ %52, %50 ]
  %66 = phi i32 [ %63, %61 ], [ 0, %53 ], [ 0, %50 ]
  %67 = and i8 %65, 1
  %68 = zext i8 %67 to i32
  %69 = add i32 %66, %68
  %70 = load i32, ptr %10, align 4
  %71 = add i32 %69, %70
  store i32 %71, ptr %10, align 4
  %72 = load i32, ptr %11, align 4
  br label %73

73:                                               ; preds = %64, %18
  %74 = phi i32 [ %19, %18 ], [ %72, %64 ]
  %75 = add i32 %20, 1
  %76 = icmp ugt i32 %75, %74
  br i1 %76, label %77, label %18

77:                                               ; preds = %73, %2
  %78 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 40
  %79 = load i8, ptr %78, align 8
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %110, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.usb_hub, ptr %7, i32 0, i32 20
  %84 = load i8, ptr %83, align 4
  %85 = and i8 %84, 32
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %110, label %87

87:                                               ; preds = %82
  %88 = load ptr, ptr %8, align 4
  %89 = getelementptr inbounds %struct.usb_device, ptr %88, i32 0, i32 35
  %90 = load i32, ptr %89, align 4
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %110, label %98

92:                                               ; preds = %98
  %93 = add i32 %99, 1
  %94 = load ptr, ptr %8, align 4
  %95 = getelementptr inbounds %struct.usb_device, ptr %94, i32 0, i32 35
  %96 = load i32, ptr %95, align 4
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %110, label %98

98:                                               ; preds = %92, %87
  %99 = phi i32 [ %93, %92 ], [ 1, %87 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #20
  store i16 0, ptr %4, align 2, !annotation !21
  %100 = call fastcc i32 @hub_ext_port_status(ptr noundef %7, i32 noundef %99, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #20
  %101 = icmp eq i32 %100, 0
  %102 = load i16, ptr %4, align 2
  %103 = icmp ne i16 %102, 0
  %104 = select i1 %101, i1 %103, i1 false
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  br i1 %104, label %105, label %92

105:                                              ; preds = %98
  %106 = and i32 %5, 1024
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void @pm_wakeup_dev_event(ptr noundef %109, i32 noundef 2000, i1 noundef zeroext false) #20
  br label %110

110:                                              ; preds = %108, %92, %87, %82, %77
  %111 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 16, i32 5
  %112 = load i8, ptr %111, align 2
  %113 = icmp eq i8 %112, 3
  br i1 %113, label %114, label %132

114:                                              ; preds = %110
  %115 = load i8, ptr %78, align 8
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %114
  %119 = load i32, ptr %11, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %121, %118
  %122 = phi i32 [ %129, %121 ], [ 1, %118 ]
  %123 = load i32, ptr %9, align 8
  %124 = shl i32 %123, 8
  %125 = or i32 %124, -2147483648
  %126 = trunc i32 %122 to i16
  %127 = or i16 %126, 1792
  %128 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %125, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 27, i16 noundef zeroext %127, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %129 = add i32 %122, 1
  %130 = load i32, ptr %11, align 4
  %131 = icmp ugt i32 %129, %130
  br i1 %131, label %132, label %121

132:                                              ; preds = %121, %118, %114, %110
  tail call fastcc void @hub_quiesce(ptr noundef %7, i32 noundef 2)
  br label %133

133:                                              ; preds = %132, %105, %40
  %134 = phi i32 [ 0, %132 ], [ -16, %105 ], [ -16, %40 ]
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call fastcc void @hub_activate(ptr noundef %4, i32 noundef 4)
  %5 = getelementptr inbounds %struct.usb_hub, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %7 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %46

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 12
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.hc_driver, ptr %14, i32 0, i32 23
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %10
  %19 = tail call i32 %16(ptr noundef %12) #20
  store i32 %19, ptr %2, align 4
  %20 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 35
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.usb_hub, ptr %4, i32 0, i32 27
  br label %25

25:                                               ; preds = %42, %23
  %26 = phi i32 [ %21, %23 ], [ %43, %42 ]
  %27 = phi i32 [ 0, %23 ], [ %44, %42 ]
  %28 = load volatile i32, ptr %2, align 4
  %29 = and i32 %27, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr %24, align 4
  %35 = getelementptr ptr, ptr %34, i32 %27
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  tail call void @pm_wakeup_dev_event(ptr noundef %40, i32 noundef 0, i1 noundef zeroext false) #20
  %41 = load i32, ptr %20, align 4
  br label %42

42:                                               ; preds = %39, %33, %25
  %43 = phi i32 [ %26, %25 ], [ %41, %39 ], [ %26, %33 ]
  %44 = add nuw nsw i32 %27, 1
  %45 = icmp slt i32 %44, %43
  br i1 %45, label %25, label %46

46:                                               ; preds = %42, %18, %10, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub_reset_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @hub_activate(ptr noundef %3, i32 noundef 5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub_pre_reset(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @hub_quiesce(ptr noundef %3, i32 noundef 1)
  %4 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 20
  %5 = load i8, ptr %4, align 4
  %6 = or i8 %5, 8
  store i8 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 35
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 27
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %21, %14 ]
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr ptr, ptr %16, i32 %15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_port, ptr %18, i32 0, i32 1
  %20 = tail call i32 @pm_runtime_barrier(ptr noundef %19) #20
  %21 = add nuw nsw i32 %15, 1
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 35
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %14, label %26

26:                                               ; preds = %14, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hub_post_reset(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 20
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, -9
  store i8 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 35
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 27
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %21, %14 ]
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr ptr, ptr %16, i32 %15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_port, ptr %18, i32 0, i32 1
  %20 = tail call i32 @pm_runtime_barrier(ptr noundef %19) #20
  %21 = add nuw nsw i32 %15, 1
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 35
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %14, label %26

26:                                               ; preds = %14, %1
  tail call fastcc void @hub_activate(ptr noundef %3, i32 noundef 3)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_autosuspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @led_work(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -164
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 7
  br i1 %6, label %7, label %78

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -32
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %78

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 35
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %57, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -31
  br label %18

18:                                               ; preds = %49, %16
  %19 = phi i32 [ %14, %16 ], [ %51, %49 ]
  %20 = phi i32 [ -1, %16 ], [ %53, %49 ]
  %21 = phi i32 [ 0, %16 ], [ %52, %49 ]
  %22 = phi i32 [ 0, %16 ], [ %50, %49 ]
  %23 = getelementptr [31 x i8], ptr %17, i32 0, i32 %22
  %24 = load i8, ptr %23, align 1
  switch i8 %24, label %25 [
    i8 1, label %35
    i8 2, label %32
    i8 3, label %27
    i8 4, label %28
    i8 5, label %29
    i8 6, label %30
    i8 7, label %31
  ]

25:                                               ; preds = %18
  %26 = add nuw i32 %22, 1
  br label %49

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  br label %32

29:                                               ; preds = %18
  br label %32

30:                                               ; preds = %18
  br label %32

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27, %18
  %33 = phi i32 [ 768, %27 ], [ 256, %28 ], [ 768, %29 ], [ 512, %30 ], [ 256, %31 ], [ 512, %18 ]
  %34 = phi i8 [ 2, %27 ], [ 5, %28 ], [ 4, %29 ], [ 7, %30 ], [ 6, %31 ], [ 3, %18 ]
  br label %35

35:                                               ; preds = %32, %18
  %36 = phi i8 [ %34, %32 ], [ 0, %18 ]
  %37 = phi i32 [ %33, %32 ], [ 0, %18 ]
  %38 = phi i32 [ %20, %32 ], [ %22, %18 ]
  %39 = phi i32 [ 1, %32 ], [ %21, %18 ]
  %40 = add nuw i32 %22, 1
  %41 = load ptr, ptr %2, align 4
  %42 = or i32 %37, %40
  %43 = load i32, ptr %41, align 8
  %44 = shl i32 %43, 8
  %45 = or i32 %44, -2147483648
  %46 = trunc i32 %42 to i16
  %47 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %45, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 22, i16 noundef zeroext %46, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  store i8 %36, ptr %23, align 1
  %48 = load i32, ptr %13, align 4
  br label %49

49:                                               ; preds = %35, %25
  %50 = phi i32 [ %26, %25 ], [ %40, %35 ]
  %51 = phi i32 [ %19, %25 ], [ %48, %35 ]
  %52 = phi i32 [ %21, %25 ], [ %39, %35 ]
  %53 = phi i32 [ %20, %25 ], [ %38, %35 ]
  %54 = icmp ult i32 %50, %51
  br i1 %54, label %18, label %55

55:                                               ; preds = %49
  %56 = icmp eq i32 %52, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %55, %12
  %58 = phi i32 [ %51, %55 ], [ 0, %12 ]
  %59 = phi i32 [ %53, %55 ], [ -1, %12 ]
  %60 = load i8, ptr @blinkenlights, align 1, !range !25
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %57
  %63 = add i32 %59, 1
  %64 = srem i32 %63, %58
  %65 = load ptr, ptr %2, align 4
  %66 = load i32, ptr %65, align 8
  %67 = shl i32 %66, 8
  %68 = or i32 %67, -2147483648
  %69 = trunc i32 %64 to i16
  %70 = add i16 %69, 1
  %71 = or i16 %70, 512
  %72 = tail call i32 @usb_control_msg(ptr noundef %65, i32 noundef %68, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 22, i16 noundef zeroext %71, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %73 = getelementptr i8, ptr %0, i32 -31
  %74 = getelementptr [31 x i8], ptr %73, i32 0, i32 %64
  store i8 1, ptr %74, align 1
  br label %75

75:                                               ; preds = %62, %55
  %76 = load ptr, ptr @system_power_efficient_wq, align 4
  %77 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %76, ptr noundef %0, i32 noundef 66) #20
  br label %78

78:                                               ; preds = %75, %57, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hub_event(ptr noundef %0) #1 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.usb_device_descriptor, align 1
  %4 = alloca [3 x ptr], align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #20
  store i16 0, ptr %10, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #20
  store i16 0, ptr %11, align 2, !annotation !21
  %14 = getelementptr i8, ptr %0, i32 -256
  %15 = getelementptr i8, ptr %0, i32 -252
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr i8, ptr %17, i32 -32
  %19 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15, i32 9
  tail call void @mutex_lock(ptr noundef %19) #20
  %20 = getelementptr i8, ptr %0, i32 -120
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %1069, !prof !11

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 3
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %0, i32 -212
  store i32 -19, ptr %29, align 4
  tail call fastcc void @hub_quiesce(ptr noundef %14, i32 noundef 0)
  br label %1069

30:                                               ; preds = %24
  %31 = tail call i32 @usb_autopm_get_interface(ptr noundef %18) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %1069

33:                                               ; preds = %30
  %34 = load i8, ptr %20, align 4
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %1068

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %0, i32 -212
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = tail call i32 @usb_reset_device(ptr noundef %16)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %1068

44:                                               ; preds = %41
  %45 = getelementptr i8, ptr %0, i32 -208
  store i32 0, ptr %45, align 4
  store i32 0, ptr %38, align 4
  br label %46

46:                                               ; preds = %44, %37
  %47 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 35
  %48 = load i32, ptr %47, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %991, label %50

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %0, i32 40
  %52 = getelementptr i8, ptr %0, i32 -204
  %53 = getelementptr i8, ptr %0, i32 -200
  %54 = getelementptr i8, ptr %0, i32 -192
  %55 = getelementptr inbounds i8, ptr %4, i32 4
  %56 = getelementptr inbounds [3 x ptr], ptr %4, i32 0, i32 2
  %57 = getelementptr i8, ptr %0, i32 -188
  %58 = getelementptr i8, ptr %0, i32 -176
  %59 = getelementptr i8, ptr %0, i32 -180
  %60 = getelementptr i8, ptr %0, i32 -196
  %61 = getelementptr i8, ptr %0, i32 -128
  %62 = getelementptr i8, ptr %0, i32 -88
  %63 = icmp eq ptr %14, null
  br label %64

64:                                               ; preds = %987, %50
  %65 = phi i32 [ %48, %50 ], [ %988, %987 ]
  %66 = phi i32 [ 1, %50 ], [ %989, %987 ]
  %67 = load ptr, ptr %51, align 4
  %68 = add i32 %66, -1
  %69 = getelementptr ptr, ptr %67, i32 %68
  %70 = load ptr, ptr %69, align 4
  %71 = lshr i32 %66, 5
  %72 = getelementptr i32, ptr %52, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %66, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %73, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %64
  %79 = getelementptr i32, ptr %53, i32 %71
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, %75
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = getelementptr i32, ptr %54, i32 %71
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, %75
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %987, label %88

88:                                               ; preds = %83, %78, %64
  %89 = getelementptr inbounds %struct.usb_port, ptr %70, i32 0, i32 1
  %90 = getelementptr inbounds %struct.usb_port, ptr %70, i32 0, i32 1, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %90) #20, !srcloc !8
  %91 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %90, ptr %90, i32 1, ptr elementtype(i32) %90) #20, !srcloc !20
  %92 = call i32 @pm_runtime_barrier(ptr noundef %89) #20
  %93 = getelementptr inbounds %struct.usb_port, ptr %70, i32 0, i32 7
  call void @mutex_lock(ptr noundef %93) #20
  %94 = load ptr, ptr %51, align 4
  %95 = getelementptr ptr, ptr %94, i32 %68
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %96, align 8
  %98 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #20
  store i16 0, ptr %5, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #20
  store i16 0, ptr %6, align 2, !annotation !21
  %99 = getelementptr i32, ptr %53, i32 %71
  %100 = load volatile i32, ptr %99, align 4
  call void @_clear_bit(i32 noundef %66, ptr noundef %52) #20
  call void @_clear_bit(i32 noundef %66, ptr noundef %54) #20
  %101 = call fastcc i32 @hub_ext_port_status(ptr noundef %14, i32 noundef %66, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #20
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %984, label %103

103:                                              ; preds = %88
  %104 = lshr i32 %100, %74
  %105 = and i32 %104, 1
  %106 = load i16, ptr %6, align 2
  %107 = and i16 %106, 1
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load i32, ptr %98, align 8
  %111 = shl i32 %110, 8
  %112 = or i32 %111, -2147483648
  %113 = trunc i32 %66 to i16
  %114 = call i32 @usb_control_msg(ptr noundef %98, i32 noundef %112, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 16, i16 noundef zeroext %113, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %115

115:                                              ; preds = %109, %103
  %116 = phi i32 [ 1, %109 ], [ %105, %103 ]
  %117 = and i16 %106, 2
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %134, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %98, align 8
  %121 = shl i32 %120, 8
  %122 = or i32 %121, -2147483648
  %123 = trunc i32 %66 to i16
  %124 = call i32 @usb_control_msg(ptr noundef %98, i32 noundef %122, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 17, i16 noundef zeroext %123, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %125 = load i16, ptr %5, align 2
  %126 = and i16 %125, 2
  %127 = icmp eq i16 %126, 0
  %128 = icmp eq i32 %116, 0
  %129 = select i1 %127, i1 %128, i1 false
  %130 = icmp ne ptr %97, null
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %134

132:                                              ; preds = %119
  %133 = getelementptr inbounds %struct.usb_port, ptr %96, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.50) #19
  br label %134

134:                                              ; preds = %132, %119, %115
  %135 = phi i32 [ 1, %132 ], [ %116, %119 ], [ %116, %115 ]
  %136 = and i16 %106, 8
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %212, label %138

138:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #20
  store i16 0, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #20
  store i16 0, ptr %8, align 2, !annotation !21
  %139 = getelementptr inbounds %struct.usb_port, ptr %96, i32 0, i32 8
  %140 = load i32, ptr %139, align 8
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  store i64 0, ptr %55, align 4, !annotation !21
  %142 = getelementptr inbounds %struct.usb_port, ptr %96, i32 0, i32 1
  call void @sysfs_notify(ptr noundef %142, ptr noundef null, ptr noundef nonnull @.str.52) #20
  %143 = getelementptr inbounds %struct.usb_port, ptr %96, i32 0, i32 1, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %163, label %146

146:                                              ; preds = %138
  %147 = call ptr @kobject_get_path(ptr noundef %142, i32 noundef 3264) #20
  %148 = icmp eq ptr %147, null
  br i1 %148, label %163, label %149

149:                                              ; preds = %146
  %150 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.53, ptr noundef nonnull %147) #20
  store ptr %150, ptr %4, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %162, label %152

152:                                              ; preds = %149
  %153 = load i32, ptr %139, align 8
  %154 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.54, i32 noundef %153) #20
  store ptr %154, ptr %55, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  store ptr null, ptr %56, align 4
  %157 = call i32 @kobject_uevent_env(ptr noundef nonnull %144, i32 noundef 2, ptr noundef nonnull %4) #20
  %158 = load ptr, ptr %55, align 4
  call void @kfree(ptr noundef %158) #20
  %159 = load ptr, ptr %4, align 4
  br label %160

160:                                              ; preds = %156, %152
  %161 = phi ptr [ %150, %152 ], [ %159, %156 ]
  call void @kfree(ptr noundef %161) #20
  br label %162

162:                                              ; preds = %160, %149
  call void @kfree(ptr noundef nonnull %147) #20
  br label %163

163:                                              ; preds = %162, %146, %138
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  %164 = load i32, ptr %98, align 8
  %165 = shl i32 %164, 8
  %166 = or i32 %165, -2147483648
  %167 = trunc i32 %66 to i16
  %168 = call i32 @usb_control_msg(ptr noundef %98, i32 noundef %166, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 19, i16 noundef zeroext %167, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  call void @msleep(i32 noundef 100) #20
  %169 = load ptr, ptr %15, align 4
  %170 = getelementptr inbounds %struct.usb_device, ptr %169, i32 0, i32 35
  %171 = load i32, ptr %170, align 4
  %172 = icmp slt i32 %171, 1
  br i1 %172, label %194, label %173

173:                                              ; preds = %173, %163
  %174 = phi ptr [ %190, %173 ], [ %169, %163 ]
  %175 = phi i32 [ %189, %173 ], [ 1, %163 ]
  %176 = lshr i32 %175, 5
  %177 = getelementptr i32, ptr %57, i32 %176
  %178 = load volatile i32, ptr %177, align 4
  %179 = and i32 %175, 31
  %180 = shl nuw i32 1, %179
  %181 = and i32 %180, %178
  %182 = icmp eq i32 %181, 0
  %183 = load i32, ptr %174, align 8
  %184 = shl i32 %183, 8
  %185 = or i32 %184, -2147483648
  %186 = trunc i32 %175 to i16
  %187 = select i1 %182, i8 1, i8 3
  %188 = call i32 @usb_control_msg(ptr noundef %174, i32 noundef %185, i8 noundef zeroext %187, i8 noundef zeroext 35, i16 noundef zeroext 8, i16 noundef zeroext %186, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %189 = add i32 %175, 1
  %190 = load ptr, ptr %15, align 4
  %191 = getelementptr inbounds %struct.usb_device, ptr %190, i32 0, i32 35
  %192 = load i32, ptr %191, align 4
  %193 = icmp sgt i32 %189, %192
  br i1 %193, label %194, label %173

194:                                              ; preds = %173, %163
  %195 = phi ptr [ %169, %163 ], [ %190, %173 ]
  %196 = load ptr, ptr %58, align 4
  %197 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %196, i32 0, i32 4
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = shl nuw nsw i32 %199, 1
  %201 = getelementptr inbounds %struct.usb_device, ptr %195, i32 0, i32 11
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  %204 = call i32 @llvm.umax.i32(i32 %200, i32 100) #20
  %205 = select i1 %203, i32 %200, i32 %204
  call void @msleep(i32 noundef %205) #20
  %206 = call fastcc i32 @hub_ext_port_status(ptr noundef %14, i32 noundef %66, i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #20
  %207 = load i16, ptr %7, align 2
  %208 = and i16 %207, 8
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %194
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.49) #19
  br label %211

211:                                              ; preds = %210, %194
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #20
  br label %212

212:                                              ; preds = %211, %134
  %213 = and i16 %106, 16
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %212
  %216 = load i32, ptr %98, align 8
  %217 = shl i32 %216, 8
  %218 = or i32 %217, -2147483648
  %219 = trunc i32 %66 to i16
  %220 = call i32 @usb_control_msg(ptr noundef %98, i32 noundef %218, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 20, i16 noundef zeroext %219, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %221

221:                                              ; preds = %215, %212
  %222 = and i16 %106, 32
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %234, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.usb_device, ptr %98, i32 0, i32 16, i32 5
  %226 = load i8, ptr %225, align 2
  %227 = icmp eq i8 %226, 3
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = load i32, ptr %98, align 8
  %230 = shl i32 %229, 8
  %231 = or i32 %230, -2147483648
  %232 = trunc i32 %66 to i16
  %233 = call i32 @usb_control_msg(ptr noundef %98, i32 noundef %231, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 29, i16 noundef zeroext %232, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %234

234:                                              ; preds = %228, %224, %221
  %235 = and i16 %106, 64
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %234
  %238 = load i32, ptr %98, align 8
  %239 = shl i32 %238, 8
  %240 = or i32 %239, -2147483648
  %241 = trunc i32 %66 to i16
  %242 = call i32 @usb_control_msg(ptr noundef %98, i32 noundef %240, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 25, i16 noundef zeroext %241, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %243

243:                                              ; preds = %237, %234
  %244 = and i16 %106, 128
  %245 = icmp eq i16 %244, 0
  br i1 %245, label %253, label %246

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.usb_port, ptr %96, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %247, ptr noundef nonnull @.str.51) #19
  %248 = load i32, ptr %98, align 8
  %249 = shl i32 %248, 8
  %250 = or i32 %249, -2147483648
  %251 = trunc i32 %66 to i16
  %252 = call i32 @usb_control_msg(ptr noundef %98, i32 noundef %250, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 26, i16 noundef zeroext %251, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %253

253:                                              ; preds = %246, %243
  %254 = getelementptr inbounds %struct.usb_port, ptr %96, i32 0, i32 1, i32 11, i32 18
  %255 = load i32, ptr %254, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.usb_port, ptr %96, i32 0, i32 1, i32 11, i32 15
  %259 = load i16, ptr %258, align 8
  %260 = and i16 %259, 7
  %261 = icmp eq i16 %260, 0
  br i1 %261, label %984, label %262

262:                                              ; preds = %257, %253
  %263 = load i16, ptr %5, align 2
  %264 = load ptr, ptr %51, align 4
  %265 = getelementptr ptr, ptr %264, i32 %68
  %266 = load ptr, ptr %265, align 4
  %267 = load ptr, ptr %15, align 4
  %268 = load ptr, ptr %266, align 8
  %269 = getelementptr inbounds %struct.usb_device, ptr %267, i32 0, i32 16, i32 5
  %270 = load i8, ptr %269, align 2
  %271 = icmp eq i8 %270, 3
  br i1 %271, label %275, label %272

272:                                              ; preds = %262
  %273 = and i16 %106, 4
  %274 = icmp eq i16 %273, 0
  br i1 %274, label %309, label %287

275:                                              ; preds = %262
  %276 = and i16 %263, 480
  %277 = icmp eq ptr %268, null
  br i1 %277, label %309, label %278

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.usb_device, ptr %268, i32 0, i32 3
  %280 = load i32, ptr %279, align 8
  %281 = icmp eq i32 %280, 8
  br i1 %281, label %282, label %309

282:                                              ; preds = %278
  %283 = and i16 %263, 448
  %284 = icmp ne i16 %283, 0
  %285 = icmp ne i16 %276, 64
  %286 = and i1 %284, %285
  br i1 %286, label %309, label %294

287:                                              ; preds = %272
  %288 = load i32, ptr %267, align 8
  %289 = shl i32 %288, 8
  %290 = or i32 %289, -2147483648
  %291 = trunc i32 %66 to i16
  %292 = call i32 @usb_control_msg(ptr noundef %267, i32 noundef %290, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 18, i16 noundef zeroext %291, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %293 = icmp eq ptr %268, null
  br i1 %293, label %304, label %294

294:                                              ; preds = %287, %282
  call void @msleep(i32 noundef 10) #20
  %295 = getelementptr inbounds %struct.usb_port, ptr %266, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %295) #20
  %296 = getelementptr inbounds %struct.usb_device, ptr %268, i32 0, i32 15, i32 9
  call void @mutex_lock(ptr noundef %296) #20
  %297 = getelementptr inbounds %struct.usb_device, ptr %268, i32 0, i32 3
  %298 = load i32, ptr %297, align 8
  %299 = icmp eq i32 %298, 8
  br i1 %299, label %300, label %306

300:                                              ; preds = %294
  %301 = call i32 @usb_autoresume_device(ptr noundef nonnull %268) #20
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %300
  call void @usb_autosuspend_device(ptr noundef nonnull %268) #20
  br label %306

304:                                              ; preds = %287
  %305 = call fastcc i32 @hub_port_disable(ptr noundef %14, i32 noundef %66, i32 noundef 1) #20
  br label %309

306:                                              ; preds = %303, %300, %294
  %307 = phi i32 [ 0, %303 ], [ %301, %300 ], [ 0, %294 ]
  call void @mutex_unlock(ptr noundef %296) #20
  call void @mutex_lock(ptr noundef %295) #20
  %308 = icmp sgt i32 %307, -1
  br i1 %308, label %309, label %310

309:                                              ; preds = %306, %304, %282, %278, %275, %272
  br label %310

310:                                              ; preds = %309, %306
  %311 = phi i32 [ %135, %309 ], [ 1, %306 ]
  %312 = load ptr, ptr %15, align 4
  %313 = getelementptr inbounds %struct.usb_device, ptr %312, i32 0, i32 16, i32 5
  %314 = load i8, ptr %313, align 2
  %315 = icmp eq i8 %314, 3
  br i1 %315, label %316, label %415

316:                                              ; preds = %310
  %317 = getelementptr i32, ptr %59, i32 %71
  %318 = icmp eq ptr %97, null
  %319 = load volatile i32, ptr %317, align 4
  %320 = and i32 %319, %75
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %316
  %323 = trunc i16 %263 to i9
  %324 = and i9 %323, -32
  switch i9 %324, label %415 [
    i9 -192, label %325
    i9 192, label %325
  ]

325:                                              ; preds = %322, %322, %316
  br i1 %318, label %397, label %326

326:                                              ; preds = %325
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #20
  call void @msleep(i32 noundef 20) #20
  %327 = call fastcc i32 @hub_ext_port_status(ptr noundef %14, i32 noundef %66, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #20
  %328 = load i16, ptr %5, align 2
  %329 = load ptr, ptr %15, align 4
  %330 = getelementptr inbounds %struct.usb_device, ptr %329, i32 0, i32 16, i32 5
  %331 = load i8, ptr %330, align 2
  %332 = icmp eq i8 %331, 3
  br i1 %332, label %333, label %415

333:                                              ; preds = %326
  %334 = load volatile i32, ptr %317, align 4
  %335 = and i32 %334, %75
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %333
  %338 = trunc i16 %328 to i9
  %339 = and i9 %338, -32
  switch i9 %339, label %415 [
    i9 -192, label %340
    i9 192, label %340
  ]

340:                                              ; preds = %337, %337, %333
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #20
  call void @msleep(i32 noundef 20) #20
  %341 = call fastcc i32 @hub_ext_port_status(ptr noundef %14, i32 noundef %66, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #20
  %342 = load i16, ptr %5, align 2
  %343 = load ptr, ptr %15, align 4
  %344 = getelementptr inbounds %struct.usb_device, ptr %343, i32 0, i32 16, i32 5
  %345 = load i8, ptr %344, align 2
  %346 = icmp eq i8 %345, 3
  br i1 %346, label %347, label %415

347:                                              ; preds = %340
  %348 = load volatile i32, ptr %317, align 4
  %349 = and i32 %348, %75
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %347
  %352 = trunc i16 %342 to i9
  %353 = and i9 %352, -32
  switch i9 %353, label %415 [
    i9 -192, label %354
    i9 192, label %354
  ]

354:                                              ; preds = %351, %351, %347
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #20
  call void @msleep(i32 noundef 20) #20
  %355 = call fastcc i32 @hub_ext_port_status(ptr noundef %14, i32 noundef %66, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #20
  %356 = load i16, ptr %5, align 2
  %357 = load ptr, ptr %15, align 4
  %358 = getelementptr inbounds %struct.usb_device, ptr %357, i32 0, i32 16, i32 5
  %359 = load i8, ptr %358, align 2
  %360 = icmp eq i8 %359, 3
  br i1 %360, label %361, label %415

361:                                              ; preds = %354
  %362 = load volatile i32, ptr %317, align 4
  %363 = and i32 %362, %75
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %361
  %366 = trunc i16 %356 to i9
  %367 = and i9 %366, -32
  switch i9 %367, label %415 [
    i9 -192, label %368
    i9 192, label %368
  ]

368:                                              ; preds = %365, %365, %361
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #20
  call void @msleep(i32 noundef 20) #20
  %369 = call fastcc i32 @hub_ext_port_status(ptr noundef %14, i32 noundef %66, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #20
  %370 = load i16, ptr %5, align 2
  %371 = load ptr, ptr %15, align 4
  %372 = getelementptr inbounds %struct.usb_device, ptr %371, i32 0, i32 16, i32 5
  %373 = load i8, ptr %372, align 2
  %374 = icmp eq i8 %373, 3
  br i1 %374, label %375, label %415

375:                                              ; preds = %368
  %376 = load volatile i32, ptr %317, align 4
  %377 = and i32 %376, %75
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %375
  %380 = trunc i16 %370 to i9
  %381 = and i9 %380, -32
  switch i9 %381, label %415 [
    i9 -192, label %382
    i9 192, label %382
  ]

382:                                              ; preds = %379, %379, %375
  br i1 %318, label %397, label %383

383:                                              ; preds = %382
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #20
  call void @msleep(i32 noundef 20) #20
  %384 = call fastcc i32 @hub_ext_port_status(ptr noundef %14, i32 noundef %66, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #20
  %385 = load i16, ptr %5, align 2
  %386 = load ptr, ptr %15, align 4
  %387 = getelementptr inbounds %struct.usb_device, ptr %386, i32 0, i32 16, i32 5
  %388 = load i8, ptr %387, align 2
  %389 = icmp eq i8 %388, 3
  br i1 %389, label %390, label %415

390:                                              ; preds = %383
  %391 = load volatile i32, ptr %317, align 4
  %392 = and i32 %391, %75
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %390
  %395 = trunc i16 %385 to i9
  %396 = and i9 %395, -32
  switch i9 %396, label %415 [
    i9 -192, label %397
    i9 192, label %397
  ]

397:                                              ; preds = %394, %394, %390, %382, %325
  %398 = phi i16 [ %263, %325 ], [ %370, %382 ], [ %385, %394 ], [ %385, %394 ], [ %385, %390 ]
  %399 = and i16 %398, 1
  %400 = icmp eq i16 %399, 0
  %401 = select i1 %318, i1 true, i1 %400
  br i1 %401, label %406, label %402

402:                                              ; preds = %397
  %403 = getelementptr inbounds %struct.usb_device, ptr %97, i32 0, i32 3
  %404 = load i32, ptr %403, align 8
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %411

406:                                              ; preds = %402, %397
  %407 = call fastcc i32 @hub_port_reset(ptr noundef %14, i32 noundef %66, ptr noundef null, i32 noundef 50, i1 noundef zeroext true) #20
  %408 = icmp slt i32 %407, 0
  br i1 %408, label %409, label %415

409:                                              ; preds = %406
  %410 = call fastcc i32 @hub_port_disable(ptr noundef %14, i32 noundef %66, i32 noundef 1) #20
  br label %415

411:                                              ; preds = %402
  %412 = getelementptr inbounds %struct.usb_port, ptr %96, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %412) #20
  %413 = getelementptr inbounds %struct.usb_device, ptr %97, i32 0, i32 15, i32 9
  call void @mutex_lock(ptr noundef %413) #20
  %414 = call i32 @usb_reset_device(ptr noundef nonnull %97) #20
  call void @mutex_unlock(ptr noundef %413) #20
  call void @mutex_lock(ptr noundef %412) #20
  br label %984

415:                                              ; preds = %409, %406, %394, %383, %379, %368, %365, %354, %351, %340, %337, %326, %322, %310
  %416 = phi i16 [ %398, %406 ], [ %398, %409 ], [ %263, %310 ], [ %263, %322 ], [ %328, %326 ], [ %328, %337 ], [ %342, %340 ], [ %342, %351 ], [ %356, %354 ], [ %356, %365 ], [ %370, %368 ], [ %370, %379 ], [ %385, %383 ], [ %385, %394 ]
  %417 = icmp eq i32 %311, 0
  br i1 %417, label %984, label %418

418:                                              ; preds = %415
  %419 = load ptr, ptr %51, align 4
  %420 = getelementptr ptr, ptr %419, i32 %68
  %421 = load ptr, ptr %420, align 4
  %422 = load ptr, ptr %421, align 8
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(18) %3, i8 0, i32 18, i1 false) #20, !annotation !21
  %423 = load i8, ptr %20, align 4
  %424 = and i8 %423, 64
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %434, label %426

426:                                              ; preds = %418
  %427 = load ptr, ptr %15, align 4
  %428 = load i32, ptr %427, align 8
  %429 = shl i32 %428, 8
  %430 = or i32 %429, -2147483648
  %431 = trunc i32 %66 to i16
  %432 = call i32 @usb_control_msg(ptr noundef %427, i32 noundef %430, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 22, i16 noundef zeroext %431, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %433 = getelementptr %struct.usb_hub, ptr %14, i32 0, i32 21, i32 %68
  store i8 0, ptr %433, align 1
  br label %434

434:                                              ; preds = %426, %418
  %435 = load ptr, ptr %15, align 4
  %436 = getelementptr inbounds %struct.usb_device, ptr %435, i32 0, i32 12
  %437 = load ptr, ptr %436, align 8
  %438 = getelementptr inbounds %struct.usb_bus, ptr %437, i32 0, i32 6
  %439 = load i8, ptr %438, align 2
  %440 = and i8 %439, 1
  %441 = icmp eq i8 %440, 0
  %442 = select i1 %441, i16 %106, i16 0
  %443 = zext i16 %416 to i32
  %444 = and i32 %443, 1
  %445 = icmp ne i32 %444, 0
  %446 = icmp ne ptr %422, null
  %447 = select i1 %445, i1 %446, i1 false
  br i1 %447, label %448, label %485

448:                                              ; preds = %434
  %449 = getelementptr inbounds %struct.usb_device, ptr %422, i32 0, i32 3
  %450 = load i32, ptr %449, align 8
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %485, label %452

452:                                              ; preds = %448
  %453 = and i32 %443, 2
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %465, label %455

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.usb_device, ptr %422, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef align 8 dereferenceable(18) %456, i32 18, i1 false) #20
  %457 = call i32 @usb_get_device_descriptor(ptr noundef nonnull %422, i32 noundef 18) #20
  %458 = icmp slt i32 %457, 0
  br i1 %458, label %485, label %459

459:                                              ; preds = %455
  %460 = getelementptr inbounds %struct.usb_device, ptr %422, i32 0, i32 18
  %461 = load ptr, ptr %460, align 4
  %462 = call fastcc i32 @descriptors_changed(ptr noundef nonnull %422, ptr noundef nonnull %3, ptr noundef %461) #20
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %484, label %464

464:                                              ; preds = %459
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(18) %456, ptr noundef nonnull align 1 dereferenceable(18) %3, i32 18, i1 false) #20
  br label %485

465:                                              ; preds = %452
  %466 = icmp eq i32 %450, 8
  br i1 %466, label %467, label %485

467:                                              ; preds = %465
  %468 = getelementptr inbounds %struct.usb_device, ptr %422, i32 0, i32 28
  %469 = load i16, ptr %468, align 1
  %470 = and i16 %469, 2
  %471 = icmp eq i16 %470, 0
  br i1 %471, label %485, label %472

472:                                              ; preds = %467
  %473 = getelementptr inbounds %struct.usb_port, ptr %421, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %473) #20
  %474 = getelementptr inbounds %struct.usb_device, ptr %422, i32 0, i32 15, i32 9
  call void @mutex_lock(ptr noundef %474) #20
  %475 = load i32, ptr %449, align 8
  %476 = icmp eq i32 %475, 8
  br i1 %476, label %477, label %481

477:                                              ; preds = %472
  %478 = call i32 @usb_autoresume_device(ptr noundef nonnull %422) #20
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %481

480:                                              ; preds = %477
  call void @usb_autosuspend_device(ptr noundef nonnull %422) #20
  br label %481

481:                                              ; preds = %480, %477, %472
  %482 = phi i32 [ 0, %480 ], [ %478, %477 ], [ 0, %472 ]
  call void @mutex_unlock(ptr noundef %474) #20
  call void @mutex_lock(ptr noundef %473) #20
  %483 = icmp eq i32 %482, 0
  call void @_clear_bit(i32 noundef %66, ptr noundef %53) #20
  br i1 %483, label %983, label %486

484:                                              ; preds = %459
  call void @_clear_bit(i32 noundef %66, ptr noundef %53) #20
  br label %983

485:                                              ; preds = %467, %465, %464, %455, %448, %434
  call void @_clear_bit(i32 noundef %66, ptr noundef %53) #20
  br label %486

486:                                              ; preds = %485, %481
  %487 = getelementptr inbounds %struct.usb_port, ptr %421, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %487) #20
  %488 = load ptr, ptr %15, align 4
  %489 = getelementptr inbounds %struct.usb_device, ptr %488, i32 0, i32 12
  %490 = load ptr, ptr %489, align 8
  %491 = load ptr, ptr %51, align 4
  %492 = getelementptr ptr, ptr %491, i32 %68
  %493 = load ptr, ptr %492, align 4
  %494 = load ptr, ptr %493, align 8
  %495 = icmp eq ptr %494, null
  br i1 %495, label %513, label %496

496:                                              ; preds = %486
  %497 = getelementptr inbounds %struct.usb_hcd, ptr %490, i32 0, i32 10
  %498 = load ptr, ptr %497, align 8
  %499 = icmp eq ptr %498, null
  br i1 %499, label %512, label %500

500:                                              ; preds = %496
  %501 = getelementptr inbounds %struct.usb_device, ptr %488, i32 0, i32 11
  %502 = load ptr, ptr %501, align 4
  %503 = icmp eq ptr %502, null
  br i1 %503, label %504, label %512

504:                                              ; preds = %500
  %505 = getelementptr inbounds %struct.usb_phy, ptr %498, i32 0, i32 29
  %506 = load ptr, ptr %505, align 4
  %507 = icmp eq ptr %506, null
  br i1 %507, label %512, label %508

508:                                              ; preds = %504
  %509 = getelementptr inbounds %struct.usb_device, ptr %494, i32 0, i32 4
  %510 = load i32, ptr %509, align 4
  %511 = call i32 %506(ptr noundef nonnull %498, i32 noundef %510) #20
  br label %512

512:                                              ; preds = %508, %504, %500, %496
  call void @usb_disconnect(ptr noundef %493) #20
  br label %513

513:                                              ; preds = %512, %486
  %514 = and i16 %416, 1
  %515 = icmp ne i16 %514, 0
  %516 = and i16 %442, 1
  %517 = icmp eq i16 %516, 0
  %518 = and i1 %515, %517
  br i1 %518, label %520, label %519

519:                                              ; preds = %513
  call void @_clear_bit(i32 noundef %66, ptr noundef %60) #20
  br label %520

520:                                              ; preds = %519, %513
  %521 = and i16 %442, 3
  %522 = icmp eq i16 %521, 0
  br i1 %522, label %540, label %523

523:                                              ; preds = %520
  %524 = call i32 @hub_port_debounce(ptr noundef %14, i32 noundef %66, i1 noundef zeroext false) #20
  %525 = icmp slt i32 %524, 0
  br i1 %525, label %526, label %538

526:                                              ; preds = %523
  %527 = icmp eq i32 %524, -19
  %528 = load i32, ptr @hub_port_connect.unreliable_port, align 4
  %529 = icmp eq i32 %528, %66
  %530 = select i1 %527, i1 true, i1 %529
  br i1 %530, label %536, label %531

531:                                              ; preds = %526
  %532 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.hub_port_connect) #20
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %536, label %534

534:                                              ; preds = %531
  %535 = getelementptr inbounds %struct.usb_port, ptr %493, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %535, ptr noundef nonnull @.str.59) #19
  br label %536

536:                                              ; preds = %534, %531, %526
  %537 = and i16 %416, -2
  store i32 %66, ptr @hub_port_connect.unreliable_port, align 4
  br label %540

538:                                              ; preds = %523
  %539 = trunc i32 %524 to i16
  br label %540

540:                                              ; preds = %538, %536, %520
  %541 = phi i16 [ %537, %536 ], [ %539, %538 ], [ %416, %520 ]
  %542 = phi i32 [ %524, %536 ], [ %524, %538 ], [ -19, %520 ]
  %543 = zext i16 %541 to i32
  %544 = and i32 %543, 1
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %551, label %546

546:                                              ; preds = %540
  %547 = getelementptr i32, ptr %60, i32 %71
  %548 = load volatile i32, ptr %547, align 4
  %549 = and i32 %548, %75
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %579, label %551

551:                                              ; preds = %546, %540
  br i1 %63, label %576, label %552

552:                                              ; preds = %551
  %553 = load ptr, ptr %58, align 4
  %554 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %553, i32 0, i32 3
  %555 = load i16, ptr %554, align 1
  %556 = and i16 %555, 2
  %557 = icmp eq i16 %556, 0
  br i1 %557, label %558, label %576

558:                                              ; preds = %552
  %559 = load ptr, ptr %15, align 4
  %560 = getelementptr inbounds %struct.usb_device, ptr %559, i32 0, i32 16, i32 5
  %561 = load i8, ptr %560, align 2
  %562 = icmp eq i8 %561, 3
  %563 = select i1 %562, i32 512, i32 256
  %564 = and i32 %563, %543
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %576

566:                                              ; preds = %558
  %567 = getelementptr inbounds %struct.usb_port, ptr %493, i32 0, i32 2
  %568 = load ptr, ptr %567, align 8
  %569 = icmp eq ptr %568, null
  br i1 %569, label %570, label %576

570:                                              ; preds = %566
  %571 = load i32, ptr %488, align 8
  %572 = shl i32 %571, 8
  %573 = or i32 %572, -2147483648
  %574 = trunc i32 %66 to i16
  %575 = call i32 @usb_control_msg(ptr noundef %488, i32 noundef %573, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 8, i16 noundef zeroext %574, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %576

576:                                              ; preds = %570, %566, %558, %552, %551
  %577 = and i32 %543, 2
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %982, label %967

579:                                              ; preds = %546
  %580 = load ptr, ptr %15, align 4
  %581 = getelementptr inbounds %struct.usb_device, ptr %580, i32 0, i32 16, i32 5
  %582 = load i8, ptr %581, align 2
  %583 = icmp eq i8 %582, 3
  %584 = select i1 %583, i32 150, i32 100
  %585 = getelementptr inbounds %struct.usb_port, ptr %493, i32 0, i32 7
  %586 = getelementptr inbounds %struct.usb_hcd, ptr %490, i32 0, i32 22
  %587 = getelementptr inbounds %struct.usb_device, ptr %488, i32 0, i32 26
  %588 = getelementptr %struct.usb_hub, ptr %14, i32 0, i32 21, i32 %68
  %589 = getelementptr inbounds %struct.usb_device, ptr %488, i32 0, i32 3
  %590 = getelementptr inbounds %struct.usb_port, ptr %493, i32 0, i32 1
  %591 = trunc i32 %66 to i16
  call void @mutex_lock(ptr noundef %585) #20
  %592 = load ptr, ptr %586, align 8
  call void @mutex_lock(ptr noundef %592) #20
  %593 = load ptr, ptr %489, align 8
  %594 = call ptr @usb_alloc_dev(ptr noundef %488, ptr noundef %593, i32 noundef %66) #20
  %595 = icmp eq ptr %594, null
  br i1 %595, label %602, label %605

596:                                              ; preds = %948, %936
  %597 = phi i32 [ 2, %936 ], [ %949, %948 ]
  call void @mutex_lock(ptr noundef %585) #20
  %598 = load ptr, ptr %586, align 8
  call void @mutex_lock(ptr noundef %598) #20
  %599 = load ptr, ptr %489, align 8
  %600 = call ptr @usb_alloc_dev(ptr noundef %488, ptr noundef %599, i32 noundef %66) #20
  %601 = icmp eq ptr %600, null
  br i1 %601, label %602, label %605

602:                                              ; preds = %596, %579
  %603 = phi i32 [ 0, %579 ], [ %884, %596 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %590, ptr noundef nonnull @.str.60) #19
  %604 = load ptr, ptr %586, align 8
  call void @mutex_unlock(ptr noundef %604) #20
  call void @mutex_unlock(ptr noundef %585) #20
  br label %967

605:                                              ; preds = %596, %579
  %606 = phi ptr [ %600, %596 ], [ %594, %579 ]
  %607 = phi i32 [ %597, %596 ], [ 0, %579 ]
  %608 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @device_state_lock) #20
  %609 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 3
  %610 = load i32, ptr %609, align 8
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %627, label %612

612:                                              ; preds = %605
  %613 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 11
  %614 = load ptr, ptr %613, align 4
  %615 = icmp eq ptr %614, null
  br i1 %615, label %618, label %616

616:                                              ; preds = %612
  %617 = icmp eq i32 %610, 8
  br i1 %617, label %621, label %618

618:                                              ; preds = %616, %612
  %619 = phi i32 [ -1, %612 ], [ 0, %616 ]
  %620 = icmp eq i32 %610, 8
  br i1 %620, label %621, label %628

621:                                              ; preds = %618, %616
  %622 = phi i32 [ %619, %618 ], [ -1, %616 ]
  %623 = load volatile i32, ptr @jiffies, align 64
  %624 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 38
  %625 = load i32, ptr %624, align 8
  %626 = sub i32 %625, %623
  store i32 %626, ptr %624, align 8
  br label %628

627:                                              ; preds = %605
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %608) #20
  br label %633

628:                                              ; preds = %621, %618
  %629 = phi i32 [ %622, %621 ], [ %619, %618 ]
  store i32 2, ptr %609, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %608) #20
  %630 = icmp sgt i32 %629, -1
  br i1 %630, label %631, label %633

631:                                              ; preds = %628
  %632 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 15
  call void @device_set_wakeup_capable(ptr noundef %632, i1 noundef zeroext false) #20
  br label %633

633:                                              ; preds = %631, %628, %627
  %634 = load i32, ptr %61, align 4
  %635 = trunc i32 %634 to i16
  %636 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 24
  store i16 %635, ptr %636, align 4
  %637 = load i8, ptr %587, align 1
  %638 = add i8 %637, 1
  %639 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 26
  store i8 %638, ptr %639, align 1
  %640 = load ptr, ptr %15, align 4
  %641 = getelementptr inbounds %struct.usb_device, ptr %640, i32 0, i32 11
  %642 = load ptr, ptr %641, align 4
  %643 = icmp eq ptr %642, null
  br i1 %643, label %644, label %651

644:                                              ; preds = %633
  %645 = getelementptr inbounds %struct.usb_device, ptr %640, i32 0, i32 12
  %646 = load ptr, ptr %645, align 8
  %647 = getelementptr inbounds %struct.usb_hcd, ptr %646, i32 0, i32 14
  %648 = load i16, ptr %647, align 8
  %649 = lshr i16 %648, 6
  %650 = and i16 %649, 1
  br label %651

651:                                              ; preds = %644, %633
  %652 = phi i16 [ %650, %644 ], [ 0, %633 ]
  %653 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 28
  %654 = load i16, ptr %653, align 1
  %655 = shl nuw nsw i16 %652, 5
  %656 = and i16 %654, -33
  %657 = or i16 %656, %655
  store i16 %657, ptr %653, align 1
  %658 = load ptr, ptr %15, align 4
  %659 = getelementptr inbounds %struct.usb_device, ptr %658, i32 0, i32 16, i32 5
  %660 = load i8, ptr %659, align 2
  %661 = icmp eq i8 %660, 3
  %662 = select i1 %661, i32 5, i32 0
  %663 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 4
  store i32 %662, ptr %663, align 4
  %664 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 12
  %665 = load ptr, ptr %664, align 8
  %666 = getelementptr inbounds %struct.usb_bus, ptr %665, i32 0, i32 9
  call void @mutex_lock(ptr noundef %666) #20
  %667 = load i16, ptr %653, align 1
  %668 = and i16 %667, 32
  %669 = icmp eq i16 %668, 0
  br i1 %669, label %684, label %670

670:                                              ; preds = %651
  %671 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 25
  %672 = load i8, ptr %671, align 2
  %673 = zext i8 %672 to i32
  %674 = add nuw nsw i32 %673, 1
  %675 = getelementptr inbounds %struct.usb_bus, ptr %665, i32 0, i32 10
  %676 = lshr i32 %674, 5
  %677 = getelementptr i32, ptr %675, i32 %676
  %678 = load volatile i32, ptr %677, align 4
  %679 = and i32 %674, 31
  %680 = shl nuw i32 1, %679
  %681 = and i32 %680, %678
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %697, label %683, !prof !11

683:                                              ; preds = %670
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/core/hub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2125, 0\0A.popsection", ""() #20, !srcloc !26
  unreachable

684:                                              ; preds = %651
  %685 = getelementptr inbounds %struct.usb_bus, ptr %665, i32 0, i32 10
  %686 = getelementptr inbounds %struct.usb_bus, ptr %665, i32 0, i32 8
  %687 = load i32, ptr %686, align 4
  %688 = call i32 @_find_next_zero_bit_le(ptr noundef %685, i32 noundef 128, i32 noundef %687) #20
  %689 = icmp sgt i32 %688, 127
  br i1 %689, label %690, label %692

690:                                              ; preds = %684
  %691 = call i32 @_find_next_zero_bit_le(ptr noundef %685, i32 noundef 128, i32 noundef 1) #20
  br label %692

692:                                              ; preds = %690, %684
  %693 = phi i32 [ %691, %690 ], [ %688, %684 ]
  %694 = icmp sgt i32 %693, 126
  %695 = add i32 %693, 1
  %696 = select i1 %694, i32 1, i32 %695
  store i32 %696, ptr %686, align 4
  br label %697

697:                                              ; preds = %692, %670
  %698 = phi i32 [ %674, %670 ], [ %693, %692 ]
  %699 = icmp slt i32 %698, 128
  br i1 %699, label %700, label %702

700:                                              ; preds = %697
  %701 = getelementptr inbounds %struct.usb_bus, ptr %665, i32 0, i32 10
  call void @_set_bit(i32 noundef %698, ptr noundef %701) #20
  store i32 %698, ptr %606, align 8
  br label %702

702:                                              ; preds = %700, %697
  call void @mutex_unlock(ptr noundef %666) #20
  %703 = load i32, ptr %606, align 8
  %704 = icmp slt i32 %703, 1
  br i1 %704, label %883, label %705

705:                                              ; preds = %702
  %706 = call fastcc i32 @hub_port_init(ptr noundef %14, ptr noundef nonnull %606, i32 noundef %66, i32 noundef %607) #20
  %707 = icmp slt i32 %706, 0
  br i1 %707, label %883, label %708

708:                                              ; preds = %705
  %709 = load ptr, ptr %586, align 8
  call void @mutex_unlock(ptr noundef %709) #20
  call void @mutex_unlock(ptr noundef %585) #20
  %710 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 36
  %711 = load i32, ptr %710, align 8
  %712 = and i32 %711, 64
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %715, label %714

714:                                              ; preds = %708
  call void @msleep(i32 noundef 2000) #20
  br label %715

715:                                              ; preds = %714, %708
  %716 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 16, i32 3
  %717 = load i8, ptr %716, align 4
  %718 = icmp eq i8 %717, 9
  br i1 %718, label %719, label %741

719:                                              ; preds = %715
  %720 = load i16, ptr %636, align 4
  %721 = zext i16 %720 to i32
  %722 = icmp ult i32 %584, %721
  br i1 %722, label %741, label %723

723:                                              ; preds = %719
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #20
  store i16 0, ptr %2, align 2, !annotation !21
  %724 = call i32 @usb_get_status(ptr noundef nonnull %606, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #20
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %726, label %738

726:                                              ; preds = %723
  %727 = load i16, ptr %2, align 2
  %728 = and i16 %727, 1
  %729 = icmp eq i16 %728, 0
  br i1 %729, label %730, label %740

730:                                              ; preds = %726
  %731 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %731, ptr noundef nonnull @.str.61) #19
  %732 = load i8, ptr %20, align 4
  %733 = and i8 %732, 64
  %734 = icmp eq i8 %733, 0
  br i1 %734, label %738, label %735

735:                                              ; preds = %730
  store i8 4, ptr %588, align 1
  %736 = load ptr, ptr @system_power_efficient_wq, align 4
  %737 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %736, ptr noundef %62, i32 noundef 0) #20
  br label %738

738:                                              ; preds = %735, %730, %723
  %739 = phi i32 [ -107, %730 ], [ -107, %735 ], [ %724, %723 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #20
  br label %880

740:                                              ; preds = %726
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #20
  br label %741

741:                                              ; preds = %740, %719, %715
  %742 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 16, i32 2
  %743 = load i16, ptr %742, align 2
  %744 = icmp ugt i16 %743, 511
  br i1 %744, label %745, label %771

745:                                              ; preds = %741
  %746 = load i32, ptr %663, align 4
  %747 = icmp eq i32 %746, 2
  %748 = load i32, ptr @highspeed_hubs, align 4
  %749 = icmp ne i32 %748, 0
  %750 = select i1 %747, i1 %749, i1 false
  br i1 %750, label %751, label %771

751:                                              ; preds = %745
  %752 = load i32, ptr %710, align 8
  %753 = and i32 %752, 256
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %771

755:                                              ; preds = %751
  %756 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %757 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %756, i32 noundef 3264, i32 noundef 10) #21
  %758 = icmp eq ptr %757, null
  br i1 %758, label %771, label %759

759:                                              ; preds = %755
  %760 = call i32 @usb_get_descriptor(ptr noundef nonnull %606, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %757, i32 noundef 10) #20
  %761 = icmp eq i32 %760, 10
  br i1 %761, label %762, label %770

762:                                              ; preds = %759
  %763 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %763, ptr noundef nonnull @.str.82) #19
  %764 = load i8, ptr %20, align 4
  %765 = and i8 %764, 64
  %766 = icmp eq i8 %765, 0
  br i1 %766, label %770, label %767

767:                                              ; preds = %762
  store i8 2, ptr %588, align 1
  %768 = load ptr, ptr @system_power_efficient_wq, align 4
  %769 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %768, ptr noundef %62, i32 noundef 0) #20
  br label %770

770:                                              ; preds = %767, %762, %759
  call void @kfree(ptr noundef nonnull %757) #20
  br label %771

771:                                              ; preds = %770, %755, %751, %745, %741
  call void @mutex_lock(ptr noundef nonnull @usb_port_peer_mutex) #20
  call void @_raw_spin_lock_irq(ptr noundef nonnull @device_state_lock) #20
  %772 = load i32, ptr %589, align 8
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %775, label %774

774:                                              ; preds = %771
  store ptr %606, ptr %493, align 8
  br label %775

775:                                              ; preds = %774, %771
  %776 = phi i32 [ 0, %774 ], [ -107, %771 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %777 = load i16, ptr @device_state_lock, align 4
  %778 = add i16 %777, 1
  store i16 %778, ptr @device_state_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !19
  call void @mutex_unlock(ptr noundef nonnull @usb_port_peer_mutex) #20
  br i1 %773, label %880, label %779

779:                                              ; preds = %775
  %780 = call i32 @usb_new_device(ptr noundef nonnull %606) #20
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %785, label %782

782:                                              ; preds = %779
  call void @mutex_lock(ptr noundef nonnull @usb_port_peer_mutex) #20
  call void @_raw_spin_lock_irq(ptr noundef nonnull @device_state_lock) #20
  store ptr null, ptr %493, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !15
  %783 = load i16, ptr @device_state_lock, align 4
  %784 = add i16 %783, 1
  store i16 %784, ptr @device_state_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !17
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !19
  call void @mutex_unlock(ptr noundef nonnull @usb_port_peer_mutex) #20
  br label %880

785:                                              ; preds = %779
  %786 = getelementptr inbounds %struct.usb_hcd, ptr %490, i32 0, i32 10
  %787 = load ptr, ptr %786, align 8
  %788 = icmp eq ptr %787, null
  br i1 %788, label %800, label %789

789:                                              ; preds = %785
  %790 = getelementptr inbounds %struct.usb_device, ptr %488, i32 0, i32 11
  %791 = load ptr, ptr %790, align 4
  %792 = icmp eq ptr %791, null
  br i1 %792, label %793, label %800

793:                                              ; preds = %789
  %794 = getelementptr inbounds %struct.usb_phy, ptr %787, i32 0, i32 28
  %795 = load ptr, ptr %794, align 4
  %796 = icmp eq ptr %795, null
  br i1 %796, label %800, label %797

797:                                              ; preds = %793
  %798 = load i32, ptr %663, align 4
  %799 = call i32 %795(ptr noundef nonnull %787, i32 noundef %798) #20
  br label %800

800:                                              ; preds = %797, %793, %789, %785
  %801 = load ptr, ptr %15, align 4
  %802 = load i8, ptr %20, align 4
  %803 = and i8 %802, 1
  %804 = icmp eq i8 %803, 0
  br i1 %804, label %982, label %805

805:                                              ; preds = %800
  %806 = getelementptr inbounds %struct.usb_device, ptr %801, i32 0, i32 24
  %807 = load i16, ptr %806, align 4
  %808 = zext i16 %807 to i32
  %809 = load ptr, ptr %58, align 4
  %810 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %809, i32 0, i32 5
  %811 = load i8, ptr %810, align 1
  %812 = zext i8 %811 to i32
  %813 = sub nsw i32 %808, %812
  %814 = getelementptr inbounds %struct.usb_device, ptr %801, i32 0, i32 35
  %815 = load i32, ptr %814, align 4
  %816 = icmp slt i32 %815, 1
  br i1 %816, label %874, label %817

817:                                              ; preds = %805
  %818 = getelementptr inbounds %struct.usb_device, ptr %801, i32 0, i32 11
  br label %819

819:                                              ; preds = %868, %817
  %820 = phi i32 [ %815, %817 ], [ %869, %868 ]
  %821 = phi i32 [ %815, %817 ], [ %870, %868 ]
  %822 = phi i32 [ 1, %817 ], [ %872, %868 ]
  %823 = phi i32 [ %813, %817 ], [ %871, %868 ]
  %824 = load ptr, ptr %51, align 4
  %825 = add i32 %822, -1
  %826 = getelementptr ptr, ptr %824, i32 %825
  %827 = load ptr, ptr %826, align 4
  %828 = load ptr, ptr %827, align 8
  %829 = icmp eq ptr %828, null
  br i1 %829, label %868, label %830

830:                                              ; preds = %819
  %831 = getelementptr inbounds %struct.usb_device, ptr %828, i32 0, i32 16, i32 5
  %832 = load i8, ptr %831, align 2
  %833 = icmp eq i8 %832, 3
  %834 = select i1 %833, i32 150, i32 100
  %835 = getelementptr inbounds %struct.usb_device, ptr %828, i32 0, i32 20
  %836 = load ptr, ptr %835, align 4
  %837 = icmp eq ptr %836, null
  br i1 %837, label %847, label %838

838:                                              ; preds = %830
  %839 = getelementptr inbounds %struct.usb_device, ptr %828, i32 0, i32 4
  %840 = load i32, ptr %839, align 4
  %841 = icmp ugt i32 %840, 4
  %842 = select i1 %841, i32 8, i32 2
  %843 = getelementptr inbounds %struct.usb_config_descriptor, ptr %836, i32 0, i32 7
  %844 = load i8, ptr %843, align 4
  %845 = zext i8 %844 to i32
  %846 = mul nuw nsw i32 %842, %845
  br label %858

847:                                              ; preds = %830
  %848 = getelementptr inbounds %struct.usb_device, ptr %828, i32 0, i32 12
  %849 = load ptr, ptr %848, align 8
  %850 = getelementptr inbounds %struct.usb_bus, ptr %849, i32 0, i32 5
  %851 = load i8, ptr %850, align 1
  %852 = zext i8 %851 to i32
  %853 = icmp eq i32 %822, %852
  br i1 %853, label %854, label %858

854:                                              ; preds = %847
  %855 = load ptr, ptr %818, align 4
  %856 = icmp eq ptr %855, null
  %857 = select i1 %856, i32 8, i32 %834
  br label %858

858:                                              ; preds = %854, %847, %838
  %859 = phi i32 [ %846, %838 ], [ %834, %847 ], [ %857, %854 ]
  %860 = load i32, ptr %61, align 4
  %861 = icmp ugt i32 %859, %860
  br i1 %861, label %862, label %865

862:                                              ; preds = %858
  %863 = getelementptr inbounds %struct.usb_port, ptr %827, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %863, ptr noundef nonnull @.str.83, i32 noundef %859, i32 noundef %860) #19
  %864 = load i32, ptr %814, align 4
  br label %865

865:                                              ; preds = %862, %858
  %866 = phi i32 [ %864, %862 ], [ %820, %858 ]
  %867 = sub i32 %823, %859
  br label %868

868:                                              ; preds = %865, %819
  %869 = phi i32 [ %866, %865 ], [ %820, %819 ]
  %870 = phi i32 [ %866, %865 ], [ %821, %819 ]
  %871 = phi i32 [ %867, %865 ], [ %823, %819 ]
  %872 = add i32 %822, 1
  %873 = icmp sgt i32 %872, %870
  br i1 %873, label %874, label %819

874:                                              ; preds = %868, %805
  %875 = phi i32 [ %813, %805 ], [ %871, %868 ]
  %876 = icmp slt i32 %875, 0
  br i1 %876, label %877, label %982

877:                                              ; preds = %874
  %878 = load ptr, ptr %14, align 4
  %879 = sub i32 0, %875
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %878, ptr noundef nonnull @.str.84, i32 noundef %879) #19
  br label %982

880:                                              ; preds = %782, %775, %738
  %881 = phi i32 [ %739, %738 ], [ %780, %782 ], [ %776, %775 ]
  %882 = call fastcc i32 @hub_port_disable(ptr noundef %14, i32 noundef %66, i32 noundef 1) #20
  br label %883

883:                                              ; preds = %880, %705, %702
  %884 = phi i32 [ %706, %705 ], [ %881, %880 ], [ -107, %702 ]
  %885 = phi i1 [ true, %705 ], [ false, %880 ], [ true, %702 ]
  call void @usb_disable_endpoint(ptr noundef nonnull %606, i32 noundef 128, i1 noundef zeroext true) #20
  call void @usb_disable_endpoint(ptr noundef nonnull %606, i32 noundef 0, i1 noundef zeroext true) #20
  %886 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 13
  call void @usb_enable_endpoint(ptr noundef nonnull %606, ptr noundef %886, i1 noundef zeroext true) #20
  %887 = load i32, ptr %606, align 8
  %888 = icmp sgt i32 %887, 0
  br i1 %888, label %889, label %892

889:                                              ; preds = %883
  %890 = load ptr, ptr %664, align 8
  %891 = getelementptr inbounds %struct.usb_bus, ptr %890, i32 0, i32 10
  call void @_clear_bit(i32 noundef %887, ptr noundef %891) #20
  store i32 -1, ptr %606, align 8
  br label %892

892:                                              ; preds = %889, %883
  %893 = load ptr, ptr %664, align 8
  %894 = getelementptr inbounds %struct.usb_hcd, ptr %893, i32 0, i32 9
  %895 = load ptr, ptr %894, align 4
  %896 = getelementptr inbounds %struct.hc_driver, ptr %895, i32 0, i32 28
  %897 = load ptr, ptr %896, align 4
  %898 = icmp eq ptr %897, null
  br i1 %898, label %904, label %899

899:                                              ; preds = %892
  %900 = getelementptr inbounds %struct.usb_device, ptr %606, i32 0, i32 11
  %901 = load ptr, ptr %900, align 4
  %902 = icmp eq ptr %901, null
  br i1 %902, label %904, label %903

903:                                              ; preds = %899
  call void %897(ptr noundef %893, ptr noundef nonnull %606) #20
  br label %904

904:                                              ; preds = %903, %899, %892
  br i1 %885, label %905, label %907

905:                                              ; preds = %904
  %906 = load ptr, ptr %586, align 8
  call void @mutex_unlock(ptr noundef %906) #20
  call void @mutex_unlock(ptr noundef %585) #20
  br label %907

907:                                              ; preds = %905, %904
  call void @usb_put_dev(ptr noundef nonnull %606) #20
  switch i32 %884, label %908 [
    i32 -107, label %951
    i32 -524, label %951
  ]

908:                                              ; preds = %907
  %909 = icmp eq i32 %607, 1
  br i1 %909, label %910, label %948

910:                                              ; preds = %908
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %590, ptr noundef nonnull @.str.62) #19
  %911 = load i32, ptr %488, align 8
  %912 = shl i32 %911, 8
  %913 = or i32 %912, -2147483648
  %914 = call i32 @usb_control_msg(ptr noundef %488, i32 noundef %913, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 8, i16 noundef zeroext %591, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %916, label %917

916:                                              ; preds = %910
  call void @_clear_bit(i32 noundef %66, ptr noundef %57) #20
  br label %917

917:                                              ; preds = %916, %910
  %918 = load ptr, ptr %58, align 4
  %919 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %918, i32 0, i32 4
  %920 = load i8, ptr %919, align 1
  %921 = zext i8 %920 to i32
  %922 = shl nuw nsw i32 %921, 1
  %923 = load ptr, ptr %15, align 4
  %924 = getelementptr inbounds %struct.usb_device, ptr %923, i32 0, i32 11
  %925 = load ptr, ptr %924, align 4
  %926 = icmp eq ptr %925, null
  %927 = call i32 @llvm.umax.i32(i32 %922, i32 100) #20
  %928 = select i1 %926, i32 %922, i32 %927
  %929 = shl nuw nsw i32 %928, 1
  call void @msleep(i32 noundef %929) #20
  %930 = load i32, ptr %488, align 8
  %931 = shl i32 %930, 8
  %932 = or i32 %931, -2147483648
  %933 = call i32 @usb_control_msg(ptr noundef %488, i32 noundef %932, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext 8, i16 noundef zeroext %591, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %935, label %936

935:                                              ; preds = %917
  call void @_set_bit(i32 noundef %66, ptr noundef %57) #20
  br label %936

936:                                              ; preds = %935, %917
  %937 = load ptr, ptr %58, align 4
  %938 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %937, i32 0, i32 4
  %939 = load i8, ptr %938, align 1
  %940 = zext i8 %939 to i32
  %941 = shl nuw nsw i32 %940, 1
  %942 = load ptr, ptr %15, align 4
  %943 = getelementptr inbounds %struct.usb_device, ptr %942, i32 0, i32 11
  %944 = load ptr, ptr %943, align 4
  %945 = icmp eq ptr %944, null
  %946 = call i32 @llvm.umax.i32(i32 %941, i32 100) #20
  %947 = select i1 %945, i32 %941, i32 %946
  call void @msleep(i32 noundef %947) #20
  br label %596

948:                                              ; preds = %908
  %949 = add nuw nsw i32 %607, 1
  %950 = icmp eq i32 %949, 4
  br i1 %950, label %951, label %596

951:                                              ; preds = %948, %907, %907
  %952 = load ptr, ptr %15, align 4
  %953 = getelementptr inbounds %struct.usb_device, ptr %952, i32 0, i32 11
  %954 = load ptr, ptr %953, align 4
  %955 = icmp eq ptr %954, null
  br i1 %955, label %956, label %965

956:                                              ; preds = %951
  %957 = getelementptr inbounds %struct.usb_hcd, ptr %490, i32 0, i32 9
  %958 = load ptr, ptr %957, align 4
  %959 = getelementptr inbounds %struct.hc_driver, ptr %958, i32 0, i32 25
  %960 = load ptr, ptr %959, align 4
  %961 = icmp eq ptr %960, null
  br i1 %961, label %965, label %962

962:                                              ; preds = %956
  %963 = call i32 %960(ptr noundef %490, i32 noundef %66) #20
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %965, label %967

965:                                              ; preds = %962, %956, %951
  switch i32 %884, label %966 [
    i32 -19, label %967
    i32 -107, label %967
  ]

966:                                              ; preds = %965
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %590, ptr noundef nonnull @.str.63) #19
  br label %967

967:                                              ; preds = %966, %965, %965, %962, %602, %576
  %968 = phi i32 [ %542, %576 ], [ %884, %966 ], [ %884, %965 ], [ %884, %962 ], [ %603, %602 ], [ %884, %965 ]
  %969 = call fastcc i32 @hub_port_disable(ptr noundef %14, i32 noundef %66, i32 noundef 1) #20
  %970 = getelementptr inbounds %struct.usb_hcd, ptr %490, i32 0, i32 9
  %971 = load ptr, ptr %970, align 4
  %972 = getelementptr inbounds %struct.hc_driver, ptr %971, i32 0, i32 24
  %973 = load ptr, ptr %972, align 4
  %974 = icmp eq ptr %973, null
  br i1 %974, label %982, label %975

975:                                              ; preds = %967
  %976 = load ptr, ptr %15, align 4
  %977 = getelementptr inbounds %struct.usb_device, ptr %976, i32 0, i32 11
  %978 = load ptr, ptr %977, align 4
  %979 = icmp eq ptr %978, null
  br i1 %979, label %980, label %982

980:                                              ; preds = %975
  switch i32 %968, label %981 [
    i32 -19, label %982
    i32 -107, label %982
  ]

981:                                              ; preds = %980
  call void %973(ptr noundef %490, i32 noundef %66) #20
  br label %982

982:                                              ; preds = %981, %980, %980, %975, %967, %877, %874, %800, %576
  call void @mutex_lock(ptr noundef %487) #20
  br label %983

983:                                              ; preds = %982, %484, %481
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #20
  br label %984

984:                                              ; preds = %983, %415, %411, %257, %88
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #20
  call void @mutex_unlock(ptr noundef %93) #20
  %985 = call i32 @__pm_runtime_idle(ptr noundef %89, i32 noundef 4) #20
  %986 = load i32, ptr %47, align 4
  br label %987

987:                                              ; preds = %984, %83
  %988 = phi i32 [ %986, %984 ], [ %65, %83 ]
  %989 = add i32 %66, 1
  %990 = icmp sgt i32 %989, %988
  br i1 %990, label %991, label %64

991:                                              ; preds = %987, %46
  %992 = getelementptr i8, ptr %0, i32 -204
  %993 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %992) #20
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1068, label %995

995:                                              ; preds = %991
  %996 = call fastcc i32 @hub_hub_status(ptr noundef %14, ptr noundef nonnull %10, ptr noundef nonnull %11)
  %997 = icmp slt i32 %996, 0
  br i1 %997, label %998, label %999

998:                                              ; preds = %995
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.48) #19
  br label %1068

999:                                              ; preds = %995
  %1000 = load i16, ptr %11, align 2
  %1001 = and i16 %1000, 1
  %1002 = icmp eq i16 %1001, 0
  br i1 %1002, label %1014, label %1003

1003:                                             ; preds = %999
  %1004 = load i32, ptr %16, align 8
  %1005 = shl i32 %1004, 8
  %1006 = or i32 %1005, -2147483648
  %1007 = call i32 @usb_control_msg(ptr noundef %16, i32 noundef %1006, i8 noundef zeroext 1, i8 noundef zeroext 32, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %1008 = load i16, ptr %10, align 2
  %1009 = load i8, ptr %20, align 4
  %1010 = and i8 %1009, -2
  %1011 = trunc i16 %1008 to i8
  %1012 = and i8 %1011, 1
  %1013 = or i8 %1010, %1012
  store i8 %1013, ptr %20, align 4
  br label %1014

1014:                                             ; preds = %1003, %999
  %1015 = and i16 %1000, 2
  %1016 = icmp eq i16 %1015, 0
  br i1 %1016, label %1068, label %1017

1017:                                             ; preds = %1014
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #20
  store i16 0, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #20
  %1018 = load i32, ptr %16, align 8
  %1019 = shl i32 %1018, 8
  %1020 = or i32 %1019, -2147483648
  %1021 = call i32 @usb_control_msg(ptr noundef %16, i32 noundef %1020, i8 noundef zeroext 1, i8 noundef zeroext 32, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  call void @msleep(i32 noundef 500) #20
  %1022 = load ptr, ptr %15, align 4
  %1023 = getelementptr inbounds %struct.usb_device, ptr %1022, i32 0, i32 35
  %1024 = load i32, ptr %1023, align 4
  %1025 = icmp slt i32 %1024, 1
  br i1 %1025, label %1049, label %1026

1026:                                             ; preds = %1017
  %1027 = getelementptr i8, ptr %0, i32 -188
  br label %1028

1028:                                             ; preds = %1028, %1026
  %1029 = phi ptr [ %1022, %1026 ], [ %1045, %1028 ]
  %1030 = phi i32 [ 1, %1026 ], [ %1044, %1028 ]
  %1031 = lshr i32 %1030, 5
  %1032 = getelementptr i32, ptr %1027, i32 %1031
  %1033 = load volatile i32, ptr %1032, align 4
  %1034 = and i32 %1030, 31
  %1035 = shl nuw i32 1, %1034
  %1036 = and i32 %1035, %1033
  %1037 = icmp eq i32 %1036, 0
  %1038 = load i32, ptr %1029, align 8
  %1039 = shl i32 %1038, 8
  %1040 = or i32 %1039, -2147483648
  %1041 = trunc i32 %1030 to i16
  %1042 = select i1 %1037, i8 1, i8 3
  %1043 = call i32 @usb_control_msg(ptr noundef %1029, i32 noundef %1040, i8 noundef zeroext %1042, i8 noundef zeroext 35, i16 noundef zeroext 8, i16 noundef zeroext %1041, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %1044 = add i32 %1030, 1
  %1045 = load ptr, ptr %15, align 4
  %1046 = getelementptr inbounds %struct.usb_device, ptr %1045, i32 0, i32 35
  %1047 = load i32, ptr %1046, align 4
  %1048 = icmp sgt i32 %1044, %1047
  br i1 %1048, label %1049, label %1028

1049:                                             ; preds = %1028, %1017
  %1050 = phi ptr [ %1022, %1017 ], [ %1045, %1028 ]
  %1051 = getelementptr i8, ptr %0, i32 -176
  %1052 = load ptr, ptr %1051, align 4
  %1053 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %1052, i32 0, i32 4
  %1054 = load i8, ptr %1053, align 1
  %1055 = zext i8 %1054 to i32
  %1056 = shl nuw nsw i32 %1055, 1
  %1057 = getelementptr inbounds %struct.usb_device, ptr %1050, i32 0, i32 11
  %1058 = load ptr, ptr %1057, align 4
  %1059 = icmp eq ptr %1058, null
  %1060 = call i32 @llvm.umax.i32(i32 %1056, i32 100) #20
  %1061 = select i1 %1059, i32 %1056, i32 %1060
  call void @msleep(i32 noundef %1061) #20
  %1062 = call fastcc i32 @hub_hub_status(ptr noundef %14, ptr noundef nonnull %12, ptr noundef nonnull %13)
  %1063 = load i16, ptr %12, align 2
  %1064 = and i16 %1063, 2
  %1065 = icmp eq i16 %1064, 0
  br i1 %1065, label %1067, label %1066

1066:                                             ; preds = %1049
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.49) #19
  br label %1067

1067:                                             ; preds = %1066, %1049
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #20
  br label %1068

1068:                                             ; preds = %1067, %1014, %998, %991, %41, %33
  call void @usb_autopm_put_interface_no_suspend(ptr noundef %18) #20
  br label %1069

1069:                                             ; preds = %1068, %30, %28, %1
  call void @mutex_unlock(ptr noundef %19) #20
  call void @usb_autopm_put_interface(ptr noundef %18) #20
  %1070 = getelementptr i8, ptr %0, i32 -248
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1070) #20, !srcloc !8
  %1071 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1070, ptr %1070, i32 1, ptr elementtype(i32) %1070) #20, !srcloc !13
  %1072 = extractvalue { i32, i32, i32 } %1071, 0
  %1073 = icmp eq i32 %1072, 1
  br i1 %1073, label %1077, label %1074

1074:                                             ; preds = %1069
  %1075 = icmp sgt i32 %1072, 0
  br i1 %1075, label %1081, label %1076, !prof !11

1076:                                             ; preds = %1074
  call void @refcount_warn_saturate(ptr noundef %1070, i32 noundef 3) #20
  br label %1081

1077:                                             ; preds = %1069
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !14
  %1078 = load ptr, ptr %15, align 4
  call void @usb_put_dev(ptr noundef %1078) #20
  %1079 = load ptr, ptr %14, align 4
  %1080 = getelementptr i8, ptr %1079, i32 -32
  call void @usb_put_intf(ptr noundef %1080) #20
  call void @kfree(ptr noundef %14) #20
  br label %1081

1081:                                             ; preds = %1077, %1076, %1074
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hub_retry_irq_urb(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -276
  tail call fastcc void @hub_resubmit_irq_urb(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hub_quiesce(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 25
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #20
  %7 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 20
  %8 = load i8, ptr %7, align 4
  %9 = or i8 %8, 2
  store i8 %9, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #20
  %10 = icmp eq i32 %1, 2
  br i1 %10, label %31, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 35
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 27
  br label %17

17:                                               ; preds = %27, %15
  %18 = phi i32 [ %13, %15 ], [ %28, %27 ]
  %19 = phi i32 [ 0, %15 ], [ %29, %27 ]
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr ptr, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  tail call void @usb_disconnect(ptr noundef %22)
  %26 = load i32, ptr %12, align 4
  br label %27

27:                                               ; preds = %25, %17
  %28 = phi i32 [ %18, %17 ], [ %26, %25 ]
  %29 = add nuw nsw i32 %19, 1
  %30 = icmp slt i32 %29, %28
  br i1 %30, label %17, label %31

31:                                               ; preds = %27, %11, %2
  %32 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 26
  %33 = tail call i32 @del_timer_sync(ptr noundef %32) #20
  %34 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  tail call void @usb_kill_urb(ptr noundef %35) #20
  %36 = load i8, ptr %7, align 4
  %37 = and i8 %36, 64
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 22
  %41 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %40) #20
  br label %42

42:                                               ; preds = %39, %31
  %43 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 17
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 17, i32 6
  %48 = tail call zeroext i1 @flush_work(ptr noundef %47) #20
  br label %49

49:                                               ; preds = %46, %42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hub_hub_status(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %4) #20
  %5 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %6, align 8
  %10 = shl i32 %9, 8
  %11 = or i32 %10, -2147483520
  %12 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %11, i8 noundef zeroext 0, i8 noundef zeroext -96, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %8, i16 noundef zeroext 4, i32 noundef 1000) #20
  switch i32 %12, label %33 [
    i32 -32, label %13
    i32 -110, label %13
  ]

13:                                               ; preds = %3, %3
  %14 = load i32, ptr %6, align 8
  %15 = shl i32 %14, 8
  %16 = or i32 %15, -2147483520
  %17 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %16, i8 noundef zeroext 0, i8 noundef zeroext -96, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %8, i16 noundef zeroext 4, i32 noundef 1000) #20
  switch i32 %17, label %33 [
    i32 -32, label %18
    i32 -110, label %18
  ]

18:                                               ; preds = %13, %13
  %19 = load i32, ptr %6, align 8
  %20 = shl i32 %19, 8
  %21 = or i32 %20, -2147483520
  %22 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %21, i8 noundef zeroext 0, i8 noundef zeroext -96, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %8, i16 noundef zeroext 4, i32 noundef 1000) #20
  switch i32 %22, label %33 [
    i32 -32, label %23
    i32 -110, label %23
  ]

23:                                               ; preds = %18, %18
  %24 = load i32, ptr %6, align 8
  %25 = shl i32 %24, 8
  %26 = or i32 %25, -2147483520
  %27 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %26, i8 noundef zeroext 0, i8 noundef zeroext -96, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %8, i16 noundef zeroext 4, i32 noundef 1000) #20
  switch i32 %27, label %33 [
    i32 -32, label %28
    i32 -110, label %28
  ]

28:                                               ; preds = %23, %23
  %29 = load i32, ptr %6, align 8
  %30 = shl i32 %29, 8
  %31 = or i32 %30, -2147483520
  %32 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %31, i8 noundef zeroext 0, i8 noundef zeroext -96, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %8, i16 noundef zeroext 4, i32 noundef 1000) #20
  br label %33

33:                                               ; preds = %28, %23, %18, %13, %3
  %34 = phi i32 [ %12, %3 ], [ %17, %13 ], [ %22, %18 ], [ %27, %23 ], [ %32, %28 ]
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = icmp eq i32 %34, -19
  br i1 %37, label %46, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.hub_hub_status, i32 noundef %34) #19
  br label %46

40:                                               ; preds = %33
  %41 = load ptr, ptr %7, align 4
  %42 = load i16, ptr %41, align 1
  store i16 %42, ptr %1, align 2
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr inbounds %struct.usb_hub_status, ptr %43, i32 0, i32 1
  %45 = load i16, ptr %44, align 1
  store i16 %45, ptr %2, align 2
  br label %46

46:                                               ; preds = %40, %38, %36
  %47 = phi i32 [ %34, %38 ], [ -19, %36 ], [ 0, %40 ]
  tail call void @mutex_unlock(ptr noundef %4) #20
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface_no_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hub_port_reset(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 {
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #20
  store i16 0, ptr %10, align 2, !annotation !21
  %11 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = add i32 %1, -1
  %14 = getelementptr ptr, ptr %12, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 16, i32 5
  %19 = load i8, ptr %18, align 2
  %20 = icmp eq i8 %19, 3
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  br i1 %4, label %22, label %24

22:                                               ; preds = %21
  %23 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.55) #19
  br label %338

24:                                               ; preds = %21
  tail call void @down_read(ptr noundef nonnull @ehci_cf_port_reset_rwsem) #20
  br label %49

25:                                               ; preds = %5
  br i1 %4, label %49, label %26

26:                                               ; preds = %25
  %27 = call fastcc i32 @hub_ext_port_status(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef null) #20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i16, ptr %10, align 2
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 16, i32 5
  %33 = load i8, ptr %32, align 2
  %34 = icmp eq i8 %33, 3
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 15
  %37 = lshr i32 %1, 5
  %38 = getelementptr i32, ptr %36, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %1, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = and i16 %30, 480
  %46 = icmp eq i16 %45, 192
  %47 = icmp eq i16 %45, 320
  %48 = or i1 %46, %47
  br label %49

49:                                               ; preds = %44, %35, %29, %26, %25, %24
  %50 = phi i1 [ true, %25 ], [ false, %26 ], [ false, %24 ], [ %48, %44 ], [ false, %29 ], [ true, %35 ]
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %52) #20
  %53 = trunc i32 %1 to i16
  %54 = lshr i32 %1, 5
  %55 = getelementptr i32, ptr %52, i32 %54
  %56 = and i32 %1, 31
  %57 = shl nuw i32 1, %56
  %58 = icmp eq ptr %2, null
  %59 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 5
  %60 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 6
  %61 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 7
  %62 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 4
  %63 = getelementptr inbounds %struct.usb_port, ptr %15, i32 0, i32 1
  br label %64

64:                                               ; preds = %254, %49
  %65 = phi i32 [ 0, %49 ], [ %257, %254 ]
  %66 = phi i8 [ %51, %49 ], [ %256, %254 ]
  %67 = phi i32 [ %3, %49 ], [ 200, %254 ]
  %68 = load ptr, ptr %16, align 4
  %69 = and i8 %66, 1
  %70 = icmp eq i8 %69, 0
  %71 = load i32, ptr %68, align 8
  %72 = shl i32 %71, 8
  %73 = or i32 %72, -2147483648
  %74 = select i1 %70, i16 4, i16 28
  %75 = call i32 @usb_control_msg(ptr noundef %68, i32 noundef %73, i8 noundef zeroext 3, i8 noundef zeroext 35, i16 noundef zeroext %74, i16 noundef zeroext %53, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  switch i32 %75, label %76 [
    i32 -19, label %209
    i32 0, label %78
  ]

76:                                               ; preds = %64
  %77 = select i1 %70, ptr @.str.20, ptr @.str.57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.56, ptr noundef nonnull %77, i32 noundef %75) #19
  br label %207

78:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #20
  store i16 0, ptr %6, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #20
  store i16 0, ptr %7, align 2, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  store i32 0, ptr %8, align 4
  br label %79

79:                                               ; preds = %107, %78
  %80 = phi i32 [ 0, %78 ], [ %110, %107 ]
  %81 = phi i32 [ %67, %78 ], [ %109, %107 ]
  call void @msleep(i32 noundef %81) #20
  %82 = load ptr, ptr %16, align 4
  %83 = getelementptr inbounds %struct.usb_device, ptr %82, i32 0, i32 16, i32 5
  %84 = load i8, ptr %83, align 2
  %85 = icmp eq i8 %84, 3
  br i1 %85, label %86, label %98

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.usb_device, ptr %82, i32 0, i32 16, i32 2
  %88 = load i16, ptr %87, align 2
  %89 = icmp ugt i16 %88, 783
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.usb_device, ptr %82, i32 0, i32 18
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.usb_host_bos, ptr %92, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %90
  %97 = call fastcc i32 @hub_ext_port_status(ptr noundef %0, i32 noundef %1, i32 noundef 2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  br label %100

98:                                               ; preds = %90, %86, %79
  %99 = call fastcc i32 @hub_ext_port_status(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null) #20
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %205, label %103

103:                                              ; preds = %100
  %104 = load i16, ptr %6, align 2
  %105 = and i16 %104, 17
  %106 = icmp eq i16 %105, 1
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = icmp sgt i32 %80, 19
  %109 = select i1 %108, i32 200, i32 %81
  %110 = add i32 %109, %80
  %111 = icmp slt i32 %110, 800
  br i1 %111, label %79, label %112

112:                                              ; preds = %107, %103
  %113 = and i16 %104, 16
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %115, label %205

115:                                              ; preds = %112
  %116 = load ptr, ptr %16, align 4
  %117 = getelementptr inbounds %struct.usb_device, ptr %116, i32 0, i32 16, i32 5
  %118 = load i8, ptr %117, align 2
  %119 = icmp eq i8 %118, 3
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = load volatile i32, ptr %55, align 4
  %122 = and i32 %121, %57
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %205

124:                                              ; preds = %120
  %125 = trunc i16 %104 to i9
  %126 = and i9 %125, -32
  switch i9 %126, label %127 [
    i9 -192, label %205
    i9 192, label %205
  ]

127:                                              ; preds = %124
  %128 = and i16 %104, 1
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %205, label %142

130:                                              ; preds = %115
  %131 = and i16 %104, 1
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %205, label %133

133:                                              ; preds = %130
  %134 = load i16, ptr %7, align 2
  %135 = and i16 %134, 1
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %133
  %138 = load i32, ptr %116, align 8
  %139 = shl i32 %138, 8
  %140 = or i32 %139, -2147483648
  %141 = call i32 @usb_control_msg(ptr noundef %116, i32 noundef %140, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 16, i16 noundef zeroext %53, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %205

142:                                              ; preds = %127
  %143 = and i16 %104, 2
  %144 = icmp eq i16 %143, 0
  %145 = or i1 %144, %58
  %146 = select i1 %144, i32 -16, i32 0
  br i1 %145, label %205, label %152

147:                                              ; preds = %133
  %148 = and i16 %104, 2
  %149 = icmp eq i16 %148, 0
  %150 = or i1 %149, %58
  %151 = select i1 %149, i32 -16, i32 0
  br i1 %150, label %205, label %172

152:                                              ; preds = %142
  %153 = getelementptr inbounds %struct.usb_device, ptr %116, i32 0, i32 16, i32 2
  %154 = load i16, ptr %153, align 2
  %155 = icmp ugt i16 %154, 783
  br i1 %155, label %156, label %172

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.usb_device, ptr %116, i32 0, i32 18
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.usb_host_bos, ptr %158, i32 0, i32 3
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %172, label %162

162:                                              ; preds = %156
  %163 = load i32, ptr %8, align 4
  %164 = lshr i32 %163, 8
  %165 = and i32 %164, 15
  %166 = add nuw nsw i32 %165, 1
  store i32 %166, ptr %59, align 8
  %167 = lshr i32 %163, 12
  %168 = and i32 %167, 15
  %169 = add nuw nsw i32 %168, 1
  store i32 %169, ptr %60, align 4
  %170 = load ptr, ptr %16, align 4
  %171 = call fastcc i32 @get_port_ssp_rate(ptr noundef %170, i32 noundef %163) #20
  br label %173

172:                                              ; preds = %156, %152, %147
  store i32 1, ptr %59, align 8
  store i32 1, ptr %60, align 4
  br label %173

173:                                              ; preds = %172, %162
  %174 = phi i32 [ 0, %172 ], [ %171, %162 ]
  store i32 %174, ptr %61, align 8
  %175 = load ptr, ptr %16, align 4
  %176 = getelementptr inbounds %struct.usb_device, ptr %175, i32 0, i32 11
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %187

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.usb_device, ptr %175, i32 0, i32 12
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr inbounds %struct.usb_hcd, ptr %181, i32 0, i32 14
  %183 = load i16, ptr %182, align 8
  %184 = and i16 %183, 64
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %179
  store i32 4, ptr %62, align 4
  br label %205

187:                                              ; preds = %179, %173
  %188 = icmp eq i32 %174, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %187
  store i32 6, ptr %62, align 4
  br label %205

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.usb_device, ptr %175, i32 0, i32 16, i32 5
  %192 = load i8, ptr %191, align 2
  %193 = icmp eq i8 %192, 3
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  store i32 5, ptr %62, align 4
  br label %205

195:                                              ; preds = %190
  %196 = zext i16 %104 to i32
  %197 = and i32 %196, 1024
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %195
  store i32 3, ptr %62, align 4
  br label %205

200:                                              ; preds = %195
  %201 = and i32 %196, 512
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  store i32 1, ptr %62, align 4
  br label %205

204:                                              ; preds = %200
  store i32 2, ptr %62, align 4
  br label %205

205:                                              ; preds = %204, %203, %199, %194, %189, %186, %147, %142, %137, %130, %127, %124, %124, %120, %112, %100
  %206 = phi i32 [ -11, %137 ], [ -16, %112 ], [ -107, %124 ], [ -107, %127 ], [ %146, %142 ], [ 0, %189 ], [ 0, %199 ], [ 0, %204 ], [ 0, %203 ], [ 0, %194 ], [ 0, %186 ], [ -107, %120 ], [ -107, %124 ], [ -107, %130 ], [ %151, %147 ], [ %101, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #20
  br label %207

207:                                              ; preds = %205, %76
  %208 = phi i32 [ %75, %76 ], [ %206, %205 ]
  switch i32 %208, label %254 [
    i32 -19, label %209
    i32 -107, label %209
    i32 0, label %209
  ]

209:                                              ; preds = %207, %207, %207, %64
  %210 = phi i32 [ %208, %207 ], [ %208, %207 ], [ %208, %207 ], [ %75, %64 ]
  %211 = load ptr, ptr %16, align 4
  %212 = load i32, ptr %211, align 8
  %213 = shl i32 %212, 8
  %214 = or i32 %213, -2147483648
  %215 = call i32 @usb_control_msg(ptr noundef %211, i32 noundef %214, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 20, i16 noundef zeroext %53, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %216 = load ptr, ptr %16, align 4
  %217 = getelementptr inbounds %struct.usb_device, ptr %216, i32 0, i32 16, i32 5
  %218 = load i8, ptr %217, align 2
  %219 = icmp eq i8 %218, 3
  br i1 %219, label %220, label %260

220:                                              ; preds = %209
  %221 = load i32, ptr %216, align 8
  %222 = shl i32 %221, 8
  %223 = or i32 %222, -2147483648
  %224 = call i32 @usb_control_msg(ptr noundef %216, i32 noundef %223, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 29, i16 noundef zeroext %53, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %225 = load ptr, ptr %16, align 4
  %226 = load i32, ptr %225, align 8
  %227 = shl i32 %226, 8
  %228 = or i32 %227, -2147483648
  %229 = call i32 @usb_control_msg(ptr noundef %225, i32 noundef %228, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 25, i16 noundef zeroext %53, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br i1 %58, label %236, label %230

230:                                              ; preds = %220
  %231 = load ptr, ptr %16, align 4
  %232 = load i32, ptr %231, align 8
  %233 = shl i32 %232, 8
  %234 = or i32 %233, -2147483648
  %235 = call i32 @usb_control_msg(ptr noundef %231, i32 noundef %234, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 16, i16 noundef zeroext %53, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %236

236:                                              ; preds = %230, %220
  %237 = call fastcc i32 @hub_ext_port_status(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef null) #20
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %260, label %239

239:                                              ; preds = %236
  %240 = load i16, ptr %10, align 2
  %241 = load ptr, ptr %16, align 4
  %242 = getelementptr inbounds %struct.usb_device, ptr %241, i32 0, i32 16, i32 5
  %243 = load i8, ptr %242, align 2
  %244 = icmp eq i8 %243, 3
  br i1 %244, label %245, label %260

245:                                              ; preds = %239
  %246 = load volatile i32, ptr %55, align 4
  %247 = and i32 %246, %57
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = trunc i16 %240 to i9
  %251 = and i9 %250, -32
  switch i9 %251, label %260 [
    i9 -192, label %252
    i9 192, label %252
  ]

252:                                              ; preds = %249, %249, %245
  %253 = select i1 %70, i8 1, i8 %66
  br label %254

254:                                              ; preds = %252, %207
  %255 = phi i32 [ %210, %252 ], [ %208, %207 ]
  %256 = phi i8 [ %253, %252 ], [ %66, %207 ]
  %257 = add nuw nsw i32 %65, 1
  %258 = icmp eq i32 %257, 5
  br i1 %258, label %259, label %64

259:                                              ; preds = %254
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.58) #19
  br label %260

260:                                              ; preds = %259, %249, %239, %236, %209
  %261 = phi i32 [ %255, %259 ], [ %210, %209 ], [ %210, %236 ], [ %210, %239 ], [ %210, %249 ]
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %324

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.usb_port, ptr %15, i32 0, i32 10
  %265 = load i32, ptr %264, align 8
  %266 = and i32 %265, 2
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %263
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #20
  br label %276

269:                                              ; preds = %263
  %270 = load ptr, ptr %16, align 4
  %271 = getelementptr inbounds %struct.usb_device, ptr %270, i32 0, i32 36
  %272 = load i32, ptr %271, align 8
  %273 = and i32 %272, 16384
  %274 = icmp eq i32 %273, 0
  %275 = select i1 %274, i32 50, i32 150
  call void @msleep(i32 noundef %275) #20
  br label %276

276:                                              ; preds = %269, %268
  br i1 %58, label %332, label %277

277:                                              ; preds = %276
  %278 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 12
  %279 = load ptr, ptr %278, align 8
  %280 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 28
  %281 = load i16, ptr %280, align 1
  %282 = and i16 %281, 32
  %283 = icmp eq i16 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %277
  store i32 0, ptr %2, align 8
  br label %285

285:                                              ; preds = %284, %277
  %286 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 27
  %287 = load i8, ptr %286, align 8
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %285
  store i8 0, ptr %286, align 8
  br label %290

290:                                              ; preds = %289, %285
  %291 = getelementptr inbounds %struct.usb_hcd, ptr %279, i32 0, i32 9
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.hc_driver, ptr %292, i32 0, i32 38
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296

296:                                              ; preds = %290
  %297 = call i32 %294(ptr noundef %279, ptr noundef nonnull %2) #20
  br label %298

298:                                              ; preds = %296, %290
  %299 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @device_state_lock) #20
  %300 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 3
  %301 = load i32, ptr %300, align 8
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %318, label %303

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 11
  %305 = load ptr, ptr %304, align 4
  %306 = icmp eq ptr %305, null
  br i1 %306, label %309, label %307

307:                                              ; preds = %303
  %308 = icmp eq i32 %301, 8
  br i1 %308, label %312, label %309

309:                                              ; preds = %307, %303
  %310 = phi i32 [ -1, %303 ], [ 0, %307 ]
  %311 = icmp eq i32 %301, 8
  br i1 %311, label %312, label %319

312:                                              ; preds = %309, %307
  %313 = phi i32 [ %310, %309 ], [ -1, %307 ]
  %314 = load volatile i32, ptr @jiffies, align 64
  %315 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 38
  %316 = load i32, ptr %315, align 8
  %317 = sub i32 %316, %314
  store i32 %317, ptr %315, align 8
  br label %319

318:                                              ; preds = %298
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %299) #20
  br label %332

319:                                              ; preds = %312, %309
  %320 = phi i32 [ %313, %312 ], [ %310, %309 ]
  store i32 5, ptr %300, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %299) #20
  %321 = icmp sgt i32 %320, -1
  br i1 %321, label %322, label %332

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  call void @device_set_wakeup_capable(ptr noundef %323, i1 noundef zeroext false) #20
  br label %332

324:                                              ; preds = %260
  br i1 %58, label %332, label %325

325:                                              ; preds = %324
  %326 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @device_state_lock) #20
  %327 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 3
  %328 = load i32, ptr %327, align 8
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %325
  call fastcc void @recursively_mark_NOTATTACHED(ptr noundef nonnull %2) #20
  br label %331

331:                                              ; preds = %330, %325
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %326) #20
  br label %332

332:                                              ; preds = %331, %324, %322, %319, %318, %276
  %333 = load ptr, ptr %16, align 4
  %334 = getelementptr inbounds %struct.usb_device, ptr %333, i32 0, i32 16, i32 5
  %335 = load i8, ptr %334, align 2
  %336 = icmp eq i8 %335, 3
  br i1 %336, label %338, label %337

337:                                              ; preds = %332
  call void @up_read(ptr noundef nonnull @ehci_cf_port_reset_rwsem) #20
  br label %338

338:                                              ; preds = %337, %332, %22
  %339 = phi i32 [ -22, %22 ], [ %261, %337 ], [ %261, %332 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #20
  ret i32 %339
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get_path(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @get_port_ssp_rate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 18
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_host_bos, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  %9 = lshr i32 %1, 8
  %10 = and i32 %9, 15
  %11 = getelementptr inbounds %struct.usb_ssp_cap_descriptor, ptr %6, i32 0, i32 4
  %12 = load i32, ptr %11, align 1
  %13 = and i32 %12, 31
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i32 %18, 1
  %16 = icmp eq i32 %18, %13
  br i1 %16, label %43, label %17

17:                                               ; preds = %14, %8
  %18 = phi i32 [ 0, %8 ], [ %15, %14 ]
  %19 = getelementptr %struct.usb_ssp_cap_descriptor, ptr %6, i32 0, i32 7, i32 %18
  %20 = load i32, ptr %19, align 1
  %21 = xor i32 %20, %1
  %22 = and i32 %21, 15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %14

24:                                               ; preds = %17
  %25 = and i32 %20, 49216
  %26 = icmp eq i32 %25, 16384
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = lshr i32 %20, 16
  %29 = and i32 %28, 255
  %30 = and i32 %20, 48
  %31 = icmp eq i32 %30, 48
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = icmp ugt i32 %29, 9
  %34 = icmp eq i32 %10, 0
  %35 = and i1 %34, %33
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = icmp eq i32 %10, 1
  %38 = and i1 %37, %33
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = icmp ugt i32 %29, 4
  %41 = and i1 %37, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %27, %24
  br label %43

43:                                               ; preds = %42, %39, %36, %32, %14, %2
  %44 = phi i32 [ 0, %42 ], [ 0, %2 ], [ 3, %36 ], [ 1, %32 ], [ 2, %39 ], [ 0, %14 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @descriptors_changed(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16
  %5 = tail call i32 @bcmp(ptr noundef dereferenceable(18) %4, ptr noundef dereferenceable(18) %1, i32 18)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %97

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  %9 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %8, label %13, label %12

12:                                               ; preds = %7
  br i1 %11, label %97, label %14

13:                                               ; preds = %7
  br i1 %11, label %26, label %97

14:                                               ; preds = %12
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %15, i32 0, i32 2
  %17 = load i16, ptr %16, align 1
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.usb_bos_descriptor, ptr %18, i32 0, i32 2
  %20 = load i16, ptr %19, align 1
  %21 = icmp eq i16 %17, %20
  br i1 %21, label %22, label %97

22:                                               ; preds = %14
  %23 = zext i16 %17 to i32
  %24 = tail call i32 @bcmp(ptr %15, ptr %18, i32 %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %97

26:                                               ; preds = %22, %13
  %27 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 33
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @strlen(ptr noundef nonnull %28)
  %32 = add i32 %31, 1
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i32 [ %32, %30 ], [ 0, %26 ]
  %35 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 13
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i8 %36, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 19
  %41 = load ptr, ptr %40, align 8
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi i32 [ 0, %39 ], [ %49, %42 ]
  %44 = phi i32 [ %34, %39 ], [ %48, %42 ]
  %45 = getelementptr %struct.usb_host_config, ptr %41, i32 %43, i32 0, i32 2
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = tail call i32 @llvm.umax.i32(i32 %44, i32 %47)
  %49 = add nuw nsw i32 %43, 1
  %50 = icmp eq i32 %49, %37
  br i1 %50, label %51, label %42

51:                                               ; preds = %42, %33
  %52 = phi i32 [ %34, %33 ], [ %48, %42 ]
  %53 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %52, i32 noundef 3072) #22
  %54 = icmp eq ptr %53, null
  br i1 %54, label %97, label %55

55:                                               ; preds = %51
  %56 = load i8, ptr %35, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 19
  %60 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 23
  br label %66

61:                                               ; preds = %75
  %62 = add nuw nsw i32 %67, 1
  %63 = load i8, ptr %35, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %61, %58
  %67 = phi i32 [ 0, %58 ], [ %62, %61 ]
  %68 = load ptr, ptr %59, align 8
  %69 = getelementptr %struct.usb_host_config, ptr %68, i32 %67, i32 0, i32 2
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = trunc i32 %67 to i8
  %73 = tail call i32 @usb_get_descriptor(ptr noundef %0, i8 noundef zeroext 2, i8 noundef zeroext %72, ptr noundef nonnull %53, i32 noundef %71) #20
  %74 = icmp eq i32 %73, %71
  br i1 %74, label %75, label %95

75:                                               ; preds = %66
  %76 = load ptr, ptr %60, align 8
  %77 = getelementptr ptr, ptr %76, i32 %67
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 @bcmp(ptr nonnull %53, ptr %78, i32 %71)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %61, label %95

81:                                               ; preds = %61, %55
  %82 = icmp eq i32 %34, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 12
  %85 = load i8, ptr %84, align 8
  %86 = zext i8 %85 to i32
  %87 = tail call i32 @usb_string(ptr noundef %0, i32 noundef %86, ptr noundef nonnull %53, i32 noundef %34) #20
  %88 = add i32 %87, 1
  %89 = icmp eq i32 %88, %34
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load ptr, ptr %27, align 8
  %92 = tail call i32 @bcmp(ptr nonnull %53, ptr %91, i32 %87)
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i32
  br label %95

95:                                               ; preds = %90, %83, %81, %75, %66
  %96 = phi i32 [ 0, %81 ], [ 1, %83 ], [ %94, %90 ], [ 1, %75 ], [ 1, %66 ]
  tail call void @kfree(ptr noundef nonnull %53) #20
  br label %97

97:                                               ; preds = %95, %51, %22, %14, %13, %12, %3
  %98 = phi i32 [ %96, %95 ], [ 1, %3 ], [ 1, %13 ], [ 1, %12 ], [ 1, %14 ], [ 1, %22 ], [ 1, %51 ]
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_descriptor(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hub_port_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = add i32 %2, -1
  %12 = getelementptr ptr, ptr %10, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %1, align 8
  %17 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.usb_bus, ptr %8, i32 0, i32 5
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.usb_bus, ptr %8, i32 0, i32 6
  %27 = load i8, ptr %26, align 2
  %28 = and i8 %27, -3
  store i8 %28, ptr %26, align 2
  br label %29

29:                                               ; preds = %25, %20, %4
  %30 = phi i32 [ 10, %4 ], [ 60, %25 ], [ 60, %20 ]
  %31 = icmp eq i32 %15, 1
  %32 = select i1 %31, i32 200, i32 %30
  %33 = tail call fastcc i32 @hub_port_reset(ptr noundef %0, i32 noundef %2, ptr noundef %1, i32 noundef %32, i1 noundef zeroext false)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %452, label %35

35:                                               ; preds = %29
  %36 = icmp eq i32 %15, 0
  %37 = load i32, ptr %14, align 4
  br i1 %36, label %44, label %38

38:                                               ; preds = %35
  %39 = icmp eq i32 %15, %37
  br i1 %39, label %44, label %40

40:                                               ; preds = %38
  %41 = icmp eq i32 %15, 5
  %42 = icmp ugt i32 %37, 5
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %452

44:                                               ; preds = %40, %38, %35
  %45 = phi i32 [ %15, %38 ], [ %37, %40 ], [ %37, %35 ]
  switch i32 %45, label %452 [
    i32 6, label %47
    i32 5, label %47
    i32 4, label %47
    i32 3, label %50
    i32 2, label %50
    i32 1, label %46
  ]

46:                                               ; preds = %44
  br label %50

47:                                               ; preds = %44, %44, %44
  %48 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 13, i32 0, i32 4
  store i16 512, ptr %48, align 4
  %49 = icmp eq i32 %45, 4
  br i1 %49, label %55, label %53

50:                                               ; preds = %46, %44, %44
  %51 = phi i16 [ 8, %46 ], [ 64, %44 ], [ 64, %44 ]
  %52 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 13, i32 0, i32 4
  store i16 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = tail call ptr @usb_speed_string(i32 noundef %45) #20
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi ptr [ %54, %53 ], [ @.str.64, %47 ]
  %57 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 12
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 6
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.usb_bus, ptr %58, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 6
  %67 = load ptr, ptr %66, align 8
  br label %68

68:                                               ; preds = %63, %55
  %69 = phi ptr [ %67, %63 ], [ %61, %55 ]
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %14, align 4
  %72 = icmp ult i32 %71, 5
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %75 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 19
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  %78 = select i1 %77, ptr @.str.67, ptr @.str.66
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %74, ptr noundef nonnull @.str.65, ptr noundef nonnull %78, ptr noundef %56, i32 noundef %16, ptr noundef %70) #19
  br label %79

79:                                               ; preds = %73, %68
  %80 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 8
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 8
  store ptr %81, ptr %84, align 4
  %85 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 9
  %86 = load i32, ptr %85, align 8
  %87 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 9
  store i32 %86, ptr %87, align 8
  %88 = load i32, ptr %14, align 4
  br label %105

89:                                               ; preds = %79
  %90 = load i32, ptr %14, align 4
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %108, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 17
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.68) #19
  br label %452

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 8
  store ptr %97, ptr %103, align 4
  %104 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 9
  store i32 %2, ptr %104, align 8
  br label %105

105:                                              ; preds = %102, %92, %83
  %106 = phi i32 [ %90, %92 ], [ %90, %102 ], [ %88, %83 ]
  %107 = icmp ugt i32 %106, 4
  br i1 %107, label %122, label %108

108:                                              ; preds = %105, %89
  %109 = getelementptr inbounds %struct.usb_port, ptr %13, i32 0, i32 10
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  %113 = load i8, ptr @old_scheme_first, align 1
  %114 = and i8 %113, 1
  %115 = icmp ne i8 %114, 0
  %116 = select i1 %112, i1 true, i1 %115
  %117 = load i8, ptr @use_both_schemes, align 1, !range !25
  %118 = icmp eq i8 %117, 0
  %119 = icmp slt i32 %3, 2
  %120 = or i1 %119, %118
  %121 = xor i1 %116, %120
  br label %122

122:                                              ; preds = %108, %105
  %123 = phi i1 [ false, %105 ], [ %121, %108 ]
  %124 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 3
  %125 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 6
  %126 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 28
  %127 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 27
  %128 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %129 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 38
  %130 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %131 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 13
  %132 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 19
  %133 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 7
  br label %134

134:                                              ; preds = %327, %122
  %135 = phi i32 [ %16, %122 ], [ %329, %327 ]
  %136 = phi i32 [ 0, %122 ], [ %330, %327 ]
  br i1 %123, label %137, label %207

137:                                              ; preds = %134
  %138 = load ptr, ptr %57, align 8
  %139 = getelementptr inbounds %struct.usb_hcd, ptr %138, i32 0, i32 9
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.hc_driver, ptr %140, i32 0, i32 36
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %151, label %144

144:                                              ; preds = %137
  %145 = load i32, ptr %124, align 8
  switch i32 %145, label %149 [
    i32 6, label %151
    i32 5, label %146
  ]

146:                                              ; preds = %144
  %147 = tail call i32 %142(ptr noundef %138, ptr noundef %1) #20
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146, %144
  %150 = phi i32 [ %147, %146 ], [ -22, %144 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.69, i32 noundef %150) #19
  br label %452

151:                                              ; preds = %146, %144, %137
  %152 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %153 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %152, i32 noundef 3072, i32 noundef 64) #21
  %154 = icmp eq ptr %153, null
  br i1 %154, label %327, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.usb_device_descriptor, ptr %153, i32 0, i32 6
  %157 = getelementptr inbounds %struct.usb_device_descriptor, ptr %153, i32 0, i32 1
  %158 = icmp eq i32 %136, 0
  store i8 0, ptr %156, align 1
  %159 = load i32, ptr @initial_descriptor_timeout, align 4
  %160 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef -2147483520, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext 256, i16 noundef zeroext 0, ptr noundef nonnull %153, i16 noundef zeroext 64, i32 noundef %159) #20
  %161 = load i8, ptr %156, align 1
  switch i8 %161, label %165 [
    i8 8, label %162
    i8 16, label %162
    i8 32, label %162
    i8 64, label %162
    i8 -1, label %162
  ]

162:                                              ; preds = %155, %155, %155, %155, %155
  %163 = load i8, ptr %157, align 1
  %164 = icmp eq i8 %163, 1
  br i1 %164, label %197, label %165

165:                                              ; preds = %162, %155
  %166 = icmp eq i32 %160, -110
  %167 = select i1 %166, i1 %158, i1 false
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, ptr %14, align 4
  %170 = icmp ugt i32 %169, 2
  br i1 %170, label %197, label %171

171:                                              ; preds = %168, %165
  store i8 0, ptr %156, align 1
  %172 = load i32, ptr @initial_descriptor_timeout, align 4
  %173 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef -2147483520, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext 256, i16 noundef zeroext 0, ptr noundef nonnull %153, i16 noundef zeroext 64, i32 noundef %172) #20
  %174 = load i8, ptr %156, align 1
  switch i8 %174, label %178 [
    i8 8, label %175
    i8 16, label %175
    i8 32, label %175
    i8 64, label %175
    i8 -1, label %175
  ]

175:                                              ; preds = %171, %171, %171, %171, %171
  %176 = load i8, ptr %157, align 1
  %177 = icmp eq i8 %176, 1
  br i1 %177, label %197, label %178

178:                                              ; preds = %175, %171
  %179 = icmp eq i32 %173, -110
  %180 = select i1 %179, i1 %158, i1 false
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, ptr %14, align 4
  %183 = icmp ugt i32 %182, 2
  br i1 %183, label %197, label %184

184:                                              ; preds = %181, %178
  store i8 0, ptr %156, align 1
  %185 = load i32, ptr @initial_descriptor_timeout, align 4
  %186 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef -2147483520, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext 256, i16 noundef zeroext 0, ptr noundef nonnull %153, i16 noundef zeroext 64, i32 noundef %185) #20
  %187 = load i8, ptr %156, align 1
  switch i8 %187, label %191 [
    i8 8, label %188
    i8 16, label %188
    i8 32, label %188
    i8 64, label %188
    i8 -1, label %188
  ]

188:                                              ; preds = %184, %184, %184, %184, %184
  %189 = load i8, ptr %157, align 1
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %197, label %191

191:                                              ; preds = %188, %184
  %192 = icmp eq i32 %186, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %191
  %194 = icmp eq i32 %186, -110
  %195 = select i1 %194, i1 %158, i1 false
  %196 = select i1 %195, i32 -110, i32 %186
  br label %197

197:                                              ; preds = %193, %191, %188, %181, %175, %168, %162
  %198 = phi i8 [ %161, %168 ], [ %161, %162 ], [ %174, %175 ], [ %174, %181 ], [ %187, %188 ], [ %187, %191 ], [ %187, %193 ]
  %199 = phi i32 [ -110, %168 ], [ 0, %162 ], [ 0, %175 ], [ -110, %181 ], [ 0, %188 ], [ -71, %191 ], [ %196, %193 ]
  store i8 %198, ptr %125, align 1
  tail call void @kfree(ptr noundef nonnull %153) #20
  %200 = tail call fastcc i32 @hub_port_reset(ptr noundef %0, i32 noundef %2, ptr noundef %1, i32 noundef %32, i1 noundef zeroext false)
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %452, label %202

202:                                              ; preds = %197
  %203 = load i32, ptr %14, align 4
  %204 = icmp eq i32 %45, %203
  br i1 %204, label %205, label %452

205:                                              ; preds = %202
  switch i32 %199, label %206 [
    i32 0, label %207
    i32 -19, label %327
  ]

206:                                              ; preds = %205
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.70, i32 noundef %199) #19
  br label %327

207:                                              ; preds = %205, %134
  %208 = load i16, ptr %126, align 1
  %209 = and i16 %208, 32
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %211, label %311

211:                                              ; preds = %207
  %212 = icmp slt i32 %135, 2
  %213 = trunc i32 %135 to i16
  %214 = load ptr, ptr %57, align 8
  %215 = getelementptr inbounds %struct.usb_hcd, ptr %214, i32 0, i32 9
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.hc_driver, ptr %216, i32 0, i32 35
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  %220 = and i1 %212, %219
  br i1 %220, label %266, label %221

221:                                              ; preds = %211
  %222 = load i32, ptr %124, align 8
  switch i32 %222, label %266 [
    i32 6, label %291
    i32 5, label %223
  ]

223:                                              ; preds = %221
  br i1 %219, label %226, label %224

224:                                              ; preds = %223
  %225 = tail call i32 %218(ptr noundef %214, ptr noundef %1) #20
  br label %228

226:                                              ; preds = %223
  %227 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef -2147483648, i8 noundef zeroext 5, i8 noundef zeroext 0, i16 noundef zeroext %213, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi i32 [ %225, %224 ], [ %227, %226 ]
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %264

231:                                              ; preds = %281, %228
  %232 = load i16, ptr %126, align 1
  %233 = and i16 %232, 32
  %234 = icmp eq i16 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  store i32 %135, ptr %1, align 8
  br label %236

236:                                              ; preds = %235, %231
  %237 = load i8, ptr %127, align 8
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %236
  %240 = trunc i32 %135 to i8
  store i8 %240, ptr %127, align 8
  br label %241

241:                                              ; preds = %239, %236
  %242 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @device_state_lock) #20
  %243 = load i32, ptr %124, align 8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %258, label %245

245:                                              ; preds = %241
  %246 = load ptr, ptr %128, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %250, label %248

248:                                              ; preds = %245
  %249 = icmp eq i32 %243, 8
  br i1 %249, label %253, label %250

250:                                              ; preds = %248, %245
  %251 = phi i32 [ -1, %245 ], [ 0, %248 ]
  %252 = icmp eq i32 %243, 8
  br i1 %252, label %253, label %259

253:                                              ; preds = %250, %248
  %254 = phi i32 [ %251, %250 ], [ -1, %248 ]
  %255 = load volatile i32, ptr @jiffies, align 64
  %256 = load i32, ptr %129, align 8
  %257 = sub i32 %256, %255
  store i32 %257, ptr %129, align 8
  br label %259

258:                                              ; preds = %241
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %242) #20
  br label %263

259:                                              ; preds = %253, %250
  %260 = phi i32 [ %254, %253 ], [ %251, %250 ]
  store i32 6, ptr %124, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %242) #20
  %261 = icmp sgt i32 %260, -1
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  tail call void @device_set_wakeup_capable(ptr noundef %130, i1 noundef zeroext false) #20
  br label %263

263:                                              ; preds = %262, %259, %258
  tail call void @usb_disable_endpoint(ptr noundef %1, i32 noundef 128, i1 noundef zeroext true) #20
  tail call void @usb_disable_endpoint(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #20
  tail call void @usb_enable_endpoint(ptr noundef %1, ptr noundef %131, i1 noundef zeroext true) #20
  br label %291

264:                                              ; preds = %228
  %265 = icmp sgt i32 %229, -1
  br i1 %265, label %291, label %266

266:                                              ; preds = %264, %221, %211
  tail call void @msleep(i32 noundef 200) #20
  %267 = load ptr, ptr %57, align 8
  %268 = getelementptr inbounds %struct.usb_hcd, ptr %267, i32 0, i32 9
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr inbounds %struct.hc_driver, ptr %269, i32 0, i32 35
  %271 = load ptr, ptr %270, align 4
  %272 = icmp eq ptr %271, null
  %273 = and i1 %212, %272
  br i1 %273, label %286, label %274

274:                                              ; preds = %266
  %275 = load i32, ptr %124, align 8
  switch i32 %275, label %286 [
    i32 6, label %291
    i32 5, label %276
  ]

276:                                              ; preds = %274
  br i1 %272, label %279, label %277

277:                                              ; preds = %276
  %278 = tail call i32 %271(ptr noundef %267, ptr noundef %1) #20
  br label %281

279:                                              ; preds = %276
  %280 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef -2147483648, i8 noundef zeroext 5, i8 noundef zeroext 0, i16 noundef zeroext %213, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  br label %281

281:                                              ; preds = %279, %277
  %282 = phi i32 [ %278, %277 ], [ %280, %279 ]
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %231, label %284

284:                                              ; preds = %281
  %285 = icmp sgt i32 %282, -1
  br i1 %285, label %291, label %287

286:                                              ; preds = %274, %266
  tail call void @msleep(i32 noundef 200) #20
  br label %289

287:                                              ; preds = %284
  tail call void @msleep(i32 noundef 200) #20
  %288 = icmp eq i32 %282, -19
  br i1 %288, label %452, label %289

289:                                              ; preds = %287, %286
  %290 = phi i32 [ -22, %286 ], [ %282, %287 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.71, i32 noundef %135, i32 noundef %290) #19
  br label %452

291:                                              ; preds = %284, %274, %264, %263, %221
  %292 = phi i32 [ 0, %263 ], [ %229, %264 ], [ 0, %221 ], [ 0, %274 ], [ %282, %284 ]
  %293 = load i32, ptr %14, align 4
  %294 = icmp ugt i32 %293, 4
  br i1 %294, label %295, label %309

295:                                              ; preds = %291
  %296 = load i32, ptr %1, align 8
  %297 = load ptr, ptr %132, align 8
  %298 = icmp eq ptr %297, null
  %299 = select i1 %298, ptr @.str.67, ptr @.str.66
  %300 = icmp eq i32 %293, 6
  %301 = select i1 %300, ptr @.str.73, ptr @.str.20
  %302 = load i32, ptr %133, align 8
  switch i32 %302, label %303 [
    i32 3, label %307
    i32 1, label %306
  ]

303:                                              ; preds = %295
  %304 = icmp eq i32 %302, 2
  %305 = select i1 %304, ptr @.str.76, ptr @.str.20
  br label %307

306:                                              ; preds = %295
  br label %307

307:                                              ; preds = %306, %303, %295
  %308 = phi ptr [ @.str.74, %295 ], [ %305, %303 ], [ @.str.75, %306 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %130, ptr noundef nonnull @.str.72, ptr noundef nonnull %299, ptr noundef nonnull %301, ptr noundef nonnull %308, i32 noundef %296, ptr noundef %70) #19
  br label %309

309:                                              ; preds = %307, %291
  %310 = phi i32 [ %296, %307 ], [ %135, %291 ]
  tail call void @msleep(i32 noundef 10) #20
  br i1 %123, label %332, label %311

311:                                              ; preds = %309, %207
  %312 = phi i32 [ %310, %309 ], [ %135, %207 ]
  %313 = tail call i32 @usb_get_device_descriptor(ptr noundef %1, i32 noundef 8) #20
  %314 = icmp slt i32 %313, 8
  br i1 %314, label %315, label %321

315:                                              ; preds = %311
  %316 = icmp eq i32 %313, -19
  br i1 %316, label %318, label %317

317:                                              ; preds = %315
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.77, i32 noundef %313) #19
  br label %318

318:                                              ; preds = %317, %315
  %319 = icmp sgt i32 %313, -1
  %320 = select i1 %319, i32 -90, i32 %313
  br label %327

321:                                              ; preds = %311
  %322 = load ptr, ptr %128, align 4
  %323 = getelementptr inbounds %struct.usb_device, ptr %322, i32 0, i32 48
  %324 = load i16, ptr %323, align 8
  %325 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 48
  store i16 %324, ptr %325, align 8
  %326 = tail call i32 @usb_set_isoch_delay(ptr noundef %1) #20
  br label %334

327:                                              ; preds = %318, %206, %205, %151
  %328 = phi i32 [ %320, %318 ], [ -90, %206 ], [ -90, %205 ], [ -12, %151 ]
  %329 = phi i32 [ %312, %318 ], [ %135, %206 ], [ %135, %205 ], [ %135, %151 ]
  %330 = add nuw nsw i32 %136, 1
  tail call void @msleep(i32 noundef 100) #20
  %331 = icmp eq i32 %330, 2
  br i1 %331, label %452, label %134

332:                                              ; preds = %309
  %333 = icmp eq i32 %292, 0
  br i1 %333, label %334, label %452

334:                                              ; preds = %332, %321
  %335 = phi i32 [ %312, %321 ], [ %310, %332 ]
  %336 = load i32, ptr %14, align 4
  %337 = icmp ugt i32 %336, 4
  br i1 %337, label %338, label %344

338:                                              ; preds = %334
  %339 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 2
  %340 = load i16, ptr %339, align 2
  %341 = icmp ult i16 %340, 768
  br i1 %341, label %342, label %344

342:                                              ; preds = %338
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.78) #19
  %343 = tail call fastcc i32 @hub_port_reset(ptr noundef %0, i32 noundef %2, ptr noundef %1, i32 noundef 50, i1 noundef zeroext true)
  br label %452

344:                                              ; preds = %338, %334
  %345 = load i8, ptr %125, align 1
  %346 = zext i8 %345 to i32
  %347 = icmp eq i8 %345, -1
  %348 = select i1 %347, i1 true, i1 %337
  %349 = select i1 %348, i32 512, i32 %346
  %350 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 13, i32 0, i32 4
  %351 = load i16, ptr %350, align 1
  %352 = and i16 %351, 2047
  %353 = zext i16 %352 to i32
  %354 = icmp eq i32 %349, %353
  br i1 %354, label %366, label %355

355:                                              ; preds = %344
  %356 = icmp eq i32 %336, 1
  br i1 %356, label %360, label %357

357:                                              ; preds = %355
  %358 = add nsw i32 %349, -8
  %359 = tail call i32 @llvm.fshl.i32(i32 %358, i32 %358, i32 29)
  switch i32 %359, label %360 [
    i32 7, label %361
    i32 3, label %361
    i32 1, label %361
    i32 0, label %361
  ]

360:                                              ; preds = %357, %355
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.79, i32 noundef %349) #19
  br label %452

361:                                              ; preds = %357, %357, %357, %357
  %362 = icmp eq i32 %336, 2
  br i1 %362, label %364, label %363

363:                                              ; preds = %361
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %130, ptr noundef nonnull @.str.80, i32 noundef %349) #19
  br label %364

364:                                              ; preds = %363, %361
  %365 = trunc i32 %349 to i16
  store i16 %365, ptr %350, align 4
  tail call void @usb_disable_endpoint(ptr noundef %1, i32 noundef 128, i1 noundef zeroext true) #20
  tail call void @usb_disable_endpoint(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #20
  tail call void @usb_enable_endpoint(ptr noundef %1, ptr noundef %131, i1 noundef zeroext true) #20
  br label %366

366:                                              ; preds = %364, %344
  %367 = tail call i32 @usb_get_device_descriptor(ptr noundef %1, i32 noundef 18) #20
  %368 = icmp slt i32 %367, 18
  br i1 %368, label %369, label %374

369:                                              ; preds = %366
  %370 = icmp eq i32 %367, -19
  br i1 %370, label %452, label %371

371:                                              ; preds = %369
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.81, i32 noundef %367) #19
  %372 = icmp sgt i32 %367, -1
  %373 = select i1 %372, i32 -42, i32 %367
  br label %452

374:                                              ; preds = %366
  tail call void @usb_detect_quirks(ptr noundef %1) #20
  %375 = load i16, ptr %126, align 1
  %376 = and i16 %375, 32
  %377 = icmp eq i16 %376, 0
  br i1 %377, label %378, label %393

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 2
  %380 = load i16, ptr %379, align 2
  %381 = icmp ugt i16 %380, 512
  br i1 %381, label %382, label %393

382:                                              ; preds = %378
  %383 = tail call i32 @usb_get_bos_descriptor(ptr noundef %1) #20
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %393

385:                                              ; preds = %382
  %386 = tail call i32 @usb_device_supports_lpm(ptr noundef %1)
  %387 = trunc i32 %386 to i16
  %388 = load i16, ptr %126, align 1
  %389 = shl i16 %387, 6
  %390 = and i16 %389, 64
  %391 = and i16 %388, -65
  %392 = or i16 %390, %391
  store i16 %392, ptr %126, align 1
  tail call fastcc void @usb_set_lpm_parameters(ptr noundef %1)
  br label %393

393:                                              ; preds = %385, %382, %378, %374
  %394 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 9
  %395 = load ptr, ptr %394, align 4
  %396 = getelementptr inbounds %struct.hc_driver, ptr %395, i32 0, i32 39
  %397 = load ptr, ptr %396, align 4
  %398 = icmp eq ptr %397, null
  br i1 %398, label %401, label %399

399:                                              ; preds = %393
  %400 = tail call i32 %397(ptr noundef %8, ptr noundef %1) #20
  br label %401

401:                                              ; preds = %399, %393
  %402 = load ptr, ptr %128, align 4
  %403 = icmp eq ptr %402, null
  br i1 %403, label %417, label %404

404:                                              ; preds = %401
  %405 = getelementptr inbounds %struct.usb_device, ptr %402, i32 0, i32 20
  %406 = load ptr, ptr %405, align 4
  %407 = icmp eq ptr %406, null
  br i1 %407, label %417, label %408

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.usb_device, ptr %402, i32 0, i32 35
  %410 = load i32, ptr %409, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %417, label %412

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.usb_host_config, ptr %406, i32 0, i32 3
  %414 = load ptr, ptr %413, align 4
  %415 = getelementptr inbounds %struct.usb_interface, ptr %414, i32 0, i32 7, i32 8
  %416 = load ptr, ptr %415, align 8
  br label %417

417:                                              ; preds = %412, %408, %404, %401
  %418 = phi ptr [ %416, %412 ], [ null, %408 ], [ null, %404 ], [ null, %401 ]
  %419 = load i16, ptr %126, align 1
  %420 = and i16 %419, 128
  %421 = icmp eq i16 %420, 0
  br i1 %421, label %467, label %422

422:                                              ; preds = %417
  %423 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 18
  %424 = load ptr, ptr %423, align 4
  %425 = icmp eq ptr %424, null
  br i1 %425, label %467, label %426

426:                                              ; preds = %422
  %427 = icmp eq ptr %418, null
  br i1 %427, label %440, label %428

428:                                              ; preds = %426
  %429 = getelementptr inbounds %struct.usb_hub, ptr %418, i32 0, i32 27
  %430 = load ptr, ptr %429, align 4
  %431 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 25
  %432 = load i8, ptr %431, align 2
  %433 = zext i8 %432 to i32
  %434 = add nsw i32 %433, -1
  %435 = getelementptr ptr, ptr %430, i32 %434
  %436 = load ptr, ptr %435, align 4
  %437 = getelementptr inbounds %struct.usb_port, ptr %436, i32 0, i32 5
  %438 = load i32, ptr %437, align 4
  %439 = icmp eq i32 %438, 2
  br label %440

440:                                              ; preds = %428, %426
  %441 = phi i1 [ %439, %428 ], [ false, %426 ]
  %442 = getelementptr inbounds %struct.usb_host_bos, ptr %424, i32 0, i32 1
  %443 = load ptr, ptr %442, align 4
  %444 = getelementptr inbounds %struct.usb_ext_cap_descriptor, ptr %443, i32 0, i32 3
  %445 = load i32, ptr %444, align 1
  %446 = and i32 %445, 4
  %447 = icmp ne i32 %446, 0
  %448 = select i1 %447, i1 true, i1 %441
  br i1 %448, label %449, label %467

449:                                              ; preds = %440
  %450 = or i16 %419, 1024
  store i16 %450, ptr %126, align 1
  %451 = tail call i32 @usb_enable_usb2_hardware_lpm(ptr noundef %1) #20
  br label %467

452:                                              ; preds = %371, %369, %360, %342, %332, %327, %289, %287, %202, %197, %149, %100, %44, %40, %29
  %453 = phi i32 [ -19, %40 ], [ -22, %100 ], [ -90, %360 ], [ -22, %342 ], [ %292, %332 ], [ -19, %287 ], [ %290, %289 ], [ -19, %44 ], [ %33, %29 ], [ %150, %149 ], [ -19, %369 ], [ %373, %371 ], [ %200, %197 ], [ -19, %202 ], [ %328, %327 ]
  %454 = phi i32 [ %16, %40 ], [ %16, %100 ], [ %335, %360 ], [ %335, %342 ], [ %310, %332 ], [ %135, %287 ], [ %135, %289 ], [ %16, %44 ], [ %16, %29 ], [ %135, %149 ], [ %335, %369 ], [ %335, %371 ], [ %135, %197 ], [ %135, %202 ], [ %329, %327 ]
  %455 = tail call fastcc i32 @hub_port_disable(ptr noundef %0, i32 noundef %2, i32 noundef 0)
  %456 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 28
  %457 = load i16, ptr %456, align 1
  %458 = and i16 %457, 32
  %459 = icmp eq i16 %458, 0
  br i1 %459, label %460, label %461

460:                                              ; preds = %452
  store i32 %454, ptr %1, align 8
  br label %461

461:                                              ; preds = %460, %452
  %462 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 27
  %463 = load i8, ptr %462, align 8
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %461
  %466 = trunc i32 %454 to i8
  store i8 %466, ptr %462, align 8
  br label %467

467:                                              ; preds = %465, %461, %449, %440, %422, %417
  %468 = phi i32 [ 0, %417 ], [ 0, %422 ], [ 0, %440 ], [ 0, %449 ], [ %453, %461 ], [ %453, %465 ]
  ret i32 %468
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_isoch_delay(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_detect_quirks(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_bos_descriptor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usb_set_lpm_parameters(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %3 = load i16, ptr %2, align 1
  %4 = and i16 %3, 64
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %145, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 5
  br i1 %9, label %145, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %145, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 20
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %145, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 35
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %145, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.usb_host_config, ptr %16, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_interface, ptr %24, i32 0, i32 7, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %145, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 18
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.usb_host_bos, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %32, i32 0, i32 6
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %32, i32 0, i32 7
  %36 = load i16, ptr %35, align 1
  %37 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 18
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.usb_host_bos, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %40, i32 0, i32 6
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %40, i32 0, i32 7
  %45 = load i16, ptr %44, align 1
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 45
  %48 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 45
  %49 = load i32, ptr %48, align 4
  %50 = tail call i8 @llvm.umax.i8(i8 %34, i8 %42)
  %51 = zext i8 %50 to i32
  %52 = mul nuw nsw i32 %51, 1000
  %53 = getelementptr inbounds %struct.usb_hub, ptr %26, i32 0, i32 16
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %54, i32 0, i32 6
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = mul nuw nsw i32 %57, 100
  %59 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %54, i32 0, i32 6, i32 0, i32 0, i32 1
  %60 = load i16, ptr %59, align 1
  %61 = zext i16 %60 to i32
  %62 = shl nuw nsw i32 %61, 1
  %63 = add i32 %49, 80
  %64 = add i32 %63, %52
  %65 = add i32 %64, %58
  %66 = add i32 %65, %62
  %67 = getelementptr inbounds %struct.usb_hub, ptr %26, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 11
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  %72 = add i32 %66, 2500
  %73 = select i1 %71, i32 %72, i32 %66
  store i32 %73, ptr %47, align 4
  %74 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 46
  %75 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 46
  %76 = load i32, ptr %75, align 4
  %77 = tail call i16 @llvm.umax.i16(i16 %36, i16 %45)
  %78 = zext i16 %77 to i32
  %79 = mul nuw nsw i32 %78, 1000
  %80 = load ptr, ptr %53, align 4
  %81 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %80, i32 0, i32 6
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = mul nuw nsw i32 %83, 100
  %85 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %80, i32 0, i32 6, i32 0, i32 0, i32 1
  %86 = load i16, ptr %85, align 1
  %87 = zext i16 %86 to i32
  %88 = shl nuw nsw i32 %87, 1
  %89 = add nuw nsw i32 %79, 80
  %90 = add i32 %89, %76
  %91 = add i32 %90, %84
  %92 = add i32 %91, %88
  %93 = load ptr, ptr %67, align 4
  %94 = getelementptr inbounds %struct.usb_device, ptr %93, i32 0, i32 11
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  %97 = add i32 %92, 2500
  %98 = select i1 %96, i32 %97, i32 %92
  store i32 %98, ptr %74, align 4
  %99 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 45, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, 1000
  %102 = tail call i32 @llvm.umax.i32(i32 %52, i32 %101) #20
  %103 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 45, i32 1
  store i32 %102, ptr %103, align 4
  %104 = icmp ugt i32 %46, %43
  %105 = sub nsw i32 1, %43
  %106 = add nsw i32 %105, %46
  %107 = add nuw nsw i32 %43, 1
  %108 = select i1 %104, i32 %106, i32 %107
  %109 = mul nsw i32 %108, 1000
  %110 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 46, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, %109
  %113 = tail call i32 @llvm.umax.i32(i32 %79, i32 %112) #20
  %114 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 46, i32 1
  store i32 %113, ptr %114, align 4
  br label %115

115:                                              ; preds = %115, %28
  %116 = phi ptr [ %12, %28 ], [ %119, %115 ]
  %117 = phi i32 [ 0, %28 ], [ %121, %115 ]
  %118 = getelementptr inbounds %struct.usb_device, ptr %116, i32 0, i32 11
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  %121 = add i32 %117, 1
  br i1 %120, label %122, label %115

122:                                              ; preds = %115
  %123 = icmp eq i32 %117, 0
  %124 = mul i32 %117, 250
  %125 = add i32 %124, 1850
  %126 = select i1 %123, i32 0, i32 %125
  %127 = add i32 %124, %102
  %128 = add i32 %127, %126
  %129 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 45, i32 2
  store i32 %128, ptr %129, align 4
  br label %130

130:                                              ; preds = %130, %122
  %131 = phi ptr [ %12, %122 ], [ %134, %130 ]
  %132 = phi i32 [ 0, %122 ], [ %136, %130 ]
  %133 = getelementptr inbounds %struct.usb_device, ptr %131, i32 0, i32 11
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  %136 = add i32 %132, 1
  br i1 %135, label %137, label %130

137:                                              ; preds = %130
  %138 = icmp eq i32 %132, 0
  %139 = mul i32 %132, 250
  %140 = add i32 %139, 1850
  %141 = select i1 %138, i32 0, i32 %140
  %142 = add i32 %139, %113
  %143 = add i32 %142, %141
  %144 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 46, i32 2
  store i32 %143, ptr %144, align 4
  br label %145

145:                                              ; preds = %137, %22, %18, %14, %10, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hub_resubmit_irq_urb(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 25
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #20
  %4 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 20
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @usb_submit_urb(ptr noundef %10, i32 noundef 2592) #20
  switch i32 %11, label %12 [
    i32 -1, label %18
    i32 -19, label %18
    i32 -108, label %18
    i32 0, label %18
  ]

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.85, i32 noundef %11) #19
  %14 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 26
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = add i32 %15, 100
  %17 = tail call i32 @mod_timer(ptr noundef %14, i32 noundef %16) #20
  br label %18

18:                                               ; preds = %12, %8, %8, %8, %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hub_tt_work(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #20
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %58, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -108
  br label %9

9:                                                ; preds = %54, %7
  %10 = phi ptr [ %5, %7 ], [ %56, %54 ]
  %11 = phi i32 [ %3, %7 ], [ %55, %54 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %11) #20
  %17 = getelementptr inbounds %struct.usb_tt_clear, ptr %10, i32 0, i32 2
  %18 = load i16, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_tt_clear, ptr %10, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = trunc i32 %20 to i16
  %22 = and i16 %18, 6144
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %9
  %25 = load i32, ptr %12, align 8
  %26 = shl i32 %25, 8
  %27 = or i32 %26, -2147483648
  %28 = xor i16 %18, -32768
  %29 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %27, i8 noundef zeroext 8, i8 noundef zeroext 35, i16 noundef zeroext %28, i16 noundef zeroext %21, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24, %9
  %32 = load i32, ptr %12, align 8
  %33 = shl i32 %32, 8
  %34 = or i32 %33, -2147483648
  %35 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %34, i8 noundef zeroext 8, i8 noundef zeroext 35, i16 noundef zeroext %18, i16 noundef zeroext %21, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %36

36:                                               ; preds = %31, %24
  %37 = phi i32 [ %29, %24 ], [ %35, %31 ]
  switch i32 %37, label %38 [
    i32 -19, label %43
    i32 0, label %43
  ]

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %40 = load i32, ptr %19, align 4
  %41 = load i16, ptr %17, align 4
  %42 = zext i16 %41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.99, i32 noundef %40, i32 noundef %42, i32 noundef %37) #19
  br label %43

43:                                               ; preds = %38, %36, %36
  %44 = getelementptr inbounds %struct.usb_tt_clear, ptr %10, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.usb_hcd, ptr %45, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.hc_driver, ptr %47, i32 0, i32 26
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.usb_tt_clear, ptr %10, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  tail call void %49(ptr noundef %45, ptr noundef %53) #20
  br label %54

54:                                               ; preds = %51, %43
  tail call void @kfree(ptr noundef %10) #20
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #20
  %56 = load volatile ptr, ptr %4, align 4
  %57 = icmp eq ptr %56, %4
  br i1 %57, label %58, label %9

58:                                               ; preds = %54, %1
  %59 = phi i32 [ %3, %1 ], [ %55, %54 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %59) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @usb_maxpacket(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #15 {
  %3 = lshr i32 %1, 15
  %4 = and i32 %3, 15
  %5 = and i32 %1, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !10

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.100, i32 noundef 1984, i32 noundef 9, ptr noundef null) #20
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 4
  %14 = load i16, ptr %13, align 1
  %15 = and i16 %14, 2047
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i16 [ %15, %12 ], [ 0, %8 ]
  ret i16 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hub_irq(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %6 [
    i32 -2, label %39
    i32 -104, label %39
    i32 -108, label %39
    i32 0, label %16
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %38, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  store i32 %5, ptr %12, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi i32 [ 0, %20 ], [ %31, %23 ]
  %25 = phi i32 [ 0, %20 ], [ %32, %23 ]
  %26 = getelementptr [8 x i8], ptr %22, i32 0, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %25, 3
  %30 = shl i32 %28, %29
  %31 = or i32 %30, %24
  %32 = add nuw i32 %25, 1
  %33 = icmp eq i32 %32, %18
  br i1 %33, label %34, label %23

34:                                               ; preds = %23, %16
  %35 = phi i32 [ 0, %16 ], [ %31, %23 ]
  %36 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 9
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.usb_hub, ptr %3, i32 0, i32 8
  store i32 0, ptr %37, align 4
  tail call fastcc void @kick_hub_wq(ptr noundef %3)
  br label %38

38:                                               ; preds = %34, %11, %6
  tail call fastcc void @hub_resubmit_irq_urb(ptr noundef %3)
  br label %39

39:                                               ; preds = %38, %1, %1, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_create_port_device(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hub_activate(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = getelementptr %struct.usb_hub, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 1
  %8 = add i32 %1, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15, i32 9
  tail call void @mutex_lock(ptr noundef %11) #20
  %12 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 20
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %422

16:                                               ; preds = %10
  br i1 %7, label %192, label %399

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #20, !srcloc !8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #20, !srcloc !9
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !10

22:                                               ; preds = %17
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26, !prof !11

26:                                               ; preds = %22, %17
  %27 = phi i32 [ 2, %17 ], [ 1, %22 ]
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef %27) #20
  br label %28

28:                                               ; preds = %26, %22
  %29 = icmp eq i32 %1, 4
  br i1 %29, label %172, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 16, i32 5
  %36 = load i8, ptr %35, align 2
  %37 = icmp eq i8 %36, 3
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i32, ptr %6, align 8
  %40 = shl i32 %39, 8
  %41 = or i32 %40, -2147483648
  %42 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 26
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i16
  %45 = add nsw i16 %44, -1
  %46 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %41, i8 noundef zeroext 12, i8 noundef zeroext 32, i16 noundef zeroext %45, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #20
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.101) #19
  br label %50

50:                                               ; preds = %48, %38, %34, %30
  switch i32 %1, label %144 [
    i32 0, label %51
    i32 5, label %101
  ]

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 16
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %53, i32 0, i32 4
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 1
  %58 = load ptr, ptr %5, align 4
  %59 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  %62 = tail call i32 @llvm.umax.i32(i32 %57, i32 100) #20
  %63 = select i1 %61, i32 %57, i32 %62
  %64 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 35
  %65 = load i32, ptr %64, align 4
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %90, label %67

67:                                               ; preds = %51
  %68 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 13
  br label %69

69:                                               ; preds = %69, %67
  %70 = phi ptr [ %58, %67 ], [ %86, %69 ]
  %71 = phi i32 [ 1, %67 ], [ %85, %69 ]
  %72 = lshr i32 %71, 5
  %73 = getelementptr i32, ptr %68, i32 %72
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %71, 31
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  %79 = load i32, ptr %70, align 8
  %80 = shl i32 %79, 8
  %81 = or i32 %80, -2147483648
  %82 = trunc i32 %71 to i16
  %83 = select i1 %78, i8 1, i8 3
  %84 = tail call i32 @usb_control_msg(ptr noundef %70, i32 noundef %81, i8 noundef zeroext %83, i8 noundef zeroext 35, i16 noundef zeroext 8, i16 noundef zeroext %82, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %85 = add i32 %71, 1
  %86 = load ptr, ptr %5, align 4
  %87 = getelementptr inbounds %struct.usb_device, ptr %86, i32 0, i32 35
  %88 = load i32, ptr %87, align 4
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %69

90:                                               ; preds = %69, %51
  %91 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 23
  store i32 -32, ptr %91, align 4
  %92 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 23, i32 0, i32 1
  store volatile ptr %92, ptr %92, align 4
  %93 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 23, i32 0, i32 1, i32 1
  store ptr %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 23, i32 0, i32 2
  store ptr @hub_init_func2, ptr %94, align 4
  %95 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 23, i32 1
  tail call void @init_timer_key(ptr noundef %95, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #20
  %96 = load ptr, ptr @system_power_efficient_wq, align 4
  %97 = tail call i32 @__msecs_to_jiffies(i32 noundef %63) #20
  %98 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %96, ptr noundef %91, i32 noundef %97) #20
  %99 = load ptr, ptr %0, align 4
  %100 = getelementptr i8, ptr %99, i32 -32
  tail call void @usb_autopm_get_interface_no_resume(ptr noundef %100) #20
  br label %438

101:                                              ; preds = %50
  %102 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 12
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.usb_hcd, ptr %103, i32 0, i32 9
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.hc_driver, ptr %105, i32 0, i32 37
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 17
  %111 = tail call i32 %107(ptr noundef %103, ptr noundef %6, ptr noundef %110, i32 noundef 3072) #20
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.102) #19
  %115 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.103) #19
  br label %116

116:                                              ; preds = %113, %109, %101
  %117 = load ptr, ptr %5, align 4
  %118 = getelementptr inbounds %struct.usb_device, ptr %117, i32 0, i32 35
  %119 = load i32, ptr %118, align 4
  %120 = icmp slt i32 %119, 1
  br i1 %120, label %177, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 13
  br label %123

123:                                              ; preds = %123, %121
  %124 = phi ptr [ %117, %121 ], [ %140, %123 ]
  %125 = phi i32 [ 1, %121 ], [ %139, %123 ]
  %126 = lshr i32 %125, 5
  %127 = getelementptr i32, ptr %122, i32 %126
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %125, 31
  %130 = shl nuw i32 1, %129
  %131 = and i32 %130, %128
  %132 = icmp eq i32 %131, 0
  %133 = load i32, ptr %124, align 8
  %134 = shl i32 %133, 8
  %135 = or i32 %134, -2147483648
  %136 = trunc i32 %125 to i16
  %137 = select i1 %132, i8 1, i8 3
  %138 = tail call i32 @usb_control_msg(ptr noundef %124, i32 noundef %135, i8 noundef zeroext %137, i8 noundef zeroext 35, i16 noundef zeroext 8, i16 noundef zeroext %136, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %139 = add i32 %125, 1
  %140 = load ptr, ptr %5, align 4
  %141 = getelementptr inbounds %struct.usb_device, ptr %140, i32 0, i32 35
  %142 = load i32, ptr %141, align 4
  %143 = icmp sgt i32 %139, %142
  br i1 %143, label %177, label %123

144:                                              ; preds = %50
  %145 = load ptr, ptr %5, align 4
  %146 = getelementptr inbounds %struct.usb_device, ptr %145, i32 0, i32 35
  %147 = load i32, ptr %146, align 4
  %148 = icmp slt i32 %147, 1
  br i1 %148, label %177, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 13
  br label %151

151:                                              ; preds = %151, %149
  %152 = phi ptr [ %145, %149 ], [ %168, %151 ]
  %153 = phi i32 [ 1, %149 ], [ %167, %151 ]
  %154 = lshr i32 %153, 5
  %155 = getelementptr i32, ptr %150, i32 %154
  %156 = load volatile i32, ptr %155, align 4
  %157 = and i32 %153, 31
  %158 = shl nuw i32 1, %157
  %159 = and i32 %158, %156
  %160 = icmp eq i32 %159, 0
  %161 = load i32, ptr %152, align 8
  %162 = shl i32 %161, 8
  %163 = or i32 %162, -2147483648
  %164 = trunc i32 %153 to i16
  %165 = select i1 %160, i8 1, i8 3
  %166 = tail call i32 @usb_control_msg(ptr noundef %152, i32 noundef %163, i8 noundef zeroext %165, i8 noundef zeroext 35, i16 noundef zeroext 8, i16 noundef zeroext %164, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  %167 = add i32 %153, 1
  %168 = load ptr, ptr %5, align 4
  %169 = getelementptr inbounds %struct.usb_device, ptr %168, i32 0, i32 35
  %170 = load i32, ptr %169, align 4
  %171 = icmp sgt i32 %167, %170
  br i1 %171, label %177, label %151

172:                                              ; preds = %28
  %173 = load ptr, ptr %5, align 4
  %174 = getelementptr inbounds %struct.usb_device, ptr %173, i32 0, i32 16, i32 5
  %175 = load i8, ptr %174, align 2
  %176 = icmp eq i8 %175, 3
  br i1 %176, label %190, label %192

177:                                              ; preds = %151, %144, %123, %116
  %178 = phi ptr [ %117, %116 ], [ %145, %144 ], [ %168, %151 ], [ %140, %123 ]
  %179 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 16
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %180, i32 0, i32 4
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = shl nuw nsw i32 %183, 1
  %185 = getelementptr inbounds %struct.usb_device, ptr %178, i32 0, i32 11
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  %188 = tail call i32 @llvm.umax.i32(i32 %184, i32 100) #20
  %189 = select i1 %187, i32 %184, i32 %188
  br label %190

190:                                              ; preds = %177, %172
  %191 = phi i32 [ 20, %172 ], [ %189, %177 ]
  tail call void @msleep(i32 noundef %191) #20
  br label %192

192:                                              ; preds = %190, %172, %16
  %193 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 35
  %194 = load i32, ptr %193, align 4
  %195 = icmp slt i32 %194, 1
  br i1 %195, label %399, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 27
  %198 = icmp eq i32 %1, 4
  %199 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 16, i32 5
  %200 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 15
  %201 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 9
  %202 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 11
  %203 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 13
  %204 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 10
  br label %205

205:                                              ; preds = %383, %196
  %206 = phi i32 [ 1, %196 ], [ %384, %383 ]
  %207 = phi i1 [ false, %196 ], [ %318, %383 ]
  %208 = load ptr, ptr %197, align 4
  %209 = add i32 %206, -1
  %210 = getelementptr ptr, ptr %208, i32 %209
  %211 = load ptr, ptr %210, align 4
  %212 = load ptr, ptr %211, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #20
  store i16 0, ptr %4, align 2
  store i16 0, ptr %3, align 2
  %213 = call fastcc i32 @hub_ext_port_status(ptr noundef %0, i32 noundef %206, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null) #20
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %380

215:                                              ; preds = %205
  %216 = load i16, ptr %3, align 2
  %217 = zext i16 %216 to i32
  %218 = and i32 %217, 2
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %240, label %220

220:                                              ; preds = %215
  br i1 %198, label %221, label %230

221:                                              ; preds = %220
  %222 = and i32 %217, 1
  %223 = icmp ne i32 %222, 0
  %224 = icmp ne ptr %212, null
  %225 = select i1 %223, i1 %224, i1 false
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.usb_device, ptr %212, i32 0, i32 3
  %228 = load i32, ptr %227, align 8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %226, %221, %220
  %231 = and i16 %216, -3
  store i16 %231, ptr %3, align 2
  %232 = load i8, ptr %199, align 2
  %233 = icmp eq i8 %232, 3
  br i1 %233, label %240, label %234

234:                                              ; preds = %230
  %235 = load i32, ptr %6, align 8
  %236 = shl i32 %235, 8
  %237 = or i32 %236, -2147483648
  %238 = trunc i32 %206 to i16
  %239 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %237, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 1, i16 noundef zeroext %238, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %240

240:                                              ; preds = %234, %230, %215
  %241 = phi i16 [ %231, %230 ], [ %231, %234 ], [ %216, %215 ]
  br i1 %198, label %242, label %260

242:                                              ; preds = %240, %226
  %243 = phi i16 [ %216, %226 ], [ %241, %240 ]
  %244 = load ptr, ptr %5, align 4
  %245 = getelementptr inbounds %struct.usb_device, ptr %244, i32 0, i32 16, i32 5
  %246 = load i8, ptr %245, align 2
  %247 = icmp eq i8 %246, 3
  br i1 %247, label %248, label %260

248:                                              ; preds = %242
  %249 = lshr i32 %206, 5
  %250 = getelementptr i32, ptr %200, i32 %249
  %251 = load volatile i32, ptr %250, align 4
  %252 = and i32 %206, 31
  %253 = shl nuw i32 1, %252
  %254 = and i32 %251, %253
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %248
  %257 = trunc i16 %243 to i9
  %258 = and i9 %257, -32
  switch i9 %258, label %260 [
    i9 -192, label %259
    i9 192, label %259
  ]

259:                                              ; preds = %256, %256, %248
  tail call void @_set_bit(i32 noundef %206, ptr noundef %201) #20
  br label %260

260:                                              ; preds = %259, %256, %242, %240
  %261 = phi i16 [ %243, %256 ], [ %243, %242 ], [ %243, %259 ], [ %241, %240 ]
  %262 = load i8, ptr %199, align 2
  %263 = icmp eq i8 %262, 3
  br i1 %263, label %264, label %268

264:                                              ; preds = %260
  %265 = and i16 %261, 480
  %266 = icmp eq i16 %265, 224
  %267 = select i1 %266, i1 true, i1 %207
  br label %268

268:                                              ; preds = %264, %260
  %269 = phi i1 [ %207, %260 ], [ %267, %264 ]
  %270 = load i16, ptr %4, align 2
  %271 = and i16 %270, 1
  %272 = icmp eq i16 %271, 0
  br i1 %272, label %280, label %273

273:                                              ; preds = %268
  %274 = load ptr, ptr %5, align 4
  %275 = load i32, ptr %274, align 8
  %276 = shl i32 %275, 8
  %277 = or i32 %276, -2147483648
  %278 = trunc i32 %206 to i16
  %279 = tail call i32 @usb_control_msg(ptr noundef %274, i32 noundef %277, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 16, i16 noundef zeroext %278, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %280

280:                                              ; preds = %273, %268
  %281 = phi i1 [ true, %273 ], [ %269, %268 ]
  %282 = and i16 %270, 2
  %283 = icmp eq i16 %282, 0
  br i1 %283, label %291, label %284

284:                                              ; preds = %280
  %285 = load ptr, ptr %5, align 4
  %286 = load i32, ptr %285, align 8
  %287 = shl i32 %286, 8
  %288 = or i32 %287, -2147483648
  %289 = trunc i32 %206 to i16
  %290 = tail call i32 @usb_control_msg(ptr noundef %285, i32 noundef %288, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 17, i16 noundef zeroext %289, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %291

291:                                              ; preds = %284, %280
  %292 = phi i1 [ true, %284 ], [ %281, %280 ]
  %293 = and i16 %270, 16
  %294 = icmp eq i16 %293, 0
  br i1 %294, label %302, label %295

295:                                              ; preds = %291
  %296 = load ptr, ptr %5, align 4
  %297 = load i32, ptr %296, align 8
  %298 = shl i32 %297, 8
  %299 = or i32 %298, -2147483648
  %300 = trunc i32 %206 to i16
  %301 = tail call i32 @usb_control_msg(ptr noundef %296, i32 noundef %299, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 20, i16 noundef zeroext %300, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %302

302:                                              ; preds = %295, %291
  %303 = phi i1 [ true, %295 ], [ %292, %291 ]
  %304 = and i16 %270, 32
  %305 = icmp eq i16 %304, 0
  br i1 %305, label %317, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr %5, align 4
  %308 = getelementptr inbounds %struct.usb_device, ptr %307, i32 0, i32 16, i32 5
  %309 = load i8, ptr %308, align 2
  %310 = icmp eq i8 %309, 3
  br i1 %310, label %311, label %317

311:                                              ; preds = %306
  %312 = load i32, ptr %307, align 8
  %313 = shl i32 %312, 8
  %314 = or i32 %313, -2147483648
  %315 = trunc i32 %206 to i16
  %316 = tail call i32 @usb_control_msg(ptr noundef %307, i32 noundef %314, i8 noundef zeroext 1, i8 noundef zeroext 35, i16 noundef zeroext 29, i16 noundef zeroext %315, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #20
  br label %317

317:                                              ; preds = %311, %306, %302
  %318 = phi i1 [ true, %311 ], [ %303, %306 ], [ %303, %302 ]
  %319 = and i16 %261, 1
  %320 = icmp eq i16 %319, 0
  %321 = xor i1 %272, true
  %322 = select i1 %320, i1 true, i1 %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %317
  tail call void @_clear_bit(i32 noundef %206, ptr noundef %202) #20
  br label %324

324:                                              ; preds = %323, %317
  %325 = icmp eq ptr %212, null
  br i1 %325, label %330, label %326

326:                                              ; preds = %324
  %327 = getelementptr inbounds %struct.usb_device, ptr %212, i32 0, i32 3
  %328 = load i32, ptr %327, align 8
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %381, label %344

330:                                              ; preds = %324
  %331 = zext i16 %261 to i32
  %332 = and i32 %331, 1
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %381

334:                                              ; preds = %330
  %335 = zext i16 %270 to i32
  %336 = and i32 %335, 1
  %337 = icmp eq i32 %336, 0
  %338 = and i32 %331, 8
  %339 = icmp eq i32 %338, 0
  %340 = select i1 %337, i1 %339, i1 false
  %341 = and i32 %335, 8
  %342 = icmp eq i32 %341, 0
  %343 = select i1 %340, i1 %342, i1 false
  br i1 %343, label %383, label %381

344:                                              ; preds = %326
  %345 = zext i16 %261 to i32
  %346 = and i32 %345, 2
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %358, label %348

348:                                              ; preds = %344
  %349 = icmp eq i16 %270, 0
  br i1 %349, label %350, label %381

350:                                              ; preds = %348
  %351 = and i32 %345, 480
  %352 = icmp ne i32 %351, 0
  %353 = load ptr, ptr %5, align 4
  %354 = getelementptr inbounds %struct.usb_device, ptr %353, i32 0, i32 16, i32 5
  %355 = load i8, ptr %354, align 2
  %356 = icmp ne i8 %355, 3
  %357 = select i1 %356, i1 true, i1 %352
  br i1 %357, label %383, label %381

358:                                              ; preds = %344
  %359 = getelementptr inbounds %struct.usb_device, ptr %212, i32 0, i32 28
  %360 = load i16, ptr %359, align 1
  %361 = and i16 %360, 2
  %362 = icmp eq i16 %361, 0
  br i1 %362, label %374, label %363

363:                                              ; preds = %358
  %364 = getelementptr inbounds %struct.usb_device, ptr %212, i32 0, i32 40
  %365 = load i8, ptr %364, align 8
  %366 = or i8 %365, 2
  store i8 %366, ptr %364, align 8
  %367 = lshr i32 %206, 5
  %368 = getelementptr i32, ptr %203, i32 %367
  %369 = load volatile i32, ptr %368, align 4
  %370 = and i32 %206, 31
  %371 = shl nuw i32 1, %370
  %372 = and i32 %369, %371
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %383, label %381

374:                                              ; preds = %358
  %375 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @device_state_lock) #20
  %376 = load i32, ptr %327, align 8
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %379, label %378

378:                                              ; preds = %374
  tail call fastcc void @recursively_mark_NOTATTACHED(ptr noundef nonnull %212) #20
  br label %379

379:                                              ; preds = %378, %374
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @device_state_lock, i32 noundef %375) #20
  br label %381

380:                                              ; preds = %205
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  br label %421

381:                                              ; preds = %379, %363, %350, %348, %334, %330, %326
  %382 = phi ptr [ %204, %379 ], [ %204, %326 ], [ %204, %334 ], [ %204, %330 ], [ %201, %350 ], [ %201, %348 ], [ %204, %363 ]
  tail call void @_set_bit(i32 noundef %206, ptr noundef %382) #20
  br label %383

383:                                              ; preds = %381, %363, %350, %334
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #20
  %384 = add i32 %206, 1
  %385 = load i32, ptr %193, align 4
  %386 = icmp sgt i32 %384, %385
  br i1 %386, label %387, label %205

387:                                              ; preds = %383
  br i1 %318, label %388, label %399

388:                                              ; preds = %387
  br i1 %7, label %389, label %398

389:                                              ; preds = %388
  %390 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 23
  store i32 -32, ptr %390, align 4
  %391 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 23, i32 0, i32 1
  store volatile ptr %391, ptr %391, align 4
  %392 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 23, i32 0, i32 1, i32 1
  store ptr %391, ptr %392, align 4
  %393 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 23, i32 0, i32 2
  store ptr @hub_init_func3, ptr %393, align 4
  %394 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 23, i32 1
  tail call void @init_timer_key(ptr noundef %394, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #20
  %395 = load ptr, ptr @system_power_efficient_wq, align 4
  %396 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %395, ptr noundef %390, i32 noundef 10) #20
  %397 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15, i32 9
  tail call void @mutex_unlock(ptr noundef %397) #20
  br label %438

398:                                              ; preds = %388
  tail call void @msleep(i32 noundef 100) #20
  br label %399

399:                                              ; preds = %398, %387, %192, %16
  %400 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 20
  %401 = load i8, ptr %400, align 4
  %402 = and i8 %401, -3
  store i8 %402, ptr %400, align 4
  %403 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 3
  %404 = load ptr, ptr %403, align 4
  %405 = tail call i32 @usb_submit_urb(ptr noundef %404, i32 noundef 3072) #20
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %399
  %408 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %408, ptr noundef nonnull @.str.104, i32 noundef %405) #19
  br label %409

409:                                              ; preds = %407, %399
  %410 = load i8, ptr %400, align 4
  %411 = and i8 %410, 64
  %412 = icmp eq i8 %411, 0
  %413 = load i8, ptr @blinkenlights, align 1
  %414 = icmp eq i8 %413, 0
  %415 = select i1 %412, i1 true, i1 %414
  br i1 %415, label %420, label %416

416:                                              ; preds = %409
  %417 = load ptr, ptr @system_power_efficient_wq, align 4
  %418 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 22
  %419 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %417, ptr noundef %418, i32 noundef 66) #20
  br label %420

420:                                              ; preds = %416, %409
  tail call fastcc void @kick_hub_wq(ptr noundef %0)
  br label %421

421:                                              ; preds = %420, %380
  br i1 %9, label %422, label %426

422:                                              ; preds = %421, %10
  %423 = load ptr, ptr %0, align 4
  %424 = getelementptr i8, ptr %423, i32 -32
  tail call void @usb_autopm_put_interface_async(ptr noundef %424) #20
  %425 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15, i32 9
  tail call void @mutex_unlock(ptr noundef %425) #20
  br label %426

426:                                              ; preds = %422, %421
  %427 = getelementptr inbounds %struct.usb_hub, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %427) #20, !srcloc !8
  %428 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %427, ptr %427, i32 1, ptr elementtype(i32) %427) #20, !srcloc !13
  %429 = extractvalue { i32, i32, i32 } %428, 0
  %430 = icmp eq i32 %429, 1
  br i1 %430, label %434, label %431

431:                                              ; preds = %426
  %432 = icmp sgt i32 %429, 0
  br i1 %432, label %438, label %433, !prof !11

433:                                              ; preds = %431
  tail call void @refcount_warn_saturate(ptr noundef %427, i32 noundef 3) #20
  br label %438

434:                                              ; preds = %426
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !14
  %435 = load ptr, ptr %5, align 4
  tail call void @usb_put_dev(ptr noundef %435) #20
  %436 = load ptr, ptr %0, align 4
  %437 = getelementptr i8, ptr %436, i32 -32
  tail call void @usb_put_intf(ptr noundef %437) #20
  tail call void @kfree(ptr noundef %0) #20
  br label %438

438:                                              ; preds = %434, %433, %431, %389, %90
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hub_init_func2(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -212
  tail call fastcc void @hub_activate(ptr noundef %2, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hub_init_func3(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -212
  tail call fastcc void @hub_activate(ptr noundef %2, i32 noundef 2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hub_remove_port_device(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_alloc_bandwidth(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_disable_interface(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_interface(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_release_bos_descriptor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #17

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }

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
!8 = !{i64 591771, i64 2148081742, i64 2148081768, i64 2148081815, i64 2148081837, i64 2148081865, i64 2148081885}
!9 = !{i64 2148095412, i64 2148095444, i64 2148095473, i64 2148095507, i64 2148095538, i64 2148095561}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148195610}
!13 = !{i64 2148097769, i64 2148097801, i64 2148097830, i64 2148097864, i64 2148097895, i64 2148097918}
!14 = !{i64 2149175677}
!15 = !{i64 2149107689}
!16 = !{i64 2149103513}
!17 = !{i64 2149103588, i64 2149103615, i64 2149103662, i64 2149103684, i64 2149103712, i64 2149103732}
!18 = !{i64 487255}
!19 = !{i64 2149131833}
!20 = !{i64 2148093954, i64 2148093980, i64 2148094009, i64 2148094043, i64 2148094074, i64 2148094097}
!21 = !{!"auto-init"}
!22 = !{i64 2148093461}
!23 = !{i64 578340, i64 578365, i64 578387, i64 578403, i64 578415, i64 578435, i64 578459, i64 578475, i64 578487}
!24 = !{i64 2148093587}
!25 = !{i8 0, i8 2}
!26 = !{i64 2154667812, i64 2154668300, i64 2154667849, i64 2154667905, i64 2154667939, i64 2154667963, i64 2154668004, i64 2154668025, i64 2154668053, i64 2154668087}
