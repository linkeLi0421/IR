; ModuleID = '/llk/IR/drivers/scsi/scsi_error.c_pt.bc'
source_filename = "../drivers/scsi/scsi_error.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_schedule_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_schedule_eh\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_schedule_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_block_when_processing_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_block_when_processing_errors\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_block_when_processing_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_check_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_check_sense\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_check_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_eh_prep_cmnd:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_eh_prep_cmnd\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_eh_prep_cmnd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_eh_restore_cmnd:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_eh_restore_cmnd\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_eh_restore_cmnd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_eh_finish_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_eh_finish_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_eh_finish_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_eh_get_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_eh_get_sense\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_eh_get_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_eh_ready_devs:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_eh_ready_devs\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_eh_ready_devs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_eh_flush_done_q:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_eh_flush_done_q\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_eh_flush_done_q:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_report_bus_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_report_bus_reset\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_report_bus_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_report_device_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_report_device_reset\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_report_device_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_command_normalize_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_command_normalize_sense\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_command_normalize_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_get_sense_info_fld:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_get_sense_info_fld\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_get_sense_info_fld:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scsi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.18, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.19, %union.anon.20, %union.anon.21, %union.anon.26, ptr, ptr }
%union.anon.18 = type { %struct.list_head }
%union.anon.19 = type { %struct.hlist_node }
%union.anon.20 = type { %struct.rb_node }
%union.anon.21 = type { %struct.anon.25 }
%struct.anon.25 = type { i32, %struct.list_head, ptr }
%union.anon.26 = type { i64, [8 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.scsi_device_handler = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_eh_save = type { i32, i32, i32, i32, i32, i8, i8, ptr, %struct.scsi_data_buffer, [16 x i8], %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.71, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.52 }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.71 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }

@__kstrtab_scsi_schedule_eh = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_schedule_eh = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_schedule_eh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_schedule_eh to i32), ptr @__kstrtab_scsi_schedule_eh, ptr @__kstrtabns_scsi_schedule_eh }, section "___ksymtab_gpl+scsi_schedule_eh", align 4
@scsi_eh_scmd_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [26 x i8] c"drivers/scsi/scsi_error.c\00", align 1
@scsi_eh_scmd_add.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_scsi_block_when_processing_errors = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_block_when_processing_errors = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_block_when_processing_errors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_block_when_processing_errors to i32), ptr @__kstrtab_scsi_block_when_processing_errors, ptr @__kstrtabns_scsi_block_when_processing_errors }, section "___ksymtab+scsi_block_when_processing_errors", align 4
@__kstrtab_scsi_check_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_check_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_check_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_check_sense to i32), ptr @__kstrtab_scsi_check_sense, ptr @__kstrtabns_scsi_check_sense }, section "___ksymtab_gpl+scsi_check_sense", align 4
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@__kstrtab_scsi_eh_prep_cmnd = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_eh_prep_cmnd = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_eh_prep_cmnd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_eh_prep_cmnd to i32), ptr @__kstrtab_scsi_eh_prep_cmnd, ptr @__kstrtabns_scsi_eh_prep_cmnd }, section "___ksymtab+scsi_eh_prep_cmnd", align 4
@__kstrtab_scsi_eh_restore_cmnd = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_eh_restore_cmnd = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_eh_restore_cmnd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_eh_restore_cmnd to i32), ptr @__kstrtab_scsi_eh_restore_cmnd, ptr @__kstrtabns_scsi_eh_restore_cmnd }, section "___ksymtab+scsi_eh_restore_cmnd", align 4
@__kstrtab_scsi_eh_finish_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_eh_finish_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_eh_finish_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_eh_finish_cmd to i32), ptr @__kstrtab_scsi_eh_finish_cmd, ptr @__kstrtabns_scsi_eh_finish_cmd }, section "___ksymtab+scsi_eh_finish_cmd", align 4
@__kstrtab_scsi_eh_get_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_eh_get_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_eh_get_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_eh_get_sense to i32), ptr @__kstrtab_scsi_eh_get_sense, ptr @__kstrtabns_scsi_eh_get_sense }, section "___ksymtab_gpl+scsi_eh_get_sense", align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"reservation conflict\0A\00", align 1
@__kstrtab_scsi_eh_ready_devs = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_eh_ready_devs = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_eh_ready_devs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_eh_ready_devs to i32), ptr @__kstrtab_scsi_eh_ready_devs, ptr @__kstrtabns_scsi_eh_ready_devs }, section "___ksymtab_gpl+scsi_eh_ready_devs", align 4
@__kstrtab_scsi_eh_flush_done_q = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_eh_flush_done_q = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_eh_flush_done_q = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_eh_flush_done_q to i32), ptr @__kstrtab_scsi_eh_flush_done_q, ptr @__kstrtabns_scsi_eh_flush_done_q }, section "___ksymtab+scsi_eh_flush_done_q", align 4
@__kstrtab_scsi_report_bus_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_report_bus_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_report_bus_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_report_bus_reset to i32), ptr @__kstrtab_scsi_report_bus_reset, ptr @__kstrtabns_scsi_report_bus_reset }, section "___ksymtab+scsi_report_bus_reset", align 4
@__kstrtab_scsi_report_device_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_report_device_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_report_device_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_report_device_reset to i32), ptr @__kstrtab_scsi_report_device_reset, ptr @__kstrtabns_scsi_report_device_reset }, section "___ksymtab+scsi_report_device_reset", align 4
@__kstrtab_scsi_command_normalize_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_command_normalize_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_command_normalize_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_command_normalize_sense to i32), ptr @__kstrtab_scsi_command_normalize_sense, ptr @__kstrtabns_scsi_command_normalize_sense }, section "___ksymtab+scsi_command_normalize_sense", align 4
@__kstrtab_scsi_get_sense_info_fld = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_get_sense_info_fld = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_get_sense_info_fld = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_get_sense_info_fld to i32), ptr @__kstrtab_scsi_get_sense_info_fld, ptr @__kstrtabns_scsi_get_sense_info_fld }, section "___ksymtab+scsi_get_sense_info_fld", align 4
@__tracepoint_scsi_eh_wakeup = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_scsi_dispatch_cmd_timeout = external dso_local global %struct.tracepoint, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Inquiry data has changed\00", align 1
@.str.7 = private unnamed_addr constant [154 x i8] c"Warning! Received an indication that the LUN assignments on this target have changed. The Linux SCSI layer does not automatically remap LUN assignments.\0A\00", align 1
@.str.8 = private unnamed_addr constant [161 x i8] c"Warning! Received an indication that the operating parameters on this target have changed. The Linux SCSI layer does not automatically adjust these parameters.\0A\00", align 1
@.str.9 = private unnamed_addr constant [90 x i8] c"Warning! Received an indication that the LUN reached a thin provisioning soft threshold.\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Power-on or device reset occurred\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Mode parameters changed\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Asymmetric access state changed\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Capacity data has changed\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Parameters changed\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@scsi_eh_try_stu.stu_command = internal global [6 x i8] c"\1B\00\00\00\01\00", align 1
@scsi_eh_tur.tur_command = internal global [6 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"Device offlined - not ready after error recovery\0A\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_scsi_block_when_processing_errors, ptr @__ksymtab_scsi_check_sense, ptr @__ksymtab_scsi_command_normalize_sense, ptr @__ksymtab_scsi_eh_finish_cmd, ptr @__ksymtab_scsi_eh_flush_done_q, ptr @__ksymtab_scsi_eh_get_sense, ptr @__ksymtab_scsi_eh_prep_cmnd, ptr @__ksymtab_scsi_eh_ready_devs, ptr @__ksymtab_scsi_eh_restore_cmnd, ptr @__ksymtab_scsi_get_sense_info_fld, ptr @__ksymtab_scsi_report_bus_reset, ptr @__ksymtab_scsi_report_device_reset, ptr @__ksymtab_scsi_schedule_eh], section "llvm.metadata"
@switch.table.scsi_send_eh_cmnd = private unnamed_addr constant [6 x i32] [i32 8193, i32 8194, i32 8195, i32 8195, i32 8195, i32 8193], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_eh_wakeup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @scsi_host_busy(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_eh_wakeup, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #13
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !8
  %21 = tail call i32 @__traceiter_scsi_eh_wakeup(ptr noundef null, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  br label %22

22:                                               ; preds = %20, %9, %6
  %23 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @wake_up_process(ptr noundef %24) #13
  br label %26

26:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_host_busy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_schedule_eh(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %5 = tail call i32 @scsi_host_set_state(ptr noundef %0, i32 noundef 5) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @scsi_host_set_state(ptr noundef %0, i32 noundef 6) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 16
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 8
  %14 = tail call i32 @scsi_host_busy(ptr noundef %0) #13
  %15 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 15
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %10
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_eh_wakeup, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !8
  %33 = tail call i32 @__traceiter_scsi_eh_wakeup(ptr noundef null, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  br label %34

34:                                               ; preds = %32, %21, %18
  %35 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @wake_up_process(ptr noundef %36) #13
  br label %38

38:                                               ; preds = %34, %10, %7
  %39 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %4) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_host_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmd_eh_abort_handler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -56
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 19
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 18
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = add i32 %11, %7
  %16 = sub i32 %14, %15
  %17 = icmp slt i32 %16, 0
  %18 = icmp sgt i32 %11, -1
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %124

20:                                               ; preds = %13, %9, %1
  %21 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 11
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.scsi_host_template, ptr %22, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %124, label %26

26:                                               ; preds = %20
  %27 = tail call i32 %24(ptr noundef %2) #13
  %28 = icmp eq i32 %27, 8194
  br i1 %28, label %29, label %124

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %0, i32 164
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, -16711681
  %33 = or i32 %32, 196608
  store i32 %33, ptr %30, align 4
  %34 = load i32, ptr %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 18
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = add i32 %38, %34
  %43 = sub i32 %41, %42
  %44 = icmp slt i32 %43, 0
  %45 = icmp sgt i32 %38, -1
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %124

47:                                               ; preds = %40, %36, %29
  %48 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #13
  %51 = getelementptr i8, ptr %0, i32 -8
  %52 = getelementptr i8, ptr %0, i32 -4
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %51, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  store volatile ptr %51, ptr %51, align 4
  store ptr %51, ptr %52, align 4
  %56 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 6
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %59, label %68

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 7
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 18
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 0, ptr %6, align 4
  br label %68

68:                                               ; preds = %67, %63, %59, %47
  %69 = load ptr, ptr %48, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %69, i32 noundef %50) #13
  %70 = load i32, ptr %30, align 4
  %71 = lshr i32 %70, 16
  %72 = trunc i32 %71 to i8
  switch i8 %72, label %88 [
    i8 11, label %84
    i8 3, label %91
    i8 2, label %73
    i8 6, label %77
    i8 7, label %81
  ]

73:                                               ; preds = %68
  %74 = getelementptr i8, ptr %0, i32 -212
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 512
  br label %100

77:                                               ; preds = %68
  %78 = getelementptr i8, ptr %0, i32 -212
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 256
  br label %100

81:                                               ; preds = %68
  %82 = trunc i32 %70 to i8
  %83 = icmp eq i8 %82, 24
  br i1 %83, label %103, label %84

84:                                               ; preds = %81, %68
  %85 = getelementptr i8, ptr %0, i32 -212
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 1024
  br label %100

88:                                               ; preds = %68
  %89 = and i32 %70, -2147483394
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %103

91:                                               ; preds = %88, %68
  %92 = getelementptr i8, ptr %0, i32 -212
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 256
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %91
  %97 = and i32 %93, 254
  %98 = icmp eq i32 %97, 34
  %99 = zext i1 %98 to i32
  br label %100

100:                                              ; preds = %96, %84, %77, %73
  %101 = phi i32 [ %87, %84 ], [ %80, %77 ], [ %76, %73 ], [ %99, %96 ]
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %100, %88, %81
  %104 = getelementptr i8, ptr %0, i32 68
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %112, label %107

107:                                              ; preds = %103
  %108 = getelementptr i8, ptr %0, i32 64
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 4
  %111 = icmp sgt i32 %110, %105
  br i1 %111, label %123, label %112

112:                                              ; preds = %107, %103
  %113 = load ptr, ptr %3, align 4
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %struct.Scsi_Host, ptr %114, i32 0, i32 11
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.scsi_host_template, ptr %116, i32 0, i32 30
  %118 = load ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %112
  %121 = tail call zeroext i1 %118(ptr noundef %2) #13
  br i1 %121, label %122, label %123

122:                                              ; preds = %120, %112
  tail call void @scsi_queue_insert(ptr noundef %2, i32 noundef 4183) #13
  br label %134

123:                                              ; preds = %120, %107, %100, %91
  tail call void @scsi_finish_command(ptr noundef %2) #13
  br label %134

124:                                              ; preds = %40, %26, %20, %13
  %125 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 4
  %126 = load ptr, ptr %125, align 4
  %127 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %126) #13
  %128 = getelementptr i8, ptr %0, i32 -8
  %129 = getelementptr i8, ptr %0, i32 -4
  %130 = load ptr, ptr %129, align 4
  %131 = load ptr, ptr %128, align 4
  %132 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  store ptr %130, ptr %132, align 4
  store volatile ptr %131, ptr %130, align 4
  store volatile ptr %128, ptr %128, align 4
  store ptr %128, ptr %129, align 4
  %133 = load ptr, ptr %125, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %133, i32 noundef %127) #13
  tail call void @scsi_eh_scmd_add(ptr noundef %2)
  br label %134

134:                                              ; preds = %124, %123, %122
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @scsi_noretry_cmd(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 16
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %21 [
    i8 11, label %17
    i8 3, label %24
    i8 2, label %6
    i8 6, label %10
    i8 7, label %14
  ]

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -156
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 512
  br label %33

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -156
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 256
  br label %33

14:                                               ; preds = %1
  %15 = trunc i32 %3 to i8
  %16 = icmp eq i8 %15, 24
  br i1 %16, label %33, label %17

17:                                               ; preds = %14, %1
  %18 = getelementptr i8, ptr %0, i32 -156
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1024
  br label %33

21:                                               ; preds = %1
  %22 = and i32 %3, -2147483394
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %33

24:                                               ; preds = %21, %1
  %25 = getelementptr i8, ptr %0, i32 -156
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = and i32 %26, 254
  %31 = icmp eq i32 %30, 34
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %29, %24, %21, %17, %14, %10, %6
  %34 = phi i32 [ %20, %17 ], [ %13, %10 ], [ %9, %6 ], [ 0, %14 ], [ 0, %21 ], [ 1, %24 ], [ %32, %29 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_queue_insert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_finish_command(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_eh_scmd_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @scsi_eh_scmd_add.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %1
  store i1 true, ptr @scsi_eh_scmd_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 298, i32 noundef 9, ptr noundef null) #13
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #13
  %16 = tail call i32 @scsi_host_set_state(ptr noundef %4, i32 noundef 5) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = tail call i32 @scsi_host_set_state(ptr noundef %4, i32 noundef 6) #13
  %20 = icmp ne i32 %19, 0
  %21 = load i1, ptr @scsi_eh_scmd_add.__already_done.1, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !10

24:                                               ; preds = %18
  store i1 true, ptr @scsi_eh_scmd_add.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 303, i32 noundef 9, ptr noundef null) #13
  br label %25

25:                                               ; preds = %24, %18, %12
  %26 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 18
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 19
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load volatile i32, ptr @jiffies, align 64
  store i32 %34, ptr %30, align 4
  br label %35

35:                                               ; preds = %33, %29, %25
  %36 = getelementptr i8, ptr %0, i32 -156
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 254
  %39 = icmp eq i32 %38, 34
  br i1 %39, label %52, label %40

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %0, i32 -168
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.request_queue, ptr %42, i32 0, i32 15
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.gendisk, ptr %44, i32 0, i32 10
  %46 = load ptr, ptr %45, align 8
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.scsi_driver, ptr %47, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  tail call void %49(ptr noundef %0) #13
  br label %52

52:                                               ; preds = %51, %40, %35
  %53 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 2
  %54 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 7
  %55 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 7, i32 1
  %56 = load ptr, ptr %55, align 4
  store ptr %53, ptr %55, align 4
  store ptr %54, ptr %53, align 4
  %57 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 2, i32 1
  store ptr %56, ptr %57, align 4
  store volatile ptr %53, ptr %56, align 4
  %58 = load ptr, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %15) #13
  %59 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %59, ptr noundef nonnull @scsi_eh_inc_host_failed) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_eh_inc_host_failed(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -56
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #13
  %8 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  %11 = tail call i32 @scsi_host_busy(ptr noundef %4) #13
  %12 = load i32, ptr %8, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_eh_wakeup, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = tail call ptr @llvm.thread.pointer() #13
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !8
  %29 = tail call i32 @__traceiter_scsi_eh_wakeup(ptr noundef null, ptr noundef %4) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  br label %30

30:                                               ; preds = %28, %17, %14
  %31 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @wake_up_process(ptr noundef %32) #13
  br label %34

34:                                               ; preds = %30, %1
  %35 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_times_out(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.request, ptr %0, i32 1
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_timeout, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %20 = tail call i32 @__traceiter_scsi_dispatch_cmd_timeout(ptr noundef null, ptr noundef %2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %21

21:                                               ; preds = %19, %8, %1
  %22 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 18
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 19
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load volatile i32, ptr @jiffies, align 64
  store i32 %30, ptr %26, align 4
  br label %31

31:                                               ; preds = %29, %25, %21
  %32 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 11
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.scsi_host_template, ptr %33, i32 0, i32 29
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = tail call i32 %35(ptr noundef %2) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %92

40:                                               ; preds = %37, %31
  %41 = getelementptr %struct.request, ptr %0, i32 2, i32 12, i32 0, i32 1
  %42 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %41) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %92

44:                                               ; preds = %40
  %45 = load ptr, ptr %3, align 4
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr %struct.request, ptr %0, i32 1, i32 23
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = getelementptr %struct.request, ptr %0, i32 1, i32 12
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %87, label %56, !prof !13

56:                                               ; preds = %51
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_error.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %59) #13
  %61 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 18
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 19
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load volatile i32, ptr @jiffies, align 64
  store i32 %69, ptr %65, align 4
  br label %70

70:                                               ; preds = %68, %64, %57
  %71 = getelementptr %struct.request, ptr %0, i32 1, i32 10
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %75, label %74, !prof !13

74:                                               ; preds = %70
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_error.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 6
  %77 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 6, i32 1
  %78 = load ptr, ptr %77, align 4
  store ptr %71, ptr %77, align 4
  store ptr %76, ptr %71, align 4
  %79 = getelementptr %struct.request, ptr %0, i32 1, i32 11
  store ptr %78, ptr %79, align 4
  store volatile ptr %71, ptr %78, align 4
  %80 = load ptr, ptr %58, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %80, i32 noundef %60) #13
  %81 = load i32, ptr %47, align 4
  %82 = or i32 %81, 2
  store i32 %82, ptr %47, align 4
  %83 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 39
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr %struct.request, ptr %0, i32 1, i32 12
  %86 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %84, ptr noundef %85, i32 noundef 1) #13
  br label %92

87:                                               ; preds = %51
  %88 = getelementptr %struct.request, ptr %0, i32 2, i32 11
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, -16711681
  %91 = or i32 %90, 196608
  store i32 %91, ptr %88, align 4
  tail call void @scsi_eh_scmd_add(ptr noundef %2)
  br label %92

92:                                               ; preds = %87, %75, %40, %37
  %93 = phi i32 [ 1, %40 ], [ 0, %87 ], [ %38, %37 ], [ 0, %75 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_block_when_processing_errors(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 48
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -5
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 36
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 16
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %8, %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !16
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #13
  br label %14

14:                                               ; preds = %28, %13
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 10
  %17 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %2, i32 noundef 2) #13
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 48
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -5
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 36
  %25 = load i16, ptr %24, align 8
  %26 = and i16 %25, 16
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %14
  call void @schedule() #13
  br label %14

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 10
  call void @finish_wait(ptr noundef %30, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  br label %31

31:                                               ; preds = %29, %8
  %32 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 68
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, -2
  %35 = icmp ne i32 %34, 6
  %36 = icmp ne i32 %33, 4
  %37 = and i1 %36, %35
  %38 = zext i1 %37 to i32
  ret i32 %38
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_check_sense(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.scsi_sense_hdr, align 8
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 0, ptr %2, align 8, !annotation !16
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %6 = load ptr, ptr %5, align 4
  %7 = call zeroext i1 @scsi_normalize_sense(ptr noundef %6, i32 noundef 96, ptr noundef nonnull %2) #13
  br i1 %7, label %8, label %225

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 6
  br i1 %11, label %12, label %68

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 2
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 63
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 3
  %18 = load i8, ptr %17, align 1
  switch i8 %18, label %25 [
    i8 3, label %26
    i8 14, label %19
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 37
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 7
  %23 = load i8, ptr %22, align 4
  %24 = or i8 %23, 16
  store i8 %24, ptr %22, align 4
  br label %26

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %19, %16
  %27 = phi ptr [ @.str.8, %25 ], [ @.str.7, %19 ], [ @.str.6, %16 ]
  %28 = phi i32 [ 9, %25 ], [ 6, %19 ], [ 2, %16 ]
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %4, ptr noundef null, ptr noundef nonnull %27) #13
  %29 = load i8, ptr %13, align 2
  br label %30

30:                                               ; preds = %26, %12
  %31 = phi i8 [ %29, %26 ], [ %14, %12 ]
  %32 = phi i32 [ %28, %26 ], [ 9, %12 ]
  %33 = icmp eq i8 %31, 56
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 7
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %4, ptr noundef null, ptr noundef nonnull @.str.9) #13
  %39 = load i8, ptr %13, align 2
  br label %40

40:                                               ; preds = %38, %30
  %41 = phi i8 [ %39, %38 ], [ %31, %30 ]
  %42 = phi i32 [ 4, %38 ], [ %32, %30 ]
  %43 = icmp eq i8 %41, 41
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %4, ptr noundef null, ptr noundef nonnull @.str.10) #13
  %45 = load i8, ptr %13, align 2
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i8 [ %45, %44 ], [ %41, %40 ]
  %48 = phi i32 [ 8, %44 ], [ %42, %40 ]
  %49 = icmp eq i8 %47, 42
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 3
  %52 = load i8, ptr %51, align 1
  switch i8 %52, label %55 [
    i8 1, label %59
    i8 6, label %53
    i8 9, label %54
  ]

53:                                               ; preds = %50
  br label %59

54:                                               ; preds = %50
  br label %59

55:                                               ; preds = %50
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %4, ptr noundef null, ptr noundef nonnull @.str.14) #13
  br label %56

56:                                               ; preds = %55, %46, %34
  %57 = phi i32 [ %48, %46 ], [ %48, %55 ], [ %32, %34 ]
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %68, label %62

59:                                               ; preds = %54, %53, %50
  %60 = phi ptr [ @.str.13, %54 ], [ @.str.12, %53 ], [ @.str.11, %50 ]
  %61 = phi i32 [ 3, %54 ], [ 7, %53 ], [ 5, %50 ]
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.5, ptr noundef %4, ptr noundef null, ptr noundef nonnull %60) #13
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %59 ]
  %64 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 47
  call void @_set_bit(i32 noundef %63, ptr noundef %64) #13
  %65 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 49
  %66 = load ptr, ptr @system_wq, align 4
  %67 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %66, ptr noundef %65) #13
  br label %68

68:                                               ; preds = %62, %56, %8
  %69 = load i8, ptr %2, align 8
  %70 = icmp ugt i8 %69, 111
  %71 = and i8 %69, 1
  %72 = icmp ne i8 %71, 0
  %73 = and i1 %70, %72
  br i1 %73, label %225, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 58
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.scsi_device_handler, ptr %76, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = call i32 %80(ptr noundef %4, ptr noundef nonnull %2) #13
  %84 = icmp eq i32 %83, 8200
  br i1 %84, label %85, label %225

85:                                               ; preds = %82, %78, %74
  %86 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %87 = load ptr, ptr %86, align 4
  %88 = load i8, ptr %87, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 13
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, 1
  br i1 %93, label %94, label %225

94:                                               ; preds = %90, %85
  %95 = load i8, ptr %2, align 8
  %96 = icmp eq i8 %95, 112
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load ptr, ptr %5, align 4
  %99 = getelementptr i8, ptr %98, i32 2
  %100 = load i8, ptr %99, align 1
  %101 = icmp ult i8 %100, 32
  br i1 %101, label %115, label %225

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 7
  %104 = load i8, ptr %103, align 1
  %105 = icmp ugt i8 %104, 3
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load ptr, ptr %5, align 4
  %108 = getelementptr i8, ptr %107, i32 8
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %109, 4
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = getelementptr i8, ptr %107, i32 11
  %113 = load i8, ptr %112, align 1
  %114 = icmp ult i8 %113, 32
  br i1 %114, label %115, label %225

115:                                              ; preds = %111, %106, %102, %97
  %116 = load i8, ptr %9, align 1
  switch i8 %116, label %225 [
    i8 5, label %217
    i8 4, label %206
    i8 11, label %117
    i8 2, label %137
    i8 6, label %137
    i8 7, label %180
    i8 10, label %193
    i8 13, label %193
    i8 14, label %193
    i8 8, label %193
    i8 3, label %198
  ]

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 2
  %119 = load i8, ptr %118, align 2
  switch i8 %119, label %125 [
    i8 16, label %225
    i8 68, label %120
  ]

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 39
  %122 = load i64, ptr %121, align 8
  %123 = and i64 %122, 4294967296
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %136, label %225

125:                                              ; preds = %117
  %126 = icmp eq i8 %119, -63
  %127 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 3
  %128 = load i8, ptr %127, align 1
  %129 = icmp eq i8 %128, 1
  %130 = select i1 %126, i1 %129, i1 false
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 39
  %133 = load i64, ptr %132, align 8
  %134 = and i64 %133, 8589934592
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %225

136:                                              ; preds = %131, %125, %120
  br label %225

137:                                              ; preds = %115, %115
  %138 = load ptr, ptr %3, align 4
  %139 = getelementptr inbounds %struct.scsi_device, ptr %138, i32 0, i32 41
  %140 = load i64, ptr %139, align 4
  %141 = and i64 %140, 16384
  %142 = icmp eq i64 %141, 0
  %143 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 2
  %144 = load i8, ptr %143, align 2
  br i1 %142, label %145, label %148

145:                                              ; preds = %137
  %146 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 3
  %147 = load i8, ptr %146, align 1
  br label %156

148:                                              ; preds = %137
  %149 = icmp ne i8 %144, 40
  %150 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 3
  %151 = load i8, ptr %150, align 1
  %152 = icmp ne i8 %151, 0
  %153 = select i1 %149, i1 true, i1 %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = and i64 %140, -16385
  store i64 %155, ptr %139, align 4
  br label %225

156:                                              ; preds = %148, %145
  %157 = phi i8 [ %147, %145 ], [ 0, %148 ]
  %158 = phi i8 [ %144, %145 ], [ 40, %148 ]
  %159 = getelementptr inbounds %struct.scsi_device, ptr %138, i32 0, i32 37
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.scsi_target, ptr %160, i32 0, i32 7
  %162 = load i8, ptr %161, align 4
  %163 = and i8 %162, 16
  %164 = icmp ne i8 %163, 0
  %165 = icmp eq i8 %158, 63
  %166 = select i1 %164, i1 %165, i1 false
  %167 = icmp eq i8 %157, 14
  %168 = select i1 %166, i1 %167, i1 false
  br i1 %168, label %225, label %169

169:                                              ; preds = %156
  %170 = icmp eq i8 %158, 4
  %171 = icmp eq i8 %157, 1
  %172 = select i1 %170, i1 %171, i1 false
  br i1 %172, label %225, label %173

173:                                              ; preds = %169
  %174 = and i64 %140, 134217728
  %175 = icmp ne i64 %174, 0
  %176 = select i1 %175, i1 %170, i1 false
  %177 = icmp eq i8 %157, 2
  %178 = select i1 %176, i1 %177, i1 false
  %179 = select i1 %178, i32 8195, i32 8194
  br label %225

180:                                              ; preds = %115
  %181 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 2
  %182 = load i8, ptr %181, align 2
  %183 = icmp eq i8 %182, 39
  %184 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 3
  %185 = load i8, ptr %184, align 1
  %186 = icmp eq i8 %185, 7
  %187 = select i1 %183, i1 %186, i1 false
  br i1 %187, label %188, label %193

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %190 = load i32, ptr %189, align 4
  %191 = and i32 %190, -16711681
  %192 = or i32 %191, 1179648
  store i32 %192, ptr %189, align 4
  br label %225

193:                                              ; preds = %180, %115, %115, %115, %115
  %194 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %195 = load i32, ptr %194, align 4
  %196 = and i32 %195, -16711681
  %197 = or i32 %196, 1048576
  store i32 %197, ptr %194, align 4
  br label %225

198:                                              ; preds = %115
  %199 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 2
  %200 = load i8, ptr %199, align 2
  switch i8 %200, label %225 [
    i8 20, label %201
    i8 19, label %201
    i8 17, label %201
  ]

201:                                              ; preds = %198, %198, %198
  %202 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %203 = load i32, ptr %202, align 4
  %204 = and i32 %203, -16711681
  %205 = or i32 %204, 1245184
  store i32 %205, ptr %202, align 4
  br label %225

206:                                              ; preds = %115
  %207 = load ptr, ptr %3, align 4
  %208 = getelementptr inbounds %struct.scsi_device, ptr %207, i32 0, i32 41
  %209 = load i64, ptr %208, align 4
  %210 = and i64 %209, 17179869184
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %214 = load i32, ptr %213, align 4
  %215 = and i32 %214, -16711681
  %216 = or i32 %215, 1048576
  store i32 %216, ptr %213, align 4
  br label %217

217:                                              ; preds = %212, %115
  %218 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 2
  %219 = load i8, ptr %218, align 2
  switch i8 %219, label %225 [
    i8 39, label %220
    i8 38, label %220
    i8 36, label %220
    i8 34, label %220
    i8 33, label %220
    i8 32, label %220
  ]

220:                                              ; preds = %217, %217, %217, %217, %217, %217
  %221 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %222 = load i32, ptr %221, align 4
  %223 = and i32 %222, -16711681
  %224 = or i32 %223, 1048576
  store i32 %224, ptr %221, align 4
  br label %225

225:                                              ; preds = %220, %217, %206, %201, %198, %193, %188, %173, %169, %156, %154, %136, %131, %120, %117, %115, %111, %97, %90, %82, %68, %1
  %226 = phi i32 [ 8194, %201 ], [ 8194, %193 ], [ 8194, %188 ], [ 8193, %154 ], [ 8193, %136 ], [ %83, %82 ], [ 8195, %1 ], [ 8193, %68 ], [ 8194, %90 ], [ 8194, %97 ], [ 8194, %111 ], [ 8194, %117 ], [ 8198, %120 ], [ 8198, %131 ], [ 8193, %156 ], [ 8193, %169 ], [ %179, %173 ], [ 8193, %198 ], [ 8198, %206 ], [ 8194, %217 ], [ 8194, %220 ], [ 8194, %115 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i32 %226
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @scsi_command_normalize_sense(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %4 = load ptr, ptr %3, align 4
  %5 = tail call zeroext i1 @scsi_normalize_sense(ptr noundef %4, i32 noundef 96, ptr noundef %1) #13
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_eh_done(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @complete(ptr noundef nonnull %6) #13
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_eh_prep_cmnd(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  %9 = load i16, ptr %8, align 4
  %10 = trunc i16 %9 to i8
  %11 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 5
  store i8 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 7
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 15
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %18, ptr noundef align 4 dereferenceable(16) %19, i32 16, i1 false)
  %20 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %1, align 4
  %22 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 19
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 10
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 6
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  store i8 0, ptr %28, align 4
  store i32 0, ptr %31, align 4
  %34 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 9
  store ptr %34, ptr %12, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %34, i8 0, i32 16, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %19, i8 0, i32 16, i1 false)
  store i32 0, ptr %20, align 4
  store i32 0, ptr %22, align 4
  %35 = icmp eq i32 %4, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %5
  %37 = tail call i32 @llvm.umin.i32(i32 %4, i32 96)
  %38 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 10
  %40 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %41 = load ptr, ptr %40, align 4
  tail call void @sg_init_one(ptr noundef %39, ptr noundef %41, i32 noundef %37) #13
  store ptr %39, ptr %19, align 4
  store i32 2, ptr %15, align 4
  %42 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 0, i32 2
  store i32 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 0, i32 1
  store i32 1, ptr %43, align 4
  %44 = load ptr, ptr %12, align 4
  store i8 3, ptr %44, align 1
  %45 = load i32, ptr %38, align 4
  %46 = trunc i32 %45 to i8
  %47 = load ptr, ptr %12, align 4
  %48 = getelementptr i8, ptr %47, i32 4
  store i8 %46, ptr %48, align 1
  br label %56

49:                                               ; preds = %5
  store i32 3, ptr %15, align 4
  %50 = icmp eq ptr %2, null
  br i1 %50, label %64, label %51

51:                                               ; preds = %49
  %52 = icmp sgt i32 %3, 16
  br i1 %52, label %53, label %54, !prof !10

53:                                               ; preds = %51
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_error.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1036, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

54:                                               ; preds = %51
  %55 = load ptr, ptr %12, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %55, ptr nonnull align 1 %2, i32 %3, i1 false)
  br label %56

56:                                               ; preds = %54, %36
  %57 = load ptr, ptr %12, align 4
  %58 = load i8, ptr %57, align 1
  %59 = lshr i8 %58, 5
  %60 = zext i8 %59 to i32
  %61 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i16
  store i16 %63, ptr %8, align 4
  br label %64

64:                                               ; preds = %56, %49
  store i32 0, ptr %25, align 4
  %65 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 23
  %66 = load i8, ptr %65, align 1
  %67 = add i8 %66, -4
  %68 = icmp ult i8 %67, -3
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %12, align 4
  %71 = getelementptr i8, ptr %70, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = and i8 %72, 31
  %74 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 18
  %75 = load i64, ptr %74, align 8
  %76 = trunc i64 %75 to i8
  %77 = shl i8 %76, 5
  %78 = or i8 %77, %73
  store i8 %78, ptr %71, align 1
  br label %79

79:                                               ; preds = %69, %64
  %80 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %81 = load ptr, ptr %80, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %81, i8 0, i32 96, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @scsi_eh_restore_cmnd(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i16
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  store i16 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 15
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17
  %14 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %13, ptr noundef align 4 dereferenceable(16) %14, i32 16, i1 false)
  %15 = load i32, ptr %1, align 4
  %16 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 19
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 6
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 10
  store i8 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.scsi_eh_save, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 5
  store i32 %27, ptr %28, align 4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_eh_finish_cmd(ptr noundef %0, ptr noundef %1) #7 {
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %3, ptr %8, align 4
  store ptr %1, ptr %3, align 4
  store ptr %9, ptr %4, align 4
  store volatile ptr %3, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_eh_get_sense(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %67, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  br label %7

7:                                                ; preds = %65, %5
  %8 = phi ptr [ %3, %5 ], [ %10, %65 ]
  %9 = getelementptr i8, ptr %8, i32 -48
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr i8, ptr %8, i32 60
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %8, i32 124
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 112
  %20 = icmp eq i8 %19, 112
  br i1 %20, label %65, label %21

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %8, i32 -4
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 19
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 18
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = add i32 %30, %26
  %35 = sub i32 %33, %34
  %36 = icmp slt i32 %35, 0
  %37 = icmp sgt i32 %30, -1
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %67

39:                                               ; preds = %32, %28, %21
  %40 = getelementptr i8, ptr %8, i32 172
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -2147483394
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.scsi_device, ptr %23, i32 0, i32 40
  %46 = load i32, ptr %45, align 8
  %47 = tail call fastcc i32 @scsi_send_eh_cmnd(ptr noundef %9, ptr noundef null, i32 noundef 0, i32 noundef %46, i32 noundef -1) #13
  %48 = icmp eq i32 %47, 8194
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = tail call i32 @scsi_decide_disposition(ptr noundef %9)
  switch i32 %50, label %65 [
    i32 8194, label %51
    i32 8193, label %59
  ]

51:                                               ; preds = %49
  %52 = getelementptr i8, ptr %8, i32 76
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, ptr %52, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ 1, %55 ], [ %53, %51 ]
  %58 = getelementptr i8, ptr %8, i32 72
  store i32 %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %49
  %60 = getelementptr i8, ptr %8, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %8, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %62, ptr %61, align 4
  %64 = load ptr, ptr %6, align 4
  store ptr %8, ptr %6, align 4
  store ptr %1, ptr %8, align 4
  store ptr %64, ptr %60, align 4
  store volatile ptr %8, ptr %64, align 4
  br label %65

65:                                               ; preds = %59, %49, %44, %39, %15, %7
  %66 = icmp eq ptr %10, %0
  br i1 %66, label %67, label %7

67:                                               ; preds = %65, %32, %2
  %68 = load volatile ptr, ptr %0, align 4
  %69 = icmp eq ptr %68, %0
  %70 = zext i1 %69 to i32
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_decide_disposition(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 68
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %6 [
    i32 7, label %106
    i32 6, label %106
    i32 4, label %106
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 16
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %34 [
    i8 10, label %11
    i8 0, label %35
    i8 5, label %13
    i8 1, label %106
    i8 4, label %106
    i8 11, label %62
    i8 12, label %21
    i8 13, label %22
    i8 14, label %62
    i8 15, label %106
    i8 20, label %106
    i8 7, label %23
    i8 2, label %62
    i8 6, label %62
    i8 3, label %26
    i8 8, label %106
  ]

11:                                               ; preds = %6
  %12 = and i32 %8, -16711681
  store i32 %12, ptr %7, align 4
  br label %106

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %106, label %18

18:                                               ; preds = %13
  %19 = and i32 %8, -16711681
  %20 = or i32 %19, 196608
  store i32 %20, ptr %7, align 4
  br label %106

21:                                               ; preds = %6
  br label %106

22:                                               ; preds = %6
  br label %106

23:                                               ; preds = %6
  %24 = trunc i32 %8 to i8
  %25 = icmp eq i8 %24, 24
  br i1 %25, label %57, label %62

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  %31 = icmp eq i8 %29, 18
  %32 = or i1 %30, %31
  %33 = select i1 %32, i32 8194, i32 8195
  br label %106

34:                                               ; preds = %6
  br label %106

35:                                               ; preds = %6
  %36 = trunc i32 %8 to i8
  switch i8 %36, label %61 [
    i8 40, label %37
    i8 8, label %106
    i8 0, label %38
    i8 34, label %52
    i8 64, label %62
    i8 2, label %53
    i8 4, label %56
    i8 16, label %56
    i8 20, label %56
    i8 48, label %56
    i8 24, label %57
  ]

37:                                               ; preds = %35
  tail call fastcc void @scsi_handle_queue_full(ptr noundef %3)
  br label %106

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %40 = load ptr, ptr %39, align 4
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, -96
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 37
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.scsi_target, ptr %45, i32 0, i32 7
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, -17
  store i8 %48, ptr %46, align 4
  %49 = load ptr, ptr %2, align 4
  br label %50

50:                                               ; preds = %43, %38
  %51 = phi ptr [ %49, %43 ], [ %3, %38 ]
  tail call fastcc void @scsi_handle_queue_ramp_up(ptr noundef %51)
  br label %52

52:                                               ; preds = %50, %35
  br label %106

53:                                               ; preds = %35
  %54 = tail call i32 @scsi_check_sense(ptr noundef %0)
  %55 = icmp eq i32 %54, 8193
  br i1 %55, label %62, label %106

56:                                               ; preds = %35, %35, %35, %35
  br label %106

57:                                               ; preds = %35, %23
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.3) #13
  %58 = load i32, ptr %7, align 4
  %59 = and i32 %58, -16711681
  %60 = or i32 %59, 1114112
  store i32 %60, ptr %7, align 4
  br label %106

61:                                               ; preds = %35
  br label %106

62:                                               ; preds = %53, %35, %23, %6, %6, %6, %6
  %63 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 9
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  %70 = icmp sgt i32 %69, %64
  br i1 %70, label %105, label %71

71:                                               ; preds = %66, %62
  %72 = load i32, ptr %7, align 4
  %73 = lshr i32 %72, 16
  %74 = trunc i32 %73 to i8
  switch i8 %74, label %90 [
    i8 11, label %86
    i8 3, label %93
    i8 2, label %75
    i8 6, label %79
    i8 7, label %83
  ]

75:                                               ; preds = %71
  %76 = getelementptr i8, ptr %0, i32 -156
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 512
  br label %102

79:                                               ; preds = %71
  %80 = getelementptr i8, ptr %0, i32 -156
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 256
  br label %102

83:                                               ; preds = %71
  %84 = trunc i32 %72 to i8
  %85 = icmp eq i8 %84, 24
  br i1 %85, label %106, label %86

86:                                               ; preds = %83, %71
  %87 = getelementptr i8, ptr %0, i32 -156
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 1024
  br label %102

90:                                               ; preds = %71
  %91 = and i32 %72, -2147483394
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %106

93:                                               ; preds = %90, %71
  %94 = getelementptr i8, ptr %0, i32 -156
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 256
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = and i32 %95, 254
  %100 = icmp eq i32 %99, 34
  %101 = zext i1 %100 to i32
  br label %102

102:                                              ; preds = %98, %86, %79, %75
  %103 = phi i32 [ %89, %86 ], [ %82, %79 ], [ %78, %75 ], [ %101, %98 ]
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102, %93, %66
  br label %106

106:                                              ; preds = %105, %102, %90, %83, %61, %57, %56, %53, %52, %37, %35, %34, %26, %22, %21, %18, %13, %11, %6, %6, %6, %6, %6, %1, %1, %1
  %107 = phi i32 [ 8195, %34 ], [ 8195, %61 ], [ 8194, %57 ], [ 8194, %56 ], [ 8194, %105 ], [ 8194, %52 ], [ 8198, %22 ], [ 8193, %21 ], [ 8194, %18 ], [ 8194, %11 ], [ 8194, %1 ], [ 8194, %13 ], [ 8194, %6 ], [ 8194, %6 ], [ 8194, %6 ], [ 8194, %6 ], [ 8194, %6 ], [ 8198, %35 ], [ 8198, %37 ], [ %54, %53 ], [ 8193, %102 ], [ %33, %26 ], [ 8193, %83 ], [ 8193, %90 ], [ 8194, %1 ], [ 8194, %1 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scsi_handle_queue_full(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.scsi_host_template, ptr %4, i32 0, i32 45
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @__scsi_iterate_devices(ptr noundef %2, ptr noundef null) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 17
  %14 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 16
  br label %15

15:                                               ; preds = %32, %12
  %16 = phi ptr [ %10, %12 ], [ %34, %32 ]
  %17 = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %13, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 16
  %23 = load i32, ptr %22, align 8
  %24 = load i32, ptr %14, align 8
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 9
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = add nsw i32 %29, -1
  %31 = tail call i32 @scsi_track_queue_full(ptr noundef nonnull %16, i32 noundef %30) #13
  br label %32

32:                                               ; preds = %26, %21, %15
  %33 = load ptr, ptr %0, align 8
  %34 = tail call ptr @__scsi_iterate_devices(ptr noundef %33, ptr noundef nonnull %16) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %15

36:                                               ; preds = %32, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scsi_handle_queue_ramp_up(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.scsi_host_template, ptr %4, i32 0, i32 45
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 9
  %11 = load i16, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 10
  %13 = load i16, ptr %12, align 2
  %14 = icmp ult i16 %11, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %9
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 14
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %18, %20
  %22 = sub i32 %16, %21
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %62, label %24

24:                                               ; preds = %15
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %20, %27
  %29 = sub i32 %25, %28
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %24
  %32 = tail call ptr @__scsi_iterate_devices(ptr noundef %2, ptr noundef null) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %62, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 17
  %36 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 16
  br label %37

37:                                               ; preds = %58, %34
  %38 = phi ptr [ %32, %34 ], [ %60, %58 ]
  %39 = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 17
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %35, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 16
  %45 = load i32, ptr %44, align 8
  %46 = load i32, ptr %36, align 8
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 9
  %50 = load i16, ptr %49, align 4
  %51 = load i16, ptr %12, align 2
  %52 = icmp eq i16 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = zext i16 %50 to i32
  %55 = add nuw nsw i32 %54, 1
  %56 = tail call i32 @scsi_change_queue_depth(ptr noundef nonnull %38, i32 noundef %55) #13
  %57 = load volatile i32, ptr @jiffies, align 64
  store i32 %57, ptr %17, align 4
  br label %58

58:                                               ; preds = %53, %48, %43, %37
  %59 = load ptr, ptr %0, align 8
  %60 = tail call ptr @__scsi_iterate_devices(ptr noundef %59, ptr noundef nonnull %38) #13
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %37

62:                                               ; preds = %58, %31, %24, %15, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_eh_ready_devs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.list_head, align 8
  %6 = alloca %struct.list_head, align 8
  %7 = alloca %struct.list_head, align 8
  %8 = tail call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef null) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %129, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 19
  %12 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 18
  %13 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  br label %14

14:                                               ; preds = %126, %10
  %15 = phi ptr [ %8, %10 ], [ %127, %126 ]
  %16 = load i32, ptr %11, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %12, align 8
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = add i32 %19, %16
  %24 = sub i32 %22, %23
  %25 = icmp slt i32 %24, 0
  %26 = icmp sgt i32 %19, -1
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %31

28:                                               ; preds = %21, %18, %14
  %29 = load ptr, ptr %1, align 4
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %126, label %32

31:                                               ; preds = %21
  tail call void @scsi_device_put(ptr noundef nonnull %15) #13
  br label %129

32:                                               ; preds = %47, %28
  %33 = phi ptr [ %48, %47 ], [ %29, %28 ]
  %34 = getelementptr i8, ptr %33, i32 -48
  %35 = getelementptr i8, ptr %33, i32 -4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %15
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = getelementptr i8, ptr %33, i32 124
  %40 = load ptr, ptr %39, align 4
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 112
  %43 = icmp eq i8 %42, 112
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = tail call i32 @scsi_check_sense(ptr noundef %34) #13
  %46 = icmp eq i32 %45, 8195
  br i1 %46, label %50, label %47

47:                                               ; preds = %44, %38, %32
  %48 = load ptr, ptr %33, align 4
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %126, label %32

50:                                               ; preds = %44
  %51 = getelementptr i8, ptr %33, i32 -4
  %52 = icmp eq ptr %34, null
  br i1 %52, label %126, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %51, align 4
  %55 = getelementptr inbounds %struct.scsi_device, ptr %54, i32 0, i32 41
  %56 = load i64, ptr %55, align 4
  %57 = and i64 %56, 134217728
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %126, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.scsi_device, ptr %54, i32 0, i32 40
  %61 = load i32, ptr %60, align 8
  %62 = tail call fastcc i32 @scsi_send_eh_cmnd(ptr noundef nonnull %34, ptr noundef nonnull @scsi_eh_try_stu.stu_command, i32 noundef 6, i32 noundef %61, i32 noundef 0) #13
  %63 = icmp eq i32 %62, 8193
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load ptr, ptr %51, align 4
  %66 = getelementptr inbounds %struct.scsi_device, ptr %65, i32 0, i32 40
  %67 = load i32, ptr %66, align 8
  %68 = tail call fastcc i32 @scsi_send_eh_cmnd(ptr noundef nonnull %34, ptr noundef nonnull @scsi_eh_try_stu.stu_command, i32 noundef 6, i32 noundef %67, i32 noundef 0) #13
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi i32 [ %68, %64 ], [ %62, %59 ]
  %71 = icmp eq i32 %70, 8194
  br i1 %71, label %72, label %126

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 68
  %74 = load i32, ptr %73, align 4
  switch i32 %74, label %75 [
    i32 7, label %87
    i32 6, label %87
    i32 4, label %87
  ]

75:                                               ; preds = %72
  %76 = load ptr, ptr %51, align 4
  %77 = getelementptr inbounds %struct.scsi_device, ptr %76, i32 0, i32 40
  %78 = load i32, ptr %77, align 8
  %79 = tail call fastcc i32 @scsi_send_eh_cmnd(ptr noundef nonnull %34, ptr noundef nonnull @scsi_eh_tur.tur_command, i32 noundef 6, i32 noundef %78, i32 noundef 0) #13
  switch i32 %79, label %126 [
    i32 8193, label %80
    i32 8194, label %87
  ]

80:                                               ; preds = %75
  %81 = load ptr, ptr %51, align 4
  %82 = getelementptr inbounds %struct.scsi_device, ptr %81, i32 0, i32 40
  %83 = load i32, ptr %82, align 8
  %84 = tail call fastcc i32 @scsi_send_eh_cmnd(ptr noundef nonnull %34, ptr noundef nonnull @scsi_eh_tur.tur_command, i32 noundef 6, i32 noundef %83, i32 noundef 0) #13
  %85 = add i32 %84, -8193
  %86 = icmp ult i32 %85, 2
  br i1 %86, label %87, label %126

87:                                               ; preds = %80, %75, %72, %72, %72
  %88 = load ptr, ptr %1, align 4
  %89 = icmp eq ptr %88, %1
  br i1 %89, label %126, label %90

90:                                               ; preds = %124, %87
  %91 = phi ptr [ %93, %124 ], [ %88, %87 ]
  %92 = getelementptr i8, ptr %91, i32 -48
  %93 = load ptr, ptr %91, align 4
  %94 = getelementptr i8, ptr %91, i32 -4
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %15
  br i1 %96, label %97, label %124

97:                                               ; preds = %90
  %98 = getelementptr i8, ptr %91, i32 -204
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 254
  %101 = icmp eq i32 %100, 34
  br i1 %101, label %118, label %102

102:                                              ; preds = %97
  %103 = getelementptr i8, ptr %91, i32 -216
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.request_queue, ptr %104, i32 0, i32 15
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.gendisk, ptr %106, i32 0, i32 10
  %108 = load ptr, ptr %107, align 8
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.scsi_driver, ptr %109, i32 0, i32 5
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %102
  %114 = tail call i32 %111(ptr noundef %92, i32 noundef 8194) #13
  %115 = icmp eq i32 %114, 8194
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load ptr, ptr %91, align 4
  br label %118

118:                                              ; preds = %116, %102, %97
  %119 = phi ptr [ %117, %116 ], [ %93, %102 ], [ %93, %97 ]
  %120 = getelementptr i8, ptr %91, i32 4
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  store ptr %121, ptr %122, align 4
  store volatile ptr %119, ptr %121, align 4
  %123 = load ptr, ptr %13, align 4
  store ptr %91, ptr %13, align 4
  store ptr %2, ptr %91, align 4
  store ptr %123, ptr %120, align 4
  store volatile ptr %91, ptr %123, align 4
  br label %124

124:                                              ; preds = %118, %113, %90
  %125 = icmp eq ptr %93, %1
  br i1 %125, label %126, label %90

126:                                              ; preds = %124, %87, %80, %75, %69, %53, %50, %47, %28
  %127 = tail call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef nonnull %15) #13
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %14

129:                                              ; preds = %126, %31, %3
  %130 = load volatile ptr, ptr %1, align 4
  %131 = icmp eq ptr %130, %1
  br i1 %131, label %470, label %132

132:                                              ; preds = %129
  %133 = tail call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef null) #13
  %134 = icmp eq ptr %133, null
  br i1 %134, label %237, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 19
  %137 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 18
  %138 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  br label %139

139:                                              ; preds = %234, %135
  %140 = phi ptr [ %133, %135 ], [ %235, %234 ]
  %141 = load i32, ptr %136, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %147, %144, %139
  br label %155

144:                                              ; preds = %139
  %145 = load i32, ptr %137, align 8
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %143, label %147

147:                                              ; preds = %144
  %148 = load volatile i32, ptr @jiffies, align 64
  %149 = add i32 %145, %141
  %150 = sub i32 %148, %149
  %151 = icmp slt i32 %150, 0
  %152 = icmp sgt i32 %145, -1
  %153 = select i1 %151, i1 %152, i1 false
  br i1 %153, label %143, label %154

154:                                              ; preds = %147
  tail call void @scsi_device_put(ptr noundef nonnull %140) #13
  br label %237

155:                                              ; preds = %159, %143
  %156 = phi ptr [ %157, %159 ], [ %1, %143 ]
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, %1
  br i1 %158, label %234, label %159

159:                                              ; preds = %155
  %160 = getelementptr i8, ptr %157, i32 -4
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, %140
  br i1 %162, label %163, label %155

163:                                              ; preds = %159
  %164 = getelementptr i8, ptr %157, i32 -4
  %165 = getelementptr i8, ptr %157, i32 -48
  %166 = icmp eq ptr %165, null
  br i1 %166, label %234, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %140, align 8
  %169 = getelementptr inbounds %struct.Scsi_Host, ptr %168, i32 0, i32 11
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr inbounds %struct.scsi_host_template, ptr %170, i32 0, i32 10
  %172 = load ptr, ptr %171, align 8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %234, label %174

174:                                              ; preds = %167
  %175 = tail call i32 %172(ptr noundef nonnull %165) #13
  switch i32 %175, label %234 [
    i32 8194, label %176
    i32 8201, label %195
  ]

176:                                              ; preds = %174
  %177 = load ptr, ptr %164, align 4
  %178 = getelementptr inbounds %struct.scsi_device, ptr %177, i32 0, i32 41
  %179 = load i64, ptr %178, align 4
  %180 = or i64 %179, 24576
  store i64 %180, ptr %178, align 4
  %181 = getelementptr inbounds %struct.scsi_device, ptr %140, i32 0, i32 68
  %182 = load i32, ptr %181, align 4
  switch i32 %182, label %183 [
    i32 7, label %195
    i32 6, label %195
    i32 4, label %195
  ]

183:                                              ; preds = %176
  %184 = load ptr, ptr %164, align 4
  %185 = getelementptr inbounds %struct.scsi_device, ptr %184, i32 0, i32 40
  %186 = load i32, ptr %185, align 8
  %187 = tail call fastcc i32 @scsi_send_eh_cmnd(ptr noundef nonnull %165, ptr noundef nonnull @scsi_eh_tur.tur_command, i32 noundef 6, i32 noundef %186, i32 noundef 0) #13
  switch i32 %187, label %234 [
    i32 8193, label %188
    i32 8194, label %195
  ]

188:                                              ; preds = %183
  %189 = load ptr, ptr %164, align 4
  %190 = getelementptr inbounds %struct.scsi_device, ptr %189, i32 0, i32 40
  %191 = load i32, ptr %190, align 8
  %192 = tail call fastcc i32 @scsi_send_eh_cmnd(ptr noundef nonnull %165, ptr noundef nonnull @scsi_eh_tur.tur_command, i32 noundef 6, i32 noundef %191, i32 noundef 0) #13
  %193 = add i32 %192, -8193
  %194 = icmp ult i32 %193, 2
  br i1 %194, label %195, label %234

195:                                              ; preds = %188, %183, %176, %176, %176, %174
  %196 = load ptr, ptr %1, align 4
  %197 = icmp eq ptr %196, %1
  br i1 %197, label %234, label %198

198:                                              ; preds = %232, %195
  %199 = phi ptr [ %201, %232 ], [ %196, %195 ]
  %200 = getelementptr i8, ptr %199, i32 -48
  %201 = load ptr, ptr %199, align 4
  %202 = getelementptr i8, ptr %199, i32 -4
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, %140
  br i1 %204, label %205, label %232

205:                                              ; preds = %198
  %206 = getelementptr i8, ptr %199, i32 -204
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 254
  %209 = icmp eq i32 %208, 34
  br i1 %209, label %226, label %210

210:                                              ; preds = %205
  %211 = getelementptr i8, ptr %199, i32 -216
  %212 = load ptr, ptr %211, align 8
  %213 = getelementptr inbounds %struct.request_queue, ptr %212, i32 0, i32 15
  %214 = load ptr, ptr %213, align 8
  %215 = getelementptr inbounds %struct.gendisk, ptr %214, i32 0, i32 10
  %216 = load ptr, ptr %215, align 8
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.scsi_driver, ptr %217, i32 0, i32 5
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %226, label %221

221:                                              ; preds = %210
  %222 = tail call i32 %219(ptr noundef %200, i32 noundef %175) #13
  %223 = icmp eq i32 %222, 8195
  br i1 %223, label %232, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %199, align 4
  br label %226

226:                                              ; preds = %224, %210, %205
  %227 = phi ptr [ %225, %224 ], [ %201, %210 ], [ %201, %205 ]
  %228 = getelementptr i8, ptr %199, i32 4
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.list_head, ptr %227, i32 0, i32 1
  store ptr %229, ptr %230, align 4
  store volatile ptr %227, ptr %229, align 4
  %231 = load ptr, ptr %138, align 4
  store ptr %199, ptr %138, align 4
  store ptr %2, ptr %199, align 4
  store ptr %231, ptr %228, align 4
  store volatile ptr %199, ptr %231, align 4
  br label %232

232:                                              ; preds = %226, %221, %198
  %233 = icmp eq ptr %201, %1
  br i1 %233, label %234, label %198

234:                                              ; preds = %232, %195, %188, %183, %174, %167, %163, %155
  %235 = tail call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef nonnull %140) #13
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %139

237:                                              ; preds = %234, %154, %132
  %238 = load volatile ptr, ptr %1, align 4
  %239 = icmp eq ptr %238, %1
  br i1 %239, label %470, label %240

240:                                              ; preds = %237
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr %6, ptr %6, align 8
  %241 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %241, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store ptr %7, ptr %7, align 8
  %242 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %7, ptr %242, align 4
  %243 = load volatile ptr, ptr %1, align 4
  %244 = icmp eq ptr %243, %1
  br i1 %244, label %249, label %245

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr inbounds %struct.list_head, ptr %243, i32 0, i32 1
  store ptr %6, ptr %248, align 4
  store ptr %243, ptr %6, align 8
  store ptr %6, ptr %247, align 4
  store ptr %247, ptr %241, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %246, align 4
  br label %249

249:                                              ; preds = %245, %240
  %250 = load volatile ptr, ptr %6, align 8
  %251 = icmp eq ptr %250, %6
  br i1 %251, label %350, label %252

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 19
  %254 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 18
  %255 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  br label %259

256:                                              ; preds = %348, %317
  %257 = load volatile ptr, ptr %6, align 8
  %258 = icmp eq ptr %257, %6
  br i1 %258, label %350, label %259

259:                                              ; preds = %256, %252
  %260 = phi ptr [ %250, %252 ], [ %257, %256 ]
  %261 = load i32, ptr %253, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %293, label %263

263:                                              ; preds = %259
  %264 = load i32, ptr %254, align 8
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %293, label %266

266:                                              ; preds = %263
  %267 = load volatile i32, ptr @jiffies, align 64
  %268 = add i32 %264, %261
  %269 = sub i32 %267, %268
  %270 = icmp slt i32 %269, 0
  %271 = icmp sgt i32 %264, -1
  %272 = select i1 %270, i1 %271, i1 false
  br i1 %272, label %293, label %273

273:                                              ; preds = %266
  %274 = load volatile ptr, ptr %7, align 8
  %275 = icmp eq ptr %274, %7
  br i1 %275, label %281, label %276

276:                                              ; preds = %273
  %277 = load ptr, ptr %1, align 4
  %278 = load ptr, ptr %242, align 4
  %279 = getelementptr inbounds %struct.list_head, ptr %274, i32 0, i32 1
  store ptr %1, ptr %279, align 4
  store ptr %274, ptr %1, align 4
  store ptr %277, ptr %278, align 4
  %280 = getelementptr inbounds %struct.list_head, ptr %277, i32 0, i32 1
  store ptr %278, ptr %280, align 4
  store volatile ptr %7, ptr %7, align 8
  br label %281

281:                                              ; preds = %276, %273
  %282 = load volatile ptr, ptr %6, align 8
  %283 = icmp eq ptr %282, %6
  br i1 %283, label %289, label %284

284:                                              ; preds = %281
  %285 = load ptr, ptr %1, align 4
  %286 = load ptr, ptr %241, align 4
  %287 = getelementptr inbounds %struct.list_head, ptr %282, i32 0, i32 1
  store ptr %1, ptr %287, align 4
  store ptr %282, ptr %1, align 4
  store ptr %285, ptr %286, align 4
  %288 = getelementptr inbounds %struct.list_head, ptr %285, i32 0, i32 1
  store ptr %286, ptr %288, align 4
  store volatile ptr %6, ptr %6, align 8
  br label %289

289:                                              ; preds = %284, %281
  %290 = load volatile ptr, ptr %1, align 4
  %291 = icmp eq ptr %290, %1
  %292 = zext i1 %291 to i32
  br label %352

293:                                              ; preds = %266, %263, %259
  %294 = getelementptr i8, ptr %260, i32 -4
  %295 = load ptr, ptr %294, align 4
  %296 = getelementptr inbounds %struct.scsi_device, ptr %295, i32 0, i32 16
  %297 = load i32, ptr %296, align 8
  %298 = load ptr, ptr %295, align 8
  %299 = getelementptr inbounds %struct.Scsi_Host, ptr %298, i32 0, i32 11
  %300 = load ptr, ptr %299, align 8
  %301 = getelementptr inbounds %struct.scsi_host_template, ptr %300, i32 0, i32 11
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %317, label %304

304:                                              ; preds = %293
  %305 = getelementptr i8, ptr %260, i32 -48
  %306 = call i32 %302(ptr noundef %305) #13
  %307 = icmp eq i32 %306, 8194
  br i1 %307, label %308, label %317

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.Scsi_Host, ptr %298, i32 0, i32 4
  %310 = load ptr, ptr %309, align 4
  %311 = call i32 @_raw_spin_lock_irqsave(ptr noundef %310) #13
  %312 = load ptr, ptr %294, align 4
  %313 = getelementptr inbounds %struct.scsi_device, ptr %312, i32 0, i32 54, i32 1
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr i8, ptr %314, i32 -24
  call void @__starget_for_each_device(ptr noundef %315, ptr noundef null, ptr noundef nonnull @__scsi_report_device_reset) #13
  %316 = load ptr, ptr %309, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %316, i32 noundef %311) #13
  br label %317

317:                                              ; preds = %308, %304, %293
  %318 = phi i32 [ 8195, %293 ], [ 8194, %308 ], [ %306, %304 ]
  %319 = load ptr, ptr %6, align 8
  %320 = icmp eq ptr %319, %6
  br i1 %320, label %256, label %321

321:                                              ; preds = %348, %317
  %322 = phi ptr [ %323, %348 ], [ %319, %317 ]
  %323 = load ptr, ptr %322, align 4
  %324 = getelementptr i8, ptr %322, i32 -4
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr inbounds %struct.scsi_device, ptr %325, i32 0, i32 16
  %327 = load i32, ptr %326, align 8
  %328 = icmp eq i32 %327, %297
  br i1 %328, label %329, label %348

329:                                              ; preds = %321
  switch i32 %318, label %340 [
    i32 8194, label %330
    i32 8201, label %335
  ]

330:                                              ; preds = %329
  %331 = getelementptr inbounds %struct.list_head, ptr %322, i32 0, i32 1
  %332 = load ptr, ptr %331, align 4
  %333 = getelementptr inbounds %struct.list_head, ptr %323, i32 0, i32 1
  store ptr %332, ptr %333, align 4
  store volatile ptr %323, ptr %332, align 4
  %334 = load ptr, ptr %242, align 4
  store ptr %322, ptr %242, align 4
  store ptr %7, ptr %322, align 4
  store ptr %334, ptr %331, align 4
  br label %346

335:                                              ; preds = %329
  %336 = getelementptr i8, ptr %322, i32 4
  %337 = load ptr, ptr %336, align 4
  %338 = getelementptr inbounds %struct.list_head, ptr %323, i32 0, i32 1
  store ptr %337, ptr %338, align 4
  store volatile ptr %323, ptr %337, align 4
  %339 = load ptr, ptr %255, align 4
  store ptr %322, ptr %255, align 4
  store ptr %2, ptr %322, align 4
  store ptr %339, ptr %336, align 4
  br label %346

340:                                              ; preds = %329
  %341 = getelementptr inbounds %struct.list_head, ptr %322, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr inbounds %struct.list_head, ptr %323, i32 0, i32 1
  store ptr %342, ptr %343, align 4
  store volatile ptr %323, ptr %342, align 4
  %344 = load ptr, ptr %1, align 4
  %345 = getelementptr inbounds %struct.list_head, ptr %344, i32 0, i32 1
  store ptr %322, ptr %345, align 4
  store ptr %344, ptr %322, align 4
  store ptr %1, ptr %341, align 4
  br label %346

346:                                              ; preds = %340, %335, %330
  %347 = phi ptr [ %334, %330 ], [ %1, %340 ], [ %339, %335 ]
  store volatile ptr %322, ptr %347, align 4
  br label %348

348:                                              ; preds = %346, %321
  %349 = icmp eq ptr %323, %6
  br i1 %349, label %256, label %321

350:                                              ; preds = %256, %249
  %351 = call fastcc i32 @scsi_eh_test_devices(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, i32 noundef 0) #13
  br label %352

352:                                              ; preds = %350, %289
  %353 = phi i32 [ %351, %350 ], [ %292, %289 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %470

355:                                              ; preds = %352
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %5, ptr %5, align 8
  %356 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %356, align 4
  %357 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 20
  %358 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 19
  %359 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 18
  %360 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  br label %361

361:                                              ; preds = %430, %355
  %362 = phi i32 [ 0, %355 ], [ %431, %430 ]
  %363 = load i32, ptr %358, align 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %369, %366, %361
  br label %388

366:                                              ; preds = %361
  %367 = load i32, ptr %359, align 8
  %368 = icmp eq i32 %367, -1
  br i1 %368, label %365, label %369

369:                                              ; preds = %366
  %370 = load volatile i32, ptr @jiffies, align 64
  %371 = add i32 %367, %363
  %372 = sub i32 %370, %371
  %373 = icmp slt i32 %372, 0
  %374 = icmp sgt i32 %367, -1
  %375 = select i1 %373, i1 %374, i1 false
  br i1 %375, label %365, label %376

376:                                              ; preds = %369
  %377 = load volatile ptr, ptr %5, align 8
  %378 = icmp eq ptr %377, %5
  br i1 %378, label %384, label %379

379:                                              ; preds = %376
  %380 = load ptr, ptr %1, align 4
  %381 = load ptr, ptr %356, align 4
  %382 = getelementptr inbounds %struct.list_head, ptr %377, i32 0, i32 1
  store ptr %1, ptr %382, align 4
  store ptr %377, ptr %1, align 4
  store ptr %380, ptr %381, align 4
  %383 = getelementptr inbounds %struct.list_head, ptr %380, i32 0, i32 1
  store ptr %381, ptr %383, align 4
  store volatile ptr %5, ptr %5, align 8
  br label %384

384:                                              ; preds = %379, %376
  %385 = load volatile ptr, ptr %1, align 4
  %386 = icmp eq ptr %385, %1
  %387 = zext i1 %386 to i32
  br label %436

388:                                              ; preds = %392, %365
  %389 = phi ptr [ %390, %392 ], [ %1, %365 ]
  %390 = load ptr, ptr %389, align 4
  %391 = icmp eq ptr %390, %1
  br i1 %391, label %430, label %392

392:                                              ; preds = %388
  %393 = getelementptr i8, ptr %390, i32 -4
  %394 = load ptr, ptr %393, align 4
  %395 = getelementptr inbounds %struct.scsi_device, ptr %394, i32 0, i32 17
  %396 = load i32, ptr %395, align 4
  %397 = icmp eq i32 %362, %396
  br i1 %397, label %398, label %388

398:                                              ; preds = %392
  %399 = getelementptr i8, ptr %390, i32 -48
  %400 = icmp eq ptr %399, null
  br i1 %400, label %430, label %401

401:                                              ; preds = %398
  %402 = call fastcc i32 @scsi_try_bus_reset(ptr noundef nonnull %399) #13
  %403 = icmp eq i32 %402, 8201
  switch i32 %402, label %430 [
    i32 8201, label %404
    i32 8194, label %404
  ]

404:                                              ; preds = %401, %401
  %405 = load ptr, ptr %1, align 4
  %406 = icmp eq ptr %405, %1
  br i1 %406, label %430, label %407

407:                                              ; preds = %428, %404
  %408 = phi ptr [ %409, %428 ], [ %405, %404 ]
  %409 = load ptr, ptr %408, align 4
  %410 = getelementptr i8, ptr %408, i32 -4
  %411 = load ptr, ptr %410, align 4
  %412 = getelementptr inbounds %struct.scsi_device, ptr %411, i32 0, i32 17
  %413 = load i32, ptr %412, align 4
  %414 = icmp eq i32 %362, %413
  br i1 %414, label %415, label %428

415:                                              ; preds = %407
  br i1 %403, label %416, label %421

416:                                              ; preds = %415
  %417 = getelementptr i8, ptr %408, i32 4
  %418 = load ptr, ptr %417, align 4
  %419 = getelementptr inbounds %struct.list_head, ptr %409, i32 0, i32 1
  store ptr %418, ptr %419, align 4
  store volatile ptr %409, ptr %418, align 4
  %420 = load ptr, ptr %360, align 4
  store ptr %408, ptr %360, align 4
  store ptr %2, ptr %408, align 4
  store ptr %420, ptr %417, align 4
  br label %426

421:                                              ; preds = %415
  %422 = getelementptr inbounds %struct.list_head, ptr %408, i32 0, i32 1
  %423 = load ptr, ptr %422, align 4
  %424 = getelementptr inbounds %struct.list_head, ptr %409, i32 0, i32 1
  store ptr %423, ptr %424, align 4
  store volatile ptr %409, ptr %423, align 4
  %425 = load ptr, ptr %356, align 4
  store ptr %408, ptr %356, align 4
  store ptr %5, ptr %408, align 4
  store ptr %425, ptr %422, align 4
  br label %426

426:                                              ; preds = %421, %416
  %427 = phi ptr [ %425, %421 ], [ %420, %416 ]
  store volatile ptr %408, ptr %427, align 4
  br label %428

428:                                              ; preds = %426, %407
  %429 = icmp eq ptr %409, %1
  br i1 %429, label %430, label %407

430:                                              ; preds = %428, %404, %401, %398, %388
  %431 = add i32 %362, 1
  %432 = load i32, ptr %357, align 8
  %433 = icmp ugt i32 %431, %432
  br i1 %433, label %434, label %361

434:                                              ; preds = %430
  %435 = call fastcc i32 @scsi_eh_test_devices(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef 0) #13
  br label %436

436:                                              ; preds = %434, %384
  %437 = phi i32 [ %387, %384 ], [ %435, %434 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %470

439:                                              ; preds = %436
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr %4, ptr %4, align 8
  %440 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %440, align 4
  %441 = load volatile ptr, ptr %1, align 4
  %442 = icmp eq ptr %441, %1
  br i1 %442, label %466, label %443

443:                                              ; preds = %439
  %444 = getelementptr i8, ptr %441, i32 -48
  %445 = call fastcc i32 @scsi_try_host_reset(ptr noundef %444) #13
  switch i32 %445, label %466 [
    i32 8194, label %446
    i32 8201, label %455
  ]

446:                                              ; preds = %443
  %447 = load volatile ptr, ptr %1, align 4
  %448 = icmp eq ptr %447, %1
  br i1 %448, label %466, label %449

449:                                              ; preds = %446
  %450 = load ptr, ptr %4, align 8
  %451 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %452 = load ptr, ptr %451, align 4
  %453 = getelementptr inbounds %struct.list_head, ptr %447, i32 0, i32 1
  store ptr %4, ptr %453, align 4
  store ptr %447, ptr %4, align 8
  store ptr %450, ptr %452, align 4
  %454 = getelementptr inbounds %struct.list_head, ptr %450, i32 0, i32 1
  store ptr %452, ptr %454, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %451, align 4
  br label %466

455:                                              ; preds = %443
  %456 = load ptr, ptr %1, align 4
  %457 = icmp eq ptr %456, %1
  br i1 %457, label %466, label %458

458:                                              ; preds = %458, %455
  %459 = phi ptr [ %460, %458 ], [ %456, %455 ]
  %460 = load ptr, ptr %459, align 4
  %461 = getelementptr i8, ptr %459, i32 4
  %462 = load ptr, ptr %461, align 4
  %463 = getelementptr inbounds %struct.list_head, ptr %460, i32 0, i32 1
  store ptr %462, ptr %463, align 4
  store volatile ptr %460, ptr %462, align 4
  %464 = load ptr, ptr %360, align 4
  store ptr %459, ptr %360, align 4
  store ptr %2, ptr %459, align 4
  store ptr %464, ptr %461, align 4
  store volatile ptr %459, ptr %464, align 4
  %465 = icmp eq ptr %460, %1
  br i1 %465, label %466, label %458

466:                                              ; preds = %458, %455, %449, %446, %443, %439
  %467 = call fastcc i32 @scsi_eh_test_devices(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %470

469:                                              ; preds = %466
  call fastcc void @scsi_eh_offline_sdevs(ptr noundef %1, ptr noundef %2)
  br label %470

470:                                              ; preds = %469, %466, %436, %352, %237, %129
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scsi_eh_offline_sdevs(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %3, %5 ], [ %9, %7 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %8, i32 -4
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.2, ptr noundef %11, ptr noundef null, ptr noundef nonnull @.str.15) #13
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 67
  tail call void @mutex_lock(ptr noundef %13) #13
  %14 = tail call i32 @scsi_device_set_state(ptr noundef %12, i32 noundef 6) #13
  tail call void @mutex_unlock(ptr noundef %13) #13
  %15 = getelementptr i8, ptr %8, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  %19 = load ptr, ptr %6, align 4
  store ptr %8, ptr %6, align 4
  store ptr %1, ptr %8, align 4
  store ptr %19, ptr %15, align 4
  store volatile ptr %8, ptr %19, align 4
  %20 = icmp eq ptr %9, %0
  br i1 %20, label %21, label %7

21:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_eh_flush_done_q(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %77, label %4

4:                                                ; preds = %75, %1
  %5 = phi ptr [ %7, %75 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -48
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %8, align 4
  %11 = getelementptr i8, ptr %5, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 68
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %15 [
    i32 7, label %69
    i32 6, label %69
    i32 4, label %69
  ]

15:                                               ; preds = %4
  %16 = getelementptr i8, ptr %5, i32 172
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 16
  %19 = trunc i32 %18 to i8
  switch i8 %19, label %35 [
    i8 11, label %31
    i8 3, label %38
    i8 2, label %20
    i8 6, label %24
    i8 7, label %28
  ]

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %5, i32 -204
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 512
  br label %47

24:                                               ; preds = %15
  %25 = getelementptr i8, ptr %5, i32 -204
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 256
  br label %47

28:                                               ; preds = %15
  %29 = trunc i32 %17 to i8
  %30 = icmp eq i8 %29, 24
  br i1 %30, label %50, label %31

31:                                               ; preds = %28, %15
  %32 = getelementptr i8, ptr %5, i32 -204
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1024
  br label %47

35:                                               ; preds = %15
  %36 = and i32 %17, -2147483394
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %50

38:                                               ; preds = %35, %15
  %39 = getelementptr i8, ptr %5, i32 -204
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 256
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %38
  %44 = and i32 %40, 254
  %45 = icmp eq i32 %44, 34
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %43, %31, %24, %20
  %48 = phi i32 [ %34, %31 ], [ %27, %24 ], [ %23, %20 ], [ %46, %43 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %47, %35, %28
  %51 = getelementptr i8, ptr %5, i32 76
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %5, i32 72
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 4
  %58 = icmp sgt i32 %57, %52
  br i1 %58, label %69, label %59

59:                                               ; preds = %54, %50
  %60 = load ptr, ptr %12, align 8
  %61 = getelementptr inbounds %struct.Scsi_Host, ptr %60, i32 0, i32 11
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.scsi_host_template, ptr %62, i32 0, i32 30
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = tail call zeroext i1 %64(ptr noundef %6) #13
  br i1 %67, label %68, label %69

68:                                               ; preds = %66, %59
  tail call void @scsi_queue_insert(ptr noundef %6, i32 noundef 4183) #13
  br label %75

69:                                               ; preds = %66, %54, %47, %38, %4, %4, %4
  %70 = getelementptr i8, ptr %5, i32 172
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 196608, ptr %70, align 4
  br label %74

74:                                               ; preds = %73, %69
  tail call void @scsi_finish_command(ptr noundef %6) #13
  br label %75

75:                                               ; preds = %74, %68
  %76 = icmp eq ptr %7, %0
  br i1 %76, label %77, label %4

77:                                               ; preds = %75, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_error_handler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.list_head, align 8
  %4 = tail call ptr @llvm.thread.pointer() #13
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  store volatile i32 1, ptr %5, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %6 = call zeroext i1 @kthread_should_stop() #13
  br i1 %6, label %149, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 16
  %10 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 36
  %11 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 12
  %12 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %13 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 4
  %15 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 7
  %16 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 7, i32 1
  %17 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 18
  %18 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 19
  %19 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 10
  br label %20

20:                                               ; preds = %30, %7
  %21 = load i32, ptr %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, ptr %9, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %20
  %27 = call i32 @scsi_host_busy(ptr noundef %0) #13
  %28 = icmp eq i32 %21, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %23
  call void @schedule() #13
  br label %30

30:                                               ; preds = %148, %143, %36, %29
  store volatile i32 1, ptr %5, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %31 = call zeroext i1 @kthread_should_stop() #13
  br i1 %31, label %149, label %20

32:                                               ; preds = %26
  store volatile i32 0, ptr %5, align 8
  %33 = load i16, ptr %10, align 8
  %34 = and i16 %33, 64
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = call i32 @scsi_autopm_get_host(ptr noundef %0) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %30

39:                                               ; preds = %36, %32
  %40 = load ptr, ptr %11, align 4
  %41 = getelementptr inbounds %struct.scsi_transport_template, ptr %40, i32 0, i32 10
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  call void %42(ptr noundef %0) #13
  br label %68

45:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %2, ptr %2, align 8
  store ptr %2, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr %3, ptr %3, align 8
  store ptr %3, ptr %13, align 4
  %46 = load ptr, ptr %14, align 4
  %47 = call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #13
  %48 = load volatile ptr, ptr %15, align 4
  %49 = icmp eq ptr %48, %15
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %2, align 8
  %52 = load ptr, ptr %16, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %2, ptr %53, align 4
  store ptr %48, ptr %2, align 8
  store ptr %51, ptr %52, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store volatile ptr %15, ptr %15, align 4
  store ptr %15, ptr %16, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load ptr, ptr %14, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %47) #13
  %57 = call i32 @scsi_eh_get_sense(ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  call void @scsi_eh_ready_devs(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  br label %60

60:                                               ; preds = %59, %55
  %61 = load ptr, ptr %14, align 4
  %62 = call i32 @_raw_spin_lock_irqsave(ptr noundef %61) #13
  %63 = load i32, ptr %17, align 8
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i32 0, ptr %18, align 4
  br label %66

66:                                               ; preds = %65, %60
  %67 = load ptr, ptr %14, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %67, i32 noundef %62) #13
  call void @scsi_eh_flush_done_q(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %68

68:                                               ; preds = %66, %44
  store i32 0, ptr %8, align 4
  %69 = call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef null) #13
  %70 = icmp eq ptr %69, null
  br i1 %70, label %118, label %71

71:                                               ; preds = %115, %68
  %72 = phi ptr [ %116, %115 ], [ %69, %68 ]
  %73 = getelementptr inbounds %struct.scsi_device, ptr %72, i32 0, i32 68
  %74 = load i32, ptr %73, align 4
  switch i32 %74, label %75 [
    i32 7, label %115
    i32 6, label %115
    i32 4, label %115
  ]

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.scsi_device, ptr %72, i32 0, i32 41
  %77 = load i64, ptr %76, align 4
  %78 = and i64 %77, 8208
  %79 = icmp eq i64 %78, 8208
  br i1 %79, label %80, label %115

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.scsi_device, ptr %72, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = call ptr @scsi_alloc_request(ptr noundef %82, i32 noundef 34, i32 noundef 0) #13
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %112, label %85

85:                                               ; preds = %80
  %86 = getelementptr %struct.request, ptr %83, i32 1
  %87 = getelementptr %struct.request, ptr %83, i32 1, i32 4
  %88 = load ptr, ptr %87, align 4
  store i8 30, ptr %88, align 1
  %89 = load ptr, ptr %87, align 4
  %90 = getelementptr i8, ptr %89, i32 1
  store i8 0, ptr %90, align 1
  %91 = load ptr, ptr %87, align 4
  %92 = getelementptr i8, ptr %91, i32 2
  store i8 0, ptr %92, align 1
  %93 = load ptr, ptr %87, align 4
  %94 = getelementptr i8, ptr %93, i32 3
  store i8 0, ptr %94, align 1
  %95 = load ptr, ptr %87, align 4
  %96 = getelementptr i8, ptr %95, i32 4
  store i8 1, ptr %96, align 1
  %97 = load ptr, ptr %87, align 4
  %98 = getelementptr i8, ptr %97, i32 5
  store i8 0, ptr %98, align 1
  %99 = load ptr, ptr %87, align 4
  %100 = load i8, ptr %99, align 1
  %101 = lshr i8 %100, 5
  %102 = zext i8 %101 to i32
  %103 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i16
  %106 = getelementptr %struct.request, ptr %83, i32 1, i32 5
  store i16 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.request, ptr %83, i32 0, i32 4
  %108 = load i32, ptr %107, align 8
  %109 = or i32 %108, 2048
  store i32 %109, ptr %107, align 8
  %110 = getelementptr inbounds %struct.request, ptr %83, i32 0, i32 7
  store i32 1000, ptr %110, align 4
  %111 = getelementptr inbounds %struct.scsi_request, ptr %86, i32 0, i32 6
  store i32 5, ptr %111, align 4
  call void @blk_execute_rq_nowait(ptr noundef %83, i1 noundef zeroext true, ptr noundef nonnull @eh_lock_door_done) #13
  br label %112

112:                                              ; preds = %85, %80
  %113 = load i64, ptr %76, align 4
  %114 = and i64 %113, -8193
  store i64 %114, ptr %76, align 4
  br label %115

115:                                              ; preds = %112, %75, %71, %71, %71
  %116 = call ptr @__scsi_iterate_devices(ptr noundef %0, ptr noundef nonnull %72) #13
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %71

118:                                              ; preds = %115, %68
  %119 = load ptr, ptr %14, align 4
  %120 = call i32 @_raw_spin_lock_irqsave(ptr noundef %119) #13
  %121 = call i32 @scsi_host_set_state(ptr noundef %0, i32 noundef 2) #13
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  %124 = call i32 @scsi_host_set_state(ptr noundef %0, i32 noundef 3) #13
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %123
  %127 = call i32 @scsi_host_set_state(ptr noundef %0, i32 noundef 4) #13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %129, !prof !13

129:                                              ; preds = %126
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_error.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2084, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

130:                                              ; preds = %126, %123, %118
  %131 = load ptr, ptr %14, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %131, i32 noundef %120) #13
  call void @__wake_up(ptr noundef %19, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  call void @scsi_run_host_queues(ptr noundef %0) #13
  %132 = load ptr, ptr %14, align 4
  %133 = call i32 @_raw_spin_lock_irqsave(ptr noundef %132) #13
  %134 = load i32, ptr %9, align 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %130
  %137 = call i32 @scsi_host_set_state(ptr noundef %0, i32 noundef 5) #13
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = call i32 @scsi_host_set_state(ptr noundef %0, i32 noundef 6) #13
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %143, label %142, !prof !13

142:                                              ; preds = %139
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2108, i32 noundef 9, ptr noundef null) #13
  br label %143

143:                                              ; preds = %142, %139, %136, %130
  %144 = load ptr, ptr %14, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %144, i32 noundef %133) #13
  %145 = load i16, ptr %10, align 8
  %146 = and i16 %145, 64
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %30

148:                                              ; preds = %143
  call void @scsi_autopm_put_host(ptr noundef %0) #13
  br label %30

149:                                              ; preds = %30, %1
  store volatile i32 0, ptr %5, align 8
  %150 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 8
  store ptr null, ptr %150, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_autopm_get_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_report_bus_reset(ptr noundef readonly %0, i32 noundef %1) #8 {
  %3 = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %17, label %5

5:                                                ; preds = %14, %2
  %6 = phi ptr [ %15, %14 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 84
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 188
  %12 = load i64, ptr %11, align 4
  %13 = or i64 %12, 24576
  store i64 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %6, align 8
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @__scsi_report_device_reset(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #9 {
  %3 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %4 = load i64, ptr %3, align 4
  %5 = or i64 %4, 24576
  store i64 %5, ptr %3, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_report_device_reset(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = load ptr, ptr %0, align 8
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %22, label %6

6:                                                ; preds = %19, %3
  %7 = phi ptr [ %20, %19 ], [ %4, %3 ]
  %8 = getelementptr i8, ptr %7, i32 84
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 80
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %7, i32 188
  %17 = load i64, ptr %16, align 4
  %18 = or i64 %17, 24576
  store i64 %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %15, %11, %6
  %20 = load ptr, ptr %7, align 8
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %6

22:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_ioctl_reset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %4, label %5, label %90

5:                                                ; preds = %2
  %6 = tail call zeroext i1 @capable(i32 noundef 17) #13
  br i1 %6, label %7, label %90

7:                                                ; preds = %5
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #14, !srcloc !20
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %13 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #13, !srcloc !23
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #13, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !22
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %90

17:                                               ; preds = %7
  %18 = tail call i32 @scsi_autopm_get_host(ptr noundef %3) #13
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %90, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 11
  %22 = load ptr, ptr %21, align 8
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, 404
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %88, label %27

27:                                               ; preds = %20
  tail call void @blk_rq_init(ptr noundef null, ptr noundef nonnull %25) #13
  %28 = getelementptr %struct.request, ptr %25, i32 1
  tail call void @scsi_init_command(ptr noundef %0, ptr noundef %28) #13
  %29 = getelementptr %struct.request, ptr %25, i32 1, i32 4
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr %struct.request, ptr %25, i32 1, i32 25, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 13
  store i8 2, ptr %32, align 1
  %33 = getelementptr %struct.request, ptr %25, i32 1, i32 26
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %33, i8 0, i32 16, i1 false)
  %34 = getelementptr %struct.request, ptr %25, i32 1, i32 25, i32 0, i32 1
  store i16 0, ptr %34, align 4
  %35 = getelementptr %struct.request, ptr %25, i32 1, i32 25, i32 0, i32 1, i32 1
  store i32 0, ptr %35, align 16
  %36 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #13
  %39 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 36
  %40 = load i16, ptr %39, align 8
  %41 = or i16 %40, 16
  store i16 %41, ptr %39, align 8
  %42 = load ptr, ptr %36, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %38) #13
  %43 = and i32 %15, -257
  switch i32 %43, label %79 [
    i32 0, label %80
    i32 1, label %44
    i32 4, label %64
    i32 2, label %70
    i32 3, label %76
  ]

44:                                               ; preds = %27
  %45 = getelementptr inbounds %struct.scsi_cmnd, ptr %28, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, ptr %47, i32 0, i32 11
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.scsi_host_template, ptr %49, i32 0, i32 10
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %44
  %54 = tail call i32 %51(ptr noundef %28) #13
  %55 = icmp eq i32 %54, 8194
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load ptr, ptr %45, align 4
  %58 = getelementptr inbounds %struct.scsi_device, ptr %57, i32 0, i32 41
  %59 = load i64, ptr %58, align 4
  %60 = or i64 %59, 24576
  store i64 %60, ptr %58, align 4
  br label %80

61:                                               ; preds = %53, %44
  %62 = and i32 %15, 256
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %61, %27
  %65 = tail call fastcc i32 @scsi_try_target_reset(ptr noundef %28)
  %66 = icmp eq i32 %65, 8194
  br i1 %66, label %80, label %67

67:                                               ; preds = %64
  %68 = and i32 %15, 256
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67, %27
  %71 = tail call fastcc i32 @scsi_try_bus_reset(ptr noundef %28)
  %72 = icmp eq i32 %71, 8194
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = and i32 %15, 256
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73, %27
  %77 = tail call fastcc i32 @scsi_try_host_reset(ptr noundef %28)
  %78 = icmp eq i32 %77, 8194
  br i1 %78, label %80, label %79

79:                                               ; preds = %76, %27
  br label %80

80:                                               ; preds = %79, %76, %73, %70, %67, %64, %61, %56, %27
  %81 = phi i32 [ -5, %73 ], [ -5, %67 ], [ -5, %61 ], [ -5, %79 ], [ 0, %76 ], [ 0, %70 ], [ 0, %64 ], [ 0, %56 ], [ %43, %27 ]
  %82 = load ptr, ptr %36, align 4
  %83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %82) #13
  %84 = load i16, ptr %39, align 8
  %85 = and i16 %84, -17
  store i16 %85, ptr %39, align 8
  %86 = load ptr, ptr %36, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %86, i32 noundef %83) #13
  %87 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %87, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  tail call void @scsi_run_host_queues(ptr noundef %3) #13
  tail call void @kfree(ptr noundef nonnull %25) #13
  br label %88

88:                                               ; preds = %80, %20
  %89 = phi i32 [ %81, %80 ], [ -5, %20 ]
  tail call void @scsi_autopm_put_host(ptr noundef %3) #13
  br label %90

90:                                               ; preds = %88, %17, %7, %5, %2
  %91 = phi i32 [ %89, %88 ], [ -13, %5 ], [ -13, %2 ], [ %14, %7 ], [ -5, %17 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_rq_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_init_command(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scsi_try_target_reset(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.scsi_host_template, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = tail call i32 %8(ptr noundef %0) #13
  %12 = icmp eq i32 %11, 8194
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #13
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 54, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 -24
  tail call void @__starget_for_each_device(ptr noundef %20, ptr noundef null, ptr noundef nonnull @__scsi_report_device_reset) #13
  %21 = load ptr, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %16) #13
  br label %22

22:                                               ; preds = %13, %10, %1
  %23 = phi i32 [ 8195, %1 ], [ 8194, %13 ], [ %11, %10 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scsi_try_bus_reset(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.scsi_host_template, ptr %6, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %42, label %10

10:                                               ; preds = %1
  %11 = tail call i32 %8(ptr noundef %0) #13
  %12 = icmp eq i32 %11, 8194
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.scsi_host_template, ptr %6, i32 0, i32 45
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @msleep(i32 noundef 10000) #13
  br label %19

19:                                               ; preds = %18, %13
  %20 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #13
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.scsi_device, ptr %23, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %4, align 8
  %27 = icmp eq ptr %26, %4
  br i1 %27, label %40, label %28

28:                                               ; preds = %37, %19
  %29 = phi ptr [ %38, %37 ], [ %26, %19 ]
  %30 = getelementptr i8, ptr %29, i32 84
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %25
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %29, i32 188
  %35 = load i64, ptr %34, align 4
  %36 = or i64 %35, 24576
  store i64 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load ptr, ptr %29, align 8
  %39 = icmp eq ptr %38, %4
  br i1 %39, label %40, label %28

40:                                               ; preds = %37, %19
  %41 = load ptr, ptr %20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %22) #13
  br label %42

42:                                               ; preds = %40, %10, %1
  %43 = phi i32 [ 8195, %1 ], [ 8194, %40 ], [ %11, %10 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scsi_try_host_reset(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.scsi_host_template, ptr %6, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %42, label %10

10:                                               ; preds = %1
  %11 = tail call i32 %8(ptr noundef %0) #13
  %12 = icmp eq i32 %11, 8194
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.scsi_host_template, ptr %6, i32 0, i32 45
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @msleep(i32 noundef 10000) #13
  br label %19

19:                                               ; preds = %18, %13
  %20 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #13
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.scsi_device, ptr %23, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %4, align 8
  %27 = icmp eq ptr %26, %4
  br i1 %27, label %40, label %28

28:                                               ; preds = %37, %19
  %29 = phi ptr [ %38, %37 ], [ %26, %19 ]
  %30 = getelementptr i8, ptr %29, i32 84
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %25
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %29, i32 188
  %35 = load i64, ptr %34, align 4
  %36 = or i64 %35, 24576
  store i64 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load ptr, ptr %29, align 8
  %39 = icmp eq ptr %38, %4
  br i1 %39, label %40, label %28

40:                                               ; preds = %37, %19
  %41 = load ptr, ptr %20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %22) #13
  br label %42

42:                                               ; preds = %40, %10, %1
  %43 = phi i32 [ 8195, %1 ], [ 8194, %40 ], [ %11, %10 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_run_host_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @scsi_get_sense_info_fld(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp slt i32 %1, 7
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %0, align 1
  %7 = and i8 %6, 127
  %8 = zext i8 %7 to i32
  switch i32 %8, label %29 [
    i32 112, label %9
    i32 113, label %9
    i32 114, label %16
    i32 115, label %16
  ]

9:                                                ; preds = %5, %5
  %10 = icmp sgt i8 %6, -1
  br i1 %10, label %29, label %11

11:                                               ; preds = %9
  %12 = getelementptr i8, ptr %0, i32 3
  %13 = load i32, ptr %12, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #13
  %15 = zext i32 %14 to i64
  br label %27

16:                                               ; preds = %5, %5
  %17 = tail call ptr @scsi_sense_desc_find(ptr noundef %0, i32 noundef %1, i32 noundef 0) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %17, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 10
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %17, i32 4
  %25 = load i64, ptr %24, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #13
  br label %27

27:                                               ; preds = %23, %11
  %28 = phi i64 [ %26, %23 ], [ %15, %11 ]
  store i64 %28, ptr %2, align 8
  br label %29

29:                                               ; preds = %27, %19, %16, %9, %5, %3
  %30 = phi i1 [ false, %3 ], [ false, %9 ], [ false, %19 ], [ false, %16 ], [ false, %5 ], [ true, %27 ]
  ret i1 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_sense_desc_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_scsi_eh_wakeup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_scsi_dispatch_cmd_timeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scsi_send_eh_cmnd(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.completion, align 8
  %7 = alloca %struct.scsi_eh_save, align 4
  %8 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %11 = getelementptr inbounds %struct.completion, ptr %6, i32 0, i32 1, i32 1
  store i64 0, ptr %6, align 8
  store ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.completion, ptr %6, i32 0, i32 1, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %7, i8 0, i32 80, i1 false), !annotation !16
  %13 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 9
  %14 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 13
  %15 = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 67
  %16 = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 68
  %17 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 11
  %18 = getelementptr inbounds %struct.scsi_eh_save, ptr %7, i32 0, i32 5
  %19 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  %20 = getelementptr inbounds %struct.scsi_eh_save, ptr %7, i32 0, i32 7
  %21 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %22 = getelementptr inbounds %struct.scsi_eh_save, ptr %7, i32 0, i32 3
  %23 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 15
  %24 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17
  %25 = getelementptr inbounds %struct.scsi_eh_save, ptr %7, i32 0, i32 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %27 = getelementptr inbounds %struct.scsi_eh_save, ptr %7, i32 0, i32 1
  %28 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  %29 = getelementptr inbounds %struct.scsi_eh_save, ptr %7, i32 0, i32 4
  %30 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 19
  %31 = getelementptr inbounds %struct.scsi_eh_save, ptr %7, i32 0, i32 6
  %32 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 10
  %33 = getelementptr inbounds %struct.scsi_eh_save, ptr %7, i32 0, i32 2
  %34 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 5
  br label %35

35:                                               ; preds = %62, %5
  %36 = phi i32 [ %3, %5 ], [ %72, %62 ]
  call void @scsi_eh_prep_cmnd(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2, i32 noundef %4)
  store ptr %6, ptr %13, align 8
  store i8 1, ptr %14, align 1
  call void @mutex_lock(ptr noundef %15) #13
  %37 = load i32, ptr %16, align 4
  %38 = icmp eq i32 %37, 8
  %39 = icmp ne i32 %36, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %50

41:                                               ; preds = %41, %35
  %42 = phi i32 [ %44, %41 ], [ %36, %35 ]
  call void @mutex_unlock(ptr noundef %15) #13
  %43 = call i32 @llvm.umin.i32(i32 %42, i32 10)
  %44 = sub i32 %42, %43
  %45 = call i32 @jiffies_to_msecs(i32 noundef %43) #13
  call void @msleep(i32 noundef %45) #13
  call void @mutex_lock(ptr noundef %15) #13
  %46 = load i32, ptr %16, align 4
  %47 = icmp eq i32 %46, 8
  %48 = icmp ne i32 %44, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %41, label %50

50:                                               ; preds = %41, %35
  %51 = phi i32 [ %36, %35 ], [ %44, %41 ]
  %52 = phi i1 [ %38, %35 ], [ %47, %41 ]
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @mutex_unlock(ptr noundef %15) #13
  br label %60

54:                                               ; preds = %50
  %55 = load ptr, ptr %17, align 8
  %56 = getelementptr inbounds %struct.scsi_host_template, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %57(ptr noundef %10, ptr noundef %0) #13
  call void @mutex_unlock(ptr noundef %15) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %54, %53
  %61 = icmp ugt i32 %51, 10
  br i1 %61, label %62, label %133

62:                                               ; preds = %60
  %63 = load i8, ptr %18, align 4
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %19, align 4
  %65 = load ptr, ptr %20, align 4
  store ptr %65, ptr %21, align 4
  %66 = load i32, ptr %22, align 4
  store i32 %66, ptr %23, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %24, ptr noundef align 4 dereferenceable(16) %25, i32 16, i1 false) #13
  %67 = load i32, ptr %7, align 4
  store i32 %67, ptr %26, align 4
  %68 = load i32, ptr %27, align 4
  store i32 %68, ptr %28, align 4
  %69 = load i32, ptr %29, align 4
  store i32 %69, ptr %30, align 4
  %70 = load i8, ptr %31, align 1
  store i8 %70, ptr %32, align 4
  %71 = load i32, ptr %33, align 4
  store i32 %71, ptr %34, align 4
  %72 = add i32 %51, -10
  %73 = call i32 @jiffies_to_msecs(i32 noundef 10) #13
  call void @msleep(i32 noundef %73) #13
  br label %35

74:                                               ; preds = %54
  %75 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %6, i32 noundef %3) #13
  %76 = icmp eq i32 %75, 0
  store ptr null, ptr %13, align 8
  br i1 %76, label %134, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %26, align 4
  %79 = lshr i32 %78, 16
  %80 = trunc i32 %79 to i8
  switch i8 %80, label %194 [
    i8 8, label %129
    i8 0, label %81
  ]

81:                                               ; preds = %77
  %82 = and i32 %78, 254
  %83 = call i32 @llvm.fshl.i32(i32 %78, i32 %82, i32 31) #13
  switch i32 %83, label %128 [
    i32 0, label %84
    i32 17, label %194
    i32 1, label %129
    i32 2, label %194
    i32 8, label %194
    i32 10, label %194
    i32 12, label %86
    i32 20, label %91
    i32 4, label %127
  ]

84:                                               ; preds = %81
  %85 = load ptr, ptr %8, align 4
  call fastcc void @scsi_handle_queue_ramp_up(ptr noundef %85) #13
  br label %194

86:                                               ; preds = %81
  %87 = load ptr, ptr %21, align 4
  %88 = load i8, ptr %87, align 1
  %89 = icmp eq i8 %88, 0
  %90 = select i1 %89, i32 8194, i32 8195
  br label %194

91:                                               ; preds = %81
  %92 = load ptr, ptr %8, align 4
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.Scsi_Host, ptr %93, i32 0, i32 11
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.scsi_host_template, ptr %95, i32 0, i32 45
  %97 = load i8, ptr %96, align 4
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %127, label %100

100:                                              ; preds = %91
  %101 = call ptr @__scsi_iterate_devices(ptr noundef %93, ptr noundef null) #13
  %102 = icmp eq ptr %101, null
  br i1 %102, label %127, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.scsi_device, ptr %92, i32 0, i32 17
  %105 = getelementptr inbounds %struct.scsi_device, ptr %92, i32 0, i32 16
  br label %106

106:                                              ; preds = %123, %103
  %107 = phi ptr [ %101, %103 ], [ %125, %123 ]
  %108 = getelementptr inbounds %struct.scsi_device, ptr %107, i32 0, i32 17
  %109 = load i32, ptr %108, align 4
  %110 = load i32, ptr %104, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.scsi_device, ptr %107, i32 0, i32 16
  %114 = load i32, ptr %113, align 8
  %115 = load i32, ptr %105, align 8
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.scsi_device, ptr %107, i32 0, i32 9
  %119 = load i16, ptr %118, align 4
  %120 = zext i16 %119 to i32
  %121 = add nsw i32 %120, -1
  %122 = call i32 @scsi_track_queue_full(ptr noundef nonnull %107, i32 noundef %121) #13
  br label %123

123:                                              ; preds = %117, %112, %106
  %124 = load ptr, ptr %92, align 8
  %125 = call ptr @__scsi_iterate_devices(ptr noundef %124, ptr noundef nonnull %107) #13
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %106

127:                                              ; preds = %123, %100, %91, %81
  br label %194

128:                                              ; preds = %81
  br label %194

129:                                              ; preds = %81, %77
  %130 = call i32 @scsi_check_sense(ptr noundef %0) #13
  %131 = add i32 %130, -8193
  %132 = icmp ult i32 %131, 6
  br i1 %132, label %191, label %194

133:                                              ; preds = %60
  store ptr null, ptr %13, align 8
  br label %194

134:                                              ; preds = %74
  %135 = load ptr, ptr %8, align 4
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds %struct.Scsi_Host, ptr %136, i32 0, i32 11
  %138 = load ptr, ptr %137, align 8
  %139 = getelementptr inbounds %struct.scsi_host_template, ptr %138, i32 0, i32 9
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %150, label %142

142:                                              ; preds = %134
  %143 = call i32 %140(ptr noundef %0) #13
  %144 = icmp eq i32 %143, 8194
  br i1 %144, label %194, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %8, align 4
  %147 = load ptr, ptr %146, align 8
  %148 = getelementptr inbounds %struct.Scsi_Host, ptr %147, i32 0, i32 11
  %149 = load ptr, ptr %148, align 8
  br label %150

150:                                              ; preds = %145, %134
  %151 = phi ptr [ %149, %145 ], [ %138, %134 ]
  %152 = phi ptr [ %147, %145 ], [ %136, %134 ]
  %153 = getelementptr inbounds %struct.scsi_host_template, ptr %151, i32 0, i32 10
  %154 = load ptr, ptr %153, align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %168, label %156

156:                                              ; preds = %150
  %157 = call i32 %154(ptr noundef %0) #13
  %158 = icmp eq i32 %157, 8194
  %159 = load ptr, ptr %8, align 4
  br i1 %158, label %164, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %159, align 8
  %162 = getelementptr inbounds %struct.Scsi_Host, ptr %161, i32 0, i32 11
  %163 = load ptr, ptr %162, align 8
  br label %168

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.scsi_device, ptr %159, i32 0, i32 41
  %166 = load i64, ptr %165, align 4
  %167 = or i64 %166, 24576
  store i64 %167, ptr %165, align 4
  br label %194

168:                                              ; preds = %160, %150
  %169 = phi ptr [ %163, %160 ], [ %151, %150 ]
  %170 = phi ptr [ %161, %160 ], [ %152, %150 ]
  %171 = getelementptr inbounds %struct.scsi_host_template, ptr %169, i32 0, i32 11
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %186, label %174

174:                                              ; preds = %168
  %175 = call i32 %172(ptr noundef %0) #13
  %176 = icmp eq i32 %175, 8194
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.Scsi_Host, ptr %170, i32 0, i32 4
  %179 = load ptr, ptr %178, align 4
  %180 = call i32 @_raw_spin_lock_irqsave(ptr noundef %179) #13
  %181 = load ptr, ptr %8, align 4
  %182 = getelementptr inbounds %struct.scsi_device, ptr %181, i32 0, i32 54, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr i8, ptr %183, i32 -24
  call void @__starget_for_each_device(ptr noundef %184, ptr noundef null, ptr noundef nonnull @__scsi_report_device_reset) #13
  %185 = load ptr, ptr %178, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %185, i32 noundef %180) #13
  br label %194

186:                                              ; preds = %174, %168
  %187 = call fastcc i32 @scsi_try_bus_reset(ptr noundef %0) #13
  %188 = icmp eq i32 %187, 8194
  br i1 %188, label %194, label %189

189:                                              ; preds = %186
  %190 = call fastcc i32 @scsi_try_host_reset(ptr noundef %0) #13
  br label %194

191:                                              ; preds = %129
  %192 = getelementptr inbounds [6 x i32], ptr @switch.table.scsi_send_eh_cmnd, i32 0, i32 %131
  %193 = load i32, ptr %192, align 4
  br label %194

194:                                              ; preds = %191, %189, %186, %177, %164, %142, %133, %129, %128, %127, %86, %84, %81, %81, %81, %81, %77
  %195 = phi i32 [ 8195, %133 ], [ 8195, %142 ], [ 8195, %164 ], [ 8195, %177 ], [ 8195, %186 ], [ 8195, %189 ], [ 8194, %81 ], [ 8194, %81 ], [ 8194, %81 ], [ 8194, %84 ], [ 8194, %81 ], [ 8195, %77 ], [ 8193, %127 ], [ 8195, %128 ], [ %90, %86 ], [ %193, %191 ], [ 8195, %129 ]
  %196 = load i8, ptr %18, align 4
  %197 = zext i8 %196 to i16
  store i16 %197, ptr %19, align 4
  %198 = load ptr, ptr %20, align 4
  store ptr %198, ptr %21, align 4
  %199 = load i32, ptr %22, align 4
  store i32 %199, ptr %23, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %24, ptr noundef align 4 dereferenceable(16) %25, i32 16, i1 false) #13
  %200 = load i32, ptr %7, align 4
  store i32 %200, ptr %26, align 4
  %201 = load i32, ptr %27, align 4
  store i32 %201, ptr %28, align 4
  %202 = load i32, ptr %29, align 4
  store i32 %202, ptr %30, align 4
  %203 = load i8, ptr %31, align 1
  store i8 %203, ptr %32, align 4
  %204 = load i32, ptr %33, align 4
  store i32 %204, ptr %34, align 4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  ret i32 %195
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_track_queue_full(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scsi_eh_test_devices(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load volatile ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %140, label %7

7:                                                ; preds = %4
  %8 = icmp eq i32 %3, 0
  %9 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  br label %14

11:                                               ; preds = %138, %91
  %12 = load volatile ptr, ptr %0, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %140, label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %5, %7 ], [ %12, %11 ]
  %16 = getelementptr i8, ptr %15, i32 -48
  %17 = getelementptr i8, ptr %15, i32 -4
  %18 = load ptr, ptr %17, align 4
  br i1 %8, label %19, label %44

19:                                               ; preds = %14
  %20 = load ptr, ptr %18, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 19
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 18
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = add i32 %26, %22
  %31 = sub i32 %29, %30
  %32 = icmp slt i32 %31, 0
  %33 = icmp sgt i32 %26, -1
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = load volatile ptr, ptr %0, align 4
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %140, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %1, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %1, ptr %42, align 4
  store ptr %36, ptr %1, align 4
  store ptr %39, ptr %41, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %40, align 4
  br label %140

44:                                               ; preds = %28, %24, %19, %14
  %45 = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 68
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %47 [
    i32 7, label %91
    i32 6, label %91
    i32 4, label %91
  ]

47:                                               ; preds = %44
  br i1 %8, label %78, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 41
  %50 = load i64, ptr %49, align 4
  %51 = and i64 %50, 134217728
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 40
  %55 = load i32, ptr %54, align 8
  %56 = tail call fastcc i32 @scsi_send_eh_cmnd(ptr noundef %16, ptr noundef nonnull @scsi_eh_try_stu.stu_command, i32 noundef 6, i32 noundef %55, i32 noundef 0) #13
  %57 = icmp eq i32 %56, 8193
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load ptr, ptr %17, align 4
  %60 = getelementptr inbounds %struct.scsi_device, ptr %59, i32 0, i32 40
  %61 = load i32, ptr %60, align 8
  %62 = tail call fastcc i32 @scsi_send_eh_cmnd(ptr noundef %16, ptr noundef nonnull @scsi_eh_try_stu.stu_command, i32 noundef 6, i32 noundef %61, i32 noundef 0) #13
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i32 [ %62, %58 ], [ %56, %53 ]
  %65 = icmp eq i32 %64, 8194
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load ptr, ptr %17, align 4
  %68 = getelementptr inbounds %struct.scsi_device, ptr %67, i32 0, i32 40
  %69 = load i32, ptr %68, align 8
  %70 = tail call fastcc i32 @scsi_send_eh_cmnd(ptr noundef %16, ptr noundef nonnull @scsi_eh_tur.tur_command, i32 noundef 6, i32 noundef %69, i32 noundef 0) #13
  switch i32 %70, label %78 [
    i32 8193, label %71
    i32 8194, label %91
  ]

71:                                               ; preds = %66
  %72 = load ptr, ptr %17, align 4
  %73 = getelementptr inbounds %struct.scsi_device, ptr %72, i32 0, i32 40
  %74 = load i32, ptr %73, align 8
  %75 = tail call fastcc i32 @scsi_send_eh_cmnd(ptr noundef %16, ptr noundef nonnull @scsi_eh_tur.tur_command, i32 noundef 6, i32 noundef %74, i32 noundef 0) #13
  %76 = add i32 %75, -8193
  %77 = icmp ult i32 %76, 2
  br i1 %77, label %91, label %78

78:                                               ; preds = %71, %66, %63, %48, %47
  %79 = load ptr, ptr %17, align 4
  %80 = getelementptr inbounds %struct.scsi_device, ptr %79, i32 0, i32 40
  %81 = load i32, ptr %80, align 8
  %82 = tail call fastcc i32 @scsi_send_eh_cmnd(ptr noundef %16, ptr noundef nonnull @scsi_eh_tur.tur_command, i32 noundef 6, i32 noundef %81, i32 noundef 0) #13
  switch i32 %82, label %90 [
    i32 8193, label %83
    i32 8194, label %91
  ]

83:                                               ; preds = %78
  %84 = load ptr, ptr %17, align 4
  %85 = getelementptr inbounds %struct.scsi_device, ptr %84, i32 0, i32 40
  %86 = load i32, ptr %85, align 8
  %87 = tail call fastcc i32 @scsi_send_eh_cmnd(ptr noundef %16, ptr noundef nonnull @scsi_eh_tur.tur_command, i32 noundef 6, i32 noundef %86, i32 noundef 0) #13
  %88 = add i32 %87, -8193
  %89 = icmp ult i32 %88, 2
  br i1 %89, label %91, label %90

90:                                               ; preds = %83, %78
  br label %91

91:                                               ; preds = %90, %83, %78, %71, %66, %44, %44, %44
  %92 = phi i1 [ true, %44 ], [ true, %71 ], [ true, %66 ], [ true, %44 ], [ true, %44 ], [ true, %78 ], [ true, %83 ], [ false, %90 ]
  %93 = load ptr, ptr %0, align 4
  %94 = icmp eq ptr %93, %0
  br i1 %94, label %11, label %95

95:                                               ; preds = %138, %91
  %96 = phi ptr [ %98, %138 ], [ %93, %91 ]
  %97 = getelementptr i8, ptr %96, i32 -48
  %98 = load ptr, ptr %96, align 4
  %99 = getelementptr i8, ptr %96, i32 -4
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, %18
  br i1 %101, label %102, label %138

102:                                              ; preds = %95
  br i1 %92, label %103, label %130

103:                                              ; preds = %102
  br i1 %8, label %104, label %124

104:                                              ; preds = %103
  %105 = getelementptr i8, ptr %96, i32 -204
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 254
  %108 = icmp eq i32 %107, 34
  br i1 %108, label %124, label %109

109:                                              ; preds = %104
  %110 = getelementptr i8, ptr %96, i32 -216
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds %struct.request_queue, ptr %111, i32 0, i32 15
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.gendisk, ptr %113, i32 0, i32 10
  %115 = load ptr, ptr %114, align 8
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.scsi_driver, ptr %116, i32 0, i32 5
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %109
  %121 = tail call i32 %118(ptr noundef %97, i32 noundef 8194) #13
  %122 = icmp eq i32 %121, 8194
  %123 = load ptr, ptr %96, align 4
  br i1 %122, label %124, label %130

124:                                              ; preds = %120, %109, %104, %103
  %125 = phi ptr [ %98, %109 ], [ %98, %104 ], [ %98, %103 ], [ %123, %120 ]
  %126 = getelementptr i8, ptr %96, i32 4
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  store ptr %127, ptr %128, align 4
  store volatile ptr %125, ptr %127, align 4
  %129 = load ptr, ptr %10, align 4
  store ptr %96, ptr %10, align 4
  store ptr %2, ptr %96, align 4
  store ptr %129, ptr %126, align 4
  br label %136

130:                                              ; preds = %120, %102
  %131 = phi ptr [ %98, %102 ], [ %123, %120 ]
  %132 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  store ptr %133, ptr %134, align 4
  store volatile ptr %131, ptr %133, align 4
  %135 = load ptr, ptr %9, align 4
  store ptr %96, ptr %9, align 4
  store ptr %1, ptr %96, align 4
  store ptr %135, ptr %132, align 4
  br label %136

136:                                              ; preds = %130, %124
  %137 = phi ptr [ %135, %130 ], [ %129, %124 ]
  store volatile ptr %96, ptr %137, align 4
  br label %138

138:                                              ; preds = %136, %95
  %139 = icmp eq ptr %98, %0
  br i1 %139, label %11, label %95

140:                                              ; preds = %38, %35, %11, %4
  %141 = load volatile ptr, ptr %1, align 4
  %142 = icmp eq ptr %141, %1
  %143 = zext i1 %142 to i32
  ret i32 %143
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_execute_rq_nowait(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @eh_lock_door_done(ptr noundef %0, i8 noundef zeroext %1) #0 {
  tail call void @blk_mq_free_request(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__starget_for_each_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind allocsize(0) }

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
!8 = !{i64 2153769045}
!9 = !{i64 2153769195}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153748632}
!12 = !{i64 2153748800}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153789684, i64 2153790174, i64 2153789721, i64 2153789777, i64 2153789811, i64 2153789835, i64 2153789876, i64 2153789897, i64 2153789925, i64 2153789959}
!15 = !{i64 2153791114, i64 2153791604, i64 2153791151, i64 2153791207, i64 2153791241, i64 2153791265, i64 2153791306, i64 2153791327, i64 2153791355, i64 2153791389}
!16 = !{!"auto-init"}
!17 = !{i64 2153808007, i64 2153808498, i64 2153808044, i64 2153808100, i64 2153808134, i64 2153808158, i64 2153808199, i64 2153808220, i64 2153808248, i64 2153808282}
!18 = !{i64 2153905845}
!19 = !{i64 2153888169, i64 2153888660, i64 2153888206, i64 2153888262, i64 2153888296, i64 2153888320, i64 2153888361, i64 2153888382, i64 2153888410, i64 2153888444}
!20 = !{i64 4326874}
!21 = !{i64 4327071}
!22 = !{i64 2151812350}
!23 = !{i64 2153933200, i64 2153933480, i64 2153933814, i64 2153934148}
