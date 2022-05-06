; ModuleID = '/llk/IR/drivers/gpu/drm/drm_debugfs.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_debugfs_create_files:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_debugfs_create_files\22\09\09\09\09\09"
module asm "__kstrtabns_drm_debugfs_create_files:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_debugfs_remove_files:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_debugfs_remove_files\22\09\09\09\09\09"
module asm "__kstrtabns_drm_debugfs_remove_files:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.anon.77 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.66 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.36 }
%union.anon.36 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.42 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.42 = type { %struct.callback_head }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.78 }
%union.anon.78 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }

@drm_debugfs_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @drm_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_drm_debugfs_create_files = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_debugfs_create_files = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_debugfs_create_files = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_debugfs_create_files to i32), ptr @__kstrtab_drm_debugfs_create_files, ptr @__kstrtabns_drm_debugfs_create_files }, section "___ksymtab+drm_debugfs_create_files", align 4
@drm_debugfs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [21 x i8] c"&minor->debugfs_lock\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@drm_debugfs_list = internal constant [3 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.6, ptr @drm_name_info, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.7, ptr @drm_clients_info, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.8, ptr @drm_gem_name_info, i32 1, ptr null }], align 4
@__kstrtab_drm_debugfs_remove_files = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_debugfs_remove_files = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_debugfs_remove_files = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_debugfs_remove_files to i32), ptr @__kstrtab_drm_debugfs_remove_files, ptr @__kstrtabns_drm_debugfs_remove_files }, section "___ksymtab+drm_debugfs_remove_files", align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@drm_connector_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @connector_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @connector_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"edid_override\00", align 1
@drm_edid_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @edid_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @edid_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"vrr_range\00", align 1
@vrr_range_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @vrr_range_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"crtc-%d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"clients\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"gem_names\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" dev=%s\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c" master=%s\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c" unique=%s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"%20s %5s %3s master a %5s %10s\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"%20s %5d %3d   %c    %c %5d %10u\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [34 x i8] c"  name     size handles refcount\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"%6d %8zd %7d %8d\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"digital\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Min: %u\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"Max: %u\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_drm_debugfs_create_files, ptr @__ksymtab_drm_debugfs_remove_files], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_debugfs_create_files(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %43

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 10
  %11 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 6
  %12 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 5
  br label %13

13:                                               ; preds = %40, %6
  %14 = phi i32 [ 0, %6 ], [ %41, %40 ]
  %15 = getelementptr %struct.drm_info_list, ptr %0, i32 %14
  %16 = getelementptr %struct.drm_info_list, ptr %0, i32 %14, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr inbounds %struct.drm_driver, ptr %20, i32 0, i32 24
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %10, align 4
  %24 = and i32 %22, %17
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, %17
  br i1 %26, label %27, label %40

27:                                               ; preds = %19, %13
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 20) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  store ptr %3, ptr %29, align 8
  %32 = load ptr, ptr %15, align 4
  %33 = tail call ptr @debugfs_create_file(ptr noundef %32, i16 noundef zeroext -32476, ptr noundef %2, ptr noundef nonnull %29, ptr noundef nonnull @drm_debugfs_fops) #9
  %34 = getelementptr inbounds %struct.drm_info_node, ptr %29, i32 0, i32 3
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.drm_info_node, ptr %29, i32 0, i32 1
  store ptr %15, ptr %35, align 4
  tail call void @mutex_lock(ptr noundef %11) #9
  %36 = getelementptr inbounds %struct.drm_info_node, ptr %29, i32 0, i32 2
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store ptr %37, ptr %36, align 8
  %39 = getelementptr inbounds %struct.drm_info_node, ptr %29, i32 0, i32 2, i32 1
  store ptr %12, ptr %39, align 4
  store volatile ptr %36, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef %11) #9
  br label %40

40:                                               ; preds = %31, %27, %19
  %41 = add nuw nsw i32 %14, 1
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %43, label %13

43:                                               ; preds = %40, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_debugfs_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 1
  %5 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 5
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 5, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @drm_debugfs_init.__key) #9
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, i32 noundef %1)
  %11 = call ptr @debugfs_create_dir(ptr noundef nonnull %4, ptr noundef %2) #9
  %12 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 4
  store ptr %11, ptr %12, align 4
  call void @drm_debugfs_create_files(ptr noundef nonnull @drm_debugfs_list, i32 noundef 3, ptr noundef %11, ptr noundef %0)
  %13 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_driver, ptr %14, i32 0, i32 24
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %16, 16
  %20 = and i32 %19, %18
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %24, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26, %3
  call void @drm_atomic_debugfs_init(ptr noundef %0) #9
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr inbounds %struct.drm_driver, ptr %31, i32 0, i32 24
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %17, align 4
  br label %35

35:                                               ; preds = %30, %26, %22
  %36 = phi i32 [ %18, %22 ], [ %34, %30 ], [ %18, %26 ]
  %37 = phi i32 [ %16, %22 ], [ %33, %30 ], [ %16, %26 ]
  %38 = phi ptr [ %14, %22 ], [ %31, %30 ], [ %14, %26 ]
  %39 = and i32 %37, 2
  %40 = and i32 %39, %36
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  call void @drm_framebuffer_debugfs_init(ptr noundef %0) #9
  call void @drm_client_debugfs_init(ptr noundef %0) #9
  %43 = load ptr, ptr %13, align 4
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi ptr [ %43, %42 ], [ %38, %35 ]
  %46 = getelementptr inbounds %struct.drm_driver, ptr %45, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  call void %47(ptr noundef %0) #9
  br label %50

50:                                               ; preds = %49, %44
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_client_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_debugfs_remove_files(ptr noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_minor, ptr %2, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_minor, ptr %2, i32 0, i32 5
  br label %8

8:                                                ; preds = %30, %6
  %9 = phi i32 [ 0, %6 ], [ %31, %30 ]
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr %struct.drm_info_list, ptr %0, i32 %9
  br label %14

14:                                               ; preds = %28, %12
  %15 = phi ptr [ %10, %12 ], [ %16, %28 ]
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %15, i32 -4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %13
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %15, i32 -8
  %22 = getelementptr i8, ptr %15, i32 8
  %23 = load ptr, ptr %22, align 4
  tail call void @debugfs_remove(ptr noundef %23) #9
  %24 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  tail call void @kfree(ptr noundef %21) #9
  br label %28

28:                                               ; preds = %20, %14
  %29 = icmp eq ptr %16, %7
  br i1 %29, label %30, label %14

30:                                               ; preds = %28, %8
  %31 = add nuw nsw i32 %9, 1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %33, label %8

33:                                               ; preds = %30, %3
  tail call void @mutex_unlock(ptr noundef %4) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_debugfs_cleanup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %21, label %10

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %13, %10 ], [ %8, %5 ]
  %12 = getelementptr i8, ptr %11, i32 -8
  %13 = load ptr, ptr %11, align 4
  %14 = getelementptr i8, ptr %11, i32 8
  %15 = load ptr, ptr %14, align 4
  tail call void @debugfs_remove(ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @kfree(ptr noundef %12) #9
  %20 = icmp eq ptr %13, %7
  br i1 %20, label %21, label %10

21:                                               ; preds = %10, %5
  tail call void @mutex_unlock(ptr noundef %6) #9
  %22 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %22) #9
  store ptr null, ptr %2, align 4
  br label %23

23:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_debugfs_connector_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_minor, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @debugfs_create_dir(ptr noundef %10, ptr noundef nonnull %6) #9
  %12 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 51
  store ptr %11, ptr %12, align 4
  %13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 420, ptr noundef %11, ptr noundef %0, ptr noundef nonnull @drm_connector_fops) #9
  %14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 420, ptr noundef %11, ptr noundef %0, ptr noundef nonnull @drm_edid_fops) #9
  %15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %0, ptr noundef nonnull @vrr_range_fops) #9
  br label %16

16:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_debugfs_connector_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 51
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @debugfs_remove(ptr noundef nonnull %3) #9
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_debugfs_crtc_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.5, i32 noundef %6) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.drm_minor, ptr %4, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @debugfs_create_dir(ptr noundef nonnull %7, ptr noundef %11) #9
  tail call void @kfree(ptr noundef nonnull %7) #9
  %13 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 25
  store ptr %12, ptr %13, align 4
  tail call void @drm_debugfs_crtc_crc_add(ptr noundef %0) #9
  br label %14

14:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_crtc_crc_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_debugfs_crtc_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_debugfs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @single_open(ptr noundef %1, ptr noundef %8, ptr noundef %4) #9
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_name_info(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_driver, ptr %12, i32 0, i32 21
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %16, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %20, %18 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %25) #9
  br label %26

26:                                               ; preds = %24, %2
  %27 = icmp eq ptr %10, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.drm_master, ptr %10, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %30) #9
  br label %33

33:                                               ; preds = %32, %28, %26
  %34 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 13
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %35) #9
  br label %38

38:                                               ; preds = %37, %33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13) #9
  tail call void @mutex_unlock(ptr noundef %8) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_clients_info(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #9
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 18
  %10 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 18, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %47, label %13

13:                                               ; preds = %26, %2
  %14 = phi ptr [ %45, %26 ], [ %11, %2 ]
  %15 = getelementptr i8, ptr %14, i32 -24
  %16 = tail call zeroext i1 @drm_is_current_master(ptr noundef %15) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %17 = getelementptr i8, ptr %14, i32 -8
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @pid_task(ptr noundef %18, i32 noundef 0) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 82
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %21, %13
  %27 = phi i32 [ %25, %21 ], [ 0, %13 ]
  %28 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 85
  %29 = select i1 %20, ptr @.str.21, ptr %28
  %30 = load ptr, ptr %17, align 4
  %31 = tail call i32 @pid_vnr(ptr noundef %30) #9
  %32 = getelementptr i8, ptr %14, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %33, align 4
  %35 = select i1 %16, i32 121, i32 110
  %36 = load i8, ptr %15, align 4, !range !10
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i32 110, i32 121
  %39 = icmp eq i32 %27, -1
  %40 = load i32, ptr @overflowuid, align 4
  %41 = select i1 %39, i32 %40, i32 %27
  %42 = getelementptr i8, ptr %14, i32 -4
  %43 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %29, i32 noundef %31, i32 noundef %34, i32 noundef %35, i32 noundef %38, i32 noundef %41, i32 noundef %43) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %44 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %9
  br i1 %46, label %47, label %13

47:                                               ; preds = %26, %2
  tail call void @mutex_unlock(ptr noundef %8) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_gem_name_info(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22) #9
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 32
  %10 = tail call i32 @idr_for_each(ptr noundef %9, ptr noundef nonnull @drm_gem_one_name_info, ptr noundef %0) #9
  tail call void @mutex_unlock(ptr noundef %8) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_is_current_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_gem_one_name_info(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load volatile i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %10) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @connector_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [12 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !8
  %10 = icmp ugt i32 %2, 11
  br i1 %10, label %45, label %11

11:                                               ; preds = %4
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #10, !srcloc !12
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22, !prof !13

15:                                               ; preds = %11
  %16 = tail call ptr @llvm.thread.pointer() #9
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #11, !srcloc !14
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #9, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  %21 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #9, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !16
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi i32 [ %21, %15 ], [ %2, %11 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25, !prof !13

25:                                               ; preds = %22
  %26 = sub i32 %2, %23
  %27 = getelementptr i8, ptr %5, i32 %26
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %23, i1 false) #9
  br label %45

28:                                               ; preds = %22
  %29 = getelementptr [12 x i8], ptr %5, i32 0, i32 %2
  store i8 0, ptr %29, align 1
  %30 = call zeroext i1 @sysfs_streq(ptr noundef nonnull %5, ptr noundef nonnull @.str.24) #9
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.drm_connector, ptr %9, i32 0, i32 37
  store i32 2, ptr %32, align 4
  br label %45

33:                                               ; preds = %28
  %34 = call zeroext i1 @sysfs_streq(ptr noundef nonnull %5, ptr noundef nonnull @.str.25) #9
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.drm_connector, ptr %9, i32 0, i32 37
  store i32 3, ptr %36, align 4
  br label %45

37:                                               ; preds = %33
  %38 = call zeroext i1 @sysfs_streq(ptr noundef nonnull %5, ptr noundef nonnull @.str.26) #9
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.drm_connector, ptr %9, i32 0, i32 37
  store i32 1, ptr %40, align 4
  br label %45

41:                                               ; preds = %37
  %42 = call zeroext i1 @sysfs_streq(ptr noundef nonnull %5, ptr noundef nonnull @.str.27) #9
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.drm_connector, ptr %9, i32 0, i32 37
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %41, %39, %35, %31, %25, %4
  %46 = phi i32 [ -22, %4 ], [ -22, %41 ], [ %2, %35 ], [ %2, %43 ], [ %2, %39 ], [ %2, %31 ], [ -14, %25 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @connector_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @connector_show, ptr noundef %4) #9
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @connector_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 37
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @drm_get_connector_force_name(i32 noundef %6) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_connector_force_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edid_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.seq_file, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @memdup_user(ptr noundef %1, i32 noundef %2) #9
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = ptrtoint ptr %9 to i32
  br label %39

13:                                               ; preds = %4
  %14 = icmp eq i32 %2, 5
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = tail call i32 @strncmp(ptr noundef %9, ptr noundef nonnull dereferenceable(6) @.str.31, i32 noundef 5)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %32

18:                                               ; preds = %13
  %19 = icmp ult i32 %2, 128
  br i1 %19, label %32, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.edid, ptr %9, i32 0, i32 26
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 7
  %25 = add nuw nsw i32 %24, 128
  %26 = icmp ugt i32 %25, %2
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.drm_connector, ptr %8, i32 0, i32 38
  store i8 0, ptr %28, align 8
  %29 = tail call i32 @drm_connector_update_edid_property(ptr noundef %8, ptr noundef %9) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i8 1, ptr %28, align 8
  tail call void @kfree(ptr noundef %9) #9
  br label %38

32:                                               ; preds = %27, %20, %18, %15
  %33 = phi i32 [ -22, %18 ], [ -22, %20 ], [ %29, %27 ], [ -22, %15 ]
  tail call void @kfree(ptr noundef %9) #9
  br label %39

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.drm_connector, ptr %8, i32 0, i32 38
  store i8 0, ptr %35, align 8
  %36 = tail call i32 @drm_connector_update_edid_property(ptr noundef %8, ptr noundef null) #9
  tail call void @kfree(ptr noundef %9) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %31
  br label %39

39:                                               ; preds = %38, %34, %32, %11
  %40 = phi i32 [ %12, %11 ], [ %2, %38 ], [ %36, %34 ], [ %33, %32 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edid_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @edid_show, ptr noundef %4) #9
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edid_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 38
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp ne i8 %8, 0
  %10 = icmp ne ptr %6, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_property_blob, ptr %6, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_property_blob, ptr %6, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @seq_write(ptr noundef %0, ptr noundef %14, i32 noundef %16) #9
  br label %18

18:                                               ; preds = %12, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vrr_range_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @vrr_range_show, ptr noundef %4) #9
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vrr_range_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 18
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 20, i32 18
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %11) #9
  %12 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 20, i32 18, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %14) #9
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi i32 [ 0, %8 ], [ -19, %2 ]
  ret i32 %16
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!9 = !{i64 2149170595}
!10 = !{i8 0, i8 2}
!11 = !{i64 2149170812}
!12 = !{i64 2150982946, i64 2150982971}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 3479058}
!15 = !{i64 3479255}
!16 = !{i64 2150964534}
