; ModuleID = '/llk/IR/drivers/media/platform/aspeed-video.c_pt.bc'
source_filename = "../drivers/media/platform/aspeed-video.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.aspeed_video_config = type { i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.lock_class_key = type {}
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.102 }
%union.anon.102 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aspeed_video = type { ptr, ptr, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_device, %struct.v4l2_pix_format, %struct.v4l2_bt_timings, %struct.v4l2_bt_timings, i32, %struct.vb2_queue, %struct.video_device, %struct.mutex, i32, i32, %struct.wait_queue_head, %struct.spinlock, %struct.delayed_work, %struct.list_head, i32, i32, i32, [2 x %struct.aspeed_video_addr], %struct.aspeed_video_addr, i8, i32, i32, i32, i32, i32, i32, %struct.aspeed_video_perf }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.83, i32, i32 }
%union.anon.83 = type { i32 }
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.77 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.74], %struct.media_entity_enum, i32 }
%struct.anon.74 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.aspeed_video_addr = type { i32, i32, ptr }
%struct.aspeed_video_perf = type { i64, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.81, i32 }
%union.anon.81 = type { i32 }
%struct.aspeed_video_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.71, %union.anon.72, i32, ptr, i32, %struct.anon.73, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.71 = type { i64 }
%union.anon.72 = type { ptr }
%struct.anon.73 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.82 }
%union.anon.82 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.84, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.84 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.99, [2 x i32] }
%union.anon.99 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.100, [2 x i32] }
%union.anon.100 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_dv_timings = type { i32, %union.anon.101 }
%union.anon.101 = type { [32 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.68 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@aspeed_video_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-video-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2600_config }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description314 = internal constant [39 x i8] c"description=ASPEED Video Engine Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author315 = internal constant [19 x i8] c"author=Eddie James\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@ast2400_config = internal constant %struct.aspeed_video_config { i32 256, i32 120 }, align 4
@ast2500_config = internal constant %struct.aspeed_video_config { i32 8192, i32 120 }, align 4
@ast2600_config = internal constant %struct.aspeed_video_config { i32 8192, i32 132 }, align 4
@aspeed_video_driver = internal global %struct.platform_driver { ptr @aspeed_video_probe, ptr @aspeed_video_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_video_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"aspeed-video\00", align 1
@aspeed_video_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"&video->video_lock\00", align 1
@aspeed_video_probe.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"&video->wait\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"debugfs create failed\0A\00", align 1
@aspeed_video_resolution_work.ev = internal constant { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Unable to find IRQ\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Unable to request IRQ %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"eclk\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Unable to get ECLK\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"vclk\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Unable to get VCLK\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Failed to set DMA mask\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Failed to allocate DMA for JPEG header\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@aspeed_video_jpeg_header = internal unnamed_addr constant [10 x i32] [i32 -520103681, i32 1179258880, i32 16795209, i32 1610612993, i32 24576, i32 251723519, i32 11525, i32 0, i32 0, i32 14417664], align 4
@aspeed_video_jpeg_dct = internal unnamed_addr constant [12 x [34 x i32]] [[34 x i32] [i32 219414595, i32 202313999, i32 286265620, i32 387192086, i32 505426462, i32 1025383195, i32 841231915, i32 1263288136, i32 1145454407, i32 1634949712, i32 1449940304, i32 -2006694332, i32 2054581349, i32 1300267648, i32 -1936224928, i32 2121504381, i32 -604013696, i32 520176384, i32 657269025, i32 808474669, i32 1769716056, i32 -1195787909, i32 -1179081050, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -1179010631, i32 -4605511], [34 x i32] [i32 202440771, i32 168627981, i32 252579601, i32 336663059, i32 438053658, i32 890902552, i32 723462182, i32 1094858559, i32 1010644798, i32 1432636998, i32 1264536134, i32 2002206012, i32 1801936728, i32 1131442544, i32 2055502676, i32 1852081005, i32 -604017552, i32 453067520, i32 572988701, i32 707415079, i32 1533780044, i32 -1600085909, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -1600085856, i32 -6250336], [34 x i32] [i32 151912515, i32 151653386, i32 202050574, i32 286134032, i32 353838101, i32 739578643, i32 605692191, i32 909585972, i32 825372211, i32 1179861306, i32 1045314874, i32 1648898609, i32 1482051145, i32 945643101, i32 1701668421, i32 1532193882, i32 -604022435, i32 369181440, i32 471865368, i32 572669728, i32 1264092479, i32 -2054847144, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -2054847099, i32 -8026747], [34 x i32] [i32 118161475, i32 117967368, i32 168364555, i32 218827788, i32 286399505, i32 588320527, i32 471079449, i32 724247593, i32 656942120, i32 943862574, i32 826159150, i32 1312368679, i32 1178877498, i32 743066186, i32 1347834167, i32 1212307015, i32 -604027062, i32 302072576, i32 370807571, i32 471610138, i32 1028156467, i32 1819044936, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 1819044972, i32 -9671572], [34 x i32] [i32 101253187, i32 84281094, i32 117901065, i32 168364298, i32 219026957, i32 453839884, i32 370152467, i32 555883552, i32 505355296, i32 724772900, i32 640689700, i32 1026367262, i32 926232621, i32 574175801, i32 1061437227, i32 942883640, i32 -604031175, i32 218186496, i32 286461454, i32 353707539, i32 758468646, i32 1347440693, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 1347440720, i32 -11513776], [34 x i32] [i32 67502147, i32 50595076, i32 84149510, i32 117835270, i32 151588617, i32 302581768, i32 252316941, i32 370545429, i32 336925461, i32 488774424, i32 421533976, i32 673060116, i32 606281758, i32 388376358, i32 707602972, i32 622996773, i32 -604035802, i32 151077632, i32 185403914, i32 235805197, i32 522532634, i32 926365477, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 926365495, i32 -13158601], [34 x i32] [i32 33751107, i32 16908802, i32 33686019, i32 50529027, i32 67372804, i32 151258116, i32 117769734, i32 185272586, i32 168429834, i32 235998476, i32 202378252, i32 336529930, i32 303108111, i32 185799443, i32 353768718, i32 303109650, i32 -604040685, i32 67191552, i32 84280581, i32 117902598, i32 252844813, i32 454761234, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 454761243, i32 -15000805], [34 x i32] [i32 16908355, i32 16843009, i32 16843010, i32 33686018, i32 50529539, i32 100860418, i32 84083716, i32 117900807, i32 101123591, i32 151718152, i32 134875144, i32 218760966, i32 202050058, i32 118230284, i32 235867657, i32 202051340, i32 -604042228, i32 50414336, i32 50594563, i32 67373060, i32 168563208, i32 303174156, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 303174162, i32 -15592942], [34 x i32] [i32 16908355, i32 16843009, i32 16843010, i32 33686018, i32 50529539, i32 100860418, i32 84083716, i32 117900807, i32 101123591, i32 151718152, i32 134875144, i32 218760966, i32 202050058, i32 118230284, i32 235867657, i32 202051340, i32 -604042228, i32 33637120, i32 50528770, i32 67372803, i32 134876935, i32 252645130, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 252645135, i32 -15790321], [34 x i32] [i32 16842819, i32 16843009, i32 16843009, i32 16843009, i32 33686274, i32 67240450, i32 50463491, i32 84214789, i32 84214789, i32 117966342, i32 101189126, i32 168232197, i32 151521287, i32 84478217, i32 168495623, i32 151522057, i32 -604042999, i32 33637120, i32 33751554, i32 50529539, i32 117967877, i32 202116104, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 202116108, i32 -15987700], [34 x i32] [i32 16842819, i32 16843009, i32 16843009, i32 16843009, i32 16843265, i32 50397441, i32 33620482, i32 50529027, i32 50529027, i32 67437572, i32 67437572, i32 100991747, i32 100992261, i32 50726406, i32 117901060, i32 100992774, i32 -604043770, i32 16859904, i32 16908545, i32 33686530, i32 84281604, i32 151587078, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 151587081, i32 -16185079], [34 x i32] [i32 16842819, i32 16843009, i32 16843009, i32 16843009, i32 16843009, i32 16843009, i32 16843009, i32 16843009, i32 16843009, i32 33686018, i32 33686018, i32 50462977, i32 50463234, i32 16974595, i32 50529026, i32 50463491, i32 -604044285, i32 16859904, i32 16843009, i32 16843265, i32 50595330, i32 101058052, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 101058054, i32 -16382458]], align 4
@aspeed_video_jpeg_quant = internal unnamed_addr constant [116 x i32] [i32 135332032, i32 0, i32 1114371, i32 50401538, i32 -989921007, i32 7936, i32 16844033, i32 16843009, i32 0, i32 0, i32 67305985, i32 134678021, i32 -16053751, i32 280297668, i32 50397696, i32 50594307, i32 67372293, i32 2097217536, i32 197121, i32 302321924, i32 104935713, i32 123818259, i32 840200482, i32 144806273, i32 -1045347805, i32 -254717419, i32 1919038244, i32 369756546, i32 437852183, i32 673654309, i32 892611113, i32 959985462, i32 1162101562, i32 1229473606, i32 1431589706, i32 1498961750, i32 1701077850, i32 1768449894, i32 1970565994, i32 2037938038, i32 -2054913158, i32 -1987541114, i32 -1802268022, i32 -1734895979, i32 -1549624679, i32 -1482250844, i32 -1297438296, i32 -1229605709, i32 -1162233673, i32 -976960574, i32 -909588538, i32 -724315446, i32 -656943403, i32 -488514855, i32 -421141277, i32 -353769241, i32 -185339151, i32 -117967115, i32 -989857031, i32 73472, i32 16843011, i32 16843009, i32 257, i32 0, i32 67305985, i32 134678021, i32 -16053751, i32 297074884, i32 33620480, i32 67306500, i32 67372295, i32 1996620032, i32 50462976, i32 553976849, i32 1091700273, i32 1902184273, i32 -2127420909, i32 -1857940472, i32 163688865, i32 -263048413, i32 -781032939, i32 874780170, i32 401679841, i32 639244568, i32 707340327, i32 943142453, i32 1145256505, i32 1212630597, i32 1414744649, i32 1482118741, i32 1684232793, i32 1751606885, i32 1953720937, i32 2021095029, i32 -2088600967, i32 -2021227132, i32 -1836414584, i32 -1768581997, i32 -1701209961, i32 -1515936862, i32 -1448564826, i32 -1263291734, i32 -1195919691, i32 -1010648391, i32 -943274556, i32 -758462008, i32 -690629421, i32 -623257385, i32 -437984286, i32 -370612250, i32 -185339158, i32 -117967115, i32 -620758279, i32 16976896, i32 51446272, i32 4128785], align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"Failed to register v4l2 device\0A\00", align 1
@aspeed_video_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @aspeed_video_set_ctrl }, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"Failed to init controls: %d\0A\00", align 1
@aspeed_video_vb2_ops = internal constant %struct.vb2_ops { ptr @aspeed_video_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @aspeed_video_buf_prepare, ptr null, ptr null, ptr @aspeed_video_start_streaming, ptr @aspeed_video_stop_streaming, ptr @aspeed_video_buf_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"Failed to init vb2 queue\0A\00", align 1
@aspeed_video_v4l2_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @aspeed_video_open, ptr @aspeed_video_release }, align 4
@aspeed_video_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @aspeed_video_querycap, ptr @aspeed_video_enum_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_video_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_video_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_video_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @aspeed_video_enum_input, ptr @aspeed_video_get_input, ptr @aspeed_video_set_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_video_get_parm, ptr @aspeed_video_set_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_video_enum_framesizes, ptr @aspeed_video_enum_frameintervals, ptr @aspeed_video_set_dv_timings, ptr @aspeed_video_get_dv_timings, ptr @aspeed_video_query_dv_timings, ptr @aspeed_video_enum_dv_timings, ptr @aspeed_video_dv_timings_cap, ptr null, ptr null, ptr @aspeed_video_sub_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str.17 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Failed to allocate source buffers\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Aspeed Video Engine\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Host VGA capture\00", align 1
@aspeed_video_timings_cap = internal constant %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.102 { %struct.v4l2_bt_timings_cap { i32 640, i32 1920, i32 480, i32 1200, i64 6574080, i64 138240000, i32 15, i32 14, [16 x i32] zeroinitializer }, [24 x i8] undef } }, align 4
@aspeed_video_debugfs_ops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @aspeed_video_proc_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@debugfs_entry = internal unnamed_addr global ptr null, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"  %-20s:\09%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Signal\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Unlock\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"  %-20s:\09%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"FRC\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"Performance:\0A\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"Frame#\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"  %-20s:\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"Frame Duration(ms)\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"    %-18s:\09%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"Now\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"Min\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"FPS\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author315, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_license316], section "llvm.metadata"

@__mod_of__aspeed_video_of_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @aspeed_video_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_video_driver, ptr noundef nonnull @__this_module) #16
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_video_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1912, i32 noundef 3520) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %176, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #16
  store ptr %6, ptr %3, align 8
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %176

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call ptr @of_match_node(ptr noundef nonnull @aspeed_video_of_match, ptr noundef %12) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %176, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.of_device_id, ptr %13, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 13
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.aspeed_video_config, ptr %17, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 14
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 25
  store i32 30, ptr %23, align 4
  %24 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 3
  store ptr %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 16
  store i32 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %26, ptr noundef nonnull @.str.1, ptr noundef nonnull @aspeed_video_probe.__key) #16
  %27 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef nonnull @aspeed_video_probe.__key.2) #16
  %28 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 17
  store i32 -32, ptr %28, align 4
  %29 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 17, i32 0, i32 1
  store volatile ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 17, i32 0, i32 1, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 17, i32 0, i32 2
  store ptr @aspeed_video_resolution_work, ptr %31, align 4
  %32 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %32, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %33 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 18
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 18, i32 1
  store ptr %33, ptr %34, align 4
  %35 = load ptr, ptr %24, align 4
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 25
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 @irq_of_parse_and_map(ptr noundef %37, i32 noundef 0) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.5) #17
  br label %176

41:                                               ; preds = %15
  %42 = tail call i32 @devm_request_threaded_irq(ptr noundef %35, i32 noundef %38, ptr noundef null, ptr noundef nonnull @aspeed_video_irq, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %3) #16
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.6, i32 noundef %38) #17
  br label %176

45:                                               ; preds = %41
  %46 = tail call ptr @devm_clk_get(ptr noundef %35, ptr noundef nonnull @.str.7) #16
  %47 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 1
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.8) #17
  %50 = load ptr, ptr %47, align 4
  %51 = ptrtoint ptr %50 to i32
  br label %104

52:                                               ; preds = %45
  %53 = tail call i32 @clk_prepare(ptr noundef %46) #16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %176

55:                                               ; preds = %52
  %56 = tail call ptr @devm_clk_get(ptr noundef %35, ptr noundef nonnull @.str.9) #16
  %57 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 2
  store ptr %56, ptr %57, align 8
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.10) #17
  %60 = load ptr, ptr %57, align 8
  %61 = ptrtoint ptr %60 to i32
  br label %101

62:                                               ; preds = %55
  %63 = tail call i32 @clk_prepare(ptr noundef %56) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %101

65:                                               ; preds = %62
  %66 = load ptr, ptr %36, align 8
  %67 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %35, ptr noundef %66, i32 noundef 0) #16
  %68 = tail call i32 @dma_set_mask(ptr noundef %35, i64 noundef 4294967295) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %65
  %71 = tail call i32 @dma_set_coherent_mask(ptr noundef %35, i64 noundef 4294967295) #16
  %72 = load ptr, ptr %24, align 4
  %73 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 23, i32 1
  %74 = tail call ptr @dma_alloc_attrs(ptr noundef %72, i32 noundef 24576, ptr noundef %73, i32 noundef 3264, i32 noundef 0) #16
  %75 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 23, i32 2
  store ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %74, null
  br i1 %76, label %97, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 23
  store i32 24576, ptr %78, align 4
  %79 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 24
  %80 = load i8, ptr %79, align 8, !range !8
  %81 = icmp eq i8 %80, 0
  br label %82

82:                                               ; preds = %94, %77
  %83 = phi i32 [ 0, %77 ], [ %95, %94 ]
  %84 = shl i32 %83, 8
  %85 = getelementptr i32, ptr %74, i32 %84
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %85, ptr noundef nonnull align 4 dereferenceable(40) @aspeed_video_jpeg_header, i32 40, i1 false) #16
  %86 = or i32 %84, 10
  %87 = getelementptr i32, ptr %74, i32 %86
  %88 = getelementptr [12 x [34 x i32]], ptr @aspeed_video_jpeg_dct, i32 0, i32 %83
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(136) %87, ptr noundef align 4 dereferenceable(136) %88, i32 136, i1 false) #16
  %89 = or i32 %84, 44
  %90 = getelementptr i32, ptr %74, i32 %89
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(464) %90, ptr noundef nonnull align 4 dereferenceable(464) @aspeed_video_jpeg_quant, i32 464, i1 false) #16
  br i1 %81, label %94, label %91

91:                                               ; preds = %82
  %92 = or i32 %84, 46
  %93 = getelementptr i32, ptr %74, i32 %92
  store i32 2228483, ptr %93, align 4
  br label %94

94:                                               ; preds = %91, %82
  %95 = add nuw nsw i32 %83, 1
  %96 = icmp eq i32 %95, 12
  br i1 %96, label %107, label %82

97:                                               ; preds = %70, %65
  %98 = phi ptr [ @.str.11, %65 ], [ @.str.12, %70 ]
  %99 = phi i32 [ %68, %65 ], [ -12, %70 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull %98) #17
  tail call void @of_reserved_mem_device_release(ptr noundef %35) #16
  %100 = load ptr, ptr %57, align 8
  tail call void @clk_unprepare(ptr noundef %100) #16
  br label %101

101:                                              ; preds = %97, %62, %59
  %102 = phi i32 [ %61, %59 ], [ %63, %62 ], [ %99, %97 ]
  %103 = load ptr, ptr %47, align 4
  tail call void @clk_unprepare(ptr noundef %103) #16
  br label %104

104:                                              ; preds = %101, %49
  %105 = phi i32 [ %51, %49 ], [ %102, %101 ]
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %176

107:                                              ; preds = %104, %94
  %108 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 5
  %109 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 10
  %110 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 11
  %111 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 6, i32 2
  store i32 1195724874, ptr %111, align 8
  %112 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 6, i32 3
  store i32 1, ptr %112, align 4
  %113 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 6, i32 6
  store i32 8, ptr %113, align 8
  %114 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 6, i32 10
  store i32 1, ptr %114, align 8
  %115 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 9
  store i32 2, ptr %115, align 8
  %116 = load ptr, ptr %24, align 4
  %117 = tail call i32 @v4l2_device_register(ptr noundef %116, ptr noundef %108) #16
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %107
  %120 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.14) #17
  br label %166

121:                                              ; preds = %107
  %122 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 4
  %123 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %122, i32 noundef 2, ptr noundef null, ptr noundef null) #16
  %124 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %122, ptr noundef nonnull @aspeed_video_ctrl_ops, i32 noundef 10291459, i64 noundef 0, i64 noundef 11, i64 noundef 1, i64 noundef 0) #16
  %125 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %122, ptr noundef nonnull @aspeed_video_ctrl_ops, i32 noundef 10291457, i8 noundef zeroext 2, i64 noundef 4294967290, i8 noundef zeroext 0) #16
  %126 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 4, i32 9
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %121
  tail call void @v4l2_ctrl_handler_free(ptr noundef %122) #16
  tail call void @v4l2_device_unregister(ptr noundef %108) #16
  %130 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.15, i32 noundef %127) #17
  br label %166

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 5, i32 6
  store ptr %122, ptr %132, align 4
  store i32 1, ptr %109, align 4
  %133 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 10, i32 1
  store i32 21, ptr %133, align 4
  %134 = load ptr, ptr %108, align 4
  %135 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 10, i32 2
  store ptr %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 10, i32 5
  store ptr %26, ptr %136, align 4
  %137 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 10, i32 7
  store ptr @aspeed_video_vb2_ops, ptr %137, align 4
  %138 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 10, i32 8
  store ptr @vb2_dma_contig_memops, ptr %138, align 4
  %139 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 10, i32 10
  store ptr %3, ptr %139, align 4
  %140 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 10, i32 12
  store i32 648, ptr %140, align 4
  %141 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 10, i32 13
  store i32 8192, ptr %141, align 4
  %142 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 10, i32 15
  store i32 3, ptr %142, align 4
  %143 = tail call i32 @vb2_queue_init(ptr noundef %109) #16
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %131
  tail call void @v4l2_ctrl_handler_free(ptr noundef %122) #16
  tail call void @v4l2_device_unregister(ptr noundef %108) #16
  %146 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.16) #17
  br label %166

147:                                              ; preds = %131
  %148 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 11, i32 10
  store ptr %109, ptr %148, align 8
  %149 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 11, i32 3
  store ptr @aspeed_video_v4l2_fops, ptr %149, align 4
  %150 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 11, i32 4
  store i32 83886081, ptr %150, align 8
  %151 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 11, i32 7
  store ptr %108, ptr %151, align 4
  %152 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 11, i32 12
  %153 = tail call i32 @strscpy(ptr noundef %152, ptr noundef nonnull @.str, i32 noundef 32) #16
  %154 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 11, i32 13
  store i32 0, ptr %154, align 8
  %155 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 11, i32 14
  store i32 0, ptr %155, align 4
  %156 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 11, i32 23
  store ptr @video_device_release_empty, ptr %156, align 8
  %157 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 11, i32 24
  store ptr @aspeed_video_ioctl_ops, ptr %157, align 4
  %158 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 11, i32 26
  store ptr %26, ptr %158, align 8
  %159 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 11, i32 5, i32 8
  store ptr %3, ptr %159, align 8
  %160 = load ptr, ptr %149, align 4
  %161 = load ptr, ptr %160, align 4
  %162 = tail call i32 @__video_register_device(ptr noundef %110, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %161) #16
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %147
  tail call void @v4l2_ctrl_handler_free(ptr noundef %122) #16
  tail call void @v4l2_device_unregister(ptr noundef %108) #16
  %165 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.17) #17
  br label %166

166:                                              ; preds = %164, %145, %129, %119
  %167 = phi i32 [ %162, %164 ], [ %143, %145 ], [ %127, %129 ], [ %117, %119 ]
  %168 = getelementptr inbounds %struct.aspeed_video, ptr %3, i32 0, i32 2
  %169 = load ptr, ptr %168, align 8
  tail call void @clk_unprepare(ptr noundef %169) #16
  %170 = load ptr, ptr %47, align 4
  tail call void @clk_unprepare(ptr noundef %170) #16
  br label %176

171:                                              ; preds = %147
  %172 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef null, ptr noundef %3, ptr noundef nonnull @aspeed_video_debugfs_ops) #16
  store ptr %172, ptr @debugfs_entry, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  tail call void @debugfs_remove(ptr noundef null) #16
  store ptr null, ptr @debugfs_entry, align 4
  %175 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.4) #17
  br label %176

176:                                              ; preds = %174, %171, %166, %104, %52, %44, %40, %10, %8, %1
  %177 = phi i32 [ %9, %8 ], [ %167, %166 ], [ -12, %1 ], [ -22, %10 ], [ %105, %104 ], [ 0, %174 ], [ %53, %52 ], [ -19, %40 ], [ %42, %44 ], [ 0, %171 ]
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1680
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %3, i32 -128
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %12 = load ptr, ptr %9, align 8
  %13 = getelementptr i8, ptr %12, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 -1) #16, !srcloc !10
  %14 = getelementptr i8, ptr %3, i32 -124
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #16
  %16 = getelementptr i8, ptr %3, i32 -120
  %17 = load ptr, ptr %16, align 8
  tail call void @clk_disable(ptr noundef %17) #16
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %4) #16
  br label %18

18:                                               ; preds = %8, %1
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr @debugfs_entry, align 4
  tail call void @debugfs_remove(ptr noundef %20) #16
  store ptr null, ptr @debugfs_entry, align 4
  %21 = getelementptr i8, ptr %3, i32 -120
  %22 = load ptr, ptr %21, align 8
  tail call void @clk_unprepare(ptr noundef %22) #16
  %23 = getelementptr i8, ptr %3, i32 -124
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_unprepare(ptr noundef %24) #16
  %25 = getelementptr i8, ptr %3, i32 728
  tail call void @vb2_video_unregister_device(ptr noundef %25) #16
  %26 = getelementptr i8, ptr %3, i32 -112
  tail call void @v4l2_ctrl_handler_free(ptr noundef %26) #16
  tail call void @v4l2_device_unregister(ptr noundef %3) #16
  %27 = getelementptr i8, ptr %3, i32 -116
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %3, i32 1724
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %3, i32 1720
  %32 = load i32, ptr %31, align 4
  tail call void @dma_free_attrs(ptr noundef %28, i32 noundef 24576, ptr noundef %30, i32 noundef %32, i32 noundef 0) #16
  tail call void @of_reserved_mem_device_release(ptr noundef %19) #16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_video_resolution_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -1756
  %3 = getelementptr i8, ptr %0, i32 52
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -1748
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @clk_enable(ptr noundef %9) #16
  %11 = getelementptr i8, ptr %0, i32 -1752
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_enable(ptr noundef %12) #16
  tail call void @_set_bit(i32 noundef 6, ptr noundef %3) #16
  br label %14

14:                                               ; preds = %7, %1
  %15 = load volatile i32, ptr %3, align 4
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  tail call fastcc void @aspeed_video_init_regs(ptr noundef %2)
  tail call fastcc void @aspeed_video_get_resolution(ptr noundef %2)
  %19 = getelementptr i8, ptr %0, i32 -1368
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %0, i32 -1492
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %0, i32 -1364
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %0, i32 -1488
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %24, %18
  %31 = getelementptr i8, ptr %0, i32 -900
  tail call void @v4l2_event_queue(ptr noundef %31, ptr noundef nonnull @aspeed_video_resolution_work.ev) #16
  br label %38

32:                                               ; preds = %24
  %33 = load volatile i32, ptr %3, align 4
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call fastcc i32 @aspeed_video_start_frame(ptr noundef %2)
  br label %38

38:                                               ; preds = %36, %32, %30, %14
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %3) #16
  %39 = getelementptr i8, ptr %0, i32 -16
  tail call void @__wake_up(ptr noundef %39, i32 noundef 1, i32 noundef 0, ptr noundef null) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_init_regs(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 26
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 25
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = shl i32 %7, 16
  %10 = and i32 %9, 16711680
  %11 = or i32 %10, 256
  %12 = select i1 %8, i32 256, i32 %11
  %13 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 24
  %14 = load i8, ptr %13, align 8, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = or i32 %5, 1024
  %17 = select i1 %15, i32 %5, i32 %16
  %18 = shl i32 %3, 6
  %19 = and i32 %18, 960
  %20 = shl i32 %3, 11
  %21 = and i32 %20, 63488
  %22 = or i32 %19, %21
  %23 = or i32 %22, 525312
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %24 = load ptr, ptr %0, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 436439720) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr i8, ptr %27, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 -1) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr i8, ptr %31, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #16, !srcloc !10
  %33 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 23, i32 1
  %34 = load i32, ptr %33, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr i8, ptr %35, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %17) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %39 = load ptr, ptr %0, align 8
  %40 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %12) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr i8, ptr %41, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %23) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr i8, ptr %43, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 268439552) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr i8, ptr %45, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 2097152) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr i8, ptr %47, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 2097152) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr i8, ptr %49, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 2097152) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %51 = load ptr, ptr %0, align 8
  %52 = getelementptr i8, ptr %51, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 2097152) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr i8, ptr %53, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 577135872) #16, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_get_resolution(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 8
  store i32 640, ptr %4, align 1
  %5 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 8, i32 1
  store i32 480, ptr %5, align 1
  %6 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 9
  store i32 2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 31
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false)
  %8 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 19
  %9 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 8, i32 3
  %11 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 27
  %12 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 30
  %13 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 8, i32 8
  %14 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 8, i32 10
  %15 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 8, i32 9
  %16 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 29
  %17 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 28
  %18 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 8, i32 5
  %19 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 8, i32 7
  %20 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 8, i32 6
  br label %21

21:                                               ; preds = %290, %1
  %22 = phi i32 [ 0, %1 ], [ %291, %290 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @llvm.thread.pointer() #16
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  store volatile i32 1, ptr %26, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !11
  %27 = call i32 @schedule_timeout(i32 noundef 25) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %314

29:                                               ; preds = %24, %21
  call void @_set_bit(i32 noundef 2, ptr noundef %8) #16
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr i8, ptr %30, i32 8
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %33 = and i32 %32, -4
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  call void @arm_heavy_mb() #16
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr i8, ptr %34, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #16, !srcloc !10
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr i8, ptr %36, i32 772
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %39 = or i32 %38, 16
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  call void @arm_heavy_mb() #16
  %40 = load ptr, ptr %0, align 8
  %41 = getelementptr i8, ptr %40, i32 772
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #16, !srcloc !10
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr i8, ptr %42, i32 4
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %45 = and i32 %44, -2
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  call void @arm_heavy_mb() #16
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr i8, ptr %46, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #16, !srcloc !10
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr i8, ptr %48, i32 4
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %51 = or i32 %50, 1
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  call void @arm_heavy_mb() #16
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr i8, ptr %52, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #16, !srcloc !10
  %54 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %8) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !15
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #16
  %57 = call i32 @prepare_to_wait_event(ptr noundef %9, ptr noundef nonnull %2, i32 noundef 1) #16
  %58 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %8) #16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  call void @finish_wait(ptr noundef %9, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #16
  br label %80

61:                                               ; preds = %66, %56
  %62 = phi i32 [ %74, %66 ], [ 50, %56 ]
  %63 = phi i32 [ %68, %66 ], [ %57, %56 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #16
  br label %80

66:                                               ; preds = %61
  %67 = call i32 @schedule_timeout(i32 noundef %62) #16
  %68 = call i32 @prepare_to_wait_event(ptr noundef %9, ptr noundef nonnull %2, i32 noundef 1) #16
  %69 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %8) #16
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = icmp ne i32 %67, 0
  %73 = select i1 %71, i1 true, i1 %72
  %74 = select i1 %73, i32 %67, i32 1
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %70, i1 true, i1 %75
  br i1 %76, label %77, label %61

77:                                               ; preds = %66
  call void @finish_wait(ptr noundef %9, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #16
  %78 = icmp eq i32 %74, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %77
  call void @_clear_bit(i32 noundef 2, ptr noundef %8) #16
  br label %314

80:                                               ; preds = %77, %65, %60, %29
  %81 = load ptr, ptr %0, align 8
  %82 = getelementptr i8, ptr %81, i32 152
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %84 = and i32 %83, 268435456
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 1, i32 -1
  %87 = and i32 %83, 536870912
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 1, i32 -1
  %90 = load ptr, ptr %0, align 8
  %91 = getelementptr i8, ptr %90, i32 152
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %93 = and i32 %92, 268435456
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 1, i32 -1
  %96 = add nsw i32 %95, %86
  %97 = and i32 %92, 536870912
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 1, i32 -1
  %100 = add nsw i32 %99, %89
  %101 = load ptr, ptr %0, align 8
  %102 = getelementptr i8, ptr %101, i32 152
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %104 = and i32 %103, 268435456
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, i32 1, i32 -1
  %107 = add nsw i32 %96, %106
  %108 = and i32 %103, 536870912
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 1, i32 -1
  %111 = add nsw i32 %100, %110
  %112 = load ptr, ptr %0, align 8
  %113 = getelementptr i8, ptr %112, i32 152
  %114 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %115 = and i32 %114, 268435456
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i32 1, i32 -1
  %118 = add nsw i32 %107, %117
  %119 = and i32 %114, 536870912
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, i32 1, i32 -1
  %122 = add nsw i32 %111, %121
  %123 = load ptr, ptr %0, align 8
  %124 = getelementptr i8, ptr %123, i32 152
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %126 = and i32 %125, 268435456
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 1, i32 -1
  %129 = add nsw i32 %118, %128
  %130 = and i32 %125, 536870912
  %131 = icmp eq i32 %130, 0
  %132 = select i1 %131, i32 1, i32 -1
  %133 = add nsw i32 %122, %132
  %134 = load ptr, ptr %0, align 8
  %135 = getelementptr i8, ptr %134, i32 152
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %137 = and i32 %136, 268435456
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, i32 1, i32 -1
  %140 = add nsw i32 %129, %139
  %141 = and i32 %136, 536870912
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, i32 1, i32 -1
  %144 = add nsw i32 %133, %143
  %145 = load ptr, ptr %0, align 8
  %146 = getelementptr i8, ptr %145, i32 152
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %148 = and i32 %147, 268435456
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i32 1, i32 -1
  %151 = add nsw i32 %140, %150
  %152 = and i32 %147, 536870912
  %153 = icmp eq i32 %152, 0
  %154 = select i1 %153, i32 1, i32 -1
  %155 = add nsw i32 %144, %154
  %156 = load ptr, ptr %0, align 8
  %157 = getelementptr i8, ptr %156, i32 152
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %159 = and i32 %158, 268435456
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i32 1, i32 -1
  %162 = add nsw i32 %151, %161
  %163 = and i32 %158, 536870912
  %164 = icmp eq i32 %163, 0
  %165 = select i1 %164, i32 1, i32 -1
  %166 = add nsw i32 %155, %165
  %167 = load ptr, ptr %0, align 8
  %168 = getelementptr i8, ptr %167, i32 152
  %169 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %170 = and i32 %169, 268435456
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %171, i32 1, i32 -1
  %173 = add nsw i32 %162, %172
  %174 = and i32 %169, 536870912
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %175, i32 1, i32 -1
  %177 = add nsw i32 %166, %176
  %178 = load ptr, ptr %0, align 8
  %179 = getelementptr i8, ptr %178, i32 152
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %181 = and i32 %180, 268435456
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i32 1, i32 -1
  %184 = add nsw i32 %173, %183
  %185 = and i32 %180, 536870912
  %186 = icmp eq i32 %185, 0
  %187 = select i1 %186, i32 1, i32 -1
  %188 = add nsw i32 %177, %187
  %189 = load ptr, ptr %0, align 8
  %190 = getelementptr i8, ptr %189, i32 8
  %191 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %192 = icmp slt i32 %188, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %80
  %194 = or i32 %191, 1
  %195 = load i32, ptr %10, align 4
  %196 = and i32 %195, -3
  br label %201

197:                                              ; preds = %80
  %198 = and i32 %191, -2
  %199 = load i32, ptr %10, align 4
  %200 = or i32 %199, 2
  br label %201

201:                                              ; preds = %197, %193
  %202 = phi i32 [ %196, %193 ], [ %200, %197 ]
  %203 = phi i32 [ %194, %193 ], [ %198, %197 ]
  %204 = and i32 %203, -3
  %205 = and i32 %202, -2
  %206 = xor i32 %184, -1
  %207 = lshr i32 %206, 31
  %208 = or i32 %205, %207
  %209 = lshr i32 %184, 30
  %210 = and i32 %209, 2
  %211 = or i32 %204, %210
  store i32 %208, ptr %10, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  call void @arm_heavy_mb() #16
  %212 = load ptr, ptr %0, align 8
  %213 = getelementptr i8, ptr %212, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %211) #16, !srcloc !10
  %214 = load ptr, ptr %0, align 8
  %215 = getelementptr i8, ptr %214, i32 772
  %216 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %217 = or i32 %216, 16
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  call void @arm_heavy_mb() #16
  %218 = load ptr, ptr %0, align 8
  %219 = getelementptr i8, ptr %218, i32 772
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 %217) #16, !srcloc !10
  %220 = load ptr, ptr %0, align 8
  %221 = getelementptr i8, ptr %220, i32 4
  %222 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %223 = and i32 %222, -2
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  call void @arm_heavy_mb() #16
  %224 = load ptr, ptr %0, align 8
  %225 = getelementptr i8, ptr %224, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %223) #16, !srcloc !10
  %226 = load ptr, ptr %0, align 8
  %227 = getelementptr i8, ptr %226, i32 4
  %228 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %229 = or i32 %228, 1
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  call void @arm_heavy_mb() #16
  %230 = load ptr, ptr %0, align 8
  %231 = getelementptr i8, ptr %230, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %229) #16, !srcloc !10
  %232 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %8) #16
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %257

234:                                              ; preds = %201
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !15
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #16
  %235 = call i32 @prepare_to_wait_event(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 1) #16
  %236 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %8) #16
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %254

238:                                              ; preds = %243, %234
  %239 = phi i32 [ %251, %243 ], [ 50, %234 ]
  %240 = phi i32 [ %245, %243 ], [ %235, %234 ]
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %238
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #16
  br label %257

243:                                              ; preds = %238
  %244 = call i32 @schedule_timeout(i32 noundef %239) #16
  %245 = call i32 @prepare_to_wait_event(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 1) #16
  %246 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %8) #16
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  %249 = icmp ne i32 %244, 0
  %250 = select i1 %248, i1 true, i1 %249
  %251 = select i1 %250, i32 %244, i32 1
  %252 = icmp eq i32 %251, 0
  %253 = select i1 %247, i1 true, i1 %252
  br i1 %253, label %254, label %238

254:                                              ; preds = %243, %234
  %255 = phi i32 [ 50, %234 ], [ %251, %243 ]
  call void @finish_wait(ptr noundef %9, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #16
  call void @_clear_bit(i32 noundef 2, ptr noundef %8) #16
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %314, label %258

257:                                              ; preds = %242, %201
  call void @_clear_bit(i32 noundef 2, ptr noundef %8) #16
  br label %258

258:                                              ; preds = %257, %254
  %259 = load ptr, ptr %0, align 8
  %260 = getelementptr i8, ptr %259, i32 144
  %261 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %260) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %262 = load ptr, ptr %0, align 8
  %263 = getelementptr i8, ptr %262, i32 148
  %264 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %263) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %265 = load ptr, ptr %0, align 8
  %266 = getelementptr i8, ptr %265, i32 152
  %267 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %268 = load ptr, ptr %0, align 8
  %269 = getelementptr i8, ptr %268, i32 156
  %270 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %269) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %271 = lshr i32 %264, 16
  %272 = and i32 %271, 8191
  store i32 %272, ptr %11, align 4
  %273 = and i32 %264, 8191
  store i32 %273, ptr %12, align 8
  store i32 %273, ptr %13, align 1
  %274 = lshr i32 %267, 16
  %275 = and i32 %274, 4095
  %276 = sub nsw i32 %275, %272
  store i32 %276, ptr %14, align 1
  %277 = lshr i32 %270, 16
  %278 = and i32 %277, 4095
  store i32 %278, ptr %15, align 1
  %279 = icmp ult i32 %272, %273
  br i1 %279, label %292, label %280

280:                                              ; preds = %258
  %281 = lshr i32 %261, 16
  %282 = and i32 %281, 4095
  store i32 %282, ptr %16, align 4
  %283 = and i32 %261, 4095
  store i32 %283, ptr %17, align 8
  store i32 %283, ptr %18, align 1
  %284 = and i32 %267, 4095
  %285 = sub nsw i32 %284, %282
  store i32 %285, ptr %19, align 1
  %286 = and i32 %270, 4095
  store i32 %286, ptr %20, align 1
  %287 = icmp ugt i32 %283, %282
  %288 = icmp ult i32 %22, 2
  %289 = select i1 %287, i1 %288, i1 false
  br i1 %289, label %290, label %294

290:                                              ; preds = %292, %280
  %291 = add nuw nsw i32 %22, 1
  br label %21

292:                                              ; preds = %258
  %293 = icmp ult i32 %22, 2
  br i1 %293, label %290, label %314

294:                                              ; preds = %280
  br i1 %287, label %314, label %295

295:                                              ; preds = %294
  %296 = sub nsw i32 1, %273
  %297 = add nsw i32 %296, %272
  store i32 %297, ptr %5, align 1
  %298 = load i32, ptr %16, align 4
  %299 = load i32, ptr %17, align 8
  %300 = add i32 %298, 1
  %301 = sub i32 %300, %299
  store i32 %301, ptr %4, align 1
  store i32 0, ptr %6, align 8
  %302 = load ptr, ptr %0, align 8
  %303 = getelementptr i8, ptr %302, i32 772
  %304 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %303) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %305 = or i32 %304, 1
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  call void @arm_heavy_mb() #16
  %306 = load ptr, ptr %0, align 8
  %307 = getelementptr i8, ptr %306, i32 772
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 %305) #16, !srcloc !10
  %308 = load ptr, ptr %0, align 8
  %309 = getelementptr i8, ptr %308, i32 4
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %309) #16, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %311 = or i32 %310, 160
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  call void @arm_heavy_mb() #16
  %312 = load ptr, ptr %0, align 8
  %313 = getelementptr i8, ptr %312, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %311) #16, !srcloc !10
  br label %314

314:                                              ; preds = %295, %294, %292, %254, %79, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_video_start_frame(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %5 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %1
  %9 = and i32 %4, 327680
  %10 = icmp eq i32 %9, 327680
  br i1 %10, label %11, label %45

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 16
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #16
  %14 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 18
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  %17 = getelementptr i8, ptr %15, i32 -640
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #16
  br label %45

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 4, ptr noundef %22) #16
  %23 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %17, i32 noundef 0) #16
  %24 = load i32, ptr %23, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #16
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr i8, ptr %25, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr i8, ptr %27, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr i8, ptr %29, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %24) #16, !srcloc !10
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr i8, ptr %31, i32 772
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %34 = or i32 %33, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  tail call void @arm_heavy_mb() #16
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr i8, ptr %35, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #16, !srcloc !10
  %37 = tail call i64 @ktime_get() #16
  %38 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 31
  store i64 %37, ptr %38, align 8
  %39 = load ptr, ptr %0, align 8
  %40 = getelementptr i8, ptr %39, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %42 = or i32 %41, 18
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  tail call void @arm_heavy_mb() #16
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #16, !srcloc !10
  br label %45

45:                                               ; preds = %21, %20, %8, %1
  %46 = phi i32 [ 0, %21 ], [ -71, %20 ], [ 0, %1 ], [ -16, %8 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr i8, ptr %3, i32 776
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %6 = load ptr, ptr %1, align 8
  %7 = getelementptr i8, ptr %6, i32 772
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %9 = and i32 %8, %5
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call fastcc void @aspeed_video_irq_res_change(ptr noundef %1, i32 noundef 0)
  br label %136

13:                                               ; preds = %2
  %14 = and i32 %9, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 19
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %1, align 8
  %23 = getelementptr i8, ptr %22, i32 772
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %25 = and i32 %24, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  tail call void @arm_heavy_mb() #16
  %26 = load ptr, ptr %1, align 8
  %27 = getelementptr i8, ptr %26, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %28 = load ptr, ptr %1, align 8
  %29 = getelementptr i8, ptr %28, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 16) #16, !srcloc !10
  %30 = and i32 %9, -17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %17) #16
  %31 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %31, i32 noundef 1, i32 noundef 0, ptr noundef null) #16
  br label %33

32:                                               ; preds = %16
  tail call fastcc void @aspeed_video_irq_res_change(ptr noundef %1, i32 noundef 50)
  br label %136

33:                                               ; preds = %21, %13
  %34 = phi i32 [ %30, %21 ], [ %9, %13 ]
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %132, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 14
  %39 = load i32, ptr %38, align 8
  %40 = load ptr, ptr %1, align 8
  %41 = getelementptr i8, ptr %40, i32 %39
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !16
  %43 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 31
  %44 = tail call i64 @ktime_get() #16
  %45 = load i64, ptr %43, align 8
  %46 = sub i64 %44, %45
  %47 = tail call i64 @llvm.abs.i64(i64 %46, i1 false) #16
  %48 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %47) #18, !srcloc !17
  %49 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %47, i64 %48, i32 0) #18, !srcloc !18
  %50 = extractvalue { i64, i32 } %49, 0
  %51 = icmp slt i64 %46, 0
  %52 = lshr i64 %50, 18
  %53 = sub nsw i64 0, %52
  %54 = select i1 %51, i64 %53, i64 %52
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 31, i32 2
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 31, i32 1
  %58 = load i32, ptr %57, align 8
  %59 = add i32 %58, %55
  store i32 %59, ptr %57, align 8
  %60 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 31, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 @llvm.umax.i32(i32 %61, i32 %55) #16
  store i32 %62, ptr %60, align 4
  %63 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 31, i32 3
  %64 = load i32, ptr %63, align 8
  %65 = tail call i32 @llvm.umin.i32(i32 %55, i32 %64) #16
  store i32 %65, ptr %63, align 8
  %66 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %66) #16
  %67 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %67) #16
  %68 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 18
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  %71 = getelementptr i8, ptr %69, i32 -640
  %72 = select i1 %70, ptr null, ptr %71
  %73 = icmp ne ptr %72, null
  br i1 %73, label %74, label %108

74:                                               ; preds = %37
  %75 = getelementptr inbounds %struct.vb2_buffer, ptr %72, i32 0, i32 4
  %76 = load i32, ptr %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.vb2_buffer, ptr %72, i32 0, i32 10, i32 0, i32 4
  %80 = load i32, ptr %79, align 8
  %81 = icmp ult i32 %80, %42
  %82 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %83 = xor i1 %82, true
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %86, !prof !19

85:                                               ; preds = %78
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1163, i32 noundef 9, ptr noundef null) #16
  br label %86

86:                                               ; preds = %85, %78
  br i1 %81, label %87, label %89

87:                                               ; preds = %86
  %88 = load i32, ptr %79, align 8
  br label %89

89:                                               ; preds = %87, %86
  %90 = phi i32 [ %88, %87 ], [ %42, %86 ]
  %91 = getelementptr inbounds %struct.vb2_buffer, ptr %72, i32 0, i32 10, i32 0, i32 3
  store i32 %90, ptr %91, align 4
  br label %92

92:                                               ; preds = %89, %74
  %93 = getelementptr inbounds %struct.aspeed_video_buffer, ptr %72, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %68
  br i1 %95, label %108, label %96

96:                                               ; preds = %92
  %97 = tail call i64 @ktime_get() #16
  %98 = getelementptr inbounds %struct.vb2_buffer, ptr %72, i32 0, i32 5
  store i64 %97, ptr %98, align 8
  %99 = getelementptr inbounds %struct.aspeed_video, ptr %1, i32 0, i32 20
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 4
  %102 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %72, i32 0, i32 4
  store i32 %100, ptr %102, align 8
  %103 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %72, i32 0, i32 2
  store i32 1, ptr %103, align 4
  tail call void @vb2_buffer_done(ptr noundef nonnull %72, i32 noundef 5) #16
  %104 = getelementptr inbounds %struct.aspeed_video_buffer, ptr %72, i32 0, i32 1, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %93, align 4
  %107 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %105, ptr %107, align 4
  store volatile ptr %106, ptr %105, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %93, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %104, align 4
  br label %108

108:                                              ; preds = %96, %92, %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %109 = load i16, ptr %66, align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr %66, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  %111 = load ptr, ptr %1, align 8
  %112 = getelementptr i8, ptr %111, i32 4
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %114 = and i32 %113, -23
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  tail call void @arm_heavy_mb() #16
  %115 = load ptr, ptr %1, align 8
  %116 = getelementptr i8, ptr %115, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %114) #16, !srcloc !10
  %117 = load ptr, ptr %1, align 8
  %118 = getelementptr i8, ptr %117, i32 772
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %120 = and i32 %119, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  tail call void @arm_heavy_mb() #16
  %121 = load ptr, ptr %1, align 8
  %122 = getelementptr i8, ptr %121, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %123 = load ptr, ptr %1, align 8
  %124 = getelementptr i8, ptr %123, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 8) #16, !srcloc !10
  %125 = and i32 %34, -9
  %126 = load volatile i32, ptr %67, align 4
  %127 = and i32 %126, 8
  %128 = icmp ne i32 %127, 0
  %129 = select i1 %128, i1 %73, i1 false
  br i1 %129, label %130, label %132

130:                                              ; preds = %108
  %131 = tail call fastcc i32 @aspeed_video_start_frame(ptr noundef %1)
  br label %132

132:                                              ; preds = %130, %108, %33
  %133 = phi i32 [ %34, %33 ], [ %125, %130 ], [ %125, %108 ]
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  br label %136

136:                                              ; preds = %132, %32, %12
  %137 = phi i32 [ 1, %12 ], [ %135, %132 ], [ 1, %32 ]
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_irq_res_change(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 1, ptr noundef %3) #16
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %3) #16
  %4 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 9
  store i32 2, ptr %4, align 8
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr i8, ptr %9, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr i8, ptr %11, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1) #16, !srcloc !10
  %13 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #16
  %15 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  tail call void @clk_disable(ptr noundef %16) #16
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %3) #16
  br label %17

17:                                               ; preds = %8, %2
  %18 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 16
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #16
  %20 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 18
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %28, label %23

23:                                               ; preds = %23, %17
  %24 = phi ptr [ %26, %23 ], [ %21, %17 ]
  %25 = getelementptr i8, ptr %24, i32 -640
  tail call void @vb2_buffer_done(ptr noundef %25, i32 noundef 6) #16
  %26 = load ptr, ptr %24, align 8
  %27 = icmp eq ptr %26, %20
  br i1 %27, label %28, label %23

28:                                               ; preds = %23, %17
  store volatile ptr %20, ptr %20, align 4
  %29 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 18, i32 1
  store ptr %20, ptr %29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #16
  %30 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 17
  %31 = load ptr, ptr @system_wq, align 4
  %32 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %31, ptr noundef %30, i32 noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_set_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %93 [
    i32 10291459, label %7
    i32 10291457, label %24
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %3, i32 1848
  store i32 %9, ptr %10, align 8
  %11 = shl i32 %9, 11
  %12 = and i32 %11, 63488
  %13 = shl i32 %9, 6
  %14 = and i32 %13, 960
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr i8, ptr %15, i32 96
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %18 = and i32 %17, -65473
  %19 = or i32 %12, %14
  %20 = or i32 %19, %18
  %21 = or i32 %20, 1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  tail call void @arm_heavy_mb() #16
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr i8, ptr %22, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #16, !srcloc !10
  br label %93

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 2
  %28 = getelementptr i8, ptr %3, i32 1840
  br i1 %27, label %29, label %61

29:                                               ; preds = %24
  store i8 1, ptr %28, align 8
  %30 = getelementptr i8, ptr %3, i32 1836
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %29
  %34 = getelementptr i32, ptr %31, i32 46
  store i32 2228483, ptr %34, align 4
  %35 = getelementptr i32, ptr %31, i32 302
  store i32 2228483, ptr %35, align 4
  %36 = getelementptr i32, ptr %31, i32 558
  store i32 2228483, ptr %36, align 4
  %37 = getelementptr i32, ptr %31, i32 814
  store i32 2228483, ptr %37, align 4
  %38 = getelementptr i32, ptr %31, i32 1070
  store i32 2228483, ptr %38, align 4
  %39 = getelementptr i32, ptr %31, i32 1326
  store i32 2228483, ptr %39, align 4
  %40 = getelementptr i32, ptr %31, i32 1582
  store i32 2228483, ptr %40, align 4
  %41 = getelementptr i32, ptr %31, i32 1838
  store i32 2228483, ptr %41, align 4
  %42 = getelementptr i32, ptr %31, i32 2094
  store i32 2228483, ptr %42, align 4
  %43 = getelementptr i32, ptr %31, i32 2350
  store i32 2228483, ptr %43, align 4
  %44 = getelementptr i32, ptr %31, i32 2606
  store i32 2228483, ptr %44, align 4
  %45 = getelementptr i32, ptr %31, i32 2862
  store i32 2228483, ptr %45, align 4
  %46 = load i8, ptr %28, align 8, !range !8
  %47 = icmp eq i8 %46, 0
  br label %48

48:                                               ; preds = %33, %29
  %49 = phi i1 [ %47, %33 ], [ false, %29 ]
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr i8, ptr %50, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16
  br i1 %49, label %57, label %53

53:                                               ; preds = %48
  %54 = or i32 %52, 1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  tail call void @arm_heavy_mb() #16
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #16, !srcloc !10
  br label %93

57:                                               ; preds = %48
  %58 = and i32 %52, -1025
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  tail call void @arm_heavy_mb() #16
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #16, !srcloc !10
  br label %93

61:                                               ; preds = %24
  store i8 0, ptr %28, align 8
  %62 = getelementptr i8, ptr %3, i32 1836
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %80, label %65

65:                                               ; preds = %61
  %66 = getelementptr i32, ptr %63, i32 46
  store i32 1114371, ptr %66, align 4
  %67 = getelementptr i32, ptr %63, i32 302
  store i32 1114371, ptr %67, align 4
  %68 = getelementptr i32, ptr %63, i32 558
  store i32 1114371, ptr %68, align 4
  %69 = getelementptr i32, ptr %63, i32 814
  store i32 1114371, ptr %69, align 4
  %70 = getelementptr i32, ptr %63, i32 1070
  store i32 1114371, ptr %70, align 4
  %71 = getelementptr i32, ptr %63, i32 1326
  store i32 1114371, ptr %71, align 4
  %72 = getelementptr i32, ptr %63, i32 1582
  store i32 1114371, ptr %72, align 4
  %73 = getelementptr i32, ptr %63, i32 1838
  store i32 1114371, ptr %73, align 4
  %74 = getelementptr i32, ptr %63, i32 2094
  store i32 1114371, ptr %74, align 4
  %75 = getelementptr i32, ptr %63, i32 2350
  store i32 1114371, ptr %75, align 4
  %76 = getelementptr i32, ptr %63, i32 2606
  store i32 1114371, ptr %76, align 4
  %77 = getelementptr i32, ptr %63, i32 2862
  store i32 1114371, ptr %77, align 4
  %78 = load i8, ptr %28, align 8, !range !8
  %79 = icmp eq i8 %78, 0
  br label %80

80:                                               ; preds = %65, %61
  %81 = phi i1 [ %79, %65 ], [ true, %61 ]
  %82 = load ptr, ptr %4, align 8
  %83 = getelementptr i8, ptr %82, i32 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16
  br i1 %81, label %89, label %85

85:                                               ; preds = %80
  %86 = or i32 %84, 1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  tail call void @arm_heavy_mb() #16
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr i8, ptr %87, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #16, !srcloc !10
  br label %93

89:                                               ; preds = %80
  %90 = and i32 %84, -1025
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  tail call void @arm_heavy_mb() #16
  %91 = load ptr, ptr %4, align 8
  %92 = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #16, !srcloc !10
  br label %93

93:                                               ; preds = %89, %85, %57, %53, %7, %1
  %94 = phi i32 [ -22, %1 ], [ 0, %7 ], [ 0, %53 ], [ 0, %57 ], [ 0, %85 ], [ 0, %89 ]
  ret i32 %94
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_video_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #8 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %3, align 4
  %12 = getelementptr inbounds %struct.aspeed_video, ptr %7, i32 0, i32 21
  %13 = load i32, ptr %12, align 8
  %14 = icmp ult i32 %11, %13
  %15 = select i1 %14, i32 -22, i32 0
  br label %19

16:                                               ; preds = %5
  store i32 1, ptr %2, align 4
  %17 = getelementptr inbounds %struct.aspeed_video, ptr %7, i32 0, i32 21
  %18 = load i32, ptr %17, align 8
  store i32 %18, ptr %3, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i32 [ 0, %16 ], [ %15, %10 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_video_buf_prepare(ptr nocapture noundef readonly %0) #9 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ %10, %8 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 21
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i32 %12, %14
  %16 = select i1 %15, i32 -22, i32 0
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 20
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 31, i32 4
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 31, i32 3
  store i32 -1, ptr %7, align 8
  %8 = tail call fastcc i32 @aspeed_video_start_frame(ptr noundef %4)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 16
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #16
  %13 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 18
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %21, label %16

16:                                               ; preds = %16, %10
  %17 = phi ptr [ %19, %16 ], [ %14, %10 ]
  %18 = getelementptr i8, ptr %17, i32 -640
  tail call void @vb2_buffer_done(ptr noundef %18, i32 noundef 3) #16
  %19 = load ptr, ptr %17, align 8
  %20 = icmp eq ptr %19, %13
  br i1 %20, label %21, label %16

21:                                               ; preds = %16, %10
  store volatile ptr %13, ptr %13, align 4
  %22 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 18, i32 1
  store ptr %13, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #16
  br label %25

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 3, ptr noundef %24) #16
  br label %25

25:                                               ; preds = %23, %21
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_video_stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 19
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %5) #16
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %56, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !15
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #16
  %10 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 15
  %11 = call i32 @prepare_to_wait_event(ptr noundef %10, ptr noundef nonnull %2, i32 noundef 2) #16
  %12 = load volatile i32, ptr %5, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  call void @finish_wait(ptr noundef %10, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #16
  br label %56

16:                                               ; preds = %16, %9
  %17 = phi i32 [ %26, %16 ], [ 100, %9 ]
  %18 = call i32 @schedule_timeout(i32 noundef %17) #16
  %19 = call i32 @prepare_to_wait_event(ptr noundef %10, ptr noundef nonnull %2, i32 noundef 2) #16
  %20 = load volatile i32, ptr %5, align 4
  %21 = and i32 %20, 16
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = icmp ne i32 %18, 0
  %25 = select i1 %22, i1 true, i1 %24
  %26 = select i1 %25, i32 %18, i32 1
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %23, i1 true, i1 %27
  br i1 %28, label %29, label %16

29:                                               ; preds = %16
  %30 = icmp eq i32 %26, 0
  call void @finish_wait(ptr noundef %10, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #16
  br i1 %30, label %31, label %56

31:                                               ; preds = %29
  %32 = load volatile i32, ptr %5, align 4
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  call void @arm_heavy_mb() #16
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr i8, ptr %36, i32 772
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #16, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  call void @arm_heavy_mb() #16
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr i8, ptr %38, i32 776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 -1) #16, !srcloc !10
  %40 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  call void @clk_disable(ptr noundef %41) #16
  %42 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  call void @clk_disable(ptr noundef %43) #16
  call void @_clear_bit(i32 noundef 6, ptr noundef %5) #16
  br label %44

44:                                               ; preds = %35, %31
  %45 = load volatile i32, ptr %5, align 4
  %46 = and i32 %45, 64
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = call i32 @clk_enable(ptr noundef %50) #16
  %52 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 @clk_enable(ptr noundef %53) #16
  call void @_set_bit(i32 noundef 6, ptr noundef %5) #16
  br label %55

55:                                               ; preds = %48, %44
  call fastcc void @aspeed_video_init_regs(ptr noundef %4)
  call fastcc void @aspeed_video_get_resolution(ptr noundef %4)
  br label %56

56:                                               ; preds = %55, %29, %15, %1
  %57 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 16
  %58 = call i32 @_raw_spin_lock_irqsave(ptr noundef %57) #16
  %59 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 18
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, %59
  br i1 %61, label %67, label %62

62:                                               ; preds = %62, %56
  %63 = phi ptr [ %65, %62 ], [ %60, %56 ]
  %64 = getelementptr i8, ptr %63, i32 -640
  call void @vb2_buffer_done(ptr noundef %64, i32 noundef 6) #16
  %65 = load ptr, ptr %63, align 8
  %66 = icmp eq ptr %65, %59
  br i1 %66, label %67, label %62

67:                                               ; preds = %62, %56
  store volatile ptr %59, ptr %59, align 4
  %68 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 18, i32 1
  store ptr %59, ptr %68, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %58) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_video_buf_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 16
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 18
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.aspeed_video_buffer, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 18, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %9, ptr %10, align 4
  store ptr %7, ptr %9, align 4
  %12 = getelementptr inbounds %struct.aspeed_video_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %9, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #16
  %13 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 19
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = icmp ne ptr %8, %7
  %19 = load volatile i32, ptr %13, align 4
  %20 = and i32 %19, 16
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %21, i1 true, i1 %18
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = tail call fastcc i32 @aspeed_video_start_frame(ptr noundef %4)
  br label %25

25:                                               ; preds = %23, %17, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_open(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = tail call i32 @v4l2_fh_open(ptr noundef %0) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @v4l2_fh_is_singular(ptr noundef %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 19
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @clk_enable(ptr noundef %20) #16
  %22 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_enable(ptr noundef %23) #16
  tail call void @_set_bit(i32 noundef 6, ptr noundef %14) #16
  br label %25

25:                                               ; preds = %18, %13
  tail call fastcc void @aspeed_video_init_regs(ptr noundef %4) #16
  tail call fastcc void @aspeed_video_get_resolution(ptr noundef %4) #16
  %26 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 7
  %27 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(124) %26, ptr noundef align 4 dereferenceable(124) %27, i32 124, i1 false) #16
  tail call fastcc void @aspeed_video_set_resolution(ptr noundef %4) #16
  %28 = load i32, ptr %26, align 8
  %29 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 6
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 7, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 6, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 21
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 6, i32 5
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %25, %8, %1
  tail call void @mutex_unlock(ptr noundef %5) #16
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_release(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @v4l2_fh_is_singular(ptr noundef %7) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 5, ptr noundef %11) #16
  %12 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 17
  %13 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %12) #16
  %14 = load volatile i32, ptr %11, align 4
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr i8, ptr %18, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #16, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr i8, ptr %20, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 -1) #16, !srcloc !10
  %22 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #16
  %24 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  tail call void @clk_disable(ptr noundef %25) #16
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %11) #16
  br label %26

26:                                               ; preds = %17, %10
  %27 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 22
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 22, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 22, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  tail call void @dma_free_attrs(ptr noundef %32, i32 noundef %28, ptr noundef %34, i32 noundef %36, i32 noundef 0) #16
  store i32 0, ptr %27, align 4
  store i32 0, ptr %35, align 4
  store ptr null, ptr %33, align 4
  br label %37

37:                                               ; preds = %30, %26
  %38 = getelementptr %struct.aspeed_video, ptr %4, i32 0, i32 22, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr %struct.aspeed_video, ptr %4, i32 0, i32 22, i32 1, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr %struct.aspeed_video, ptr %4, i32 0, i32 22, i32 1, i32 1
  %47 = load i32, ptr %46, align 4
  tail call void @dma_free_attrs(ptr noundef %43, i32 noundef %39, ptr noundef %45, i32 noundef %47, i32 noundef 0) #16
  store i32 0, ptr %38, align 4
  store i32 0, ptr %46, align 4
  store ptr null, ptr %44, align 4
  br label %48

48:                                               ; preds = %41, %37
  %49 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 9
  store i32 2, ptr %49, align 8
  store i32 0, ptr %11, align 8
  br label %50

50:                                               ; preds = %48, %1
  %51 = tail call i32 @_vb2_fop_release(ptr noundef %0, ptr noundef null) #16
  tail call void @mutex_unlock(ptr noundef %5) #16
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_video_set_resolution(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 1
  %4 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 7, i32 1
  %5 = load i32, ptr %4, align 1
  %6 = mul i32 %5, %3
  %7 = lshr i32 %6, 1
  %8 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 21
  store i32 -1, ptr %8, align 8
  br label %9

9:                                                ; preds = %139, %1
  %10 = phi i32 [ -1, %1 ], [ %140, %139 ]
  %11 = phi i32 [ -1, %1 ], [ %141, %139 ]
  %12 = phi i32 [ -1, %1 ], [ %142, %139 ]
  %13 = phi i32 [ -1, %1 ], [ %143, %139 ]
  %14 = phi i32 [ -1, %1 ], [ %144, %139 ]
  %15 = phi i32 [ -1, %1 ], [ %145, %139 ]
  %16 = phi i32 [ -1, %1 ], [ %146, %139 ]
  %17 = phi i32 [ -1, %1 ], [ %147, %139 ]
  %18 = phi i32 [ 0, %1 ], [ %149, %139 ]
  %19 = phi i32 [ 0, %1 ], [ %148, %139 ]
  %20 = shl i32 4, %18
  %21 = shl i32 %18, 3
  %22 = shl i32 %20, 10
  %23 = icmp uge i32 %22, %7
  %24 = icmp ult i32 %22, %17
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %27

26:                                               ; preds = %9
  store i32 %22, ptr %8, align 8
  br label %27

27:                                               ; preds = %26, %9
  %28 = phi i32 [ %10, %9 ], [ %22, %26 ]
  %29 = phi i32 [ %11, %9 ], [ %22, %26 ]
  %30 = phi i32 [ %12, %9 ], [ %22, %26 ]
  %31 = phi i32 [ %13, %9 ], [ %22, %26 ]
  %32 = phi i32 [ %14, %9 ], [ %22, %26 ]
  %33 = phi i32 [ %15, %9 ], [ %22, %26 ]
  %34 = phi i32 [ %16, %9 ], [ %22, %26 ]
  %35 = phi i32 [ %17, %9 ], [ %22, %26 ]
  %36 = phi i32 [ %19, %9 ], [ %21, %26 ]
  %37 = shl i32 %20, 11
  %38 = icmp ult i32 %37, %7
  br i1 %38, label %43, label %39

39:                                               ; preds = %27
  %40 = icmp ult i32 %37, %34
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = or i32 %21, 1
  store i32 %37, ptr %8, align 8
  br label %43

43:                                               ; preds = %41, %39, %27
  %44 = phi i32 [ %28, %27 ], [ %37, %41 ], [ %28, %39 ]
  %45 = phi i32 [ %29, %27 ], [ %37, %41 ], [ %29, %39 ]
  %46 = phi i32 [ %30, %27 ], [ %37, %41 ], [ %30, %39 ]
  %47 = phi i32 [ %31, %27 ], [ %37, %41 ], [ %31, %39 ]
  %48 = phi i32 [ %32, %27 ], [ %37, %41 ], [ %32, %39 ]
  %49 = phi i32 [ %33, %27 ], [ %37, %41 ], [ %33, %39 ]
  %50 = phi i32 [ %34, %27 ], [ %37, %41 ], [ %34, %39 ]
  %51 = phi i32 [ %35, %27 ], [ %37, %41 ], [ %34, %39 ]
  %52 = phi i32 [ %36, %27 ], [ %42, %41 ], [ %36, %39 ]
  %53 = shl i32 %20, 12
  %54 = icmp ult i32 %53, %7
  br i1 %54, label %59, label %55

55:                                               ; preds = %43
  %56 = icmp ult i32 %53, %49
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = or i32 %21, 2
  store i32 %53, ptr %8, align 8
  br label %59

59:                                               ; preds = %57, %55, %43
  %60 = phi i32 [ %44, %43 ], [ %53, %57 ], [ %44, %55 ]
  %61 = phi i32 [ %45, %43 ], [ %53, %57 ], [ %45, %55 ]
  %62 = phi i32 [ %46, %43 ], [ %53, %57 ], [ %46, %55 ]
  %63 = phi i32 [ %47, %43 ], [ %53, %57 ], [ %47, %55 ]
  %64 = phi i32 [ %48, %43 ], [ %53, %57 ], [ %48, %55 ]
  %65 = phi i32 [ %49, %43 ], [ %53, %57 ], [ %49, %55 ]
  %66 = phi i32 [ %50, %43 ], [ %53, %57 ], [ %49, %55 ]
  %67 = phi i32 [ %51, %43 ], [ %53, %57 ], [ %49, %55 ]
  %68 = phi i32 [ %52, %43 ], [ %58, %57 ], [ %52, %55 ]
  %69 = shl i32 %20, 13
  %70 = icmp ult i32 %69, %7
  br i1 %70, label %75, label %71

71:                                               ; preds = %59
  %72 = icmp ult i32 %69, %64
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = or i32 %21, 3
  store i32 %69, ptr %8, align 8
  br label %75

75:                                               ; preds = %73, %71, %59
  %76 = phi i32 [ %60, %59 ], [ %69, %73 ], [ %60, %71 ]
  %77 = phi i32 [ %61, %59 ], [ %69, %73 ], [ %61, %71 ]
  %78 = phi i32 [ %62, %59 ], [ %69, %73 ], [ %62, %71 ]
  %79 = phi i32 [ %63, %59 ], [ %69, %73 ], [ %63, %71 ]
  %80 = phi i32 [ %64, %59 ], [ %69, %73 ], [ %64, %71 ]
  %81 = phi i32 [ %65, %59 ], [ %69, %73 ], [ %64, %71 ]
  %82 = phi i32 [ %66, %59 ], [ %69, %73 ], [ %64, %71 ]
  %83 = phi i32 [ %67, %59 ], [ %69, %73 ], [ %64, %71 ]
  %84 = phi i32 [ %68, %59 ], [ %74, %73 ], [ %68, %71 ]
  %85 = shl i32 %20, 14
  %86 = icmp ult i32 %85, %7
  br i1 %86, label %91, label %87

87:                                               ; preds = %75
  %88 = icmp ult i32 %85, %79
  br i1 %88, label %89, label %91

89:                                               ; preds = %87
  %90 = or i32 %21, 4
  store i32 %85, ptr %8, align 8
  br label %91

91:                                               ; preds = %89, %87, %75
  %92 = phi i32 [ %76, %75 ], [ %85, %89 ], [ %76, %87 ]
  %93 = phi i32 [ %77, %75 ], [ %85, %89 ], [ %77, %87 ]
  %94 = phi i32 [ %78, %75 ], [ %85, %89 ], [ %78, %87 ]
  %95 = phi i32 [ %79, %75 ], [ %85, %89 ], [ %79, %87 ]
  %96 = phi i32 [ %80, %75 ], [ %85, %89 ], [ %79, %87 ]
  %97 = phi i32 [ %81, %75 ], [ %85, %89 ], [ %79, %87 ]
  %98 = phi i32 [ %82, %75 ], [ %85, %89 ], [ %79, %87 ]
  %99 = phi i32 [ %83, %75 ], [ %85, %89 ], [ %79, %87 ]
  %100 = phi i32 [ %84, %75 ], [ %90, %89 ], [ %84, %87 ]
  %101 = shl i32 %20, 15
  %102 = icmp ult i32 %101, %7
  br i1 %102, label %107, label %103

103:                                              ; preds = %91
  %104 = icmp ult i32 %101, %94
  br i1 %104, label %105, label %107

105:                                              ; preds = %103
  %106 = or i32 %21, 5
  store i32 %101, ptr %8, align 8
  br label %107

107:                                              ; preds = %105, %103, %91
  %108 = phi i32 [ %92, %91 ], [ %101, %105 ], [ %92, %103 ]
  %109 = phi i32 [ %93, %91 ], [ %101, %105 ], [ %93, %103 ]
  %110 = phi i32 [ %94, %91 ], [ %101, %105 ], [ %94, %103 ]
  %111 = phi i32 [ %95, %91 ], [ %101, %105 ], [ %94, %103 ]
  %112 = phi i32 [ %96, %91 ], [ %101, %105 ], [ %94, %103 ]
  %113 = phi i32 [ %97, %91 ], [ %101, %105 ], [ %94, %103 ]
  %114 = phi i32 [ %98, %91 ], [ %101, %105 ], [ %94, %103 ]
  %115 = phi i32 [ %99, %91 ], [ %101, %105 ], [ %94, %103 ]
  %116 = phi i32 [ %100, %91 ], [ %106, %105 ], [ %100, %103 ]
  %117 = shl i32 %20, 16
  %118 = icmp ult i32 %117, %7
  br i1 %118, label %123, label %119

119:                                              ; preds = %107
  %120 = icmp ult i32 %117, %109
  br i1 %120, label %121, label %123

121:                                              ; preds = %119
  %122 = or i32 %21, 6
  store i32 %117, ptr %8, align 8
  br label %123

123:                                              ; preds = %121, %119, %107
  %124 = phi i32 [ %108, %107 ], [ %117, %121 ], [ %108, %119 ]
  %125 = phi i32 [ %109, %107 ], [ %117, %121 ], [ %109, %119 ]
  %126 = phi i32 [ %110, %107 ], [ %117, %121 ], [ %109, %119 ]
  %127 = phi i32 [ %111, %107 ], [ %117, %121 ], [ %109, %119 ]
  %128 = phi i32 [ %112, %107 ], [ %117, %121 ], [ %109, %119 ]
  %129 = phi i32 [ %113, %107 ], [ %117, %121 ], [ %109, %119 ]
  %130 = phi i32 [ %114, %107 ], [ %117, %121 ], [ %109, %119 ]
  %131 = phi i32 [ %115, %107 ], [ %117, %121 ], [ %109, %119 ]
  %132 = phi i32 [ %116, %107 ], [ %122, %121 ], [ %116, %119 ]
  %133 = shl i32 %20, 17
  %134 = icmp ult i32 %133, %7
  br i1 %134, label %139, label %135

135:                                              ; preds = %123
  %136 = icmp ult i32 %133, %124
  br i1 %136, label %137, label %139

137:                                              ; preds = %135
  %138 = or i32 %21, 7
  store i32 %133, ptr %8, align 8
  br label %139

139:                                              ; preds = %137, %135, %123
  %140 = phi i32 [ %124, %123 ], [ %133, %137 ], [ %124, %135 ]
  %141 = phi i32 [ %125, %123 ], [ %133, %137 ], [ %124, %135 ]
  %142 = phi i32 [ %126, %123 ], [ %133, %137 ], [ %124, %135 ]
  %143 = phi i32 [ %127, %123 ], [ %133, %137 ], [ %124, %135 ]
  %144 = phi i32 [ %128, %123 ], [ %133, %137 ], [ %124, %135 ]
  %145 = phi i32 [ %129, %123 ], [ %133, %137 ], [ %124, %135 ]
  %146 = phi i32 [ %130, %123 ], [ %133, %137 ], [ %124, %135 ]
  %147 = phi i32 [ %131, %123 ], [ %133, %137 ], [ %124, %135 ]
  %148 = phi i32 [ %132, %123 ], [ %138, %137 ], [ %132, %135 ]
  %149 = add nuw nsw i32 %18, 1
  %150 = icmp eq i32 %149, 6
  br i1 %150, label %151, label %9

151:                                              ; preds = %139
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %152 = load ptr, ptr %0, align 8
  %153 = getelementptr i8, ptr %152, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %148) #16, !srcloc !10
  %154 = load i32, ptr %2, align 8
  %155 = icmp eq i32 %154, 1680
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = load i32, ptr %4, align 1
  %158 = or i32 %157, 113246208
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %159 = load ptr, ptr %0, align 8
  %160 = getelementptr i8, ptr %159, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %158) #16, !srcloc !10
  %161 = load i32, ptr %4, align 4
  %162 = mul i32 %161, 48
  %163 = add i32 %162, %6
  br label %171

164:                                              ; preds = %151
  %165 = shl i32 %154, 16
  %166 = load i32, ptr %4, align 1
  %167 = or i32 %166, %165
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %168 = load ptr, ptr %0, align 8
  %169 = getelementptr i8, ptr %168, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %167) #16, !srcloc !10
  %170 = load i32, ptr %4, align 1
  br label %171

171:                                              ; preds = %164, %156
  %172 = phi i32 [ %161, %156 ], [ %170, %164 ]
  %173 = phi i32 [ %163, %156 ], [ %6, %164 ]
  %174 = load i32, ptr %2, align 1
  %175 = shl i32 %174, 16
  %176 = or i32 %175, %172
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %177 = load ptr, ptr %0, align 8
  %178 = getelementptr i8, ptr %177, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %176) #16, !srcloc !10
  %179 = load i32, ptr %2, align 1
  %180 = shl i32 %179, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %181 = load ptr, ptr %0, align 8
  %182 = getelementptr i8, ptr %181, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %180) #16, !srcloc !10
  %183 = icmp ult i32 %173, 786432
  br i1 %183, label %184, label %213

184:                                              ; preds = %171
  %185 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 28
  %186 = load i32, ptr %185, align 8
  %187 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 29
  %188 = load i32, ptr %187, align 4
  %189 = shl i32 %186, 16
  %190 = add i32 %189, 536805376
  %191 = and i32 %190, 536805376
  %192 = and i32 %188, 8191
  %193 = or i32 %192, %191
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %194 = load ptr, ptr %0, align 8
  %195 = getelementptr i8, ptr %194, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %193) #16, !srcloc !10
  %196 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 30
  %197 = load i32, ptr %196, align 8
  %198 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 27
  %199 = load i32, ptr %198, align 4
  %200 = add i32 %199, 1
  %201 = shl i32 %197, 16
  %202 = and i32 %201, 536805376
  %203 = and i32 %200, 8191
  %204 = or i32 %203, %202
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %205 = load ptr, ptr %0, align 8
  %206 = getelementptr i8, ptr %205, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %204) #16, !srcloc !10
  %207 = load ptr, ptr %0, align 8
  %208 = getelementptr i8, ptr %207, i32 8
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %210 = or i32 %209, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  tail call void @arm_heavy_mb() #16
  %211 = load ptr, ptr %0, align 8
  %212 = getelementptr i8, ptr %211, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 %210) #16, !srcloc !10
  br label %220

213:                                              ; preds = %171
  %214 = load ptr, ptr %0, align 8
  %215 = getelementptr i8, ptr %214, i32 8
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %217 = or i32 %216, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  tail call void @arm_heavy_mb() #16
  %218 = load ptr, ptr %0, align 8
  %219 = getelementptr i8, ptr %218, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 %217) #16, !srcloc !10
  br label %220

220:                                              ; preds = %213, %184
  %221 = shl i32 %173, 2
  %222 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 22
  %223 = load i32, ptr %222, align 4
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %273, label %225

225:                                              ; preds = %220
  %226 = icmp eq i32 %223, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %225
  %228 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 3
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 22, i32 0, i32 2
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 22, i32 0, i32 1
  %233 = load i32, ptr %232, align 4
  tail call void @dma_free_attrs(ptr noundef %229, i32 noundef %223, ptr noundef %231, i32 noundef %233, i32 noundef 0) #16
  store i32 0, ptr %222, align 4
  store i32 0, ptr %232, align 4
  store ptr null, ptr %230, align 4
  br label %234

234:                                              ; preds = %227, %225
  %235 = getelementptr %struct.aspeed_video, ptr %0, i32 0, i32 22, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 3
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr %struct.aspeed_video, ptr %0, i32 0, i32 22, i32 1, i32 2
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr %struct.aspeed_video, ptr %0, i32 0, i32 22, i32 1, i32 1
  %244 = load i32, ptr %243, align 4
  tail call void @dma_free_attrs(ptr noundef %240, i32 noundef %236, ptr noundef %242, i32 noundef %244, i32 noundef 0) #16
  store i32 0, ptr %235, align 4
  store i32 0, ptr %243, align 4
  store ptr null, ptr %241, align 4
  br label %245

245:                                              ; preds = %238, %234
  %246 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 3
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 22, i32 0, i32 1
  %249 = tail call ptr @dma_alloc_attrs(ptr noundef %247, i32 noundef %221, ptr noundef %248, i32 noundef 3264, i32 noundef 0) #16
  %250 = getelementptr inbounds %struct.aspeed_video, ptr %0, i32 0, i32 22, i32 0, i32 2
  store ptr %249, ptr %250, align 4
  %251 = icmp eq ptr %249, null
  br i1 %251, label %265, label %252

252:                                              ; preds = %245
  store i32 %221, ptr %222, align 4
  %253 = load ptr, ptr %246, align 4
  %254 = getelementptr %struct.aspeed_video, ptr %0, i32 0, i32 22, i32 1, i32 1
  %255 = tail call ptr @dma_alloc_attrs(ptr noundef %253, i32 noundef %221, ptr noundef %254, i32 noundef 3264, i32 noundef 0) #16
  %256 = getelementptr %struct.aspeed_video, ptr %0, i32 0, i32 22, i32 1, i32 2
  store ptr %255, ptr %256, align 4
  %257 = icmp eq ptr %255, null
  br i1 %257, label %265, label %258

258:                                              ; preds = %252
  store i32 %221, ptr %235, align 4
  %259 = load i32, ptr %248, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %260 = load ptr, ptr %0, align 8
  %261 = getelementptr i8, ptr %260, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %261, i32 %259) #16, !srcloc !10
  %262 = load i32, ptr %254, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !9
  tail call void @arm_heavy_mb() #16
  %263 = load ptr, ptr %0, align 8
  %264 = getelementptr i8, ptr %263, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 %262) #16, !srcloc !10
  br label %273

265:                                              ; preds = %252, %245
  %266 = load ptr, ptr %246, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %266, ptr noundef nonnull @.str.18) #17
  %267 = load i32, ptr %222, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %265
  %270 = load ptr, ptr %246, align 4
  %271 = load ptr, ptr %250, align 4
  %272 = load i32, ptr %248, align 4
  tail call void @dma_free_attrs(ptr noundef %270, i32 noundef %267, ptr noundef %271, i32 noundef %272, i32 noundef 0) #16
  store i32 0, ptr %222, align 4
  store i32 0, ptr %248, align 4
  store ptr null, ptr %250, align 4
  br label %273

273:                                              ; preds = %269, %265, %258, %220
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_querycap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 16) #16
  %5 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %6 = tail call i32 @strscpy(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef 32) #16
  %7 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_video_enum_format(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #10 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 1195724874, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_get_format(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %7, ptr noundef align 8 dereferenceable(48) %8, i32 48, i1 false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_enum_input(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #16
  %5 = load i32, ptr %2, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 1
  %11 = tail call i32 @strscpy(ptr noundef %10, ptr noundef nonnull @.str.21, i32 noundef 32) #16
  %12 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 2
  store i32 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 7
  store i32 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.aspeed_video, ptr %9, i32 0, i32 9
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 6
  store i32 %15, ptr %16, align 8
  br label %17

17:                                               ; preds = %7, %3
  %18 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @aspeed_video_get_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_video_set_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #12 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i32 0, i32 -22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_get_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1
  store i32 4096, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 25
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 60, i32 %11
  %14 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2, i32 1
  store i32 %13, ptr %14, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_set_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1
  store i32 4096, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = udiv i32 %14, %10
  %16 = add i32 %15, -61
  %17 = icmp ult i32 %16, -60
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %3
  %19 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2, i32 1
  store i32 60, ptr %19, align 4
  store i32 1, ptr %9, align 4
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi i32 [ 0, %18 ], [ %15, %12 ]
  %22 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 25
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %21
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  store i32 %21, ptr %22, align 4
  %26 = shl nuw nsw i32 %21, 16
  %27 = and i32 %26, 16711680
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr i8, ptr %28, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #16, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !13
  %31 = and i32 %30, -16711681
  %32 = or i32 %31, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #16, !srcloc !14
  tail call void @arm_heavy_mb() #16
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #16, !srcloc !10
  br label %35

35:                                               ; preds = %25, %20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_enum_framesizes(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1195724874
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 6, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 2
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %13, %9, %3
  %22 = phi i32 [ 0, %13 ], [ -22, %3 ], [ -22, %9 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_enum_frameintervals(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 8, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 1195724874
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 4
  store i32 2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5
  %28 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5, i32 0, i32 0, i32 1
  store i32 60, ptr %28, align 4
  store i32 1, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5, i32 0, i32 1
  %30 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5, i32 0, i32 1, i32 1
  store i32 1, ptr %30, align 4
  store i32 1, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5, i32 0, i32 2
  %32 = load i64, ptr %29, align 4
  store i64 %32, ptr %31, align 4
  br label %33

33:                                               ; preds = %25, %21, %15, %9, %3
  %34 = phi i32 [ 0, %25 ], [ -22, %3 ], [ -22, %15 ], [ -22, %9 ], [ -22, %21 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_set_dv_timings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 1
  %9 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 7
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 1
  %14 = load i32, ptr %13, align 1
  %15 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 7, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %12, %3
  %19 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 10, i32 21
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(124) %9, ptr noundef align 1 dereferenceable(124) %7, i32 124, i1 false)
  tail call fastcc void @aspeed_video_set_resolution(ptr noundef %6)
  %23 = load i32, ptr %7, align 1
  %24 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 6
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1, i32 0, i32 1
  %26 = load i32, ptr %25, align 1
  %27 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 6, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 21
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 6, i32 5
  store i32 %29, ptr %30, align 4
  store i32 0, ptr %2, align 1
  br label %31

31:                                               ; preds = %22, %18, %12
  %32 = phi i32 [ 0, %22 ], [ 0, %12 ], [ -16, %18 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_get_dv_timings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  store i32 0, ptr %2, align 1
  %7 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.aspeed_video, ptr %6, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(124) %7, ptr noundef align 8 dereferenceable(124) %8, i32 124, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_query_dv_timings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2048
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.aspeed_video, ptr %7, i32 0, i32 19
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %11, label %17, label %16

16:                                               ; preds = %3
  br i1 %15, label %34, label %41

17:                                               ; preds = %3
  br i1 %15, label %34, label %18

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !15
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #16
  %19 = getelementptr inbounds %struct.aspeed_video, ptr %7, i32 0, i32 15
  %20 = call i32 @prepare_to_wait_event(ptr noundef %19, ptr noundef nonnull %4, i32 noundef 1) #16
  %21 = load volatile i32, ptr %12, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %27, %18
  %25 = phi i32 [ %28, %27 ], [ %20, %18 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  call void @schedule() #16
  %28 = call i32 @prepare_to_wait_event(ptr noundef %19, ptr noundef nonnull %4, i32 noundef 1) #16
  %29 = load volatile i32, ptr %12, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %24

32:                                               ; preds = %27, %18
  call void @finish_wait(ptr noundef %19, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  br label %34

33:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  br label %41

34:                                               ; preds = %32, %17, %16
  store i32 0, ptr %2, align 1
  %35 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %2, i32 0, i32 1
  %36 = getelementptr inbounds %struct.aspeed_video, ptr %7, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(124) %35, ptr noundef align 4 dereferenceable(124) %36, i32 124, i1 false)
  %37 = getelementptr inbounds %struct.aspeed_video, ptr %7, i32 0, i32 9
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 0, i32 -67
  br label %41

41:                                               ; preds = %34, %33, %16
  %42 = phi i32 [ %40, %34 ], [ -11, %16 ], [ -4, %33 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_enum_dv_timings(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call i32 @v4l2_enum_dv_timings_cap(ptr noundef %2, ptr noundef nonnull @aspeed_video_timings_cap, ptr noundef null, ptr noundef null) #16
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_video_dv_timings_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #13 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(144) %2, ptr noundef nonnull align 4 dereferenceable(144) @aspeed_video_timings_cap, i32 144, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_sub_event(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @v4l2_src_change_event_subscribe(ptr noundef %0, ptr noundef %1) #16
  br label %9

7:                                                ; preds = %2
  %8 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %0, ptr noundef %1) #16
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_enum_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subscribe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_proc_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @aspeed_video_debugfs_show, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_video_debugfs_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.22) #16
  %5 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 9
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr @.str.26, ptr @.str.25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull %8) #16
  %9 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %10) #16
  %11 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 6, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, i32 noundef %12) #16
  %13 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 25
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30, i32 noundef %14) #16
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.22) #16
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.31) #16
  %15 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 20
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32, i32 noundef %16) #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #16
  %17 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 31, i32 2
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %18) #16
  %19 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 31, i32 3
  %20 = load i32, ptr %19, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.37, i32 noundef %20) #16
  %21 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 31, i32 4
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.38, i32 noundef %22) #16
  %23 = getelementptr inbounds %struct.aspeed_video, ptr %4, i32 0, i32 31, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = load i32, ptr %15, align 4
  %26 = udiv i32 %24, %25
  %27 = udiv i32 1000, %26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.39, i32 noundef %27) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #15

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }

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
!9 = !{i64 2155069024}
!10 = !{i64 5076402}
!11 = !{i64 2155095370}
!12 = !{i64 5076820}
!13 = !{i64 2155066631}
!14 = !{i64 2155066814}
!15 = !{!"auto-init"}
!16 = !{i64 2155068286}
!17 = !{i64 954913, i64 954940}
!18 = !{i64 955608, i64 955635, i64 955668, i64 955689, i64 955716, i64 955742}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2148959488}
!21 = !{i64 2148955312}
!22 = !{i64 2148955387, i64 2148955414, i64 2148955461, i64 2148955483, i64 2148955511, i64 2148955531}
!23 = !{i64 2148982491}
