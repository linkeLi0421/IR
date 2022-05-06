; ModuleID = '/llk/IR/sound/core/pcm.c_pt.bc'
source_filename = "../sound/core/pcm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_format_name:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_format_name\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_format_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_new_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_new_stream\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_new_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pcm_new_internal:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pcm_new_internal\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pcm_new_internal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.62, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.62 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.48 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.snd_timer = type { i32, ptr, ptr, i32, i32, [64 x i8], [80 x i8], i32, i32, i32, ptr, ptr, %struct.snd_timer_hardware, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32 }
%struct.snd_timer_hardware = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_info = type { i32, i32, i32, i32, [64 x i8], [80 x i8], [32 x i8], i32, i32, i32, i32, %union.snd_pcm_sync_id, [64 x i8] }
%struct.snd_pcm_mmap_control = type { [0 x i8], i32, [0 x i8], [0 x i8], i32, [4 x i8] }
%struct.snd_pcm_status64 = type { i32, [4 x i8], i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, [20 x i8] }
%struct.snd_pcm_mmap_status = type { i32, i32, [0 x i8], i32, [4 x i8], %struct.__kernel_timespec, i32, i32, %struct.__kernel_timespec }
%struct.__kernel_timespec = type { i64, i64 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_ctl_file = type { %struct.list_head, ptr, ptr, [2 x i32], %struct.wait_queue_head, %struct.spinlock, ptr, i32, %struct.list_head }

@__UNIQUE_ID_author230 = internal constant [82 x i8] c"author=Jaroslav Kysela <perex@perex.cz>, Abramo Bagnara <abramo@alsa-project.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [40 x i8] c"description=Midlevel PCM code for ALSA.\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@snd_pcm_format_names = internal unnamed_addr constant [53 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], align 4
@__kstrtab_snd_pcm_format_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_format_name = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_format_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_format_name to i32), ptr @__kstrtab_snd_pcm_format_name, ptr @__kstrtabns_snd_pcm_format_name }, section "___ksymtab_gpl+snd_pcm_format_name", align 4
@pcm_dev_type = internal constant %struct.device_type { ptr @.str.54, ptr null, ptr null, ptr null, ptr null, ptr @pcm_dev_pm_ops }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"pcmC%iD%i%c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error in snd_pcm_stream_proc_init\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"subdevice #%i\00", align 1
@__kstrtab_snd_pcm_new_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_new_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_new_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_new_stream to i32), ptr @__kstrtab_snd_pcm_new_stream, ptr @__kstrtabns_snd_pcm_new_stream }, section "___ksymtab+snd_pcm_new_stream", align 4
@__kstrtab_snd_pcm_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_new to i32), ptr @__kstrtab_snd_pcm_new, ptr @__kstrtabns_snd_pcm_new }, section "___ksymtab+snd_pcm_new", align 4
@__kstrtab_snd_pcm_new_internal = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pcm_new_internal = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pcm_new_internal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pcm_new_internal to i32), ptr @__kstrtab_snd_pcm_new_internal, ptr @__kstrtabns_snd_pcm_new_internal }, section "___ksymtab+snd_pcm_new_internal", align 4
@snd_pcm_attach_substream.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"&runtime->sleep\00", align 1
@snd_pcm_attach_substream.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"&runtime->tsleep\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"S8\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"U8\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"S16_LE\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"S16_BE\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"U16_LE\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"U16_BE\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"S24_LE\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"S24_BE\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"U24_LE\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"U24_BE\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"S32_LE\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"S32_BE\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"U32_LE\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"U32_BE\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"FLOAT_LE\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"FLOAT_BE\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"FLOAT64_LE\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"FLOAT64_BE\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"IEC958_SUBFRAME_LE\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"IEC958_SUBFRAME_BE\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"MU_LAW\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"A_LAW\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"IMA_ADPCM\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"MPEG\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"GSM\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"SPECIAL\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"S24_3LE\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"S24_3BE\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"U24_3LE\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"U24_3BE\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"S20_3LE\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"S20_3BE\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"U20_3LE\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"U20_3BE\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"S18_3LE\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"S18_3BE\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"U18_3LE\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"U18_3BE\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"G723_24\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"G723_24_1B\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"G723_40\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"G723_40_1B\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"DSD_U8\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"DSD_U16_LE\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"DSD_U32_LE\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"DSD_U16_BE\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"DSD_U32_BE\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@pcm_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @do_pcm_suspend, ptr null, ptr @do_pcm_suspend, ptr null, ptr @do_pcm_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.55 = private unnamed_addr constant [8 x i8] c"pcm%i%c\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"card: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"device: %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"subdevice: %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"stream: %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"id: %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"name: %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"subname: %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"class: %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"subclass: %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"subdevices_count: %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"subdevices_avail: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@snd_pcm_stream_names = internal unnamed_addr constant [2 x ptr] [ptr @.str.69, ptr @.str.70], align 4
@.str.69 = private unnamed_addr constant [9 x i8] c"PLAYBACK\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"CAPTURE\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"sub%i\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"hw_params\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"sw_params\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"closed\0A\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"no setup\0A\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"access: %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"format: %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"subformat: %s\0A\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"channels: %u\0A\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"rate: %u (%u/%u)\0A\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"period_size: %lu\0A\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"buffer_size: %lu\0A\00", align 1
@snd_pcm_access_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], align 4
@.str.84 = private unnamed_addr constant [17 x i8] c"MMAP_INTERLEAVED\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"MMAP_NONINTERLEAVED\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"MMAP_COMPLEX\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"RW_INTERLEAVED\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"RW_NONINTERLEAVED\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"STD\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"tstamp_mode: %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"period_step: %u\0A\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"avail_min: %lu\0A\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"start_threshold: %lu\0A\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"stop_threshold: %lu\0A\00", align 1
@.str.95 = private unnamed_addr constant [24 x i8] c"silence_threshold: %lu\0A\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"silence_size: %lu\0A\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"boundary: %lu\0A\00", align 1
@snd_pcm_tstamp_mode_names = internal unnamed_addr constant [2 x ptr] [ptr @.str.98, ptr @.str.99], align 4
@.str.98 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"ENABLE\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"state: %s\0A\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"owner_pid   : %d\0A\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"trigger_time: %lld.%09lld\0A\00", align 1
@.str.103 = private unnamed_addr constant [27 x i8] c"tstamp      : %lld.%09lld\0A\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"delay       : %ld\0A\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"avail       : %ld\0A\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"avail_max   : %ld\0A\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"-----\0A\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"hw_ptr      : %ld\0A\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"appl_ptr    : %ld\0A\00", align 1
@snd_pcm_state_names = internal unnamed_addr constant [8 x ptr] [ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], align 4
@.str.110 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"SETUP\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"PREPARED\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"RUNNING\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"XRUN\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"DRAINING\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"PAUSED\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"SUSPENDED\00", align 1
@_snd_pcm_new.ops = internal constant %struct.snd_device_ops { ptr @snd_pcm_dev_free, ptr @snd_pcm_dev_register, ptr @snd_pcm_dev_disconnect }, align 4
@_snd_pcm_new.internal_ops = internal constant %struct.snd_device_ops { ptr @snd_pcm_dev_free, ptr null, ptr null }, align 4
@_snd_pcm_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"&pcm->open_mutex\00", align 1
@_snd_pcm_new.__key.119 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"&pcm->open_wait\00", align 1
@register_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_mutex, i64 12), ptr getelementptr (i8, ptr @register_mutex, i64 12) } }, align 4
@snd_pcm_f_ops = external dso_local constant [2 x %struct.file_operations], align 4
@snd_pcm_devices = internal global %struct.list_head { ptr @snd_pcm_devices, ptr @snd_pcm_devices }, align 4
@pcm_dev_attr_groups = internal global [2 x ptr] [ptr @pcm_dev_attr_group, ptr null], align 4
@pcm_dev_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pcm_dev_attrs, ptr null }, align 4
@pcm_dev_attrs = internal global [2 x ptr] [ptr @dev_attr_pcm_class, ptr null], align 4
@dev_attr_pcm_class = internal global %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292 }, ptr @pcm_class_show, ptr null }, align 4
@.str.122 = private unnamed_addr constant [10 x i8] c"pcm_class\00", align 1
@pcm_class_show.strs = internal unnamed_addr constant [4 x ptr] [ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], align 4
@.str.123 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"modem\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"digitizer\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@snd_pcm_proc_entry = internal unnamed_addr global ptr null, align 4
@.str.129 = private unnamed_addr constant [19 x i8] c"%02i-%02i: %s : %s\00", align 1
@.str.130 = private unnamed_addr constant [15 x i8] c" : playback %i\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c" : capture %i\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_license232, ptr @__ksymtab_snd_pcm_format_name, ptr @__ksymtab_snd_pcm_new, ptr @__ksymtab_snd_pcm_new_internal, ptr @__ksymtab_snd_pcm_new_stream], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @snd_pcm_format_name(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 52
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr [53 x ptr], ptr @snd_pcm_format_names, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str, %1 ]
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_new_stream(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca [16 x i8], align 1
  %5 = alloca [16 x i8], align 1
  %6 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1
  store i32 %1, ptr %6, align 8
  %7 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1, i32 1
  store ptr %0, ptr %7, align 4
  %8 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1, i32 2
  store i32 %2, ptr %8, align 8
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %139, label %10

10:                                               ; preds = %3
  %11 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1, i32 7
  %12 = load ptr, ptr %0, align 8
  tail call void @snd_device_initialize(ptr noundef %11, ptr noundef %12) #13
  %13 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1, i32 7, i32 32
  store ptr @pcm_dev_attr_groups, ptr %13, align 8
  %14 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1, i32 7, i32 4
  store ptr @pcm_dev_type, ptr %14, align 8
  %15 = load ptr, ptr %0, align 8
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.snd_pcm, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %1, 0
  %20 = select i1 %19, i32 112, i32 99
  %21 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef %16, i32 noundef %18, i32 noundef %20) #13
  %22 = getelementptr inbounds %struct.snd_pcm, ptr %0, i32 0, i32 13
  %23 = load i8, ptr %22, align 8, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %10
  %26 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false) #13, !annotation !9
  %27 = getelementptr inbounds %struct.snd_pcm, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %6, align 8
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 112, i32 99
  %32 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.55, i32 noundef %28, i32 noundef %31) #13
  %33 = load ptr, ptr %26, align 8
  %34 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 20
  %35 = load ptr, ptr %34, align 8
  %36 = call ptr @snd_info_create_card_entry(ptr noundef %33, ptr noundef nonnull %5, ptr noundef %35) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.snd_info_entry, ptr %36, i32 0, i32 1
  store i16 16749, ptr %39, align 4
  %40 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1, i32 5
  store ptr %36, ptr %40, align 4
  %41 = load ptr, ptr %26, align 8
  %42 = call ptr @snd_info_create_card_entry(ptr noundef %41, ptr noundef nonnull @.str.56, ptr noundef nonnull %36) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.snd_info_entry, ptr %42, i32 0, i32 7
  store ptr %6, ptr %45, align 4
  %46 = getelementptr inbounds %struct.snd_info_entry, ptr %42, i32 0, i32 4
  store ptr @snd_pcm_stream_proc_info_read, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %52

48:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr inbounds %struct.snd_card, ptr %49, i32 0, i32 27
  %51 = load ptr, ptr %50, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.2) #14
  br label %139

52:                                               ; preds = %47, %10
  %53 = icmp sgt i32 %2, 0
  br i1 %53, label %54, label %139

54:                                               ; preds = %52
  %55 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1, i32 4
  br label %56

56:                                               ; preds = %128, %54
  %57 = phi ptr [ null, %54 ], [ %60, %128 ]
  %58 = phi i32 [ 0, %54 ], [ %137, %128 ]
  %59 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %60 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3520, i32 noundef 216) #15
  %61 = icmp eq ptr %60, null
  br i1 %61, label %139, label %62

62:                                               ; preds = %56
  store ptr %0, ptr %60, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_substream, ptr %60, i32 0, i32 1
  store ptr %6, ptr %63, align 4
  %64 = getelementptr inbounds %struct.snd_pcm_substream, ptr %60, i32 0, i32 3
  store i32 %58, ptr %64, align 4
  %65 = getelementptr inbounds %struct.snd_pcm_substream, ptr %60, i32 0, i32 5
  store i32 %1, ptr %65, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_substream, ptr %60, i32 0, i32 4
  %67 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %66, ptr noundef nonnull @.str.3, i32 noundef %58)
  %68 = getelementptr inbounds %struct.snd_pcm_substream, ptr %60, i32 0, i32 7
  store i32 -1, ptr %68, align 4
  %69 = icmp eq ptr %57, null
  %70 = getelementptr inbounds %struct.snd_pcm_substream, ptr %57, i32 0, i32 15
  %71 = select i1 %69, ptr %55, ptr %70
  store ptr %60, ptr %71, align 8
  %72 = load i8, ptr %22, align 8, !range !8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %128

74:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #13, !annotation !9
  %75 = load ptr, ptr %60, align 8
  %76 = load ptr, ptr %75, align 8
  %77 = load i32, ptr %64, align 4
  %78 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.71, i32 noundef %77) #13
  %79 = load ptr, ptr %63, align 4
  %80 = getelementptr inbounds %struct.snd_pcm_str, ptr %79, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = call ptr @snd_info_create_card_entry(ptr noundef %76, ptr noundef nonnull %4, ptr noundef %81) #13
  %83 = icmp eq ptr %82, null
  br i1 %83, label %122, label %84

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.snd_info_entry, ptr %82, i32 0, i32 1
  store i16 16749, ptr %85, align 4
  %86 = getelementptr inbounds %struct.snd_pcm_substream, ptr %60, i32 0, i32 24
  store ptr %82, ptr %86, align 8
  %87 = load ptr, ptr %60, align 8
  %88 = load ptr, ptr %87, align 8
  %89 = call ptr @snd_info_create_card_entry(ptr noundef %88, ptr noundef nonnull @.str.56, ptr noundef nonnull %82) #13
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.snd_info_entry, ptr %89, i32 0, i32 7
  store ptr %60, ptr %92, align 4
  %93 = getelementptr inbounds %struct.snd_info_entry, ptr %89, i32 0, i32 4
  store ptr @snd_pcm_substream_proc_info_read, ptr %93, align 4
  br label %94

94:                                               ; preds = %91, %84
  %95 = load ptr, ptr %60, align 8
  %96 = load ptr, ptr %95, align 8
  %97 = load ptr, ptr %86, align 8
  %98 = call ptr @snd_info_create_card_entry(ptr noundef %96, ptr noundef nonnull @.str.72, ptr noundef %97) #13
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.snd_info_entry, ptr %98, i32 0, i32 7
  store ptr %60, ptr %101, align 4
  %102 = getelementptr inbounds %struct.snd_info_entry, ptr %98, i32 0, i32 4
  store ptr @snd_pcm_substream_proc_hw_params_read, ptr %102, align 4
  br label %103

103:                                              ; preds = %100, %94
  %104 = load ptr, ptr %60, align 8
  %105 = load ptr, ptr %104, align 8
  %106 = load ptr, ptr %86, align 8
  %107 = call ptr @snd_info_create_card_entry(ptr noundef %105, ptr noundef nonnull @.str.73, ptr noundef %106) #13
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.snd_info_entry, ptr %107, i32 0, i32 7
  store ptr %60, ptr %110, align 4
  %111 = getelementptr inbounds %struct.snd_info_entry, ptr %107, i32 0, i32 4
  store ptr @snd_pcm_substream_proc_sw_params_read, ptr %111, align 4
  br label %112

112:                                              ; preds = %109, %103
  %113 = load ptr, ptr %60, align 8
  %114 = load ptr, ptr %113, align 8
  %115 = load ptr, ptr %86, align 8
  %116 = call ptr @snd_info_create_card_entry(ptr noundef %114, ptr noundef nonnull @.str.74, ptr noundef %115) #13
  %117 = icmp eq ptr %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.snd_info_entry, ptr %116, i32 0, i32 7
  store ptr %60, ptr %119, align 4
  %120 = getelementptr inbounds %struct.snd_info_entry, ptr %116, i32 0, i32 4
  store ptr @snd_pcm_substream_proc_status_read, ptr %120, align 4
  br label %121

121:                                              ; preds = %118, %112
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %128

122:                                              ; preds = %74
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  %123 = load ptr, ptr %0, align 8
  %124 = getelementptr inbounds %struct.snd_card, ptr %123, i32 0, i32 27
  %125 = load ptr, ptr %124, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.2) #14
  %126 = getelementptr inbounds %struct.snd_pcm_substream, ptr %57, i32 0, i32 15
  %127 = select i1 %69, ptr %55, ptr %126
  store ptr null, ptr %127, align 8
  call void @kfree(ptr noundef nonnull %60) #13
  br label %139

128:                                              ; preds = %121, %62
  %129 = getelementptr inbounds %struct.snd_pcm_substream, ptr %60, i32 0, i32 17
  %130 = getelementptr inbounds %struct.snd_pcm_substream, ptr %60, i32 0, i32 18
  store ptr %129, ptr %130, align 8
  call void @snd_pcm_group_init(ptr noundef %129) #13
  %131 = getelementptr inbounds %struct.snd_pcm_substream, ptr %60, i32 0, i32 16
  %132 = getelementptr inbounds %struct.snd_pcm_substream, ptr %60, i32 0, i32 17, i32 2
  %133 = getelementptr inbounds %struct.snd_pcm_substream, ptr %60, i32 0, i32 17, i32 2, i32 1
  %134 = load ptr, ptr %133, align 8
  store ptr %131, ptr %133, align 8
  store ptr %132, ptr %131, align 4
  %135 = getelementptr inbounds %struct.snd_pcm_substream, ptr %60, i32 0, i32 16, i32 1
  store ptr %134, ptr %135, align 8
  store volatile ptr %131, ptr %134, align 4
  %136 = getelementptr inbounds %struct.snd_pcm_substream, ptr %60, i32 0, i32 20
  store volatile i32 0, ptr %136, align 8
  %137 = add nuw nsw i32 %58, 1
  %138 = icmp eq i32 %137, %2
  br i1 %138, label %139, label %56

139:                                              ; preds = %128, %122, %56, %52, %48, %3
  %140 = phi i32 [ -12, %122 ], [ -12, %48 ], [ 0, %3 ], [ 0, %52 ], [ -12, %56 ], [ 0, %128 ]
  ret i32 %140
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_initialize(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_group_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #1 {
  %7 = tail call fastcc i32 @_snd_pcm_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext false, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_snd_pcm_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef writeonly %6) unnamed_addr #1 {
  %8 = zext i1 %5 to i8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %6, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  store ptr null, ptr %6, align 4
  br label %13

13:                                               ; preds = %12, %10
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 1224) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  store ptr %0, ptr %15, align 8
  %18 = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 2
  store i32 %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 13
  store i8 %8, ptr %19, align 8
  %20 = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.118, ptr noundef nonnull @_snd_pcm_new.__key) #13
  %21 = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %21, ptr noundef nonnull @.str.120, ptr noundef nonnull @_snd_pcm_new.__key.119) #13
  %22 = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 1
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 1, i32 1
  store ptr %22, ptr %23, align 8
  %24 = icmp eq ptr %1, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 6
  %27 = tail call i32 @strscpy(ptr noundef %26, ptr noundef nonnull %1, i32 noundef 64) #13
  br label %28

28:                                               ; preds = %25, %17
  %29 = tail call i32 @snd_pcm_new_stream(ptr noundef nonnull %15, i32 noundef 0, i32 noundef %3)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @snd_pcm_new_stream(ptr noundef nonnull %15, i32 noundef 1, i32 noundef %4)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = select i1 %5, ptr @_snd_pcm_new.internal_ops, ptr @_snd_pcm_new.ops
  %36 = tail call i32 @snd_device_new(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull %15, ptr noundef nonnull %35) #13
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  br i1 %11, label %49, label %39

39:                                               ; preds = %38
  store ptr %15, ptr %6, align 4
  br label %49

40:                                               ; preds = %34, %31, %28
  %41 = phi i32 [ %29, %28 ], [ %32, %31 ], [ %36, %34 ]
  %42 = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 12
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call void %43(ptr noundef nonnull %15) #13
  br label %46

46:                                               ; preds = %45, %40
  tail call void @snd_pcm_lib_preallocate_free_for_all(ptr noundef nonnull %15) #13
  %47 = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 8
  tail call fastcc void @snd_pcm_free_stream(ptr noundef %47) #13
  %48 = getelementptr %struct.snd_pcm, ptr %15, i32 0, i32 8, i32 1
  tail call fastcc void @snd_pcm_free_stream(ptr noundef %48) #13
  tail call void @kfree(ptr noundef nonnull %15) #13
  br label %49

49:                                               ; preds = %46, %39, %38, %13, %7
  %50 = phi i32 [ %41, %46 ], [ -6, %7 ], [ -12, %13 ], [ 0, %39 ], [ 0, %38 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_new_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #1 {
  %7 = tail call fastcc i32 @_snd_pcm_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext true, ptr noundef %5)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_pcm_attach_substream(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3) local_unnamed_addr #1 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %3, null
  %7 = or i1 %5, %6
  br i1 %7, label %124, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %1, 0
  %10 = icmp ugt i32 %1, 1
  br i1 %10, label %124, label %11

11:                                               ; preds = %8
  store ptr null, ptr %3, align 4
  %12 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %124, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %124, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8
  %21 = tail call i32 @snd_ctl_get_preferred_subdevice(ptr noundef %20, i32 noundef 0) #13
  %22 = getelementptr inbounds %struct.snd_pcm, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 1048576
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %19
  %27 = zext i1 %9 to i32
  %28 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %27, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %35

31:                                               ; preds = %35
  %32 = getelementptr inbounds %struct.snd_pcm_substream, ptr %36, i32 0, i32 15
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31, %26
  %36 = phi ptr [ %33, %31 ], [ %29, %26 ]
  %37 = getelementptr inbounds %struct.snd_pcm_substream, ptr %36, i32 0, i32 19
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %124, label %31

40:                                               ; preds = %31, %26, %19
  %41 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1024
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load ptr, ptr %12, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %124, label %48

48:                                               ; preds = %45
  %49 = icmp eq i32 %21, -1
  br label %77

50:                                               ; preds = %40
  %51 = icmp slt i32 %21, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr %12, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %124, label %58

55:                                               ; preds = %50
  %56 = load i32, ptr %16, align 8
  %57 = icmp ugt i32 %56, 1
  br i1 %57, label %124, label %67

58:                                               ; preds = %63, %52
  %59 = phi ptr [ %65, %63 ], [ %53, %52 ]
  %60 = getelementptr inbounds %struct.snd_pcm_substream, ptr %59, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %21
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.snd_pcm_substream, ptr %59, i32 0, i32 15
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %124, label %58

67:                                               ; preds = %55
  %68 = load ptr, ptr %12, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %124, label %70

70:                                               ; preds = %67, %58
  %71 = phi ptr [ %68, %67 ], [ %59, %58 ]
  %72 = getelementptr inbounds %struct.snd_pcm_substream, ptr %71, i32 0, i32 19
  %73 = load i32, ptr %72, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %124

75:                                               ; preds = %70
  %76 = add nuw i32 %73, 1
  store i32 %76, ptr %72, align 4
  store ptr %71, ptr %3, align 4
  br label %124

77:                                               ; preds = %87, %48
  %78 = phi ptr [ %46, %48 ], [ %89, %87 ]
  %79 = getelementptr inbounds %struct.snd_pcm_substream, ptr %78, i32 0, i32 19
  %80 = load i32, ptr %79, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  br i1 %49, label %91, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.snd_pcm_substream, ptr %78, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, %21
  br i1 %86, label %91, label %87

87:                                               ; preds = %83, %77
  %88 = getelementptr inbounds %struct.snd_pcm_substream, ptr %78, i32 0, i32 15
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %124, label %77

91:                                               ; preds = %83, %82
  %92 = getelementptr inbounds %struct.snd_pcm_substream, ptr %78, i32 0, i32 19
  %93 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %94 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %93, i32 noundef 3520, i32 noundef 608) #15
  %95 = icmp eq ptr %94, null
  br i1 %95, label %124, label %96

96:                                               ; preds = %91
  %97 = tail call noalias ptr @alloc_pages_exact(i32 noundef 4096, i32 noundef 3264) #16
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %94, i32 0, i32 37
  store ptr %97, ptr %98, align 4
  %99 = icmp eq ptr %97, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  tail call void @kfree(ptr noundef nonnull %94) #13
  br label %124

101:                                              ; preds = %96
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(4096) %97, i8 0, i32 4096, i1 false)
  %102 = tail call noalias ptr @alloc_pages_exact(i32 noundef 4096, i32 noundef 3264) #16
  %103 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %94, i32 0, i32 38
  store ptr %102, ptr %103, align 8
  %104 = icmp eq ptr %102, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  tail call void @free_pages_exact(ptr noundef nonnull %97, i32 noundef 4096) #13
  tail call void @kfree(ptr noundef nonnull %94) #13
  br label %124

106:                                              ; preds = %101
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(4096) %102, i8 0, i32 4096, i1 false)
  %107 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %94, i32 0, i32 40
  tail call void @__init_waitqueue_head(ptr noundef %107, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_pcm_attach_substream.__key) #13
  %108 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %94, i32 0, i32 41
  tail call void @__init_waitqueue_head(ptr noundef %108, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_pcm_attach_substream.__key.5) #13
  %109 = load ptr, ptr %98, align 4
  store i32 0, ptr %109, align 8
  %110 = getelementptr inbounds %struct.snd_pcm_substream, ptr %78, i32 0, i32 11
  store ptr %94, ptr %110, align 4
  %111 = getelementptr inbounds %struct.snd_pcm, ptr %0, i32 0, i32 11
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_substream, ptr %78, i32 0, i32 2
  store ptr %112, ptr %113, align 4
  store i32 1, ptr %92, align 4
  %114 = load i32, ptr %41, align 4
  %115 = getelementptr inbounds %struct.snd_pcm_substream, ptr %78, i32 0, i32 21
  store i32 %114, ptr %115, align 4
  %116 = tail call ptr @llvm.thread.pointer() #13
  %117 = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 62
  %118 = load ptr, ptr %117, align 64
  %119 = tail call fastcc ptr @get_pid(ptr noundef %118)
  %120 = getelementptr inbounds %struct.snd_pcm_substream, ptr %78, i32 0, i32 23
  store ptr %118, ptr %120, align 4
  %121 = getelementptr %struct.snd_pcm, ptr %0, i32 0, i32 8, i32 %1, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %122, 1
  store i32 %123, ptr %121, align 4
  store ptr %78, ptr %3, align 4
  br label %124

124:                                              ; preds = %106, %105, %100, %91, %87, %75, %70, %67, %63, %55, %52, %45, %35, %15, %11, %8, %4
  %125 = phi i32 [ 0, %75 ], [ -12, %100 ], [ -12, %105 ], [ 0, %106 ], [ -6, %4 ], [ -22, %8 ], [ -19, %15 ], [ -19, %11 ], [ -22, %55 ], [ -19, %67 ], [ -77, %70 ], [ -12, %91 ], [ -11, %45 ], [ -19, %52 ], [ -11, %87 ], [ -19, %63 ], [ -11, %35 ]
  ret i32 %125
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_get_preferred_subdevice(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @alloc_pages_exact(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_pid(ptr noundef returned %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #13, !srcloc !10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #13, !srcloc !11
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !12

7:                                                ; preds = %3
  %8 = add i32 %5, 1
  %9 = or i32 %8, %5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !13

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 2, %3 ], [ 1, %7 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %12) #13
  br label %13

13:                                               ; preds = %11, %7, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_pcm_detach_substream(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 45
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef nonnull %5) #13
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 37
  %14 = load ptr, ptr %13, align 4
  tail call void @free_pages_exact(ptr noundef %14, i32 noundef 4096) #13
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 38
  %16 = load ptr, ptr %15, align 8
  tail call void @free_pages_exact(ptr noundef %16, i32 noundef 4096) #13
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 47, i32 4
  %18 = load ptr, ptr %17, align 8
  tail call void @kfree(ptr noundef %18) #13
  %19 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.snd_timer, ptr %20, i32 0, i32 13
  tail call void @_raw_spin_lock_irq(ptr noundef %23) #13
  store ptr null, ptr %4, align 4
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr inbounds %struct.snd_timer, ptr %24, i32 0, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %26 = load i16, ptr %25, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  br label %29

28:                                               ; preds = %12
  store ptr null, ptr %4, align 4
  br label %29

29:                                               ; preds = %28, %22
  tail call void @kfree(ptr noundef nonnull %5) #13
  %30 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 23
  %31 = load ptr, ptr %30, align 4
  tail call void @put_pid(ptr noundef %31) #13
  store ptr null, ptr %30, align 4
  %32 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.snd_pcm_str, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %29, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #9 section ".init.text" {
  %1 = tail call i32 @snd_ctl_register_ioctl(ptr noundef nonnull @snd_pcm_control_ioctl) #13
  %2 = tail call ptr @snd_info_create_module_entry(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.54, ptr noundef null) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.snd_info_entry, ptr %2, i32 0, i32 7
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.snd_info_entry, ptr %2, i32 0, i32 4
  store ptr @snd_pcm_proc_read, ptr %6, align 4
  %7 = tail call i32 @snd_info_register(ptr noundef nonnull %2) #13
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @snd_info_free_entry(ptr noundef nonnull %2) #13
  br label %10

10:                                               ; preds = %9, %4, %0
  %11 = phi ptr [ null, %9 ], [ %2, %4 ], [ null, %0 ]
  store ptr %11, ptr @snd_pcm_proc_entry, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #9 section ".exit.text" {
  %1 = tail call i32 @snd_ctl_unregister_ioctl(ptr noundef nonnull @snd_pcm_control_ioctl) #13
  %2 = load ptr, ptr @snd_pcm_proc_entry, align 4
  tail call void @snd_info_free_entry(ptr noundef %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_pcm_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -28
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 15
  %5 = load i8, ptr %4, align 2, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @snd_pcm_suspend_all(ptr noundef %3) #13
  br label %9

9:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_suspend_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_stream_proc_info_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_str, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  tail call fastcc void @snd_pcm_proc_info_read(ptr noundef %6, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_pcm_proc_info_read(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %45, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 288) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @snd_pcm_info(ptr noundef nonnull %0, ptr noundef nonnull %6) #13
  %10 = icmp slt i32 %9, 0
  %11 = load ptr, ptr %1, align 4
  br i1 %10, label %12, label %13

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.57, i32 noundef %9) #13
  br label %44

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.snd_pcm_info, ptr %6, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.58, i32 noundef %15) #13
  %16 = load ptr, ptr %1, align 4
  %17 = load i32, ptr %6, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.59, i32 noundef %17) #13
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr inbounds %struct.snd_pcm_info, ptr %6, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.60, i32 noundef %20) #13
  %21 = load ptr, ptr %1, align 4
  %22 = getelementptr inbounds %struct.snd_pcm_info, ptr %6, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr [2 x ptr], ptr @snd_pcm_stream_names, i32 0, i32 %23
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.61, ptr noundef %25) #13
  %26 = load ptr, ptr %1, align 4
  %27 = getelementptr inbounds %struct.snd_pcm_info, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %26, ptr noundef nonnull @.str.62, ptr noundef %27) #13
  %28 = load ptr, ptr %1, align 4
  %29 = getelementptr inbounds %struct.snd_pcm_info, ptr %6, i32 0, i32 5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.63, ptr noundef %29) #13
  %30 = load ptr, ptr %1, align 4
  %31 = getelementptr inbounds %struct.snd_pcm_info, ptr %6, i32 0, i32 6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %30, ptr noundef nonnull @.str.64, ptr noundef %31) #13
  %32 = load ptr, ptr %1, align 4
  %33 = getelementptr inbounds %struct.snd_pcm_info, ptr %6, i32 0, i32 7
  %34 = load i32, ptr %33, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.65, i32 noundef %34) #13
  %35 = load ptr, ptr %1, align 4
  %36 = getelementptr inbounds %struct.snd_pcm_info, ptr %6, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %35, ptr noundef nonnull @.str.66, i32 noundef %37) #13
  %38 = load ptr, ptr %1, align 4
  %39 = getelementptr inbounds %struct.snd_pcm_info, ptr %6, i32 0, i32 9
  %40 = load i32, ptr %39, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.67, i32 noundef %40) #13
  %41 = load ptr, ptr %1, align 4
  %42 = getelementptr inbounds %struct.snd_pcm_info, ptr %6, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.68, i32 noundef %43) #13
  br label %44

44:                                               ; preds = %13, %12
  tail call void @kfree(ptr noundef nonnull %6) #13
  br label %45

45:                                               ; preds = %44, %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_substream_proc_info_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @snd_pcm_proc_info_read(ptr noundef %4, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_substream_proc_hw_params_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.75) #13
  br label %50

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 37
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr %1, align 4
  br i1 %16, label %18, label %19

18:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.76) #13
  br label %50

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 11
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr [5 x ptr], ptr @snd_pcm_access_names, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.77, ptr noundef %23) #13
  %24 = load ptr, ptr %1, align 4
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 52
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = getelementptr [53 x ptr], ptr @snd_pcm_format_names, i32 0, i32 %26
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %19
  %32 = phi ptr [ %30, %28 ], [ @.str, %19 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.78, ptr noundef %32) #13
  %33 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.89) #13
  %34 = load ptr, ptr %1, align 4
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 15
  %36 = load i32, ptr %35, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.80, i32 noundef %36) #13
  %37 = load ptr, ptr %1, align 4
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 14
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 24
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 25
  %43 = load i32, ptr %42, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.81, i32 noundef %39, i32 noundef %41, i32 noundef %43) #13
  %44 = load ptr, ptr %1, align 4
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 16
  %46 = load i32, ptr %45, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.82, i32 noundef %46) #13
  %47 = load ptr, ptr %1, align 4
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 18
  %49 = load i32, ptr %48, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %47, ptr noundef nonnull @.str.83, i32 noundef %49) #13
  br label %50

50:                                               ; preds = %31, %18, %10
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds %struct.snd_pcm, ptr %51, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %52) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_substream_proc_sw_params_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.75) #13
  br label %47

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 37
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr %1, align 4
  br i1 %16, label %18, label %19

18:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.76) #13
  br label %47

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 27
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr [2 x ptr], ptr @snd_pcm_tstamp_mode_names, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.90, ptr noundef %23) #13
  %24 = load ptr, ptr %1, align 4
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 28
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.91, i32 noundef %26) #13
  %27 = load ptr, ptr %1, align 4
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 38
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %29, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.92, i32 noundef %31) #13
  %32 = load ptr, ptr %1, align 4
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 29
  %34 = load i32, ptr %33, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.93, i32 noundef %34) #13
  %35 = load ptr, ptr %1, align 4
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 30
  %37 = load i32, ptr %36, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %35, ptr noundef nonnull @.str.94, i32 noundef %37) #13
  %38 = load ptr, ptr %1, align 4
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 31
  %40 = load i32, ptr %39, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.95, i32 noundef %40) #13
  %41 = load ptr, ptr %1, align 4
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 32
  %43 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.96, i32 noundef %43) #13
  %44 = load ptr, ptr %1, align 4
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 33
  %46 = load i32, ptr %45, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.97, i32 noundef %46) #13
  br label %47

47:                                               ; preds = %19, %18, %10
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr inbounds %struct.snd_pcm, ptr %48, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %49) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_substream_proc_status_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.snd_pcm_status64, align 8
  %4 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm, ptr %6, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.75) #13
  br label %56

13:                                               ; preds = %2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i32 128, i1 false)
  %14 = call i32 @snd_pcm_status64(ptr noundef %5, ptr noundef nonnull %3) #13
  %15 = icmp slt i32 %14, 0
  %16 = load ptr, ptr %1, align 4
  br i1 %15, label %17, label %18

17:                                               ; preds = %13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.57, i32 noundef %14) #13
  br label %56

18:                                               ; preds = %13
  %19 = load i32, ptr %3, align 8
  %20 = getelementptr [8 x ptr], ptr @snd_pcm_state_names, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.100, ptr noundef %21) #13
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 23
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @pid_vnr(ptr noundef %24) #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.101, i32 noundef %25) #13
  %26 = load ptr, ptr %1, align 4
  %27 = getelementptr inbounds %struct.snd_pcm_status64, ptr %3, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_status64, ptr %3, i32 0, i32 3
  %30 = load i64, ptr %29, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %26, ptr noundef nonnull @.str.102, i64 noundef %28, i64 noundef %30) #13
  %31 = load ptr, ptr %1, align 4
  %32 = getelementptr inbounds %struct.snd_pcm_status64, ptr %3, i32 0, i32 4
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_status64, ptr %3, i32 0, i32 5
  %35 = load i64, ptr %34, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.103, i64 noundef %33, i64 noundef %35) #13
  %36 = load ptr, ptr %1, align 4
  %37 = getelementptr inbounds %struct.snd_pcm_status64, ptr %3, i32 0, i32 8
  %38 = load i32, ptr %37, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %36, ptr noundef nonnull @.str.104, i32 noundef %38) #13
  %39 = load ptr, ptr %1, align 4
  %40 = getelementptr inbounds %struct.snd_pcm_status64, ptr %3, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %39, ptr noundef nonnull @.str.105, i32 noundef %41) #13
  %42 = load ptr, ptr %1, align 4
  %43 = getelementptr inbounds %struct.snd_pcm_status64, ptr %3, i32 0, i32 10
  %44 = load i32, ptr %43, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %42, ptr noundef nonnull @.str.106, i32 noundef %44) #13
  %45 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.107) #13
  %46 = load ptr, ptr %1, align 4
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 37
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %48, i32 0, i32 3
  %50 = load i32, ptr %49, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %46, ptr noundef nonnull @.str.108, i32 noundef %50) #13
  %51 = load ptr, ptr %1, align 4
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 38
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %53, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %51, ptr noundef nonnull @.str.109, i32 noundef %55) #13
  br label %56

56:                                               ; preds = %18, %17, %11
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr inbounds %struct.snd_pcm, ptr %57, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %58) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_status64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_dev_free(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef nonnull %3) #13
  br label %10

10:                                               ; preds = %9, %5
  tail call void @snd_pcm_lib_preallocate_free_for_all(ptr noundef nonnull %3) #13
  %11 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 8
  tail call fastcc void @snd_pcm_free_stream(ptr noundef %11) #13
  %12 = getelementptr %struct.snd_pcm, ptr %3, i32 0, i32 8, i32 1
  tail call fastcc void @snd_pcm_free_stream(ptr noundef %12) #13
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %13

13:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_dev_register(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %94, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %94, label %7

7:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %8 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 13
  %9 = load i8, ptr %8, align 8, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = load ptr, ptr @snd_pcm_devices, align 4
  %13 = icmp eq ptr %12, @snd_pcm_devices
  br i1 %13, label %43, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 2
  br label %17

17:                                               ; preds = %40, %14
  %18 = phi ptr [ %12, %14 ], [ %41, %40 ]
  %19 = getelementptr i8, ptr %18, i32 -4
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, %15
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %18, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %16, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %92, label %31

27:                                               ; preds = %17
  %28 = load i32, ptr %20, align 8
  %29 = load i32, ptr %15, align 8
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %33, label %40

31:                                               ; preds = %22
  %32 = icmp sgt i32 %24, %25
  br i1 %32, label %33, label %40

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 1
  %35 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %34, ptr %38, align 4
  store ptr %37, ptr %34, align 4
  %39 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 1, i32 1
  store ptr %36, ptr %39, align 4
  store volatile ptr %34, ptr %36, align 4
  br label %47

40:                                               ; preds = %31, %27
  %41 = load ptr, ptr %18, align 4
  %42 = icmp eq ptr %41, @snd_pcm_devices
  br i1 %42, label %43, label %17

43:                                               ; preds = %40, %11
  %44 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 1
  %45 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @snd_pcm_devices, i32 0, i32 1), align 4
  store ptr %44, ptr getelementptr inbounds (%struct.list_head, ptr @snd_pcm_devices, i32 0, i32 1), align 4
  store ptr @snd_pcm_devices, ptr %44, align 4
  %46 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 1, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %44, ptr %45, align 4
  br label %47

47:                                               ; preds = %43, %33, %7
  %48 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 2
  %49 = getelementptr %struct.snd_pcm, ptr %5, i32 0, i32 8, i32 0, i32 4
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %73, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %5, align 8
  %54 = load i32, ptr %48, align 4
  %55 = getelementptr %struct.snd_pcm, ptr %5, i32 0, i32 8, i32 0, i32 7
  %56 = tail call i32 @snd_register_device(i32 noundef 5, ptr noundef %53, i32 noundef %54, ptr noundef nonnull @snd_pcm_f_ops, ptr noundef nonnull %5, ptr noundef %55) #13
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %49, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %61, %58
  %62 = phi ptr [ %64, %61 ], [ %59, %58 ]
  tail call void @snd_pcm_timer_init(ptr noundef nonnull %62) #13
  %63 = getelementptr inbounds %struct.snd_pcm_substream, ptr %62, i32 0, i32 15
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %61

66:                                               ; preds = %78, %52
  %67 = phi i32 [ %56, %52 ], [ %82, %78 ]
  %68 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 1
  %69 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 1, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %68, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  store volatile ptr %71, ptr %70, align 4
  store volatile ptr %68, ptr %68, align 4
  store ptr %68, ptr %69, align 4
  br label %92

73:                                               ; preds = %61, %58, %47
  %74 = phi i32 [ 0, %47 ], [ %56, %58 ], [ %56, %61 ]
  %75 = getelementptr %struct.snd_pcm, ptr %5, i32 0, i32 8, i32 1, i32 4
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %92, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %5, align 8
  %80 = load i32, ptr %48, align 4
  %81 = getelementptr %struct.snd_pcm, ptr %5, i32 0, i32 8, i32 1, i32 7
  %82 = tail call i32 @snd_register_device(i32 noundef 6, ptr noundef %79, i32 noundef %80, ptr noundef getelementptr inbounds ([2 x %struct.file_operations], ptr @snd_pcm_f_ops, i32 0, i32 1), ptr noundef nonnull %5, ptr noundef %81) #13
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %66, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr %75, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %87, %84
  %88 = phi ptr [ %90, %87 ], [ %85, %84 ]
  tail call void @snd_pcm_timer_init(ptr noundef nonnull %88) #13
  %89 = getelementptr inbounds %struct.snd_pcm_substream, ptr %88, i32 0, i32 15
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %87

92:                                               ; preds = %87, %84, %73, %66, %22
  %93 = phi i32 [ %67, %66 ], [ %74, %73 ], [ %82, %84 ], [ %82, %87 ], [ -16, %22 ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  br label %94

94:                                               ; preds = %92, %3, %1
  %95 = phi i32 [ %93, %92 ], [ -6, %3 ], [ -6, %1 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_dev_disconnect(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %4 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %5, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %6 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %7, align 4
  %11 = getelementptr %struct.snd_pcm, ptr %3, i32 0, i32 8, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %14

14:                                               ; preds = %38, %1
  %15 = phi ptr [ %40, %38 ], [ %12, %1 ]
  tail call void @snd_pcm_stream_lock_irq(ptr noundef nonnull %15) #13
  %16 = getelementptr inbounds %struct.snd_pcm_substream, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 37
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 8
  switch i32 %22, label %32 [
    i32 3, label %27
    i32 5, label %23
  ]

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.snd_pcm_substream, ptr %15, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23, %19
  %28 = tail call i32 @snd_pcm_stop(ptr noundef nonnull %15, i32 noundef 8) #13
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 37
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %27, %23, %19
  %33 = phi ptr [ %21, %19 ], [ %31, %27 ], [ %21, %23 ]
  store i32 8, ptr %33, align 8
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %35, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %36 = load ptr, ptr %16, align 4
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %36, i32 0, i32 41
  tail call void @__wake_up(ptr noundef %37, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %38

38:                                               ; preds = %32, %14
  tail call void @snd_pcm_stream_unlock_irq(ptr noundef nonnull %15) #13
  %39 = getelementptr inbounds %struct.snd_pcm_substream, ptr %15, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %14

42:                                               ; preds = %38, %1
  %43 = getelementptr %struct.snd_pcm, ptr %3, i32 0, i32 8, i32 1, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %74, label %46

46:                                               ; preds = %70, %42
  %47 = phi ptr [ %72, %70 ], [ %44, %42 ]
  tail call void @snd_pcm_stream_lock_irq(ptr noundef nonnull %47) #13
  %48 = getelementptr inbounds %struct.snd_pcm_substream, ptr %47, i32 0, i32 11
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %70, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %49, i32 0, i32 37
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %53, align 8
  switch i32 %54, label %64 [
    i32 3, label %59
    i32 5, label %55
  ]

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.snd_pcm_substream, ptr %47, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55, %51
  %60 = tail call i32 @snd_pcm_stop(ptr noundef nonnull %47, i32 noundef 8) #13
  %61 = load ptr, ptr %48, align 4
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %61, i32 0, i32 37
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %59, %55, %51
  %65 = phi ptr [ %63, %59 ], [ %53, %55 ], [ %53, %51 ]
  store i32 8, ptr %65, align 8
  %66 = load ptr, ptr %48, align 4
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %66, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %67, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %68 = load ptr, ptr %48, align 4
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %68, i32 0, i32 41
  tail call void @__wake_up(ptr noundef %69, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %70

70:                                               ; preds = %64, %46
  tail call void @snd_pcm_stream_unlock_irq(ptr noundef nonnull %47) #13
  %71 = getelementptr inbounds %struct.snd_pcm_substream, ptr %47, i32 0, i32 15
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %46

74:                                               ; preds = %70, %42
  %75 = load ptr, ptr %11, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %77, %74
  %78 = phi ptr [ %80, %77 ], [ %75, %74 ]
  tail call void @snd_pcm_sync_stop(ptr noundef nonnull %78, i1 noundef zeroext false) #13
  %79 = getelementptr inbounds %struct.snd_pcm_substream, ptr %78, i32 0, i32 15
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %77

82:                                               ; preds = %77, %74
  %83 = load ptr, ptr %43, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %85, %82
  %86 = phi ptr [ %88, %85 ], [ %83, %82 ]
  tail call void @snd_pcm_sync_stop(ptr noundef nonnull %86, i1 noundef zeroext false) #13
  %87 = getelementptr inbounds %struct.snd_pcm_substream, ptr %86, i32 0, i32 15
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %85

90:                                               ; preds = %85, %82
  %91 = getelementptr %struct.snd_pcm, ptr %3, i32 0, i32 8, i32 0, i32 7
  %92 = tail call i32 @snd_unregister_device(ptr noundef %91) #13
  %93 = getelementptr %struct.snd_pcm, ptr %3, i32 0, i32 8, i32 0, i32 6
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %90
  %97 = getelementptr %struct.snd_pcm, ptr %3, i32 0, i32 8, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.snd_card, ptr %99, i32 0, i32 14
  tail call void @down_write(ptr noundef %100) #13
  %101 = load ptr, ptr %93, align 8
  %102 = tail call i32 @snd_ctl_remove(ptr noundef %99, ptr noundef %101) #13
  tail call void @up_write(ptr noundef %100) #13
  store ptr null, ptr %93, align 8
  br label %103

103:                                              ; preds = %96, %90
  %104 = getelementptr %struct.snd_pcm, ptr %3, i32 0, i32 8, i32 1, i32 7
  %105 = tail call i32 @snd_unregister_device(ptr noundef %104) #13
  %106 = getelementptr %struct.snd_pcm, ptr %3, i32 0, i32 8, i32 1, i32 6
  %107 = load ptr, ptr %106, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %103
  %110 = getelementptr %struct.snd_pcm, ptr %3, i32 0, i32 8, i32 1, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.snd_card, ptr %112, i32 0, i32 14
  tail call void @down_write(ptr noundef %113) #13
  %114 = load ptr, ptr %106, align 8
  %115 = tail call i32 @snd_ctl_remove(ptr noundef %112, ptr noundef %114) #13
  tail call void @up_write(ptr noundef %113) #13
  store ptr null, ptr %106, align 8
  br label %116

116:                                              ; preds = %109, %103
  tail call void @mutex_unlock(ptr noundef %4) #13
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_register_device(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_timer_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_lock_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_sync_stop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_lib_preallocate_free_for_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_pcm_free_stream(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.snd_pcm_str, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @snd_info_free_entry(ptr noundef %3) #13
  store ptr null, ptr %2, align 4
  %4 = getelementptr inbounds %struct.snd_pcm_str, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %10, %7 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  tail call void @snd_pcm_timer_done(ptr noundef nonnull %8) #13
  tail call void @kfree(ptr noundef nonnull %8) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.snd_pcm_str, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.snd_pcm_str, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 14
  tail call void @down_write(ptr noundef %20) #13
  %21 = load ptr, ptr %13, align 8
  %22 = tail call i32 @snd_ctl_remove(ptr noundef %19, ptr noundef %21) #13
  tail call void @up_write(ptr noundef %20) #13
  store ptr null, ptr %13, align 8
  br label %23

23:                                               ; preds = %16, %12
  %24 = getelementptr inbounds %struct.snd_pcm_str, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.snd_pcm_str, ptr %0, i32 0, i32 7
  tail call void @put_device(ptr noundef %28) #13
  br label %29

29:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_timer_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcm_class_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 4
  %7 = load i16, ptr %6, align 4
  %8 = icmp ugt i16 %7, 3
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = zext i16 %7 to i32
  %11 = getelementptr [4 x ptr], ptr @pcm_class_show.strs, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi ptr [ %12, %9 ], [ @.str.127, %3 ]
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.128, ptr noundef %14)
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_register_ioctl(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_pcm_control_ioctl(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #1 {
  switch i32 %2, label %129 [
    i32 -2147199696, label %5
    i32 -1054845647, label %41
    i32 1074025778, label %116
  ]

5:                                                ; preds = %4
  %6 = inttoptr i32 %3 to ptr
  %7 = tail call ptr @llvm.thread.pointer() #13
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #17, !srcloc !19
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #13, !srcloc !22
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %129

15:                                               ; preds = %5
  %16 = extractvalue { i32, i32 } %12, 1
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  br label %17

17:                                               ; preds = %29, %15
  %18 = phi ptr [ @snd_pcm_devices, %15 ], [ %19, %29 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @snd_pcm_devices
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %19, i32 -4
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %19, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, %16
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %21
  %30 = load i32, ptr %23, align 8
  %31 = load i32, ptr %0, align 8
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %17

33:                                               ; preds = %29, %25, %17
  %34 = phi i32 [ %27, %25 ], [ -1, %29 ], [ -1, %17 ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #17, !srcloc !19
  %36 = and i32 %35, -13
  %37 = or i32 %36, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %34, i32 -1090519041) #13, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 0, i32 -14
  br label %129

41:                                               ; preds = %4
  %42 = inttoptr i32 %3 to ptr
  %43 = tail call ptr @llvm.thread.pointer() #13
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %45 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %44) #17, !srcloc !19
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %48 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %42, i32 -1090519041) #13, !srcloc !24
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = extractvalue { i32, i32 } %48, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %52, label %129

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.snd_pcm_info, ptr %42, i32 0, i32 2
  %54 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %44) #17, !srcloc !19
  %55 = and i32 %54, -13
  %56 = or i32 %55, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %57 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %53, i32 -1090519041) #13, !srcloc !25
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = extractvalue { i32, i32 } %57, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %61, label %129

61:                                               ; preds = %52
  %62 = icmp ugt i32 %59, 1
  br i1 %62, label %129, label %63

63:                                               ; preds = %61
  %64 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %59, i32 2) #13, !srcloc !26
  %65 = and i32 %64, %59
  %66 = getelementptr inbounds %struct.snd_pcm_info, ptr %42, i32 0, i32 1
  %67 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %44) #17, !srcloc !19
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %70 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %66, i32 -1090519041) #13, !srcloc !27
  %71 = extractvalue { i32, i32 } %70, 0
  %72 = extractvalue { i32, i32 } %70, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %74, label %129

74:                                               ; preds = %63
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %75 = load ptr, ptr @snd_pcm_devices, align 4
  %76 = icmp eq ptr %75, @snd_pcm_devices
  br i1 %76, label %114, label %77

77:                                               ; preds = %86, %74
  %78 = phi ptr [ %87, %86 ], [ %75, %74 ]
  %79 = getelementptr i8, ptr %78, i32 -4
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, %0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = getelementptr i8, ptr %78, i32 8
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %50
  br i1 %85, label %89, label %86

86:                                               ; preds = %82, %77
  %87 = load ptr, ptr %78, align 4
  %88 = icmp eq ptr %87, @snd_pcm_devices
  br i1 %88, label %114, label %77

89:                                               ; preds = %82
  %90 = getelementptr i8, ptr %78, i32 -4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %114, label %92

92:                                               ; preds = %89
  %93 = getelementptr %struct.snd_pcm, ptr %90, i32 0, i32 8, i32 %65, i32 2
  %94 = load i32, ptr %93, align 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %92
  %97 = icmp ult i32 %72, %94
  br i1 %97, label %98, label %114

98:                                               ; preds = %96
  %99 = getelementptr %struct.snd_pcm, ptr %90, i32 0, i32 8, i32 %65, i32 4
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %114, label %102

102:                                              ; preds = %107, %98
  %103 = phi ptr [ %109, %107 ], [ %100, %98 ]
  %104 = getelementptr inbounds %struct.snd_pcm_substream, ptr %103, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, %72
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.snd_pcm_substream, ptr %103, i32 0, i32 15
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %102

111:                                              ; preds = %102
  %112 = getelementptr i8, ptr %78, i32 1172
  tail call void @mutex_lock(ptr noundef %112) #13
  %113 = tail call i32 @snd_pcm_info_user(ptr noundef nonnull %103, ptr noundef %42) #13
  tail call void @mutex_unlock(ptr noundef %112) #13
  br label %114

114:                                              ; preds = %111, %107, %98, %96, %92, %89, %86, %74
  %115 = phi i32 [ %113, %111 ], [ -6, %89 ], [ -2, %92 ], [ -6, %96 ], [ -6, %74 ], [ -6, %98 ], [ -6, %107 ], [ -6, %86 ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  br label %129

116:                                              ; preds = %4
  %117 = inttoptr i32 %3 to ptr
  %118 = tail call ptr @llvm.thread.pointer() #13
  %119 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 3
  %120 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %119) #17, !srcloc !19
  %121 = and i32 %120, -13
  %122 = or i32 %121, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %122) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %123 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %117, i32 -1090519041) #13, !srcloc !28
  %124 = extractvalue { i32, i32 } %123, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %120) #13, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !21
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = extractvalue { i32, i32 } %123, 1
  %128 = getelementptr inbounds %struct.snd_ctl_file, ptr %1, i32 0, i32 3
  store i32 %127, ptr %128, align 4
  br label %129

129:                                              ; preds = %126, %116, %114, %63, %61, %52, %41, %33, %5, %4
  %130 = phi i32 [ -14, %5 ], [ %40, %33 ], [ %115, %114 ], [ -14, %41 ], [ -14, %52 ], [ -22, %61 ], [ -14, %63 ], [ 0, %126 ], [ -14, %116 ], [ -515, %4 ]
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_info_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_pcm_proc_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #13
  %3 = load ptr, ptr @snd_pcm_devices, align 4
  %4 = icmp eq ptr %3, @snd_pcm_devices
  br i1 %4, label %34, label %5

5:                                                ; preds = %30, %2
  %6 = phi ptr [ %32, %30 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = load ptr, ptr %1, align 4
  %9 = load ptr, ptr %7, align 8
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr i8, ptr %6, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %6, i32 20
  %14 = getelementptr i8, ptr %6, i32 84
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.129, i32 noundef %10, i32 noundef %12, ptr noundef %13, ptr noundef %14) #13
  %15 = getelementptr i8, ptr %6, i32 180
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load ptr, ptr %1, align 4
  %20 = getelementptr i8, ptr %6, i32 172
  %21 = load i32, ptr %20, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.130, i32 noundef %21) #13
  br label %22

22:                                               ; preds = %18, %5
  %23 = getelementptr i8, ptr %6, i32 684
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %1, align 4
  %28 = getelementptr i8, ptr %6, i32 676
  %29 = load i32, ptr %28, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.131, i32 noundef %29) #13
  br label %30

30:                                               ; preds = %26, %22
  %31 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.132) #13
  %32 = load ptr, ptr %6, align 4
  %33 = icmp eq ptr %32, @snd_pcm_devices
  br i1 %33, label %34, label %5

34:                                               ; preds = %30, %2
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_unregister_ioctl(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i64 786966, i64 2148276937, i64 2148276963, i64 2148277010, i64 2148277032, i64 2148277060, i64 2148277080}
!11 = !{i64 2148289810, i64 2148289842, i64 2148289871, i64 2148289905, i64 2148289936, i64 2148289959}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148955570}
!15 = !{i64 2148951394}
!16 = !{i64 2148951469, i64 2148951496, i64 2148951543, i64 2148951565, i64 2148951593, i64 2148951613}
!17 = !{i64 692889}
!18 = !{i64 2148979714}
!19 = !{i64 4262486}
!20 = !{i64 4262683}
!21 = !{i64 2151747962}
!22 = !{i64 2153046312, i64 2153046592, i64 2153046926, i64 2153047260}
!23 = !{i64 2153055280, i64 2153055560, i64 2153055894, i64 2153056228}
!24 = !{i64 2153067366, i64 2153067646, i64 2153067980, i64 2153068314}
!25 = !{i64 2153079345, i64 2153079625, i64 2153079959, i64 2153080293}
!26 = !{i64 551981, i64 551998, i64 2148036068}
!27 = !{i64 2153094114, i64 2153094394, i64 2153094728, i64 2153095062}
!28 = !{i64 2153106819, i64 2153107099, i64 2153107433, i64 2153107767}
