; ModuleID = '/llk/IR/drivers/scsi/scsi_ioctl.c_pt.bc'
source_filename = "../drivers/scsi/scsi_ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_set_medium_removal:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_set_medium_removal\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_set_medium_removal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_cmd_allowed:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_cmd_allowed\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_cmd_allowed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_sg_io_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22put_sg_io_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_put_sg_io_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_sg_io_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22get_sg_io_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_get_sg_io_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_ioctl_block_when_processing_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_ioctl_block_when_processing_errors\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_ioctl_block_when_processing_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.execute_work = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scsi_idlun = type { i32, i32 }
%struct.cdrom_generic_command = type { [12 x i8], ptr, i32, i32, ptr, i8, i32, i32, %union.anon.79 }
%union.anon.79 = type { [1 x ptr] }
%struct.sg_io_hdr = type { i32, i32, i8, i8, i16, i32, ptr, ptr, ptr, i32, i32, i32, ptr, i8, i8, i8, i8, i16, i16, i32, i32, i32 }
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
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.52 }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.scsi_ioctl_command = type { i32, i32, [0 x i8] }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.18, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.19, %union.anon.20, %union.anon.21, %union.anon.26, ptr, ptr }
%union.anon.18 = type { %struct.list_head }
%union.anon.19 = type { %struct.hlist_node }
%union.anon.20 = type { %struct.rb_node }
%union.anon.21 = type { %struct.anon.25 }
%struct.anon.25 = type { i32, %struct.list_head, ptr }
%union.anon.26 = type { i64, [8 x i8] }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.29, %union.anon.30 }
%union.anon.29 = type { ptr }
%union.anon.30 = type { i64 }

@__kstrtab_scsi_set_medium_removal = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_set_medium_removal = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_set_medium_removal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_set_medium_removal to i32), ptr @__kstrtab_scsi_set_medium_removal, ptr @__kstrtabns_scsi_set_medium_removal }, section "___ksymtab+scsi_set_medium_removal", align 4
@__kstrtab_scsi_cmd_allowed = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_cmd_allowed = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_cmd_allowed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_cmd_allowed to i32), ptr @__kstrtab_scsi_cmd_allowed, ptr @__kstrtabns_scsi_cmd_allowed }, section "___ksymtab+scsi_cmd_allowed", align 4
@__kstrtab_put_sg_io_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_sg_io_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_put_sg_io_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_sg_io_hdr to i32), ptr @__kstrtab_put_sg_io_hdr, ptr @__kstrtabns_put_sg_io_hdr }, section "___ksymtab+put_sg_io_hdr", align 4
@__kstrtab_get_sg_io_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_sg_io_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_get_sg_io_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_sg_io_hdr to i32), ptr @__kstrtab_get_sg_io_hdr, ptr @__kstrtabns_get_sg_io_hdr }, section "___ksymtab+get_sg_io_hdr", align 4
@.str = private unnamed_addr constant [75 x i8] c"\014program %s is using a deprecated SCSI ioctl, please convert it to SG_IO\0A\00", align 1
@__kstrtab_scsi_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_ioctl to i32), ptr @__kstrtab_scsi_ioctl, ptr @__kstrtabns_scsi_ioctl }, section "___ksymtab+scsi_ioctl", align 4
@__kstrtab_scsi_ioctl_block_when_processing_errors = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_ioctl_block_when_processing_errors = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_ioctl_block_when_processing_errors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_ioctl_block_when_processing_errors to i32), ptr @__kstrtab_scsi_ioctl_block_when_processing_errors, ptr @__kstrtabns_scsi_ioctl_block_when_processing_errors }, section "___ksymtab_gpl+scsi_ioctl_block_when_processing_errors", align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"ioctl_internal_command: ILLEGAL REQUEST asc=0x%x ascq=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"ioctl_internal_command return code = %x\0A\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_get_sg_io_hdr, ptr @__ksymtab_put_sg_io_hdr, ptr @__ksymtab_scsi_cmd_allowed, ptr @__ksymtab_scsi_ioctl, ptr @__ksymtab_scsi_ioctl_block_when_processing_errors, ptr @__ksymtab_scsi_set_medium_removal], section "llvm.metadata"
@switch.table.scsi_ioctl = private unnamed_addr constant [4 x i32] [i32 -5, i32 -2, i32 -3, i32 -1], align 4
@switch.table.sg_io = private unnamed_addr constant [3 x i32] [i32 34, i32 34, i32 35], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_set_medium_removal(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %4 = getelementptr inbounds i8, ptr %3, i32 6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 10, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %6 = load i64, ptr %5, align 4
  %7 = and i64 %6, 9
  %8 = icmp eq i64 %7, 9
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  store i8 30, ptr %3, align 1
  %10 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 2
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 4
  store i8 %1, ptr %13, align 1
  %14 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 5
  store i8 0, ptr %14, align 1
  %15 = call fastcc i32 @ioctl_internal_command(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1000)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = icmp eq i8 %1, 1
  %19 = load i64, ptr %5, align 4
  %20 = select i1 %18, i64 16, i64 0
  %21 = and i64 %19, -17
  %22 = or i64 %21, %20
  store i64 %22, ptr %5, align 4
  br label %23

23:                                               ; preds = %17, %9, %2
  %24 = phi i32 [ 0, %2 ], [ 0, %17 ], [ %15, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ioctl_internal_command(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.scsi_sense_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = call i32 @__scsi_execute(ptr noundef %0, ptr noundef %1, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %4, i32 noundef %2, i32 noundef 5, i64 noundef 0, i32 noundef 0, ptr noundef null) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load i8, ptr %4, align 8
  %9 = and i8 %8, 112
  %10 = icmp eq i8 %9, 112
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  switch i8 %13, label %41 [
    i8 5, label %14
    i8 2, label %28
    i8 6, label %33
  ]

14:                                               ; preds = %11
  %15 = load i8, ptr %1, align 1
  %16 = icmp eq i8 %15, 30
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %19 = load i64, ptr %18, align 4
  %20 = and i64 %19, -9
  store i64 %20, ptr %18, align 4
  br label %42

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 2
  %23 = load i8, ptr %22, align 2
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef %24, i32 noundef %27) #9
  br label %42

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %30 = load i64, ptr %29, align 4
  %31 = and i64 %30, 1
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %41, label %42

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %35 = load i64, ptr %34, align 4
  %36 = and i64 %35, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %40 = or i64 %35, 2
  store i64 %40, ptr %39, align 4
  br label %42

41:                                               ; preds = %33, %28, %11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef %5) #9
  call void @scsi_print_sense_hdr(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4) #9
  br label %42

42:                                               ; preds = %41, %38, %28, %21, %17, %7, %3
  %43 = phi i32 [ %5, %3 ], [ %5, %41 ], [ 0, %38 ], [ %5, %28 ], [ %5, %17 ], [ %5, %21 ], [ %5, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @scsi_cmd_allowed(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = tail call zeroext i1 @capable(i32 noundef 17) #9
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1
  switch i8 %5, label %9 [
    i8 0, label %10
    i8 3, label %10
    i8 8, label %10
    i8 40, label %10
    i8 -88, label %10
    i8 -120, label %10
    i8 60, label %10
    i8 55, label %10
    i8 37, label %10
    i8 62, label %10
    i8 18, label %10
    i8 26, label %10
    i8 90, label %10
    i8 77, label %10
    i8 27, label %10
    i8 47, label %10
    i8 -113, label %10
    i8 -96, label %10
    i8 -98, label %10
    i8 28, label %10
    i8 -93, label %10
    i8 92, label %10
    i8 -68, label %10
    i8 69, label %10
    i8 71, label %10
    i8 72, label %10
    i8 75, label %10
    i8 -66, label %10
    i8 -71, label %10
    i8 81, label %10
    i8 -83, label %10
    i8 68, label %10
    i8 82, label %10
    i8 66, label %10
    i8 67, label %10
    i8 -92, label %10
    i8 -70, label %10
    i8 70, label %10
    i8 35, label %10
    i8 74, label %10
    i8 -84, label %10
    i8 43, label %10
    i8 78, label %10
    i8 -107, label %10
    i8 10, label %6
    i8 42, label %6
    i8 46, label %6
    i8 -86, label %6
    i8 -82, label %6
    i8 -118, label %6
    i8 63, label %6
    i8 -22, label %6
    i8 65, label %6
    i8 -109, label %6
    i8 13, label %6
    i8 25, label %6
    i8 85, label %6
    i8 21, label %6
    i8 76, label %6
    i8 -95, label %6
    i8 91, label %6
    i8 53, label %6
    i8 4, label %6
    i8 88, label %6
    i8 83, label %6
    i8 -65, label %6
    i8 -94, label %6
    i8 84, label %6
    i8 93, label %6
    i8 -69, label %6
    i8 30, label %6
    i8 -90, label %6
    i8 -74, label %6
    i8 -89, label %6
    i8 -108, label %6
  ]

6:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %7 = and i32 %1, 2
  %8 = icmp ne i32 %7, 0
  br label %10

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9, %6, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %2
  %11 = phi i1 [ false, %9 ], [ %8, %6 ], [ true, %2 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ], [ true, %4 ]
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @put_sg_io_hdr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 64, i32 -1090519040) #10, !srcloc !9
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #11, !srcloc !10
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %12 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %0, i32 noundef 64) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 0, i32 -14
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ -14, %2 ], [ %14, %6 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_sg_io_hdr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 64, i32 -1090519040) #10, !srcloc !13
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14, !prof !14

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #11, !srcloc !10
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %12 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %1, i32 noundef 64) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ %12, %6 ], [ 64, %2 ]
  %16 = sub i32 64, %15
  %17 = getelementptr i8, ptr %0, i32 %16
  tail call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %15, i1 false) #9
  br label %18

18:                                               ; preds = %14, %6
  %19 = phi i32 [ 0, %6 ], [ -14, %14 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [16 x i8], align 1
  %6 = alloca [16 x i8], align 1
  %7 = alloca [16 x i8], align 1
  %8 = alloca [16 x i8], align 1
  %9 = alloca %struct.scsi_idlun, align 8
  %10 = alloca [16 x i8], align 1
  %11 = alloca [16 x i8], align 1
  %12 = alloca %struct.cdrom_generic_command, align 4
  %13 = alloca %struct.sg_io_hdr, align 4
  %14 = alloca %struct.sg_io_hdr, align 4
  %15 = alloca %struct.scsi_sense_hdr, align 8
  %16 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #9
  store i64 0, ptr %15, align 8, !annotation !8
  %18 = add i32 %2, -1
  %19 = icmp ult i32 %18, 6
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = tail call ptr @llvm.thread.pointer() #9
  %22 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 85
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %22) #12
  br label %24

24:                                               ; preds = %20, %4
  switch i32 %2, label %517 [
    i32 8834, label %25
    i32 8705, label %32
    i32 8706, label %45
    i32 8818, label %49
    i32 8821, label %64
    i32 8707, label %84
    i32 8837, label %91
    i32 1, label %119
    i32 21395, label %273
    i32 21273, label %337
    i32 21257, label %341
    i32 21378, label %345
    i32 21382, label %382
    i32 21381, label %392
    i32 21376, label %443
    i32 21377, label %462
    i32 2, label %477
    i32 5, label %479
    i32 6, label %483
    i32 21383, label %486
    i32 8836, label %515
  ]

25:                                               ; preds = %24
  %26 = tail call ptr @llvm.thread.pointer() #9
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %27) #11, !srcloc !10
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 30527, i32 -1090519041) #9, !srcloc !15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  br label %526

32:                                               ; preds = %24
  %33 = tail call ptr @llvm.thread.pointer() #9
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #11, !srcloc !10
  %36 = and i32 %35, -13
  %37 = or i32 %36, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %38 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %3, i32 -1090519041) #9, !srcloc !16
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %526

41:                                               ; preds = %32
  %42 = extractvalue { i32, i32 } %38, 1
  %43 = tail call i32 @clock_t_to_jiffies(i32 noundef %42) #9
  %44 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 62
  store i32 %43, ptr %44, align 8
  br label %526

45:                                               ; preds = %24
  %46 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 62
  %47 = load i32, ptr %46, align 8
  %48 = tail call i32 @jiffies_to_clock_t(i32 noundef %47) #9
  br label %526

49:                                               ; preds = %24
  %50 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 63
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %16, align 4
  %53 = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 32, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 4194303) #9
  %56 = shl nuw nsw i32 %55, 9
  %57 = tail call i32 @llvm.umin.i32(i32 %51, i32 %56) #9
  %58 = tail call ptr @llvm.thread.pointer() #9
  %59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %60 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %59) #11, !srcloc !10
  %61 = and i32 %60, -13
  %62 = or i32 %61, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %63 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %57, i32 -1090519041) #9, !srcloc !17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  br label %526

64:                                               ; preds = %24
  %65 = tail call ptr @llvm.thread.pointer() #9
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %67 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %66) #11, !srcloc !10
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %70 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %3, i32 -1090519041) #9, !srcloc !18
  %71 = extractvalue { i32, i32 } %70, 0
  %72 = extractvalue { i32, i32 } %70, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %74, label %526

74:                                               ; preds = %64
  %75 = icmp slt i32 %72, 0
  br i1 %75, label %526, label %76

76:                                               ; preds = %74
  %77 = load ptr, ptr %16, align 4
  %78 = getelementptr inbounds %struct.request_queue, ptr %77, i32 0, i32 32, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = tail call i32 @llvm.umin.i32(i32 %79, i32 4194303) #9
  %81 = shl nuw nsw i32 %80, 9
  %82 = tail call i32 @llvm.umin.i32(i32 %72, i32 %81) #9
  %83 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 63
  store i32 %82, ptr %83, align 4
  br label %526

84:                                               ; preds = %24
  %85 = tail call ptr @llvm.thread.pointer() #9
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  %87 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %86) #11, !srcloc !10
  %88 = and i32 %87, -13
  %89 = or i32 %88, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %90 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 1, i32 -1090519041) #9, !srcloc !19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  br label %526

91:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %14, i8 0, i32 64, i1 false) #9, !annotation !8
  %92 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 64, i32 -1090519040) #10
  %93 = extractvalue { i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %103, !prof !14

95:                                               ; preds = %91
  %96 = tail call ptr @llvm.thread.pointer() #9
  %97 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 3
  %98 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %97) #11, !srcloc !10
  %99 = and i32 %98, -13
  %100 = or i32 %99, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %101 = call i32 @arm_copy_from_user(ptr noundef nonnull %14, ptr noundef %3, i32 noundef 64) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103, !prof !14

103:                                              ; preds = %95, %91
  %104 = phi i32 [ %101, %95 ], [ 64, %91 ]
  %105 = sub i32 64, %104
  %106 = getelementptr i8, ptr %14, i32 %105
  call void @llvm.memset.p0.i32(ptr align 1 %106, i8 0, i32 %104, i1 false) #9
  br label %117

107:                                              ; preds = %95
  %108 = call fastcc i32 @sg_io(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %1) #9
  %109 = icmp eq i32 %108, -14
  br i1 %109, label %117, label %110

110:                                              ; preds = %107
  %111 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %97) #11, !srcloc !10
  %112 = and i32 %111, -13
  %113 = or i32 %112, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %113) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %114 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %14, i32 noundef 64) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, i32 %108, i32 -14
  br label %117

117:                                              ; preds = %110, %107, %103
  %118 = phi i32 [ -14, %107 ], [ -14, %103 ], [ %116, %110 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #9
  br label %526

119:                                              ; preds = %24
  %120 = icmp eq ptr %3, null
  br i1 %120, label %526, label %121

121:                                              ; preds = %119
  %122 = tail call ptr @llvm.thread.pointer() #9
  %123 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 3
  %124 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %123) #11, !srcloc !10
  %125 = and i32 %124, -13
  %126 = or i32 %125, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %126) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %127 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %3, i32 -1090519041) #9, !srcloc !20
  %128 = extractvalue { i32, i32 } %127, 0
  %129 = extractvalue { i32, i32 } %127, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %124) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %130 = icmp eq i32 %128, 0
  br i1 %130, label %131, label %526

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.scsi_ioctl_command, ptr %3, i32 0, i32 1
  %133 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %123) #11, !srcloc !10
  %134 = and i32 %133, -13
  %135 = or i32 %134, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %135) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %136 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %132, i32 -1090519041) #9, !srcloc !21
  %137 = extractvalue { i32, i32 } %136, 0
  %138 = extractvalue { i32, i32 } %136, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %133) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %139 = icmp eq i32 %137, 0
  br i1 %139, label %140, label %526

140:                                              ; preds = %131
  %141 = icmp ugt i32 %129, 4096
  %142 = icmp ugt i32 %138, 4096
  %143 = select i1 %141, i1 true, i1 %142
  br i1 %143, label %526, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.scsi_ioctl_command, ptr %3, i32 0, i32 2
  %146 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %123) #11, !srcloc !10
  %147 = and i32 %146, -13
  %148 = or i32 %147, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %148) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %149 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %145, i32 -1090519041) #9, !srcloc !22
  %150 = extractvalue { i32, i32 } %149, 0
  %151 = extractvalue { i32, i32 } %149, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %152 = icmp eq i32 %150, 0
  br i1 %152, label %153, label %526

153:                                              ; preds = %144
  %154 = tail call i32 @llvm.umax.i32(i32 %129, i32 %138) #9
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %154, i32 noundef 1060288) #13
  %158 = icmp eq ptr %157, null
  br i1 %158, label %526, label %159

159:                                              ; preds = %156, %153
  %160 = phi ptr [ %157, %156 ], [ null, %153 ]
  %161 = icmp eq i32 %129, 0
  %162 = select i1 %161, i32 34, i32 35
  %163 = tail call ptr @scsi_alloc_request(ptr noundef %17, i32 noundef %162, i32 noundef 0) #9
  %164 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = ptrtoint ptr %163 to i32
  br label %271

167:                                              ; preds = %159
  %168 = getelementptr %struct.request, ptr %163, i32 1
  %169 = lshr i32 %151, 5
  %170 = and i32 %169, 7
  %171 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %170
  %172 = load i8, ptr %171, align 1
  %173 = zext i8 %172 to i32
  %174 = zext i8 %172 to i16
  %175 = getelementptr %struct.request, ptr %163, i32 1, i32 5
  store i16 %174, ptr %175, align 4
  %176 = getelementptr %struct.request, ptr %163, i32 1, i32 4
  %177 = load ptr, ptr %176, align 4
  %178 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %145, i32 %173, i32 -1090519040) #10, !srcloc !13
  %179 = extractvalue { i32, i32 } %178, 0
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %186, !prof !14

181:                                              ; preds = %167
  %182 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %123) #11, !srcloc !10
  %183 = and i32 %182, -13
  %184 = or i32 %183, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %184) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %185 = tail call i32 @arm_copy_from_user(ptr noundef %177, ptr noundef %145, i32 noundef %173) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %182) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  br label %186

186:                                              ; preds = %181, %167
  %187 = phi i32 [ %185, %181 ], [ %173, %167 ]
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %189, !prof !14

189:                                              ; preds = %186
  %190 = sub i32 %173, %187
  %191 = getelementptr i8, ptr %177, i32 %190
  tail call void @llvm.memset.p0.i32(ptr align 1 %191, i8 0, i32 %187, i1 false) #9
  br label %269

192:                                              ; preds = %186
  br i1 %161, label %208, label %193

193:                                              ; preds = %192
  %194 = getelementptr i8, ptr %145, i32 %173
  %195 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %194, i32 %129, i32 -1090519040) #10, !srcloc !13
  %196 = extractvalue { i32, i32 } %195, 0
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %204, !prof !14

198:                                              ; preds = %193
  %199 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %123) #11, !srcloc !10
  %200 = and i32 %199, -13
  %201 = or i32 %200, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %201) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %202 = tail call i32 @arm_copy_from_user(ptr noundef %160, ptr noundef %194, i32 noundef %129) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %199) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %208, label %204, !prof !14

204:                                              ; preds = %198, %193
  %205 = phi i32 [ %202, %198 ], [ %129, %193 ]
  %206 = sub i32 %129, %205
  %207 = getelementptr i8, ptr %160, i32 %206
  tail call void @llvm.memset.p0.i32(ptr align 1 %207, i8 0, i32 %205, i1 false) #9
  br label %269

208:                                              ; preds = %198, %192
  %209 = load ptr, ptr %176, align 4
  %210 = tail call zeroext i1 @scsi_cmd_allowed(ptr noundef %209, i32 noundef %1) #9
  br i1 %210, label %211, label %269

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.scsi_request, ptr %168, i32 0, i32 6
  store i32 5, ptr %212, align 4
  %213 = trunc i32 %151 to i8
  switch i8 %213, label %224 [
    i8 29, label %214
    i8 4, label %214
    i8 27, label %216
    i8 -91, label %218
    i8 -72, label %220
    i8 55, label %222
  ]

214:                                              ; preds = %211, %211
  %215 = getelementptr inbounds %struct.request, ptr %163, i32 0, i32 7
  store i32 720000, ptr %215, align 4
  store i32 1, ptr %212, align 4
  br label %226

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.request, ptr %163, i32 0, i32 7
  store i32 6000, ptr %217, align 4
  br label %226

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.request, ptr %163, i32 0, i32 7
  store i32 30000, ptr %219, align 4
  br label %226

220:                                              ; preds = %211
  %221 = getelementptr inbounds %struct.request, ptr %163, i32 0, i32 7
  store i32 30000, ptr %221, align 4
  br label %226

222:                                              ; preds = %211
  %223 = getelementptr inbounds %struct.request, ptr %163, i32 0, i32 7
  store i32 6000, ptr %223, align 4
  store i32 1, ptr %212, align 4
  br label %226

224:                                              ; preds = %211
  %225 = getelementptr inbounds %struct.request, ptr %163, i32 0, i32 7
  store i32 6000, ptr %225, align 4
  br label %226

226:                                              ; preds = %224, %222, %220, %218, %216, %214
  br i1 %155, label %230, label %227

227:                                              ; preds = %226
  %228 = tail call i32 @blk_rq_map_kern(ptr noundef %17, ptr noundef %163, ptr noundef %160, i32 noundef %154, i32 noundef 3072) #9
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %269

230:                                              ; preds = %227, %226
  %231 = tail call zeroext i8 @blk_execute_rq(ptr noundef %163, i1 noundef zeroext false) #9
  %232 = getelementptr %struct.request, ptr %163, i32 1, i32 6
  %233 = load i32, ptr %232, align 4
  %234 = and i32 %233, 255
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %256, label %236

236:                                              ; preds = %230
  %237 = getelementptr %struct.request, ptr %163, i32 1, i32 7
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %269, label %240

240:                                              ; preds = %236
  %241 = getelementptr %struct.request, ptr %163, i32 1, i32 9
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %269, label %244

244:                                              ; preds = %240
  %245 = tail call i32 @llvm.umin.i32(i32 %238, i32 16) #9
  %246 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %145, i32 %245, i32 -1090519040) #10, !srcloc !9
  %247 = extractvalue { i32, i32 } %246, 0
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %269

249:                                              ; preds = %244
  %250 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %123) #11, !srcloc !10
  %251 = and i32 %250, -13
  %252 = or i32 %251, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %252) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %253 = tail call i32 @arm_copy_to_user(ptr noundef %145, ptr noundef nonnull %242, i32 noundef %245) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %250) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %254 = icmp eq i32 %253, 0
  %255 = select i1 %254, i32 %234, i32 -14
  br label %269

256:                                              ; preds = %230
  %257 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %145, i32 %138, i32 -1090519040) #10, !srcloc !9
  %258 = extractvalue { i32, i32 } %257, 0
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %256
  %261 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %123) #11, !srcloc !10
  %262 = and i32 %261, -13
  %263 = or i32 %262, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %263) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %264 = tail call i32 @arm_copy_to_user(ptr noundef %145, ptr noundef %160, i32 noundef %138) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %261) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  br label %265

265:                                              ; preds = %260, %256
  %266 = phi i32 [ %264, %260 ], [ %138, %256 ]
  %267 = icmp eq i32 %266, 0
  %268 = select i1 %267, i32 0, i32 -14
  br label %269

269:                                              ; preds = %265, %249, %244, %240, %236, %227, %208, %204, %189
  %270 = phi i32 [ %228, %227 ], [ %234, %240 ], [ %234, %236 ], [ -1, %208 ], [ -14, %189 ], [ -14, %204 ], [ -14, %244 ], [ %255, %249 ], [ %268, %265 ]
  tail call void @blk_mq_free_request(ptr noundef %163) #9
  br label %271

271:                                              ; preds = %269, %165
  %272 = phi i32 [ %166, %165 ], [ %270, %269 ]
  tail call void @kfree(ptr noundef %160) #9
  br label %526

273:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %12) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %12, i8 0, i32 44, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #9
  %274 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 44, i32 -1090519040) #10
  %275 = extractvalue { i32, i32 } %274, 0
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %285, !prof !14

277:                                              ; preds = %273
  %278 = tail call ptr @llvm.thread.pointer() #9
  %279 = getelementptr inbounds %struct.thread_info, ptr %278, i32 0, i32 3
  %280 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %279) #11, !srcloc !10
  %281 = and i32 %280, -13
  %282 = or i32 %281, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %282) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %283 = call i32 @arm_copy_from_user(ptr noundef nonnull %12, ptr noundef %3, i32 noundef 44) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %280) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %289, label %285, !prof !14

285:                                              ; preds = %277, %273
  %286 = phi i32 [ %283, %277 ], [ 44, %273 ]
  %287 = sub i32 44, %286
  %288 = getelementptr i8, ptr %12, i32 %287
  call void @llvm.memset.p0.i32(ptr align 1 %288, i8 0, i32 %286, i1 false) #9
  br label %335

289:                                              ; preds = %277
  %290 = getelementptr inbounds %struct.cdrom_generic_command, ptr %12, i32 0, i32 7
  %291 = load i32, ptr %290, align 4
  %292 = call i32 @clock_t_to_jiffies(i32 noundef %291) #9
  store i32 %292, ptr %290, align 4
  %293 = getelementptr inbounds i8, ptr %13, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %293, i8 0, i32 56, i1 false) #9
  store i32 83, ptr %13, align 4
  %294 = getelementptr inbounds %struct.sg_io_hdr, ptr %13, i32 0, i32 2
  %295 = getelementptr inbounds %struct.cdrom_generic_command, ptr %12, i32 0, i32 2
  %296 = load i32, ptr %295, align 4
  %297 = getelementptr inbounds %struct.sg_io_hdr, ptr %13, i32 0, i32 5
  store i32 %296, ptr %297, align 4
  %298 = getelementptr inbounds %struct.cdrom_generic_command, ptr %12, i32 0, i32 5
  %299 = load i8, ptr %298, align 4
  %300 = icmp ult i8 %299, 4
  br i1 %300, label %301, label %335

301:                                              ; preds = %289
  %302 = getelementptr inbounds i8, ptr %13, i32 4
  %303 = sext i8 %299 to i32
  %304 = getelementptr inbounds [4 x i32], ptr @switch.table.scsi_ioctl, i32 0, i32 %303
  %305 = load i32, ptr %304, align 4
  store i32 %305, ptr %302, align 4
  %306 = getelementptr inbounds %struct.cdrom_generic_command, ptr %12, i32 0, i32 1
  %307 = load ptr, ptr %306, align 4
  %308 = getelementptr inbounds %struct.sg_io_hdr, ptr %13, i32 0, i32 6
  store ptr %307, ptr %308, align 4
  %309 = getelementptr inbounds %struct.cdrom_generic_command, ptr %12, i32 0, i32 4
  %310 = load ptr, ptr %309, align 4
  %311 = getelementptr inbounds %struct.sg_io_hdr, ptr %13, i32 0, i32 8
  store ptr %310, ptr %311, align 4
  %312 = icmp eq ptr %310, null
  br i1 %312, label %315, label %313

313:                                              ; preds = %301
  %314 = getelementptr inbounds %struct.sg_io_hdr, ptr %13, i32 0, i32 3
  store i8 64, ptr %314, align 1
  br label %315

315:                                              ; preds = %313, %301
  %316 = call i32 @jiffies_to_msecs(i32 noundef %292) #9
  %317 = getelementptr inbounds %struct.sg_io_hdr, ptr %13, i32 0, i32 9
  store i32 %316, ptr %317, align 4
  %318 = getelementptr inbounds %struct.sg_io_hdr, ptr %13, i32 0, i32 7
  store ptr %3, ptr %318, align 4
  store i8 12, ptr %294, align 4
  %319 = call fastcc i32 @sg_io(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %1) #9
  %320 = icmp eq i32 %319, -14
  br i1 %320, label %335, label %321

321:                                              ; preds = %315
  %322 = getelementptr inbounds %struct.sg_io_hdr, ptr %13, i32 0, i32 13
  %323 = load i8, ptr %322, align 4
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %325, label %335

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.cdrom_generic_command, ptr %12, i32 0, i32 3
  store i32 %319, ptr %326, align 4
  %327 = getelementptr inbounds %struct.sg_io_hdr, ptr %13, i32 0, i32 19
  %328 = load i32, ptr %327, align 4
  store i32 %328, ptr %295, align 4
  %329 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %279) #11, !srcloc !10
  %330 = and i32 %329, -13
  %331 = or i32 %330, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %331) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %332 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %12, i32 noundef 44) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %329) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %333 = icmp eq i32 %332, 0
  %334 = select i1 %333, i32 %319, i32 -14
  br label %335

335:                                              ; preds = %325, %321, %315, %289, %285
  %336 = phi i32 [ -22, %289 ], [ -14, %315 ], [ -5, %321 ], [ -14, %285 ], [ %334, %325 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %12) #9
  br label %526

337:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9
  %338 = getelementptr inbounds i8, ptr %11, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %338, i8 0, i32 15, i1 false) #9
  store i8 27, ptr %11, align 1
  %339 = getelementptr inbounds [16 x i8], ptr %11, i32 0, i32 4
  store i8 3, ptr %339, align 1
  %340 = call fastcc i32 @ioctl_internal_command(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 6000) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9
  br label %526

341:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  %342 = getelementptr inbounds i8, ptr %10, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %342, i8 0, i32 15, i1 false) #9
  store i8 27, ptr %10, align 1
  %343 = getelementptr inbounds [16 x i8], ptr %10, i32 0, i32 4
  store i8 2, ptr %343, align 1
  %344 = call fastcc i32 @ioctl_internal_command(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 6000) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  br label %526

345:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  %346 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 16
  %347 = load i32, ptr %346, align 8
  %348 = and i32 %347, 255
  %349 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 18
  %350 = load i64, ptr %349, align 8
  %351 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 17
  %352 = load i32, ptr %351, align 4
  %353 = shl i32 %352, 16
  %354 = and i32 %353, 16711680
  %355 = load ptr, ptr %0, align 8
  %356 = getelementptr inbounds %struct.Scsi_Host, ptr %355, i32 0, i32 17
  %357 = load i32, ptr %356, align 4
  %358 = shl i32 %357, 24
  %359 = trunc i64 %350 to i32
  %360 = shl i32 %359, 8
  %361 = and i32 %360, 65280
  %362 = or i32 %361, %348
  %363 = or i32 %362, %354
  %364 = or i32 %363, %358
  store i32 %364, ptr %9, align 8
  %365 = getelementptr inbounds %struct.scsi_idlun, ptr %9, i32 0, i32 1
  %366 = getelementptr inbounds %struct.Scsi_Host, ptr %355, i32 0, i32 23
  %367 = load i32, ptr %366, align 8
  store i32 %367, ptr %365, align 4
  %368 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 8, i32 -1090519040) #10, !srcloc !9
  %369 = extractvalue { i32, i32 } %368, 0
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %380

371:                                              ; preds = %345
  %372 = tail call ptr @llvm.thread.pointer() #9
  %373 = getelementptr inbounds %struct.thread_info, ptr %372, i32 0, i32 3
  %374 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %373) #11, !srcloc !10
  %375 = and i32 %374, -13
  %376 = or i32 %375, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %376) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %377 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %9, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %374) #9, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %378 = icmp eq i32 %377, 0
  %379 = select i1 %378, i32 0, i32 -14
  br label %380

380:                                              ; preds = %371, %345
  %381 = phi i32 [ -14, %345 ], [ %379, %371 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %526

382:                                              ; preds = %24
  %383 = load ptr, ptr %0, align 8
  %384 = getelementptr inbounds %struct.Scsi_Host, ptr %383, i32 0, i32 17
  %385 = load i32, ptr %384, align 4
  %386 = tail call ptr @llvm.thread.pointer() #9
  %387 = getelementptr inbounds %struct.thread_info, ptr %386, i32 0, i32 3
  %388 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %387) #11, !srcloc !10
  %389 = and i32 %388, -13
  %390 = or i32 %389, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %390) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %391 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %385, i32 -1090519041) #9, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %388) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  br label %526

392:                                              ; preds = %24
  %393 = load ptr, ptr %0, align 8
  %394 = icmp eq ptr %3, null
  br i1 %394, label %442, label %395

395:                                              ; preds = %392
  %396 = tail call ptr @llvm.thread.pointer() #9
  %397 = getelementptr inbounds %struct.thread_info, ptr %396, i32 0, i32 3
  %398 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %397) #11, !srcloc !10
  %399 = and i32 %398, -13
  %400 = or i32 %399, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %400) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %401 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %3, i32 -1090519041) #9, !srcloc !24
  %402 = extractvalue { i32, i32 } %401, 0
  %403 = extractvalue { i32, i32 } %401, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %398) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %404 = icmp eq i32 %402, 0
  br i1 %404, label %405, label %526

405:                                              ; preds = %395
  %406 = getelementptr inbounds %struct.Scsi_Host, ptr %393, i32 0, i32 11
  %407 = load ptr, ptr %406, align 8
  %408 = getelementptr inbounds %struct.scsi_host_template, ptr %407, i32 0, i32 5
  %409 = load ptr, ptr %408, align 4
  %410 = icmp eq ptr %409, null
  br i1 %410, label %413, label %411

411:                                              ; preds = %405
  %412 = tail call ptr %409(ptr noundef %393) #9
  br label %416

413:                                              ; preds = %405
  %414 = getelementptr inbounds %struct.scsi_host_template, ptr %407, i32 0, i32 4
  %415 = load ptr, ptr %414, align 8
  br label %416

416:                                              ; preds = %413, %411
  %417 = phi ptr [ %412, %411 ], [ %415, %413 ]
  %418 = icmp eq ptr %417, null
  br i1 %418, label %442, label %419

419:                                              ; preds = %416
  %420 = tail call i32 @strlen(ptr noundef nonnull %417) #9
  %421 = icmp ugt i32 %403, %420
  %422 = add i32 %420, 1
  %423 = select i1 %421, i32 %422, i32 %403
  %424 = icmp slt i32 %423, 0
  %425 = load i1, ptr @check_copy_size.__already_done, align 1
  %426 = xor i1 %425, true
  %427 = select i1 %424, i1 %426, i1 false
  br i1 %427, label %428, label %429, !prof !25

428:                                              ; preds = %419
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %429

429:                                              ; preds = %428, %419
  br i1 %424, label %526, label %430, !prof !25

430:                                              ; preds = %429
  %431 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %3, i32 %423, i32 -1090519040) #10, !srcloc !9
  %432 = extractvalue { i32, i32 } %431, 0
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %430
  %435 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %397) #11, !srcloc !10
  %436 = and i32 %435, -13
  %437 = or i32 %436, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %437) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %438 = tail call i32 @arm_copy_to_user(ptr noundef nonnull %3, ptr noundef nonnull %417, i32 noundef %423) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %435) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  br label %439

439:                                              ; preds = %434, %430
  %440 = phi i32 [ %438, %434 ], [ %423, %430 ]
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %526

442:                                              ; preds = %439, %416, %392
  br label %526

443:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %444 = getelementptr inbounds i8, ptr %8, i32 6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %444, i8 0, i32 10, i1 false) #9, !annotation !8
  %445 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %446 = load i64, ptr %445, align 4
  %447 = and i64 %446, 9
  %448 = icmp eq i64 %447, 9
  br i1 %448, label %449, label %460

449:                                              ; preds = %443
  store i8 30, ptr %8, align 1
  %450 = getelementptr inbounds [16 x i8], ptr %8, i32 0, i32 1
  store i8 0, ptr %450, align 1
  %451 = getelementptr inbounds [16 x i8], ptr %8, i32 0, i32 2
  store i8 0, ptr %451, align 1
  %452 = getelementptr inbounds [16 x i8], ptr %8, i32 0, i32 3
  store i8 0, ptr %452, align 1
  %453 = getelementptr inbounds [16 x i8], ptr %8, i32 0, i32 4
  store i8 1, ptr %453, align 1
  %454 = getelementptr inbounds [16 x i8], ptr %8, i32 0, i32 5
  store i8 0, ptr %454, align 1
  %455 = call fastcc i32 @ioctl_internal_command(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 1000) #9
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %460

457:                                              ; preds = %449
  %458 = load i64, ptr %445, align 4
  %459 = or i64 %458, 16
  store i64 %459, ptr %445, align 4
  br label %460

460:                                              ; preds = %457, %449, %443
  %461 = phi i32 [ 0, %443 ], [ 0, %457 ], [ %455, %449 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  br label %526

462:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  %463 = getelementptr inbounds i8, ptr %7, i32 6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %463, i8 0, i32 10, i1 false) #9, !annotation !8
  %464 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %465 = load i64, ptr %464, align 4
  %466 = and i64 %465, 9
  %467 = icmp eq i64 %466, 9
  br i1 %467, label %468, label %475

468:                                              ; preds = %462
  store i8 30, ptr %7, align 1
  %469 = getelementptr inbounds [16 x i8], ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(5) %469, i8 0, i64 5, i1 false)
  %470 = call fastcc i32 @ioctl_internal_command(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1000) #9
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %468
  %473 = load i64, ptr %464, align 4
  %474 = and i64 %473, -17
  store i64 %474, ptr %464, align 4
  br label %475

475:                                              ; preds = %472, %468, %462
  %476 = phi i32 [ 0, %462 ], [ 0, %472 ], [ %470, %468 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  br label %526

477:                                              ; preds = %24
  %478 = call i32 @scsi_test_unit_ready(ptr noundef %0, i32 noundef 1000, i32 noundef 5, ptr noundef nonnull %15) #9
  br label %526

479:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %480 = getelementptr inbounds i8, ptr %6, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %480, i8 0, i32 15, i1 false) #9
  store i8 27, ptr %6, align 1
  %481 = getelementptr inbounds [16 x i8], ptr %6, i32 0, i32 4
  store i8 1, ptr %481, align 1
  %482 = call fastcc i32 @ioctl_internal_command(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 6000) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  br label %526

483:                                              ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %484 = getelementptr inbounds i8, ptr %5, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %484, i8 0, i32 15, i1 false) #9
  store i8 27, ptr %5, align 1
  %485 = call fastcc i32 @ioctl_internal_command(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 6000) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  br label %526

486:                                              ; preds = %24
  %487 = load ptr, ptr %0, align 8
  %488 = getelementptr inbounds %struct.Scsi_Host, ptr %487, i32 0, i32 49, i32 1
  %489 = load ptr, ptr %488, align 4
  %490 = icmp eq ptr %489, null
  br i1 %490, label %526, label %491

491:                                              ; preds = %486
  %492 = getelementptr inbounds %struct.device, ptr %489, i32 0, i32 3
  %493 = load ptr, ptr %492, align 4
  %494 = icmp eq ptr %493, null
  br i1 %494, label %495, label %497

495:                                              ; preds = %491
  %496 = load ptr, ptr %489, align 4
  br label %497

497:                                              ; preds = %495, %491
  %498 = phi ptr [ %496, %495 ], [ %493, %491 ]
  %499 = tail call i32 @strlen(ptr noundef %498) #9
  %500 = tail call i32 @llvm.umin.i32(i32 %499, i32 20) #9
  %501 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %500, i32 -1090519040) #10, !srcloc !9
  %502 = extractvalue { i32, i32 } %501, 0
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %511

504:                                              ; preds = %497
  %505 = tail call ptr @llvm.thread.pointer() #9
  %506 = getelementptr inbounds %struct.thread_info, ptr %505, i32 0, i32 3
  %507 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %506) #11, !srcloc !10
  %508 = and i32 %507, -13
  %509 = or i32 %508, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %509) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %510 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %498, i32 noundef %500) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %507) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  br label %511

511:                                              ; preds = %504, %497
  %512 = phi i32 [ %510, %504 ], [ %500, %497 ]
  %513 = icmp eq i32 %512, 0
  %514 = select i1 %513, i32 0, i32 -14
  br label %526

515:                                              ; preds = %24
  %516 = tail call i32 @scsi_ioctl_reset(ptr noundef %0, ptr noundef %3) #9
  br label %526

517:                                              ; preds = %24
  %518 = load ptr, ptr %0, align 8
  %519 = getelementptr inbounds %struct.Scsi_Host, ptr %518, i32 0, i32 11
  %520 = load ptr, ptr %519, align 8
  %521 = getelementptr inbounds %struct.scsi_host_template, ptr %520, i32 0, i32 6
  %522 = load ptr, ptr %521, align 8
  %523 = icmp eq ptr %522, null
  br i1 %523, label %526, label %524

524:                                              ; preds = %517
  %525 = tail call i32 %522(ptr noundef %0, i32 noundef %2, ptr noundef %3) #9
  br label %526

526:                                              ; preds = %524, %517, %515, %511, %486, %483, %479, %477, %475, %460, %442, %439, %429, %395, %382, %380, %341, %337, %335, %271, %156, %144, %140, %131, %121, %119, %117, %84, %76, %74, %64, %49, %45, %41, %32, %25
  %527 = phi i32 [ %525, %524 ], [ %516, %515 ], [ %485, %483 ], [ %482, %479 ], [ %478, %477 ], [ %476, %475 ], [ %461, %460 ], [ %391, %382 ], [ %381, %380 ], [ %344, %341 ], [ %340, %337 ], [ %336, %335 ], [ %118, %117 ], [ %90, %84 ], [ %63, %49 ], [ %48, %45 ], [ %31, %25 ], [ -22, %517 ], [ %39, %32 ], [ 0, %41 ], [ 0, %76 ], [ %71, %64 ], [ -22, %74 ], [ %272, %271 ], [ -22, %119 ], [ -14, %121 ], [ -14, %131 ], [ -22, %140 ], [ -14, %144 ], [ -12, %156 ], [ 1, %442 ], [ -14, %395 ], [ -14, %439 ], [ -14, %429 ], [ -6, %486 ], [ %514, %511 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #9
  ret i32 %527
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_test_unit_ready(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_ioctl_block_when_processing_errors(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = icmp eq i32 %1, 8836
  %5 = and i1 %4, %2
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 48
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -5
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %21, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 36
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 16
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %20, label %21

17:                                               ; preds = %3
  %18 = tail call i32 @scsi_block_when_processing_errors(ptr noundef %0) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %12
  br label %21

21:                                               ; preds = %20, %17, %12, %6
  %22 = phi i32 [ 0, %20 ], [ -11, %12 ], [ -19, %17 ], [ -11, %6 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_block_when_processing_errors(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_sense_hdr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sg_io(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.iov_iter, align 8
  %5 = alloca ptr, align 4
  %6 = load i32, ptr %1, align 4
  %7 = icmp eq i32 %6, 83
  br i1 %7, label %8, label %148

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 32, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 9
  %16 = icmp ugt i32 %10, %15
  br i1 %16, label %148, label %17

17:                                               ; preds = %8
  %18 = icmp eq i32 %10, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 4
  %23 = icmp ult i32 %22, 3
  br i1 %23, label %24, label %148

24:                                               ; preds = %19
  %25 = getelementptr inbounds [3 x i32], ptr @switch.table.sg_io, i32 0, i32 %22
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi i32 [ 34, %17 ], [ %26, %24 ]
  %29 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 32
  %32 = icmp ne i32 %31, 0
  %33 = tail call ptr @scsi_alloc_request(ptr noundef %12, i32 noundef %28, i32 noundef 0) #9
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = ptrtoint ptr %33 to i32
  br label %148

37:                                               ; preds = %27
  %38 = getelementptr %struct.request, ptr %33, i32 1
  %39 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 2
  %40 = load i8, ptr %39, align 4
  %41 = icmp ugt i8 %40, 16
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = zext i8 %40 to i32
  %44 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %43, i32 noundef 3520) #13
  %45 = getelementptr %struct.request, ptr %33, i32 1, i32 4
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  br i1 %46, label %146, label %47

47:                                               ; preds = %42
  %48 = load i8, ptr %39, align 4
  br label %49

49:                                               ; preds = %47, %37
  %50 = phi i8 [ %48, %47 ], [ %40, %37 ]
  %51 = icmp ult i8 %50, 6
  br i1 %51, label %140, label %52

52:                                               ; preds = %49
  %53 = zext i8 %50 to i32
  %54 = getelementptr %struct.request, ptr %33, i32 1, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  %58 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %57, i32 %53, i32 -1090519040) #10, !srcloc !13
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69, !prof !14

61:                                               ; preds = %52
  %62 = tail call ptr @llvm.thread.pointer() #9
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %64 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %63) #11, !srcloc !10
  %65 = and i32 %64, -13
  %66 = or i32 %65, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %67 = tail call i32 @arm_copy_from_user(ptr noundef %55, ptr noundef %57, i32 noundef %53) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69, !prof !14

69:                                               ; preds = %61, %52
  %70 = phi i32 [ %67, %61 ], [ %53, %52 ]
  %71 = sub i32 %53, %70
  %72 = getelementptr i8, ptr %55, i32 %71
  tail call void @llvm.memset.p0.i32(ptr align 1 %72, i8 0, i32 %70, i1 false) #9
  br label %140

73:                                               ; preds = %61
  %74 = load ptr, ptr %54, align 4
  %75 = tail call zeroext i1 @scsi_cmd_allowed(ptr noundef %74, i32 noundef %2) #9
  br i1 %75, label %76, label %140

76:                                               ; preds = %73
  %77 = load i8, ptr %39, align 4
  %78 = zext i8 %77 to i16
  %79 = getelementptr %struct.request, ptr %33, i32 1, i32 5
  store i16 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 9
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 @__msecs_to_jiffies(i32 noundef %81) #9
  %83 = getelementptr inbounds %struct.request, ptr %33, i32 0, i32 7
  store i32 %82, ptr %83, align 4
  %84 = icmp eq i32 %82, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 62
  %87 = load i32, ptr %86, align 8
  store i32 %87, ptr %83, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85, %76
  %90 = phi i32 [ %87, %85 ], [ %82, %76 ]
  %91 = icmp ult i32 %90, 700
  br i1 %91, label %92, label %94

92:                                               ; preds = %89, %85
  %93 = phi i32 [ 6000, %85 ], [ 700, %89 ]
  store i32 %93, ptr %83, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 4
  %96 = load i16, ptr %95, align 2
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4
  %99 = getelementptr inbounds %struct.request, ptr %33, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 1
  %102 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 6
  %103 = load ptr, ptr %102, align 4
  %104 = zext i16 %96 to i32
  %105 = call i32 @import_iovec(i32 noundef %101, ptr noundef %103, i32 noundef %104, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %98
  %108 = load i32, ptr %9, align 4
  %109 = getelementptr inbounds %struct.iov_iter, ptr %4, i32 0, i32 4
  %110 = load i32, ptr %109, align 8
  %111 = icmp ugt i32 %110, %108
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 %108, ptr %109, align 8
  br label %113

113:                                              ; preds = %112, %107
  %114 = load ptr, ptr %33, align 8
  %115 = call i32 @blk_rq_map_user_iov(ptr noundef %114, ptr noundef %33, ptr noundef null, ptr noundef nonnull %4, i32 noundef 3264) #9
  %116 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %116) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %126

117:                                              ; preds = %98
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %140

118:                                              ; preds = %94
  %119 = load i32, ptr %9, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %33, align 8
  %123 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 6
  %124 = load ptr, ptr %123, align 4
  %125 = tail call i32 @blk_rq_map_user(ptr noundef %122, ptr noundef %33, ptr noundef null, ptr noundef %124, i32 noundef %119, i32 noundef 3264) #9
  br label %126

126:                                              ; preds = %121, %113
  %127 = phi i32 [ %125, %121 ], [ %115, %113 ]
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %126, %118
  %130 = getelementptr inbounds %struct.request, ptr %33, i32 0, i32 10
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %struct.scsi_request, ptr %38, i32 0, i32 6
  store i32 0, ptr %132, align 4
  %133 = load volatile i32, ptr @jiffies, align 64
  %134 = call zeroext i8 @blk_execute_rq(ptr noundef %33, i1 noundef zeroext %32) #9
  %135 = load volatile i32, ptr @jiffies, align 64
  %136 = sub i32 %135, %133
  %137 = call i32 @jiffies_to_msecs(i32 noundef %136) #9
  %138 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 20
  store i32 %137, ptr %138, align 4
  %139 = call fastcc i32 @scsi_complete_sghdr_rq(ptr noundef %33, ptr noundef %1, ptr noundef %131)
  br label %140

140:                                              ; preds = %129, %126, %117, %73, %69, %49
  %141 = phi i32 [ %105, %117 ], [ %127, %126 ], [ %139, %129 ], [ -14, %69 ], [ -1, %73 ], [ -90, %49 ]
  %142 = getelementptr %struct.request, ptr %33, i32 1, i32 4
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, %38
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  call void @kfree(ptr noundef %143) #9
  br label %146

146:                                              ; preds = %145, %140, %42
  %147 = phi i32 [ -12, %42 ], [ %141, %140 ], [ %141, %145 ]
  call void @blk_mq_free_request(ptr noundef %33) #9
  br label %148

148:                                              ; preds = %146, %35, %19, %8, %3
  %149 = phi i32 [ %36, %35 ], [ %147, %146 ], [ -22, %3 ], [ -5, %8 ], [ -22, %19 ]
  ret i32 %149
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_user_iov(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scsi_complete_sghdr_rq(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr %struct.request, ptr %0, i32 1, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 13
  store i8 %6, ptr %7, align 4
  %8 = load i32, ptr %4, align 4
  %9 = trunc i32 %8 to i8
  %10 = lshr i8 %9, 1
  %11 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 14
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 15
  store i8 0, ptr %12, align 2
  %13 = load i32, ptr %4, align 4
  %14 = lshr i32 %13, 16
  %15 = trunc i32 %14 to i16
  %16 = and i16 %15, 255
  %17 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 17
  store i16 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 18
  %19 = and i32 %5, 254
  %20 = icmp eq i32 %19, 2
  %21 = select i1 %20, i16 8, i16 0
  store i16 %21, ptr %18, align 2
  %22 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 21
  %23 = icmp ugt i8 %9, 1
  %24 = icmp ne i16 %16, 0
  %25 = select i1 %23, i1 true, i1 %24
  %26 = select i1 %25, i1 true, i1 %20
  %27 = zext i1 %26 to i32
  store i32 %27, ptr %22, align 4
  %28 = getelementptr %struct.request, ptr %0, i32 1, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 19
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 16
  store i8 0, ptr %31, align 1
  %32 = getelementptr %struct.request, ptr %0, i32 1, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %63, label %35

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %63, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sg_io_hdr, ptr %1, i32 0, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = tail call i32 @llvm.umin.i32(i32 %33, i32 %42)
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %37, i32 %43, i32 -1090519040) #10, !srcloc !9
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = getelementptr %struct.request, ptr %0, i32 1, i32 9
  %49 = load ptr, ptr %48, align 4
  %50 = tail call ptr @llvm.thread.pointer() #9
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #11, !srcloc !10
  %53 = and i32 %52, -13
  %54 = or i32 %53, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  %55 = tail call i32 @arm_copy_to_user(ptr noundef nonnull %37, ptr noundef %49, i32 noundef %43) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #9, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !12
  br label %56

56:                                               ; preds = %47, %39
  %57 = phi i32 [ %55, %47 ], [ %43, %39 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = trunc i32 %43 to i8
  store i8 %60, ptr %31, align 1
  br label %63

61:                                               ; preds = %56
  %62 = tail call i32 @blk_rq_unmap_user(ptr noundef %2) #9
  br label %65

63:                                               ; preds = %59, %35, %3
  %64 = tail call i32 @blk_rq_unmap_user(ptr noundef %2) #9
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %64, %63 ], [ -14, %61 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_unmap_user(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_kern(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!9 = !{i64 2151339745, i64 2151339770}
!10 = !{i64 3835279}
!11 = !{i64 3835476}
!12 = !{i64 2151320755}
!13 = !{i64 2151339167, i64 2151339192}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2153550610, i64 2153550890, i64 2153551224, i64 2153551558}
!16 = !{i64 2153561772, i64 2153562052, i64 2153562386, i64 2153562720}
!17 = !{i64 2153572581, i64 2153572861, i64 2153573195, i64 2153573529}
!18 = !{i64 2153583719, i64 2153583999, i64 2153584333, i64 2153584667}
!19 = !{i64 2153594815, i64 2153595095, i64 2153595429, i64 2153595763}
!20 = !{i64 2153614370, i64 2153614650, i64 2153614984, i64 2153615318}
!21 = !{i64 2153626353, i64 2153626633, i64 2153626967, i64 2153627301}
!22 = !{i64 2153633317, i64 2153633597, i64 2153633931, i64 2153634265}
!23 = !{i64 2153652500, i64 2153652780, i64 2153653114, i64 2153653448}
!24 = !{i64 2153537424, i64 2153537704, i64 2153538038, i64 2153538372}
!25 = !{!"branch_weights", i32 1, i32 2000}
