; ModuleID = '/llk/IR/drivers/char/virtio_console.c_pt.bc'
source_filename = "../drivers/char/virtio_console.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hv_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ports_driver_data = type { ptr, ptr, %struct.list_head, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.virtio_device_id = type { i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.lock_class_key = type {}
%struct.atomic_t = type { i32 }
%struct.console = type { %struct.list_head, ptr, %struct.winsize, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.hvc_struct = type { %struct.tty_port, %struct.spinlock, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, %struct.winsize, %struct.work_struct, %struct.list_head, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ports_device = type { %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, ptr, ptr, %struct.virtio_console_control, ptr, ptr, i32 }
%struct.virtio_console_control = type { i32, i16, i16 }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.port = type { %struct.list_head, ptr, ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, %struct.port_stats, %struct.console, ptr, ptr, %struct.kref, %struct.wait_queue_head, ptr, ptr, i32, i8, i8, i8 }
%struct.port_stats = type { i32, i32, i32 }
%struct.port_buffer = type { ptr, i32, i32, i32, i32, ptr, %struct.list_head, i32, [0 x %struct.scatterlist] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.59, %struct.atomic_t }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.59 = type { %struct.atomic_t }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.49 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.67 = type { ptr }
%struct.sg_list = type { i32, i32, i32, ptr }
%struct.splice_desc = type { i32, i32, i32, %union.anon.71, i64, ptr, i32, i8 }
%union.anon.71 = type { ptr }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pipe_buffer = type { ptr, i32, i32, ptr, i32, i32 }
%struct.pipe_buf_operations = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@early_put_chars = internal unnamed_addr global ptr null, align 4
@hv_ops = internal constant %struct.hv_ops { ptr @get_chars, ptr @put_chars, ptr null, ptr @notifier_add_vio, ptr @notifier_del_vio, ptr @notifier_del_vio, ptr null, ptr null, ptr null }, align 4
@virtio_console = internal global %struct.virtio_driver { %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 2, ptr null, i32 0, ptr null, ptr @virtcons_probe, ptr null, ptr @virtcons_remove, ptr @config_intr, ptr @virtcons_freeze, ptr @virtcons_restore }, align 4
@virtio_rproc_serial = internal global %struct.virtio_driver { %struct.device_driver { ptr @.str.40, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rproc_serial_id_table, ptr @rproc_serial_features, i32 0, ptr null, i32 0, ptr null, ptr @virtcons_probe, ptr null, ptr @virtcons_remove, ptr null, ptr null, ptr null }, align 4
@pdrvdata = internal global %struct.ports_driver_data { ptr null, ptr null, %struct.list_head zeroinitializer, i32 1, %struct.list_head zeroinitializer }, align 4
@__initcall__kmod_virtio_console__250_2293_init6 = internal global ptr @init, section ".initcall6.init", align 4
@__exitcall_fini = internal global ptr @fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description251 = internal constant [49 x i8] c"virtio_console.description=Virtio console driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [48 x i8] c"virtio_console.file=drivers/char/virtio_console\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [27 x i8] c"virtio_console.license=GPL\00", section ".modinfo", align 1
@pdrvdata_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"failed add_buf\0A\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@dma_bufs_lock = internal global %struct.spinlock zeroinitializer, align 4
@pending_free_dma_bufs = internal global %struct.list_head { ptr @pending_free_dma_bufs, ptr @pending_free_dma_bufs }, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"virtio_console\00", align 1
@id_table = internal constant [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 3, i32 -1 }, %struct.virtio_device_id zeroinitializer], align 4
@features = internal constant [2 x i32] [i32 0, i32 1], align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"%s failure: config access disabled\0A\00", align 1
@__func__.virtcons_probe = private unnamed_addr constant [15 x i8] c"virtcons_probe\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"virtio-portsdev\00", align 1
@portdev_fops = internal constant %struct.file_operations zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Error %d registering chrdev for device %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Invalidate max_nr_ports %d\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Error %d initializing vqs\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Error allocating buffers for control queue\0A\00", align 1
@early_console_added = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @early_console_added, i64 8), ptr getelementptr (i8, ptr @early_console_added, i64 8) } } }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"control-i\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"control-o\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Errors adding %d buffers back to vq\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"Error adding buffer to queue\0A\00", align 1
@.str.16 = private unnamed_addr constant [72 x i8] c"Request for adding port with out-of-bound id %u, max. supported id: %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Not enough space to store port name\0A\00", align 1
@port_attribute_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @port_sysfs_entries, ptr null }, align 4
@.str.18 = private unnamed_addr constant [43 x i8] c"Error %d creating sysfs device attributes\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"error %d allocating hvc for port\0A\00", align 1
@port_sysfs_entries = internal global [2 x ptr] [ptr @dev_attr_name, ptr null], align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @show_port_name, ptr null }, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Error allocating cdev\0A\00", align 1
@port_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @port_fops_read, ptr @port_fops_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @port_fops_poll, ptr null, ptr null, ptr null, i32 0, ptr @port_fops_open, ptr null, ptr @port_fops_release, ptr null, ptr @port_fops_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @port_fops_splice_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.23 = private unnamed_addr constant [34 x i8] c"Error %d adding cdev for port %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"vport%up%u\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"Error %d creating device for port %u\0A\00", align 1
@add_port.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"&port->waitqueue\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Error allocating inbufs\0A\00", align 1
@port_debugfs_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @port_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [10 x i8] c"name: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"guest_connected: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"host_connected: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"outvq_full: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"bytes_sent: %lu\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"bytes_received: %lu\0A\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"bytes_discarded: %lu\0A\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"is_console: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"console_vtermno: %u\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"virtio_rproc_serial\00", align 1
@rproc_serial_id_table = internal constant [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 11, i32 -1 }, %struct.virtio_device_id zeroinitializer], align 4
@rproc_serial_features = internal constant [0 x i32] zeroinitializer, align 4
@init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"virtio-ports\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"\013Error %d creating virtio-ports class\0A\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"\013Error %d registering virtio driver\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"\013Error %d registering virtio rproc serial driver\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_fini, ptr @__initcall__kmod_virtio_console__250_2293_init6, ptr @fini], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @virtio_cons_early_init(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  store ptr %0, ptr @early_put_chars, align 4
  %2 = tail call i32 @hvc_instantiate(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @hv_ops) #15
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hvc_instantiate(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @fini() #0 section ".exit.text" {
  tail call fastcc void @reclaim_dma_bufs()
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_console) #15
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_rproc_serial) #15
  %1 = load ptr, ptr @pdrvdata, align 4
  tail call void @class_destroy(ptr noundef %1) #15
  %2 = load ptr, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 1), align 4
  tail call void @debugfs_remove(ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reclaim_dma_bufs() unnamed_addr #2 {
  %1 = alloca %struct.list_head, align 8
  %2 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #15
  store ptr %1, ptr %1, align 8
  store ptr %1, ptr %2, align 4
  %3 = load volatile ptr, ptr @pending_free_dma_bufs, align 4
  %4 = icmp eq ptr %3, @pending_free_dma_bufs
  br i1 %4, label %32, label %5

5:                                                ; preds = %0
  %6 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dma_bufs_lock) #15
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @pending_free_dma_bufs, i32 0, i32 1), align 4
  %8 = load volatile ptr, ptr @pending_free_dma_bufs, align 4
  %9 = icmp eq ptr %8, @pending_free_dma_bufs
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = load volatile ptr, ptr @pending_free_dma_bufs, align 4
  %12 = icmp eq ptr %7, @pending_free_dma_bufs
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store volatile ptr %1, ptr %1, align 8
  br label %18

14:                                               ; preds = %10
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %11, ptr %1, align 8
  %17 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  store ptr %7, ptr %2, align 4
  store ptr %1, ptr %7, align 4
  store ptr %15, ptr @pending_free_dma_bufs, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = phi ptr [ @pending_free_dma_bufs, %14 ], [ %1, %13 ]
  %20 = phi ptr [ %16, %14 ], [ %2, %13 ]
  store ptr %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %5
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dma_bufs_lock, i32 noundef %6) #15
  %22 = load ptr, ptr %1, align 8
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %32, label %24

24:                                               ; preds = %24, %21
  %25 = phi ptr [ %27, %24 ], [ %22, %21 ]
  %26 = getelementptr i8, ptr %25, i32 -24
  %27 = load ptr, ptr %25, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %27, ptr %29, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %28, align 4
  call fastcc void @free_buf(ptr noundef %26, i1 noundef zeroext true)
  %31 = icmp eq ptr %27, %1
  br i1 %31, label %32, label %24

32:                                               ; preds = %24, %21, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init() #0 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @init.__key) #15
  store ptr %1, ptr @pdrvdata, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %4) #16
  br label %21

6:                                                ; preds = %0
  %7 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.41, ptr noundef null) #15
  store ptr %7, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), align 4
  store ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2), ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2), align 4
  store ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2), ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2, i32 1), align 4
  %8 = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_console) #15
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %8) #16
  br label %17

12:                                               ; preds = %6
  %13 = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_rproc_serial) #15
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %13) #16
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_console) #15
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i32 [ %8, %10 ], [ %13, %15 ]
  %19 = load ptr, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 1), align 4
  tail call void @debugfs_remove(ptr noundef %19) #15
  %20 = load ptr, ptr @pdrvdata, align 4
  tail call void @class_destroy(ptr noundef %20) #15
  br label %21

21:                                               ; preds = %17, %12, %3
  %22 = phi i32 [ %4, %3 ], [ %18, %17 ], [ 0, %12 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_chars(i32 noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr @early_put_chars, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %27, !prof !8

6:                                                ; preds = %3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pdrvdata_lock) #15
  br label %8

8:                                                ; preds = %13, %6
  %9 = phi ptr [ getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), %6 ], [ %10, %13 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4)
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %7) #15
  br label %27

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.console, ptr %10, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %0
  br i1 %16, label %17, label %8

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %10, i32 -48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %7) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %10, i32 -24
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/virtio_console.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1161, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @fill_readbuf(ptr noundef nonnull %18, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  br label %27

27:                                               ; preds = %25, %17, %12, %3
  %28 = phi i32 [ %26, %25 ], [ 0, %3 ], [ -32, %17 ], [ -32, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @put_chars(i32 noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca [1 x %struct.scatterlist], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !11
  %5 = load ptr, ptr @early_put_chars, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %3
  %8 = tail call i32 %5(i32 noundef %0, ptr noundef %1, i32 noundef %2) #15
  br label %28

9:                                                ; preds = %3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pdrvdata_lock) #15
  br label %11

11:                                               ; preds = %16, %9
  %12 = phi ptr [ getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), %9 ], [ %13, %16 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4)
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %10) #15
  br label %28

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.console, ptr %13, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %20, label %11

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %13, i32 -48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %10) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %2, i32 noundef 2592) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  call void @sg_init_one(ptr noundef nonnull %4, ptr noundef nonnull %24, i32 noundef %2) #15
  %27 = call fastcc i32 @__send_to_port(ptr noundef nonnull %21, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %2, ptr noundef nonnull %24, i1 noundef zeroext false)
  call void @kfree(ptr noundef nonnull %24) #15
  br label %28

28:                                               ; preds = %26, %23, %20, %15, %7
  %29 = phi i32 [ %8, %7 ], [ %27, %26 ], [ -32, %20 ], [ -12, %23 ], [ -32, %15 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #15
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @notifier_add_vio(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pdrvdata_lock) #15
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi ptr [ getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), %2 ], [ %8, %11 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4)
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %5) #15
  br label %46

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %4
  br i1 %14, label %15, label %6

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %8, i32 -48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %5) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 9
  store i32 1, ptr %19, align 4
  %20 = getelementptr i8, ptr %8, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %8, i32 -40
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ports_device, ptr %25, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.virtio_device, ptr %27, i32 0, i32 7
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 11
  br i1 %30, label %46, label %31

31:                                               ; preds = %23
  tail call void @virtio_check_driver_offered_feature(ptr noundef %27, i32 noundef 0) #15
  %32 = getelementptr inbounds %struct.virtio_device, ptr %27, i32 0, i32 11
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %20, align 4
  %38 = getelementptr i8, ptr %8, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = insertvalue [2 x i32] undef, i32 %39, 0
  %41 = getelementptr i8, ptr %8, i32 16
  %42 = load i32, ptr %41, align 4
  %43 = insertvalue [2 x i32] %40, i32 %42, 1
  %44 = getelementptr inbounds %struct.hvc_struct, ptr %37, i32 0, i32 1
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %44) #15
  tail call void @__hvc_resize(ptr noundef %37, [2 x i32] %43) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %44, i32 noundef %45) #15
  br label %46

46:                                               ; preds = %36, %31, %23, %18, %15, %10
  %47 = phi i32 [ -22, %15 ], [ -22, %10 ], [ 0, %18 ], [ 0, %23 ], [ 0, %31 ], [ 0, %36 ]
  ret i32 %47
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @notifier_del_vio(ptr nocapture noundef writeonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.hvc_struct, ptr %0, i32 0, i32 9
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fill_readbuf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = alloca [1 x %struct.scatterlist], align 4
  %6 = alloca i32, align 4
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %90, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !11
  %11 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = call ptr @virtqueue_get_buf(ptr noundef %16, ptr noundef nonnull %6) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %6, align 4
  %21 = getelementptr inbounds %struct.port_buffer, ptr %17, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @llvm.umin.i32(i32 %20, i32 %22) #15
  %24 = getelementptr inbounds %struct.port_buffer, ptr %17, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.port_buffer, ptr %17, i32 0, i32 3
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 8, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %20
  store i32 %28, ptr %26, align 4
  br label %30

29:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  store ptr null, ptr %11, align 4
  br label %87

30:                                               ; preds = %19, %8
  %31 = phi ptr [ %17, %19 ], [ %12, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  store ptr %31, ptr %11, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #15
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr inbounds %struct.port_buffer, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.port_buffer, ptr %32, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %34, %36
  %38 = call i32 @llvm.umin.i32(i32 %37, i32 %2)
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr i8, ptr %39, i32 %36
  br i1 %3, label %41, label %62

41:                                               ; preds = %30
  %42 = icmp slt i32 %38, 0
  %43 = load i1, ptr @check_copy_size.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !9

46:                                               ; preds = %41
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %47

47:                                               ; preds = %46, %41
  br i1 %42, label %90, label %48, !prof !9

48:                                               ; preds = %47
  %49 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %38, i32 -1090519040) #17, !srcloc !12
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = tail call ptr @llvm.thread.pointer() #15
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %54) #18, !srcloc !13
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #15, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !15
  %58 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %40, i32 noundef %38) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #15, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !15
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi i32 [ %58, %52 ], [ %38, %48 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %90

62:                                               ; preds = %30
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %40, i32 %38, i1 false)
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, ptr %35, align 4
  %65 = add i32 %64, %38
  store i32 %65, ptr %35, align 4
  %66 = load i32, ptr %33, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %63
  %69 = call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #15
  store ptr null, ptr %11, align 4
  %70 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #15, !annotation !11
  %72 = load ptr, ptr %32, align 4
  %73 = getelementptr inbounds %struct.port_buffer, ptr %32, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  call void @sg_init_one(ptr noundef nonnull %5, ptr noundef %72, i32 noundef %74) #15
  %75 = call i32 @virtqueue_add_inbuf(ptr noundef %71, ptr noundef nonnull %5, i32 noundef 1, ptr noundef %32, i32 noundef 2592) #15
  %76 = call zeroext i1 @virtqueue_kick(ptr noundef %71) #15
  %77 = icmp eq i32 %75, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.virtqueue, ptr %71, i32 0, i32 5
  %80 = load i32, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %68
  %82 = phi i32 [ %75, %68 ], [ %80, %78 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 11
  %86 = load ptr, ptr %85, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str) #16
  br label %87

87:                                               ; preds = %84, %81, %29
  %88 = phi i32 [ %10, %29 ], [ %69, %84 ], [ %69, %81 ]
  %89 = phi i32 [ 0, %29 ], [ %38, %84 ], [ %38, %81 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %88) #15
  br label %90

90:                                               ; preds = %87, %63, %59, %47, %4
  %91 = phi i32 [ -14, %59 ], [ 0, %4 ], [ %38, %63 ], [ -14, %47 ], [ %89, %87 ]
  ret i32 %91
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_inbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__send_to_port(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !annotation !11
  %9 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 4
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !11
  %13 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %6
  %17 = load ptr, ptr %9, align 4
  %18 = call ptr @virtqueue_get_buf(ptr noundef %17, ptr noundef nonnull %7) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 17
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi ptr [ %18, %20 ], [ %25, %22 ]
  call fastcc void @free_buf(ptr noundef nonnull %23, i1 noundef zeroext false) #15
  store i8 0, ptr %21, align 4
  %24 = load ptr, ptr %9, align 4
  %25 = call ptr @virtqueue_get_buf(ptr noundef %24, ptr noundef nonnull %7) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22

27:                                               ; preds = %22, %16, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  %28 = call i32 @virtqueue_add_outbuf(ptr noundef %10, ptr noundef %1, i32 noundef %2, ptr noundef %4, i32 noundef 2592) #15
  %29 = call zeroext i1 @virtqueue_kick(ptr noundef %10) #15
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.virtqueue, ptr %10, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 17
  store i8 1, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %31
  br i1 %5, label %46, label %38

38:                                               ; preds = %37
  %39 = call ptr @virtqueue_get_buf(ptr noundef %10, ptr noundef nonnull %8) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %43, %38
  %42 = call zeroext i1 @virtqueue_is_broken(ptr noundef %10) #15
  br i1 %42, label %46, label %43

43:                                               ; preds = %41
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !17
  %44 = call ptr @virtqueue_get_buf(ptr noundef %10, ptr noundef nonnull %8) #15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %41, label %46

46:                                               ; preds = %43, %41, %38, %37, %27
  %47 = phi i32 [ %3, %37 ], [ 0, %27 ], [ %3, %38 ], [ %3, %41 ], [ %3, %43 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #15
  %48 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %47
  store i32 %50, ptr %48, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_outbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_is_broken(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_buf(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.port_buffer, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %28, %2
  %7 = phi i32 [ %29, %28 ], [ 0, %2 ]
  %8 = getelementptr %struct.port_buffer, ptr %0, i32 0, i32 8, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %6
  %13 = inttoptr i32 %10 to ptr
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18, !prof !8

18:                                               ; preds = %12
  %19 = add i32 %15, -1
  %20 = inttoptr i32 %19 to ptr
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi ptr [ %13, %12 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #15, !srcloc !19
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #15, !srcloc !20
  %25 = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void @__put_page(ptr noundef %22) #15
  br label %28

28:                                               ; preds = %27, %21
  %29 = add nuw i32 %7, 1
  %30 = load i32, ptr %3, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %6, label %32

32:                                               ; preds = %28, %6, %2
  %33 = getelementptr inbounds %struct.port_buffer, ptr %0, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %37) #15
  br label %51

38:                                               ; preds = %32
  br i1 %1, label %44, label %39

39:                                               ; preds = %38
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dma_bufs_lock) #15
  %41 = getelementptr inbounds %struct.port_buffer, ptr %0, i32 0, i32 6
  %42 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @pending_free_dma_bufs, i32 0, i32 1), align 4
  store ptr %41, ptr getelementptr inbounds (%struct.list_head, ptr @pending_free_dma_bufs, i32 0, i32 1), align 4
  store ptr @pending_free_dma_bufs, ptr %41, align 4
  %43 = getelementptr inbounds %struct.port_buffer, ptr %0, i32 0, i32 6, i32 1
  store ptr %42, ptr %43, align 4
  store volatile ptr %41, ptr %42, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dma_bufs_lock, i32 noundef %40) #15
  br label %52

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.port_buffer, ptr %0, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.port_buffer, ptr %0, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  tail call void @dma_free_attrs(ptr noundef nonnull %34, i32 noundef %46, ptr noundef %47, i32 noundef %49, i32 noundef 0) #15
  %50 = load ptr, ptr %33, align 4
  tail call void @put_device(ptr noundef %50) #15
  br label %51

51:                                               ; preds = %44, %36
  tail call void @kfree(ptr noundef %0) #15
  br label %52

52:                                               ; preds = %51, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hvc_resize(ptr noundef, [2 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtcons_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @early_put_chars, align 4
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.virtio_config_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 0) #15
  %11 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 1) #15
  %16 = load i64, ptr %11, align 8
  %17 = and i64 %16, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %10
  %20 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.virtcons_probe) #16
  br label %113

21:                                               ; preds = %15, %1
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 96) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %113, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 8
  store ptr %0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  store ptr %23, ptr %27, align 8
  %28 = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.5, ptr noundef nonnull @portdev_fops) #15
  %29 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 14
  store i32 %28, ptr %29, align 4
  %30 = icmp slt i32 %28, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  %33 = load i32, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.6, i32 noundef %28, i32 noundef %33) #16
  %34 = load i32, ptr %29, align 4
  br label %111

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 7
  store i32 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 7
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 11
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  tail call void @virtio_check_driver_offered_feature(ptr noundef %0, i32 noundef 1) #15
  %41 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 11
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 2
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !11
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds %struct.virtio_config_ops, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  call void %48(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2, i32 noundef 4) #15
  %49 = load i32, ptr %2, align 4
  store i32 %49, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %50 = add i32 %49, -32769
  %51 = icmp ult i32 %50, -32768
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.7, i32 noundef %49) #16
  br label %111

54:                                               ; preds = %45, %40, %35
  %55 = phi i1 [ false, %35 ], [ true, %45 ], [ false, %40 ]
  %56 = call fastcc i32 @init_vqs(ptr noundef nonnull %23)
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.8, i32 noundef %56) #16
  %60 = load i32, ptr %29, align 4
  call void @__unregister_chrdev(i32 noundef %60, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.5) #15
  br label %111

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 4
  store i32 0, ptr %62, align 8
  %63 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 3
  store volatile ptr %63, ptr %63, align 8
  %64 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 3, i32 1
  store ptr %63, ptr %64, align 4
  store volatile ptr %23, ptr %23, align 8
  %65 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %23, ptr %65, align 4
  %66 = load ptr, ptr %26, align 8
  %67 = getelementptr inbounds %struct.virtio_device, ptr %66, i32 0, i32 8
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.virtio_config_ops, ptr %68, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = call zeroext i8 %70(ptr noundef %66) #15
  %72 = load ptr, ptr %67, align 8
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %61
  call void %73(ptr noundef %66) #15
  br label %76

76:                                               ; preds = %75, %61
  %77 = and i8 %71, 4
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79, !prof !8

79:                                               ; preds = %76
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #15, !srcloc !23
  unreachable

80:                                               ; preds = %76
  %81 = load ptr, ptr %67, align 8
  %82 = getelementptr inbounds %struct.virtio_config_ops, ptr %81, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = or i8 %71, 4
  call void %83(ptr noundef %66, i8 noundef zeroext %84) #15
  %85 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 2
  store i32 -32, ptr %85, align 8
  %86 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 2, i32 1
  store volatile ptr %86, ptr %86, align 4
  %87 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 2, i32 1, i32 1
  store ptr %86, ptr %87, align 8
  %88 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 2, i32 2
  store ptr @config_work_handler, ptr %88, align 4
  %89 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 1
  store i32 -32, ptr %89, align 8
  %90 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 1, i32 1
  store volatile ptr %90, ptr %90, align 4
  %91 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 1, i32 1, i32 1
  store ptr %90, ptr %91, align 8
  %92 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 1, i32 2
  store ptr @control_work_handler, ptr %92, align 4
  br i1 %55, label %93, label %102

93:                                               ; preds = %80
  %94 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 5
  store i32 0, ptr %94, align 4
  %95 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 6
  store i32 0, ptr %95, align 8
  %96 = getelementptr inbounds %struct.ports_device, ptr %23, i32 0, i32 9
  %97 = load ptr, ptr %96, align 4
  %98 = call fastcc i32 @fill_queue(ptr noundef %97, ptr noundef %94)
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.9) #16
  call fastcc void @__send_control_msg(ptr noundef nonnull %23, i32 noundef -1, i32 noundef 0, i32 noundef 0)
  call void @virtcons_remove(ptr noundef %0)
  br label %113

102:                                              ; preds = %80
  call fastcc void @add_port(ptr noundef nonnull %23, i32 noundef 0)
  call void @_raw_spin_lock_irq(ptr noundef nonnull @pdrvdata_lock) #15
  %103 = load ptr, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2, i32 1), align 4
  store ptr %23, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2, i32 1), align 4
  store ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2), ptr %23, align 8
  store ptr %103, ptr %65, align 4
  store volatile ptr %23, ptr %103, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %104 = load i16, ptr @pdrvdata_lock, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr @pdrvdata_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  call fastcc void @__send_control_msg(ptr noundef nonnull %23, i32 noundef -1, i32 noundef 0, i32 noundef 1)
  br label %113

106:                                              ; preds = %93
  call void @_raw_spin_lock_irq(ptr noundef nonnull @pdrvdata_lock) #15
  %107 = load ptr, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2, i32 1), align 4
  store ptr %23, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2, i32 1), align 4
  store ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2), ptr %23, align 8
  store ptr %107, ptr %65, align 4
  store volatile ptr %23, ptr %107, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %108 = load i16, ptr @pdrvdata_lock, align 4
  %109 = add i16 %108, 1
  store i16 %109, ptr @pdrvdata_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  call fastcc void @__send_control_msg(ptr noundef nonnull %23, i32 noundef -1, i32 noundef 0, i32 noundef 1)
  br i1 %4, label %113, label %110

110:                                              ; preds = %106
  call void @wait_for_completion(ptr noundef nonnull @early_console_added) #15
  br label %113

111:                                              ; preds = %58, %52, %31
  %112 = phi i32 [ %34, %31 ], [ %56, %58 ], [ -22, %52 ]
  call void @kfree(ptr noundef nonnull %23) #15
  br label %113

113:                                              ; preds = %111, %110, %106, %102, %100, %21, %19
  %114 = phi i32 [ %98, %100 ], [ -22, %19 ], [ 0, %102 ], [ 0, %110 ], [ 0, %106 ], [ %112, %111 ], [ -12, %21 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @virtcons_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pdrvdata_lock) #15
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %8 = load i16, ptr @pdrvdata_lock, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr @pdrvdata_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  tail call void @virtio_break_device(ptr noundef %0) #15
  %10 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.virtio_device, ptr %11, i32 0, i32 11
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 2
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 1
  br label %22

20:                                               ; preds = %13, %1
  %21 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 2
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %21, %20 ], [ %19, %18 ]
  %24 = tail call zeroext i1 @flush_work(ptr noundef %23) #15
  tail call void @virtio_reset_device(ptr noundef %0) #15
  %25 = load ptr, ptr %10, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.virtio_device, ptr %25, i32 0, i32 11
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 2
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 1
  br label %36

34:                                               ; preds = %27, %22
  %35 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 2
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %35, %34 ], [ %33, %32 ]
  %38 = tail call zeroext i1 @cancel_work_sync(ptr noundef %37) #15
  %39 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %46, label %42

42:                                               ; preds = %42, %36
  %43 = phi ptr [ %44, %42 ], [ %40, %36 ]
  %44 = load ptr, ptr %43, align 4
  tail call fastcc void @unplug_port(ptr noundef %43)
  %45 = icmp eq ptr %44, %39
  br i1 %45, label %46, label %42

46:                                               ; preds = %42, %36
  %47 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 14
  %48 = load i32, ptr %47, align 4
  tail call void @__unregister_chrdev(i32 noundef %48, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.5) #15
  tail call fastcc void @remove_vqs(ptr noundef %3)
  tail call void @kfree(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @config_intr(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 2
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr @system_wq, align 4
  %15 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %14, ptr noundef %13) #15
  br label %16

16:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtcons_freeze(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  tail call void @virtio_reset_device(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 2
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  tail call void @virtqueue_disable_cb(ptr noundef %14) #15
  br label %15

15:                                               ; preds = %12, %7, %1
  %16 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 1
  %17 = tail call zeroext i1 @cancel_work_sync(ptr noundef %16) #15
  %18 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 2
  %19 = tail call zeroext i1 @cancel_work_sync(ptr noundef %18) #15
  %20 = load ptr, ptr %4, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.virtio_device, ptr %20, i32 0, i32 11
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 2
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  tail call void @virtqueue_disable_cb(ptr noundef %29) #15
  br label %30

30:                                               ; preds = %27, %22, %15
  %31 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %43, label %34

34:                                               ; preds = %34, %30
  %35 = phi ptr [ %41, %34 ], [ %32, %30 ]
  %36 = getelementptr inbounds %struct.port, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  tail call void @virtqueue_disable_cb(ptr noundef %37) #15
  %38 = getelementptr inbounds %struct.port, ptr %35, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  tail call void @virtqueue_disable_cb(ptr noundef %39) #15
  %40 = getelementptr inbounds %struct.port, ptr %35, i32 0, i32 18
  store i8 0, ptr %40, align 1
  tail call fastcc void @remove_port_data(ptr noundef %35)
  %41 = load ptr, ptr %35, align 4
  %42 = icmp eq ptr %41, %31
  br i1 %42, label %43, label %34

43:                                               ; preds = %34, %30
  tail call fastcc void @remove_vqs(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @virtcons_restore(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @init_vqs(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %77

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.virtio_device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i8 %12(ptr noundef %8) #15
  %14 = load ptr, ptr %9, align 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  tail call void %15(ptr noundef %8) #15
  br label %18

18:                                               ; preds = %17, %6
  %19 = and i8 %13, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21, !prof !8

21:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #15, !srcloc !23
  unreachable

22:                                               ; preds = %18
  %23 = load ptr, ptr %9, align 8
  %24 = getelementptr inbounds %struct.virtio_config_ops, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = or i8 %13, 4
  tail call void %25(ptr noundef %8, i8 noundef zeroext %26) #15
  %27 = load ptr, ptr %7, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.virtio_device, ptr %27, i32 0, i32 11
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 2
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 5
  %38 = tail call fastcc i32 @fill_queue(ptr noundef %36, ptr noundef %37)
  br label %39

39:                                               ; preds = %34, %29, %22
  %40 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %77, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 12
  %45 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 13
  br label %46

46:                                               ; preds = %74, %43
  %47 = phi ptr [ %41, %43 ], [ %75, %74 ]
  %48 = load ptr, ptr %44, align 4
  %49 = getelementptr inbounds %struct.port, ptr %47, i32 0, i32 16
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr ptr, ptr %48, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.port, ptr %47, i32 0, i32 5
  store ptr %52, ptr %53, align 4
  %54 = load ptr, ptr %45, align 4
  %55 = getelementptr ptr, ptr %54, i32 %50
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.port, ptr %47, i32 0, i32 6
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.port, ptr %47, i32 0, i32 3
  %59 = tail call fastcc i32 @fill_queue(ptr noundef %52, ptr noundef %58)
  %60 = getelementptr inbounds %struct.port, ptr %47, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %46
  %64 = load i32, ptr %49, align 4
  tail call fastcc void @__send_control_msg(ptr noundef nonnull %61, i32 noundef %64, i32 noundef 3, i32 noundef 1) #15
  br label %65

65:                                               ; preds = %63, %46
  %66 = getelementptr inbounds %struct.port, ptr %47, i32 0, i32 19
  %67 = load i8, ptr %66, align 2, !range !29
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %60, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %49, align 4
  tail call fastcc void @__send_control_msg(ptr noundef nonnull %70, i32 noundef %73, i32 noundef 6, i32 noundef 1) #15
  br label %74

74:                                               ; preds = %72, %69, %65
  %75 = load ptr, ptr %47, align 4
  %76 = icmp eq ptr %75, %40
  br i1 %76, label %77, label %46

77:                                               ; preds = %74, %39, %1
  %78 = phi i32 [ %4, %1 ], [ 0, %39 ], [ 0, %74 ]
  ret i32 %78
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_vqs(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 2
  %11 = icmp eq i64 %10, 0
  %12 = shl i32 %3, 1
  %13 = add i32 %12, 2
  %14 = select i1 %11, i32 2, i32 %13
  br label %15

15:                                               ; preds = %7, %1
  %16 = phi i32 [ 2, %1 ], [ %14, %7 ]
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 4) #15
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %24, label %19, !prof !9

19:                                               ; preds = %15
  %20 = extractvalue { i32, i1 } %17, 0
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #20
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #20
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #20
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi ptr [ %22, %19 ], [ null, %15 ]
  %26 = phi ptr [ %21, %19 ], [ null, %15 ]
  %27 = phi ptr [ %23, %19 ], [ null, %15 ]
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #15
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %30, label %32, !prof !9

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 12
  store ptr null, ptr %31, align 4
  br label %37

32:                                               ; preds = %24
  %33 = extractvalue { i32, i1 } %28, 0
  %34 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #20
  %35 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 12
  store ptr %34, ptr %35, align 4
  %36 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #20
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi ptr [ %35, %32 ], [ %31, %30 ]
  %39 = phi ptr [ %36, %32 ], [ null, %30 ]
  %40 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 13
  store ptr %39, ptr %40, align 4
  %41 = icmp ne ptr %26, null
  %42 = icmp ne ptr %25, null
  %43 = select i1 %41, i1 %42, i1 false
  %44 = icmp ne ptr %27, null
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %125

46:                                               ; preds = %37
  %47 = load ptr, ptr %38, align 4
  %48 = icmp eq ptr %47, null
  %49 = icmp eq ptr %39, null
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %125, label %51

51:                                               ; preds = %46
  store ptr @in_intr, ptr %25, align 64
  %52 = getelementptr ptr, ptr %25, i32 1
  store ptr @out_intr, ptr %52, align 4
  store ptr @.str.10, ptr %27, align 64
  %53 = getelementptr ptr, ptr %27, i32 1
  store ptr @.str.11, ptr %53, align 4
  %54 = load ptr, ptr %4, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %78, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.virtio_device, ptr %54, i32 0, i32 11
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 2
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %56
  %62 = getelementptr ptr, ptr %25, i32 2
  store ptr @control_intr, ptr %62, align 8
  %63 = getelementptr ptr, ptr %25, i32 3
  store ptr null, ptr %63, align 4
  %64 = getelementptr ptr, ptr %27, i32 2
  store ptr @.str.12, ptr %64, align 8
  %65 = getelementptr ptr, ptr %27, i32 3
  store ptr @.str.13, ptr %65, align 4
  %66 = icmp ugt i32 %3, 1
  br i1 %66, label %67, label %78

67:                                               ; preds = %67, %61
  %68 = phi i32 [ %70, %67 ], [ 2, %61 ]
  %69 = phi i32 [ %76, %67 ], [ 1, %61 ]
  %70 = add i32 %68, 2
  %71 = getelementptr ptr, ptr %25, i32 %70
  store ptr @in_intr, ptr %71, align 8
  %72 = add i32 %68, 3
  %73 = getelementptr ptr, ptr %25, i32 %72
  store ptr @out_intr, ptr %73, align 4
  %74 = getelementptr ptr, ptr %27, i32 %70
  store ptr @.str.10, ptr %74, align 8
  %75 = getelementptr ptr, ptr %27, i32 %72
  store ptr @.str.11, ptr %75, align 4
  %76 = add nuw i32 %69, 1
  %77 = icmp eq i32 %76, %3
  br i1 %77, label %78, label %67

78:                                               ; preds = %67, %61, %56, %51
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr inbounds %struct.virtio_device, ptr %79, i32 0, i32 8
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.virtio_config_ops, ptr %81, i32 0, i32 7
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 %83(ptr noundef %79, i32 noundef %16, ptr noundef nonnull %26, ptr noundef nonnull %25, ptr noundef nonnull %27, ptr noundef null, ptr noundef null) #15
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %78
  %87 = load ptr, ptr %40, align 4
  br label %125

88:                                               ; preds = %78
  %89 = load ptr, ptr %26, align 64
  %90 = load ptr, ptr %38, align 4
  store ptr %89, ptr %90, align 4
  %91 = getelementptr ptr, ptr %26, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %40, align 4
  store ptr %92, ptr %93, align 4
  %94 = load ptr, ptr %4, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %124, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.virtio_device, ptr %94, i32 0, i32 11
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 2
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %124, label %101

101:                                              ; preds = %96
  %102 = getelementptr ptr, ptr %26, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 9
  store ptr %103, ptr %104, align 4
  %105 = getelementptr ptr, ptr %26, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 10
  store ptr %106, ptr %107, align 4
  %108 = icmp ugt i32 %3, 1
  br i1 %108, label %109, label %124

109:                                              ; preds = %109, %101
  %110 = phi i32 [ %112, %109 ], [ 2, %101 ]
  %111 = phi i32 [ %122, %109 ], [ 1, %101 ]
  %112 = add i32 %110, 2
  %113 = getelementptr ptr, ptr %26, i32 %112
  %114 = load ptr, ptr %113, align 8
  %115 = load ptr, ptr %38, align 4
  %116 = getelementptr ptr, ptr %115, i32 %111
  store ptr %114, ptr %116, align 4
  %117 = add i32 %110, 3
  %118 = getelementptr ptr, ptr %26, i32 %117
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %40, align 4
  %121 = getelementptr ptr, ptr %120, i32 %111
  store ptr %119, ptr %121, align 4
  %122 = add nuw i32 %111, 1
  %123 = icmp eq i32 %122, %3
  br i1 %123, label %124, label %109

124:                                              ; preds = %109, %101, %96, %88
  tail call void @kfree(ptr noundef nonnull %27) #15
  tail call void @kfree(ptr noundef nonnull %25) #15
  tail call void @kfree(ptr noundef nonnull %26) #15
  br label %129

125:                                              ; preds = %86, %46, %37
  %126 = phi ptr [ %87, %86 ], [ %39, %46 ], [ %39, %37 ]
  %127 = phi i32 [ %84, %86 ], [ -12, %46 ], [ -12, %37 ]
  tail call void @kfree(ptr noundef %126) #15
  %128 = load ptr, ptr %38, align 4
  tail call void @kfree(ptr noundef %128) #15
  tail call void @kfree(ptr noundef %27) #15
  tail call void @kfree(ptr noundef %25) #15
  tail call void @kfree(ptr noundef %26) #15
  br label %129

129:                                              ; preds = %125, %124
  %130 = phi i32 [ %127, %125 ], [ 0, %124 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @config_work_handler(ptr noundef %0) #2 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = getelementptr i8, ptr %0, i32 40
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 2
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %7, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #15
  store i16 0, ptr %2, align 2, !annotation !11
  %13 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.virtio_config_ops, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  call void %16(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 2) #15
  %17 = load i16, ptr %2, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  store i16 0, ptr %3, align 2, !annotation !11
  %18 = load ptr, ptr %13, align 8
  %19 = getelementptr inbounds %struct.virtio_config_ops, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  call void %20(ptr noundef %5, i32 noundef 2, ptr noundef nonnull %3, i32 noundef 2) #15
  %21 = load i16, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  %22 = getelementptr i8, ptr %0, i32 24
  %23 = call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #15
  %24 = getelementptr i8, ptr %0, i32 16
  br label %25

25:                                               ; preds = %30, %12
  %26 = phi ptr [ %24, %12 ], [ %27, %30 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %24
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #15
  br label %65

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.port, ptr %27, i32 0, i32 16
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %25

34:                                               ; preds = %30
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #15
  %35 = icmp eq ptr %27, null
  br i1 %35, label %65, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.port, ptr %27, i32 0, i32 9, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %65, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.port, ptr %27, i32 0, i32 9, i32 2
  store i16 %21, ptr %41, align 4
  %42 = getelementptr inbounds %struct.port, ptr %27, i32 0, i32 9, i32 2, i32 1
  store i16 %17, ptr %42, align 2
  %43 = getelementptr inbounds %struct.port, ptr %27, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ports_device, ptr %44, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.virtio_device, ptr %46, i32 0, i32 7
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, 11
  br i1 %49, label %65, label %50

50:                                               ; preds = %40
  call void @virtio_check_driver_offered_feature(ptr noundef %46, i32 noundef 0) #15
  %51 = getelementptr inbounds %struct.virtio_device, ptr %46, i32 0, i32 11
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %37, align 4
  %57 = getelementptr inbounds %struct.port, ptr %27, i32 0, i32 9, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = insertvalue [2 x i32] undef, i32 %58, 0
  %60 = getelementptr inbounds %struct.port, ptr %27, i32 0, i32 9, i32 2, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = insertvalue [2 x i32] %59, i32 %61, 1
  %63 = getelementptr inbounds %struct.hvc_struct, ptr %56, i32 0, i32 1
  %64 = call i32 @_raw_spin_lock_irqsave(ptr noundef %63) #15
  call void @__hvc_resize(ptr noundef %56, [2 x i32] %62) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %63, i32 noundef %64) #15
  br label %65

65:                                               ; preds = %55, %50, %40, %36, %34, %29, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @control_work_handler(ptr noundef %0) #2 {
  %2 = alloca [1 x %struct.scatterlist], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !11
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = getelementptr i8, ptr %0, i32 60
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %8) #15
  %9 = call ptr @virtqueue_get_buf(ptr noundef %7, ptr noundef nonnull %4) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %201, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 40
  %13 = getelementptr i8, ptr %0, i32 32
  %14 = getelementptr i8, ptr %0, i32 52
  %15 = getelementptr i8, ptr %0, i32 56
  br label %16

16:                                               ; preds = %198, %11
  %17 = phi ptr [ %9, %11 ], [ %199, %198 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %18 = load i16, ptr %8, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  %20 = load i32, ptr %4, align 4
  %21 = getelementptr inbounds %struct.port_buffer, ptr %17, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @llvm.umin.i32(i32 %20, i32 %22)
  %24 = getelementptr inbounds %struct.port_buffer, ptr %17, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.port_buffer, ptr %17, i32 0, i32 3
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %17, align 4
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #15
  br label %29

29:                                               ; preds = %34, %16
  %30 = phi ptr [ %13, %16 ], [ %31, %34 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %13
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %28) #15
  br label %41

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %27
  br i1 %37, label %38, label %29

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %28) #15
  %40 = icmp eq ptr %31, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %33
  %42 = getelementptr inbounds %struct.virtio_console_control, ptr %26, i32 0, i32 1
  %43 = load i16, ptr %42, align 4
  %44 = icmp eq i16 %43, 1
  br i1 %44, label %54, label %182

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.virtio_console_control, ptr %26, i32 0, i32 1
  %47 = load i16, ptr %46, align 4
  switch i16 %47, label %182 [
    i16 1, label %48
    i16 2, label %63
    i16 4, label %64
    i16 5, label %74
    i16 6, label %113
    i16 7, label %151
  ]

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %182, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %39, align 4
  call fastcc void @__send_control_msg(ptr noundef nonnull %50, i32 noundef %53, i32 noundef 3, i32 noundef 1) #15
  br label %182

54:                                               ; preds = %41
  %55 = load i32, ptr %26, align 4
  %56 = load i32, ptr %14, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %15, align 4
  %60 = getelementptr inbounds %struct.virtio_device, ptr %59, i32 0, i32 6
  %61 = add i32 %56, -1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %60, ptr noundef nonnull @.str.16, i32 noundef %55, i32 noundef %61) #16
  br label %182

62:                                               ; preds = %54
  call fastcc void @add_port(ptr noundef %5, i32 noundef %55) #15
  br label %182

63:                                               ; preds = %45
  call fastcc void @unplug_port(ptr noundef nonnull %31) #15
  br label %182

64:                                               ; preds = %45
  %65 = getelementptr inbounds %struct.virtio_console_control, ptr %26, i32 0, i32 2
  %66 = load i16, ptr %65, align 2
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %182, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 9, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %182

72:                                               ; preds = %68
  %73 = call fastcc i32 @init_port_console(ptr noundef nonnull %31) #15
  call void @complete(ptr noundef nonnull @early_console_added) #15
  br label %182

74:                                               ; preds = %45
  %75 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 9, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %182, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %17, align 4
  %80 = load i32, ptr %25, align 4
  %81 = getelementptr i8, ptr %79, i32 8
  %82 = getelementptr i8, ptr %81, i32 %80
  %83 = getelementptr inbounds i8, ptr %82, i32 2
  %84 = load i16, ptr %83, align 1
  %85 = load i16, ptr %82, align 1
  %86 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 9, i32 2
  store i16 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 9, i32 2, i32 1
  store i16 %84, ptr %87, align 2
  %88 = getelementptr inbounds %struct.hvc_struct, ptr %76, i32 0, i32 9
  store i32 1, ptr %88, align 4
  %89 = load ptr, ptr %75, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %182, label %91

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.ports_device, ptr %93, i32 0, i32 8
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.virtio_device, ptr %95, i32 0, i32 7
  %97 = load i32, ptr %96, align 8
  %98 = icmp eq i32 %97, 11
  br i1 %98, label %182, label %99

99:                                               ; preds = %91
  call void @virtio_check_driver_offered_feature(ptr noundef %95, i32 noundef 0) #15
  %100 = getelementptr inbounds %struct.virtio_device, ptr %95, i32 0, i32 11
  %101 = load i64, ptr %100, align 8
  %102 = and i64 %101, 1
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %182, label %104

104:                                              ; preds = %99
  %105 = load ptr, ptr %75, align 4
  %106 = load i32, ptr %86, align 4
  %107 = insertvalue [2 x i32] undef, i32 %106, 0
  %108 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 9, i32 2, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = insertvalue [2 x i32] %107, i32 %109, 1
  %111 = getelementptr inbounds %struct.hvc_struct, ptr %105, i32 0, i32 1
  %112 = call i32 @_raw_spin_lock_irqsave(ptr noundef %111) #15
  call void @__hvc_resize(ptr noundef %105, [2 x i32] %110) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %111, i32 noundef %112) #15
  br label %182

113:                                              ; preds = %45
  %114 = getelementptr inbounds %struct.virtio_console_control, ptr %26, i32 0, i32 2
  %115 = load i16, ptr %114, align 2
  %116 = icmp ne i16 %115, 0
  %117 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 18
  %118 = zext i1 %116 to i8
  store i8 %118, ptr %117, align 1
  %119 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 13
  call void @__wake_up(ptr noundef %119, i32 noundef 1, i32 noundef 1, ptr noundef null) #15
  %120 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 4
  call void @_raw_spin_lock_irq(ptr noundef %120) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !11
  %121 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %136, label %124

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 6
  %126 = load ptr, ptr %125, align 4
  %127 = call ptr @virtqueue_get_buf(ptr noundef %126, ptr noundef nonnull %3) #15
  %128 = icmp eq ptr %127, null
  br i1 %128, label %136, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 17
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi ptr [ %127, %129 ], [ %134, %131 ]
  call fastcc void @free_buf(ptr noundef nonnull %132, i1 noundef zeroext false) #15
  store i8 0, ptr %130, align 4
  %133 = load ptr, ptr %125, align 4
  %134 = call ptr @virtqueue_get_buf(ptr noundef %133, ptr noundef nonnull %3) #15
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %131

136:                                              ; preds = %131, %124, %113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %137 = load i16, ptr %120, align 4
  %138 = add i16 %137, 1
  store i16 %138, ptr %120, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %139 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %139) #15
  %140 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 15
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 19
  %145 = load i8, ptr %144, align 2, !range !29
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  call void @kill_fasync(ptr noundef %140, i32 noundef 29, i32 noundef 2) #15
  br label %148

148:                                              ; preds = %147, %143, %136
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %149 = load i16, ptr %139, align 4
  %150 = add i16 %149, 1
  store i16 %150, ptr %139, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  br label %182

151:                                              ; preds = %45
  %152 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 14
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %182

155:                                              ; preds = %151
  %156 = load i32, ptr %24, align 4
  %157 = load i32, ptr %25, align 4
  %158 = sub i32 %156, %157
  %159 = add i32 %158, -7
  %160 = call noalias align 64 ptr @__kmalloc(i32 noundef %159, i32 noundef 3264) #20
  store ptr %160, ptr %152, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 11
  %164 = load ptr, ptr %163, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.17) #16
  br label %182

165:                                              ; preds = %155
  %166 = add i32 %158, -8
  %167 = load ptr, ptr %17, align 4
  %168 = load i32, ptr %25, align 4
  %169 = getelementptr i8, ptr %167, i32 8
  %170 = getelementptr i8, ptr %169, i32 %168
  %171 = call ptr @strncpy(ptr noundef nonnull %160, ptr noundef %170, i32 noundef %166) #15
  %172 = load ptr, ptr %152, align 4
  %173 = getelementptr i8, ptr %172, i32 %166
  store i8 0, ptr %173, align 1
  %174 = getelementptr inbounds %struct.port, ptr %31, i32 0, i32 11
  %175 = load ptr, ptr %174, align 4
  %176 = call i32 @sysfs_create_group(ptr noundef %175, ptr noundef nonnull @port_attribute_group) #15
  %177 = icmp eq i32 %176, 0
  %178 = load ptr, ptr %174, align 4
  br i1 %177, label %180, label %179

179:                                              ; preds = %165
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.18, i32 noundef %176) #16
  br label %182

180:                                              ; preds = %165
  %181 = call i32 @kobject_uevent(ptr noundef %178, i32 noundef 2) #15
  br label %182

182:                                              ; preds = %180, %179, %162, %151, %148, %104, %99, %91, %78, %74, %72, %68, %64, %63, %62, %58, %52, %48, %45, %41
  call void @_raw_spin_lock(ptr noundef %8) #15
  %183 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #15, !annotation !11
  %184 = load ptr, ptr %17, align 4
  %185 = load i32, ptr %21, align 4
  call void @sg_init_one(ptr noundef nonnull %2, ptr noundef %184, i32 noundef %185) #15
  %186 = call i32 @virtqueue_add_inbuf(ptr noundef %183, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %17, i32 noundef 2592) #15
  %187 = call zeroext i1 @virtqueue_kick(ptr noundef %183) #15
  %188 = icmp eq i32 %186, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.virtqueue, ptr %183, i32 0, i32 5
  %191 = load i32, ptr %190, align 4
  br label %192

192:                                              ; preds = %189, %182
  %193 = phi i32 [ %186, %182 ], [ %191, %189 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #15
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load ptr, ptr %15, align 4
  %197 = getelementptr inbounds %struct.virtio_device, ptr %196, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %197, ptr noundef nonnull @.str.15) #16
  call fastcc void @free_buf(ptr noundef nonnull %17, i1 noundef zeroext false)
  br label %198

198:                                              ; preds = %195, %192
  %199 = call ptr @virtqueue_get_buf(ptr noundef %7, ptr noundef nonnull %4) #15
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %16

201:                                              ; preds = %198, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %202 = load i16, ptr %8, align 4
  %203 = add i16 %202, 1
  store i16 %203, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fill_queue(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca [1 x %struct.scatterlist], align 4
  %4 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 5
  br label %6

6:                                                ; preds = %26, %2
  %7 = phi i32 [ 0, %2 ], [ %27, %26 ]
  %8 = load ptr, ptr %4, align 4
  %9 = call fastcc ptr @alloc_buf(ptr noundef %8, i32 noundef 4096, i32 noundef 0)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %6
  call void @_raw_spin_lock_irq(ptr noundef %1) #15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #15, !annotation !11
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.port_buffer, ptr %9, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  call void @sg_init_one(ptr noundef nonnull %3, ptr noundef %12, i32 noundef %14) #15
  %15 = call i32 @virtqueue_add_inbuf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %9, i32 noundef 2592) #15
  %16 = call zeroext i1 @virtqueue_kick(ptr noundef %0) #15
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, ptr %5, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi i32 [ %15, %11 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %24 = load i16, ptr %1, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %1, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  call fastcc void @free_buf(ptr noundef nonnull %9, i1 noundef zeroext true)
  br label %31

26:                                               ; preds = %20
  %27 = add i32 %7, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %28 = load i16, ptr %1, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %1, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %30 = icmp eq i32 %21, 0
  br i1 %30, label %31, label %6

31:                                               ; preds = %26, %23, %6
  %32 = phi i32 [ %21, %23 ], [ %27, %26 ], [ -12, %6 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__send_control_msg(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca [1 x %struct.scatterlist], align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !11
  %7 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.virtio_device, ptr %8, i32 0, i32 11
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 2
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %18) #15
  %19 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 11
  store i32 %1, ptr %19, align 4
  %20 = trunc i32 %2 to i16
  %21 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 11, i32 1
  store i16 %20, ptr %21, align 4
  %22 = trunc i32 %3 to i16
  %23 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 11, i32 2
  store i16 %22, ptr %23, align 2
  call void @sg_init_one(ptr noundef nonnull %5, ptr noundef %19, i32 noundef 8) #15
  %24 = call i32 @virtqueue_add_outbuf(ptr noundef %17, ptr noundef nonnull %5, i32 noundef 1, ptr noundef %19, i32 noundef 2592) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = call zeroext i1 @virtqueue_kick(ptr noundef %17) #15
  %28 = call ptr @virtqueue_get_buf(ptr noundef %17, ptr noundef nonnull %6) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %32, %26
  %31 = call zeroext i1 @virtqueue_is_broken(ptr noundef %17) #15
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !31
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !32
  %33 = call ptr @virtqueue_get_buf(ptr noundef %17, ptr noundef nonnull %6) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %30, label %35

35:                                               ; preds = %32, %30, %26, %15
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %36 = load i16, ptr %18, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  br label %38

38:                                               ; preds = %35, %10, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @add_port(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !11
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 112) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %130, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 12
  store volatile i32 1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 1
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 16
  store i32 %1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 14
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 2
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 9, i32 1
  %14 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 15
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 9, i32 3
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 19
  store i8 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 18
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 8
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 8, i32 1
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 8, i32 2
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 17
  store i8 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 12
  store i64 0, ptr %13, align 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr ptr, ptr %23, i32 %1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 5
  store ptr %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 13
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr ptr, ptr %28, i32 %1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 6
  store ptr %30, ptr %31, align 4
  %32 = tail call ptr @cdev_alloc() #15
  %33 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 10
  store ptr %32, ptr %33, align 8
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %7
  %36 = load ptr, ptr %9, align 8
  %37 = getelementptr inbounds %struct.ports_device, ptr %36, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.virtio_device, ptr %38, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.22) #16
  br label %129

40:                                               ; preds = %7
  %41 = getelementptr inbounds %struct.cdev, ptr %32, i32 0, i32 2
  store ptr @port_fops, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 14
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %43, 20
  %45 = or i32 %44, %1
  %46 = load ptr, ptr %33, align 8
  %47 = tail call i32 @cdev_add(ptr noundef %46, i32 noundef %45, i32 noundef 1) #15
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load ptr, ptr %9, align 8
  %51 = getelementptr inbounds %struct.ports_device, ptr %50, i32 0, i32 8
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.virtio_device, ptr %52, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.23, i32 noundef %47, i32 noundef %1) #16
  br label %127

54:                                               ; preds = %40
  %55 = load ptr, ptr @pdrvdata, align 4
  %56 = load ptr, ptr %9, align 8
  %57 = getelementptr inbounds %struct.ports_device, ptr %56, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.virtio_device, ptr %58, i32 0, i32 6
  %60 = load i32, ptr %58, align 8
  %61 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %55, ptr noundef %59, i32 noundef %45, ptr noundef nonnull %5, ptr noundef nonnull @.str.24, i32 noundef %60, i32 noundef %1) #15
  %62 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 11
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = ptrtoint ptr %61 to i32
  %66 = load ptr, ptr %9, align 8
  %67 = getelementptr inbounds %struct.ports_device, ptr %66, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.virtio_device, ptr %68, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.25, i32 noundef %65, i32 noundef %1) #16
  br label %127

70:                                               ; preds = %54
  %71 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 3
  store i32 0, ptr %71, align 8
  %72 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 4
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %73, ptr noundef nonnull @.str.26, ptr noundef nonnull @add_port.__key) #15
  %74 = load ptr, ptr %26, align 8
  %75 = tail call fastcc i32 @fill_queue(ptr noundef %74, ptr noundef %71)
  %76 = icmp slt i32 %75, 0
  %77 = icmp ne i32 %75, -28
  %78 = and i1 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load ptr, ptr %62, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.27) #16
  br label %122

81:                                               ; preds = %70
  %82 = load ptr, ptr %9, align 8
  %83 = getelementptr inbounds %struct.ports_device, ptr %82, i32 0, i32 8
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.virtio_device, ptr %84, i32 0, i32 7
  %86 = load i32, ptr %85, align 8
  %87 = icmp eq i32 %86, 11
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i8 1, ptr %17, align 1
  br label %99

89:                                               ; preds = %81
  %90 = icmp eq ptr %84, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.virtio_device, ptr %84, i32 0, i32 11
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 2
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91, %89
  %97 = tail call fastcc i32 @init_port_console(ptr noundef nonnull %5)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %96, %91, %88
  %100 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %100) #15
  %101 = load ptr, ptr %9, align 8
  %102 = getelementptr inbounds %struct.ports_device, ptr %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.ports_device, ptr %101, i32 0, i32 3, i32 1
  %104 = load ptr, ptr %103, align 4
  store ptr %5, ptr %103, align 4
  store ptr %102, ptr %5, align 8
  %105 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %104, ptr %105, align 4
  store volatile ptr %5, ptr %104, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %106 = load i16, ptr %100, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr %100, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %108 = load ptr, ptr %9, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %99
  %111 = load i32, ptr %10, align 8
  tail call fastcc void @__send_control_msg(ptr noundef nonnull %108, i32 noundef %111, i32 noundef 3, i32 noundef 1) #15
  %112 = load ptr, ptr %9, align 8
  br label %113

113:                                              ; preds = %110, %99
  %114 = phi ptr [ null, %99 ], [ %112, %110 ]
  %115 = getelementptr inbounds %struct.ports_device, ptr %114, i32 0, i32 8
  %116 = load ptr, ptr %115, align 4
  %117 = load i32, ptr %116, align 8
  %118 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %117, i32 noundef %1)
  %119 = load ptr, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 1), align 4
  %120 = call ptr @debugfs_create_file(ptr noundef nonnull %3, i16 noundef zeroext 292, ptr noundef %119, ptr noundef nonnull %5, ptr noundef nonnull @port_debugfs_fops) #15
  %121 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 7
  store ptr %120, ptr %121, align 8
  br label %131

122:                                              ; preds = %96, %79
  %123 = load ptr, ptr @pdrvdata, align 4
  %124 = load ptr, ptr %62, align 4
  %125 = getelementptr inbounds %struct.device, ptr %124, i32 0, i32 27
  %126 = load i32, ptr %125, align 8
  tail call void @device_destroy(ptr noundef %123, i32 noundef %126) #15
  br label %127

127:                                              ; preds = %122, %64, %49
  %128 = load ptr, ptr %33, align 8
  tail call void @cdev_del(ptr noundef %128) #15
  br label %129

129:                                              ; preds = %127, %35
  tail call void @kfree(ptr noundef nonnull %5) #15
  br label %130

130:                                              ; preds = %129, %2
  tail call fastcc void @__send_control_msg(ptr noundef %0, i32 noundef %1, i32 noundef 3, i32 noundef 0)
  br label %131

131:                                              ; preds = %130, %113
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @in_intr(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ports_device, ptr %7, i32 0, i32 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #15
  %10 = getelementptr inbounds %struct.ports_device, ptr %7, i32 0, i32 3
  br label %11

11:                                               ; preds = %20, %1
  %12 = phi ptr [ %10, %1 ], [ %13, %20 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #15
  br label %27

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.port, ptr %13, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.port, ptr %13, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %11

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.port, ptr %13, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #15
  %26 = icmp eq ptr %13, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24, %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !11
  %28 = call ptr @virtqueue_get_buf(ptr noundef %0, ptr noundef nonnull %3) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %30, %27
  %31 = phi ptr [ %32, %30 ], [ %28, %27 ]
  call fastcc void @free_buf(ptr noundef nonnull %31, i1 noundef zeroext false) #15
  %32 = call ptr @virtqueue_get_buf(ptr noundef %0, ptr noundef nonnull %3) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %30

34:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %86

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.port, ptr %13, i32 0, i32 3
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !11
  %38 = getelementptr inbounds %struct.port, ptr %13, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load ptr, ptr %25, align 4
  %43 = call ptr @virtqueue_get_buf(ptr noundef %42, ptr noundef nonnull %2) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %2, align 4
  %47 = getelementptr inbounds %struct.port_buffer, ptr %43, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = call i32 @llvm.umin.i32(i32 %46, i32 %48) #15
  %50 = getelementptr inbounds %struct.port_buffer, ptr %43, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.port_buffer, ptr %43, i32 0, i32 3
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.port, ptr %13, i32 0, i32 8, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %46
  store i32 %54, ptr %52, align 4
  br label %55

55:                                               ; preds = %45, %41, %35
  %56 = phi ptr [ %39, %35 ], [ %43, %45 ], [ null, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  store ptr %56, ptr %38, align 4
  %57 = getelementptr inbounds %struct.port, ptr %13, i32 0, i32 19
  %58 = load i8, ptr %57, align 2, !range !29
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.port, ptr %13, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ports_device, ptr %62, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.virtio_device, ptr %64, i32 0, i32 7
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, 11
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  call fastcc void @discard_port_data(ptr noundef nonnull %13)
  br label %69

69:                                               ; preds = %68, %60, %55
  %70 = getelementptr inbounds %struct.port, ptr %13, i32 0, i32 15
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i8, ptr %57, align 2, !range !29
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  call void @kill_fasync(ptr noundef %70, i32 noundef 29, i32 noundef 2) #15
  br label %77

77:                                               ; preds = %76, %73, %69
  call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #15
  %78 = getelementptr inbounds %struct.port, ptr %13, i32 0, i32 13
  call void @__wake_up(ptr noundef %78, i32 noundef 1, i32 noundef 1, ptr noundef null) #15
  %79 = getelementptr inbounds %struct.port, ptr %13, i32 0, i32 9, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = call i32 @hvc_poll(ptr noundef nonnull %80) #15
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  call void @hvc_kick() #15
  br label %86

86:                                               ; preds = %85, %82, %77, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @out_intr(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ports_device, ptr %6, i32 0, i32 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #15
  %9 = getelementptr inbounds %struct.ports_device, ptr %6, i32 0, i32 3
  br label %10

10:                                               ; preds = %19, %1
  %11 = phi ptr [ %9, %1 ], [ %12, %19 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #15
  br label %25

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.port, ptr %12, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.port, ptr %12, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %10

23:                                               ; preds = %19, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #15
  %24 = icmp eq ptr %12, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %23, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !11
  %26 = call ptr @virtqueue_get_buf(ptr noundef %0, ptr noundef nonnull %2) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %28, %25
  %29 = phi ptr [ %30, %28 ], [ %26, %25 ]
  call fastcc void @free_buf(ptr noundef nonnull %29, i1 noundef zeroext false) #15
  %30 = call ptr @virtqueue_get_buf(ptr noundef %0, ptr noundef nonnull %2) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %28

32:                                               ; preds = %28, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %35

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.port, ptr %12, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %34, i32 noundef 1, i32 noundef 1, ptr noundef null) #15
  br label %35

35:                                               ; preds = %33, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @control_intr(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.virtqueue, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ports_device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr @system_wq, align 4
  %8 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %6) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @discard_port_data(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.scatterlist], align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !11
  %9 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = call ptr @virtqueue_get_buf(ptr noundef %14, ptr noundef nonnull %4) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %4, align 4
  %19 = getelementptr inbounds %struct.port_buffer, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @llvm.umin.i32(i32 %18, i32 %20) #15
  %22 = getelementptr inbounds %struct.port_buffer, ptr %15, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.port_buffer, ptr %15, i32 0, i32 3
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 8, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %18
  store i32 %26, ptr %24, align 4
  br label %28

27:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %77

28:                                               ; preds = %17, %8
  %29 = phi ptr [ %15, %17 ], [ %10, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  %30 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 8, i32 2
  %31 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 5
  %32 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 8, i32 1
  br label %33

33:                                               ; preds = %63, %28
  %34 = phi i32 [ 0, %28 ], [ %59, %63 ]
  %35 = phi ptr [ %29, %28 ], [ %61, %63 ]
  %36 = getelementptr inbounds %struct.port_buffer, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.port_buffer, ptr %35, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %37, %39
  %41 = load i32, ptr %30, align 4
  %42 = add i32 %40, %41
  store i32 %42, ptr %30, align 4
  %43 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #15, !annotation !11
  %44 = load ptr, ptr %35, align 4
  %45 = getelementptr inbounds %struct.port_buffer, ptr %35, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  call void @sg_init_one(ptr noundef nonnull %3, ptr noundef %44, i32 noundef %46) #15
  %47 = call i32 @virtqueue_add_inbuf(ptr noundef %43, ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %35, i32 noundef 2592) #15
  %48 = call zeroext i1 @virtqueue_kick(ptr noundef %43) #15
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %33
  %51 = getelementptr inbounds %struct.virtqueue, ptr %43, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %33
  %54 = phi i32 [ %47, %33 ], [ %52, %50 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = add i32 %34, 1
  call fastcc void @free_buf(ptr noundef nonnull %35, i1 noundef zeroext false)
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i32 [ %57, %56 ], [ %34, %53 ]
  store ptr null, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !11
  %60 = load ptr, ptr %31, align 4
  %61 = call ptr @virtqueue_get_buf(ptr noundef %60, ptr noundef nonnull %2) #15
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %2, align 4
  %65 = getelementptr inbounds %struct.port_buffer, ptr %61, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = call i32 @llvm.umin.i32(i32 %64, i32 %66) #15
  %68 = getelementptr inbounds %struct.port_buffer, ptr %61, i32 0, i32 2
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.port_buffer, ptr %61, i32 0, i32 3
  store i32 0, ptr %69, align 4
  %70 = load i32, ptr %32, align 4
  %71 = add i32 %70, %64
  store i32 %71, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %33

72:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %73 = icmp eq i32 %59, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 11
  %76 = load ptr, ptr %75, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.14, i32 noundef %59) #16
  br label %77

77:                                               ; preds = %74, %72, %27, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hvc_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hvc_kick() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unplug_port(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ports_device, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.ports_device, ptr %9, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %11 = load i16, ptr %10, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %13 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #15
  %14 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 19
  %15 = load i8, ptr %14, align 2, !range !29
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @kill_fasync(ptr noundef %18, i32 noundef 29, i32 noundef 2) #15
  br label %22

22:                                               ; preds = %21, %17
  store i8 0, ptr %14, align 2
  %23 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 18
  store i8 0, ptr %23, align 1
  %24 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %24, i32 noundef 1, i32 noundef 1, ptr noundef null) #15
  br label %25

25:                                               ; preds = %22, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %26 = load i16, ptr %13, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %28 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 9, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pdrvdata_lock) #15
  %32 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 9
  %33 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 9, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %37 = load i16, ptr @pdrvdata_lock, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr @pdrvdata_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %39 = load ptr, ptr %28, align 4
  %40 = tail call i32 @hvc_remove(ptr noundef %39) #15
  br label %41

41:                                               ; preds = %31, %25
  tail call fastcc void @remove_port_data(ptr noundef %0)
  store ptr null, ptr %2, align 4
  %42 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  tail call void @sysfs_remove_group(ptr noundef %43, ptr noundef nonnull @port_attribute_group) #15
  %44 = load ptr, ptr @pdrvdata, align 4
  %45 = load ptr, ptr %42, align 4
  %46 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 27
  %47 = load i32, ptr %46, align 8
  tail call void @device_destroy(ptr noundef %44, i32 noundef %47) #15
  %48 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 10
  %49 = load ptr, ptr %48, align 4
  tail call void @cdev_del(ptr noundef %49) #15
  %50 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 7
  %51 = load ptr, ptr %50, align 4
  tail call void @debugfs_remove(ptr noundef %51) #15
  %52 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 14
  %53 = load ptr, ptr %52, align 4
  tail call void @kfree(ptr noundef %53) #15
  %54 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #15, !srcloc !19
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #15, !srcloc !34
  %56 = extractvalue { i32, i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %41
  %59 = icmp sgt i32 %56, 0
  br i1 %59, label %62, label %60, !prof !8

60:                                               ; preds = %58
  tail call void @refcount_warn_saturate(ptr noundef %54, i32 noundef 3) #15
  br label %62

61:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !35
  tail call void @kfree(ptr noundef %0) #15
  br label %62

62:                                               ; preds = %61, %60, %58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_port_console(ptr noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 3), align 4
  %3 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 9, i32 3
  store i32 %2, ptr %3, align 4
  %4 = tail call ptr @hvc_alloc(i32 noundef %2, i32 noundef 0, ptr noundef nonnull @hv_ops, i32 noundef 4096) #15
  %5 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 9, i32 1
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = ptrtoint ptr %4 to i32
  %9 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.19, i32 noundef %8) #16
  store ptr null, ptr %5, align 4
  br label %30

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pdrvdata_lock) #15
  %13 = load i32, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 3), align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 3), align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4, i32 1), align 4
  store ptr %12, ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4, i32 1), align 4
  store ptr getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 4), ptr %12, align 4
  %16 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 9, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %17 = load i16, ptr @pdrvdata_lock, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr @pdrvdata_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %19 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 19
  store i8 1, ptr %19, align 2
  %20 = load ptr, ptr @early_put_chars, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  store ptr null, ptr @early_put_chars, align 4
  br label %23

23:                                               ; preds = %22, %11
  %24 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 16
  %29 = load i32, ptr %28, align 4
  tail call fastcc void @__send_control_msg(ptr noundef nonnull %25, i32 noundef %29, i32 noundef 6, i32 noundef 1) #15
  br label %30

30:                                               ; preds = %27, %23, %7
  %31 = phi i32 [ %8, %7 ], [ 0, %23 ], [ 0, %27 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hvc_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @remove_port_data(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #15
  tail call fastcc void @discard_port_data(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %4 = load i16, ptr %3, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %6 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !11
  %7 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = call ptr @virtqueue_get_buf(ptr noundef %12, ptr noundef nonnull %2) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 17
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi ptr [ %13, %15 ], [ %20, %17 ]
  call fastcc void @free_buf(ptr noundef nonnull %18, i1 noundef zeroext false) #15
  store i8 0, ptr %16, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = call ptr @virtqueue_get_buf(ptr noundef %19, ptr noundef nonnull %2) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17

22:                                               ; preds = %17, %10, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %23 = load i16, ptr %6, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hvc_alloc(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_port_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #13 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.21, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_buf(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  tail call fastcc void @reclaim_dma_bufs()
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 20) #15
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %7 = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 36) #15
  %8 = select i1 %5, i32 -1, i32 %7
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.port_buffer, ptr %9, i32 0, i32 7
  store i32 %2, ptr %12, align 32
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.port_buffer, ptr %9, i32 0, i32 5
  store ptr null, ptr %15, align 4
  store ptr null, ptr %9, align 64
  br label %41

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 11
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.port_buffer, ptr %9, i32 0, i32 5
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = tail call ptr @get_device(ptr noundef nonnull %22) #15
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr inbounds %struct.port_buffer, ptr %9, i32 0, i32 4
  %29 = tail call ptr @dma_alloc_attrs(ptr noundef %27, i32 noundef %1, ptr noundef %28, i32 noundef 3264, i32 noundef 0) #15
  br label %33

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.port_buffer, ptr %9, i32 0, i32 5
  store ptr null, ptr %31, align 4
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1, i32 noundef 3264) #20
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi ptr [ %29, %25 ], [ %32, %30 ]
  store ptr %34, ptr %9, align 64
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.port_buffer, ptr %9, i32 0, i32 2
  store i32 0, ptr %37, align 8
  %38 = getelementptr inbounds %struct.port_buffer, ptr %9, i32 0, i32 3
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.port_buffer, ptr %9, i32 0, i32 1
  store i32 %1, ptr %39, align 4
  br label %41

40:                                               ; preds = %33, %20
  tail call void @kfree(ptr noundef nonnull %9) #15
  br label %41

41:                                               ; preds = %40, %36, %14, %3
  %42 = phi ptr [ %9, %14 ], [ %9, %36 ], [ null, %3 ], [ null, %40 ]
  ret ptr %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdev_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @port_fops_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wait_queue_entry, align 4
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.port, ptr %9, i32 0, i32 19
  %11 = load i8, ptr %10, align 2, !range !29
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %103, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.port, ptr %9, i32 0, i32 3
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !11
  %16 = getelementptr inbounds %struct.port, ptr %9, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.port, ptr %9, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = call ptr @virtqueue_get_buf(ptr noundef %21, ptr noundef nonnull %6) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %6, align 4
  %26 = getelementptr inbounds %struct.port_buffer, ptr %22, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @llvm.umin.i32(i32 %25, i32 %27) #15
  %29 = getelementptr inbounds %struct.port_buffer, ptr %22, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.port_buffer, ptr %22, i32 0, i32 3
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.port, ptr %9, i32 0, i32 8, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %25
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %24, %13
  %35 = phi ptr [ %22, %24 ], [ %17, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  store ptr %35, ptr %16, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #15
  br label %73

36:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  store ptr null, ptr %16, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #15
  %37 = getelementptr inbounds %struct.port, ptr %9, i32 0, i32 18
  %38 = load i8, ptr %37, align 1, !range !29
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %103, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 2048
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %103

45:                                               ; preds = %40
  %46 = call fastcc zeroext i1 @will_read_block(ptr noundef %9)
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !11
  call void @init_wait_entry(ptr noundef nonnull %7, i32 noundef 0) #15
  %48 = getelementptr inbounds %struct.port, ptr %9, i32 0, i32 13
  %49 = call i32 @prepare_to_wait_event(ptr noundef %48, ptr noundef nonnull %7, i32 noundef 1) #15
  %50 = call fastcc zeroext i1 @will_read_block(ptr noundef %9)
  br i1 %50, label %51, label %70

51:                                               ; preds = %67, %47
  %52 = phi i32 [ %68, %67 ], [ %49, %47 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = tail call ptr @llvm.thread.pointer() #15
  %56 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, 1073741824
  store i32 %58, ptr %56, align 4
  call void @schedule() #15
  %59 = load i32, ptr %56, align 4
  %60 = and i32 %59, -1073741825
  store i32 %60, ptr %56, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !36
  %61 = load volatile i32, ptr @system_freezing_cnt, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63, !prof !8

63:                                               ; preds = %54
  %64 = call zeroext i1 @freezing_slow_path(ptr noundef %55) #15
  br i1 %64, label %65, label %67, !prof !9

65:                                               ; preds = %63
  %66 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #15
  br label %67

67:                                               ; preds = %65, %63, %54
  %68 = call i32 @prepare_to_wait_event(ptr noundef %48, ptr noundef nonnull %7, i32 noundef 1) #15
  %69 = call fastcc zeroext i1 @will_read_block(ptr noundef %9)
  br i1 %69, label %51, label %70

70:                                               ; preds = %67, %47
  call void @finish_wait(ptr noundef %48, ptr noundef nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #15
  br label %73

71:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #15
  %72 = icmp slt i32 %52, 0
  br i1 %72, label %103, label %73

73:                                               ; preds = %71, %70, %45, %34
  %74 = load i8, ptr %10, align 2, !range !29
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %103, label %76

76:                                               ; preds = %73
  %77 = call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !11
  %78 = load ptr, ptr %16, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.port, ptr %9, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = call ptr @virtqueue_get_buf(ptr noundef %82, ptr noundef nonnull %5) #15
  %84 = icmp eq ptr %83, null
  br i1 %84, label %97, label %85

85:                                               ; preds = %80
  %86 = load i32, ptr %5, align 4
  %87 = getelementptr inbounds %struct.port_buffer, ptr %83, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = call i32 @llvm.umin.i32(i32 %86, i32 %88) #15
  %90 = getelementptr inbounds %struct.port_buffer, ptr %83, i32 0, i32 2
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.port_buffer, ptr %83, i32 0, i32 3
  store i32 0, ptr %91, align 4
  %92 = getelementptr inbounds %struct.port, ptr %9, i32 0, i32 8, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, %86
  store i32 %94, ptr %92, align 4
  br label %95

95:                                               ; preds = %85, %76
  %96 = phi ptr [ %83, %85 ], [ %78, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  store ptr %96, ptr %16, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %77) #15
  br label %101

97:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  store ptr null, ptr %16, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %77) #15
  %98 = getelementptr inbounds %struct.port, ptr %9, i32 0, i32 18
  %99 = load i8, ptr %98, align 1, !range !29
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97, %95
  %102 = call fastcc i32 @fill_readbuf(ptr noundef %9, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  br label %103

103:                                              ; preds = %101, %97, %73, %71, %40, %36, %4
  %104 = phi i32 [ %102, %101 ], [ -19, %4 ], [ 0, %36 ], [ -11, %40 ], [ %52, %71 ], [ -19, %73 ], [ 0, %97 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @port_fops_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca [1 x %struct.scatterlist], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !11
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2048
  %13 = icmp ne i32 %12, 0
  %14 = tail call fastcc i32 @wait_port_writable(ptr noundef %9, i1 noundef zeroext %13)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @llvm.umin.i32(i32 %2, i32 32768)
  %18 = getelementptr inbounds %struct.port, ptr %9, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ports_device, ptr %19, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = tail call fastcc ptr @alloc_buf(ptr noundef %21, i32 noundef %17, i32 noundef 0)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr %22, align 4
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %17, i32 -1090519040) #17, !srcloc !37
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37, !prof !8

29:                                               ; preds = %24
  %30 = tail call ptr @llvm.thread.pointer() #15
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %31) #18, !srcloc !13
  %33 = and i32 %32, -13
  %34 = or i32 %33, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #15, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !15
  %35 = tail call i32 @arm_copy_from_user(ptr noundef %25, ptr noundef %1, i32 noundef %17) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #15, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !8

37:                                               ; preds = %29, %24
  %38 = phi i32 [ %35, %29 ], [ %17, %24 ]
  %39 = sub i32 %17, %38
  %40 = getelementptr i8, ptr %25, i32 %39
  tail call void @llvm.memset.p0.i32(ptr align 1 %40, i8 0, i32 %38, i1 false) #15
  br label %45

41:                                               ; preds = %29
  %42 = load ptr, ptr %22, align 4
  call void @sg_init_one(ptr noundef nonnull %5, ptr noundef %42, i32 noundef %17) #15
  %43 = call fastcc i32 @__send_to_port(ptr noundef %9, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %17, ptr noundef nonnull %22, i1 noundef zeroext true)
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %37
  %46 = phi i32 [ %43, %41 ], [ -14, %37 ]
  call fastcc void @free_buf(ptr noundef nonnull %22, i1 noundef zeroext true)
  br label %47

47:                                               ; preds = %45, %41, %16, %7, %4
  %48 = phi i32 [ 0, %4 ], [ %14, %7 ], [ -12, %16 ], [ %46, %45 ], [ %43, %41 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @port_fops_poll(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.port, ptr %4, i32 0, i32 13
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #15
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.port, ptr %4, i32 0, i32 19
  %15 = load i8, ptr %14, align 2, !range !29
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc zeroext i1 @will_read_block(ptr noundef %4)
  %19 = select i1 %18, i32 0, i32 65
  %20 = tail call fastcc zeroext i1 @will_write_block(ptr noundef %4)
  %21 = or i32 %19, 4
  %22 = select i1 %20, i32 %19, i32 %21
  %23 = getelementptr inbounds %struct.port, ptr %4, i32 0, i32 18
  %24 = load i8, ptr %23, align 1, !range !29
  %25 = icmp eq i8 %24, 0
  %26 = or i32 %22, 16
  %27 = select i1 %25, i32 %26, i32 %22
  br label %28

28:                                               ; preds = %17, %13
  %29 = phi i32 [ %27, %17 ], [ 16, %13 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @port_fops_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cdev, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pdrvdata_lock) #15
  br label %9

9:                                                ; preds = %39, %2
  %10 = phi ptr [ getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2), %2 ], [ %11, %39 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, getelementptr inbounds (%struct.ports_driver_data, ptr @pdrvdata, i32 0, i32 2)
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %8) #15
  br label %95

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ports_device, ptr %11, i32 0, i32 4
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #15
  %17 = getelementptr inbounds %struct.ports_device, ptr %11, i32 0, i32 3
  br label %18

18:                                               ; preds = %22, %14
  %19 = phi ptr [ %17, %14 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %17
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.port, ptr %20, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cdev, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %28, label %18

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.port, ptr %20, i32 0, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #15, !srcloc !19
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #15, !srcloc !38
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33, !prof !9

33:                                               ; preds = %28
  %34 = add i32 %31, 1
  %35 = or i32 %34, %31
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %39, label %37, !prof !8

37:                                               ; preds = %33, %28
  %38 = phi i32 [ 2, %28 ], [ 1, %33 ]
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef %38) #15
  br label %39

39:                                               ; preds = %37, %33, %18
  %40 = phi ptr [ %20, %33 ], [ %20, %37 ], [ null, %18 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %9, label %42

42:                                               ; preds = %39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pdrvdata_lock, i32 noundef %8) #15
  %43 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %40, ptr %43, align 8
  %44 = getelementptr inbounds %struct.port, ptr %40, i32 0, i32 9, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %85

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.port, ptr %40, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %48) #15
  %49 = getelementptr inbounds %struct.port, ptr %40, i32 0, i32 19
  %50 = load i8, ptr %49, align 2, !range !29
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %53 = load i16, ptr %48, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %48, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  br label %85

55:                                               ; preds = %47
  store i8 1, ptr %49, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %56 = load i16, ptr %48, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %48, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %58 = getelementptr inbounds %struct.port, ptr %40, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %58) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !11
  %59 = getelementptr inbounds %struct.port, ptr %40, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %74, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.port, ptr %40, i32 0, i32 6
  %64 = load ptr, ptr %63, align 4
  %65 = call ptr @virtqueue_get_buf(ptr noundef %64, ptr noundef nonnull %3) #15
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.port, ptr %40, i32 0, i32 17
  br label %69

69:                                               ; preds = %69, %67
  %70 = phi ptr [ %65, %67 ], [ %72, %69 ]
  call fastcc void @free_buf(ptr noundef nonnull %70, i1 noundef zeroext false) #15
  store i8 0, ptr %68, align 4
  %71 = load ptr, ptr %63, align 4
  %72 = call ptr @virtqueue_get_buf(ptr noundef %71, ptr noundef nonnull %3) #15
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %69

74:                                               ; preds = %69, %62, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %75 = load i16, ptr %58, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %58, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %77 = call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #15
  %78 = load ptr, ptr %43, align 8
  %79 = getelementptr inbounds %struct.port, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %95, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.port, ptr %78, i32 0, i32 16
  %84 = load i32, ptr %83, align 4
  call fastcc void @__send_control_msg(ptr noundef nonnull %80, i32 noundef %84, i32 noundef 6, i32 noundef 1) #15
  br label %95

85:                                               ; preds = %52, %42
  %86 = phi i32 [ -16, %52 ], [ -6, %42 ]
  %87 = getelementptr inbounds %struct.port, ptr %40, i32 0, i32 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #15, !srcloc !19
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #15, !srcloc !34
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = icmp sgt i32 %89, 0
  br i1 %92, label %95, label %93, !prof !8

93:                                               ; preds = %91
  tail call void @refcount_warn_saturate(ptr noundef %87, i32 noundef 3) #15
  br label %95

94:                                               ; preds = %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !35
  tail call void @kfree(ptr noundef nonnull %40) #15
  br label %95

95:                                               ; preds = %94, %93, %91, %82, %74, %13
  %96 = phi i32 [ -6, %13 ], [ 0, %74 ], [ 0, %82 ], [ %86, %91 ], [ %86, %93 ], [ %86, %94 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @port_fops_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  tail call fastcc void @__send_control_msg(ptr noundef nonnull %7, i32 noundef %11, i32 noundef 6, i32 noundef 0) #15
  br label %12

12:                                               ; preds = %9, %2
  %13 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #15
  %14 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 19
  store i8 0, ptr %14, align 2
  tail call fastcc void @discard_port_data(ptr noundef %5)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %15 = load i16, ptr %13, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %17 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %17) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !11
  %18 = load ptr, ptr %6, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = call ptr @virtqueue_get_buf(ptr noundef %22, ptr noundef nonnull %3) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 17
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi ptr [ %23, %25 ], [ %30, %27 ]
  call fastcc void @free_buf(ptr noundef nonnull %28, i1 noundef zeroext false) #15
  store i8 0, ptr %26, align 4
  %29 = load ptr, ptr %21, align 4
  %30 = call ptr @virtqueue_get_buf(ptr noundef %29, ptr noundef nonnull %3) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %27

32:                                               ; preds = %27, %20, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %33 = load i16, ptr %17, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  call fastcc void @reclaim_dma_bufs()
  %35 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 12
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !33
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #15, !srcloc !19
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #15, !srcloc !34
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %43, label %41, !prof !8

41:                                               ; preds = %39
  call void @refcount_warn_saturate(ptr noundef %35, i32 noundef 3) #15
  br label %43

42:                                               ; preds = %32
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !35
  call void @kfree(ptr noundef %5) #15
  br label %43

43:                                               ; preds = %42, %41, %39
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @port_fops_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 15
  %7 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %6) #15
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @port_fops_splice_write(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca %struct.sg_list, align 4
  %7 = alloca %struct.splice_desc, align 8
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #15
  %10 = getelementptr inbounds i8, ptr %7, i32 32
  store i64 0, ptr %10, align 8, !annotation !11
  store i32 %3, ptr %7, align 8
  %11 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 2
  store i32 %4, ptr %12, align 8
  %13 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 3
  store ptr %6, ptr %13, align 4
  %14 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 4
  %15 = load i64, ptr %2, align 8
  store i64 %15, ptr %14, align 8
  %16 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 5
  store ptr null, ptr %16, align 8
  %17 = getelementptr inbounds %struct.splice_desc, ptr %7, i32 0, i32 6
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.port, ptr %9, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.virtqueue, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.virtio_device, ptr %21, i32 0, i32 7
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 11
  br i1 %24, label %64, label %25

25:                                               ; preds = %5
  call void @pipe_lock(ptr noundef %0) #15
  %26 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %62, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 2048
  %35 = icmp ne i32 %34, 0
  %36 = call fastcc i32 @wait_port_writable(ptr noundef %9, i1 noundef zeroext %35)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %31
  %39 = load i32, ptr %26, align 4
  %40 = load i32, ptr %28, align 4
  %41 = sub i32 %39, %40
  %42 = getelementptr inbounds %struct.port, ptr %9, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ports_device, ptr %43, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = call fastcc ptr @alloc_buf(ptr noundef %45, i32 noundef 0, i32 noundef %41)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %38
  store i32 0, ptr %6, align 4
  %49 = getelementptr inbounds %struct.sg_list, ptr %6, i32 0, i32 2
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.sg_list, ptr %6, i32 0, i32 1
  store i32 %41, ptr %50, align 4
  %51 = getelementptr inbounds %struct.port_buffer, ptr %46, i32 0, i32 8
  %52 = getelementptr inbounds %struct.sg_list, ptr %6, i32 0, i32 3
  store ptr %51, ptr %52, align 4
  call void @sg_init_table(ptr noundef %51, i32 noundef %41) #15
  %53 = call i32 @__splice_from_pipe(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull @pipe_to_sg) #15
  call void @pipe_unlock(ptr noundef %0) #15
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %60, !prof !8

55:                                               ; preds = %48
  %56 = load i32, ptr %6, align 4
  %57 = load i32, ptr %49, align 4
  %58 = call fastcc i32 @__send_to_port(ptr noundef %9, ptr noundef %51, i32 noundef %56, i32 noundef %57, ptr noundef nonnull %46, i1 noundef zeroext true)
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %64, !prof !9

60:                                               ; preds = %55, %48
  %61 = phi i32 [ %58, %55 ], [ %53, %48 ]
  call fastcc void @free_buf(ptr noundef nonnull %46, i1 noundef zeroext true)
  br label %64

62:                                               ; preds = %38, %31, %25
  %63 = phi i32 [ 0, %25 ], [ %36, %31 ], [ -12, %38 ]
  call void @pipe_unlock(ptr noundef %0) #15
  br label %64

64:                                               ; preds = %62, %60, %55, %5
  %65 = phi i32 [ %63, %62 ], [ -22, %5 ], [ %61, %60 ], [ %58, %55 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @will_read_block(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 19
  %4 = load i8, ptr %3, align 2, !range !29
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 3
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !11
  %9 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = call ptr @virtqueue_get_buf(ptr noundef %14, ptr noundef nonnull %2) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %2, align 4
  %19 = getelementptr inbounds %struct.port_buffer, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @llvm.umin.i32(i32 %18, i32 %20) #15
  %22 = getelementptr inbounds %struct.port_buffer, ptr %15, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.port_buffer, ptr %15, i32 0, i32 3
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 8, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %18
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %17, %6
  %28 = phi ptr [ %15, %17 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  store ptr %28, ptr %9, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #15
  br label %33

29:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  store ptr null, ptr %9, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #15
  %30 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 18
  %31 = load i8, ptr %30, align 1, !range !29
  %32 = icmp ne i8 %31, 0
  br label %33

33:                                               ; preds = %29, %27, %1
  %34 = phi i1 [ false, %1 ], [ %32, %29 ], [ false, %27 ]
  ret i1 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wait_port_writable(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = tail call fastcc zeroext i1 @will_write_block(ptr noundef %0)
  br i1 %4, label %5, label %34

5:                                                ; preds = %2
  br i1 %1, label %39, label %6

6:                                                ; preds = %5
  %7 = tail call fastcc zeroext i1 @will_write_block(ptr noundef %0)
  br i1 %7, label %8, label %34

8:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !11
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #15
  %9 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 13
  %10 = call i32 @prepare_to_wait_event(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 1) #15
  %11 = call fastcc zeroext i1 @will_write_block(ptr noundef %0)
  br i1 %11, label %12, label %31

12:                                               ; preds = %28, %8
  %13 = phi i32 [ %29, %28 ], [ %10, %8 ]
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #15
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 1073741824
  store i32 %19, ptr %17, align 4
  call void @schedule() #15
  %20 = load i32, ptr %17, align 4
  %21 = and i32 %20, -1073741825
  store i32 %21, ptr %17, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !36
  %22 = load volatile i32, ptr @system_freezing_cnt, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !8

24:                                               ; preds = %15
  %25 = call zeroext i1 @freezing_slow_path(ptr noundef %16) #15
  br i1 %25, label %26, label %28, !prof !9

26:                                               ; preds = %24
  %27 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #15
  br label %28

28:                                               ; preds = %26, %24, %15
  %29 = call i32 @prepare_to_wait_event(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 1) #15
  %30 = call fastcc zeroext i1 @will_write_block(ptr noundef %0)
  br i1 %30, label %12, label %31

31:                                               ; preds = %28, %8
  call void @finish_wait(ptr noundef %9, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  br label %34

32:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  %33 = icmp slt i32 %13, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %32, %31, %6, %2
  %35 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 19
  %36 = load i8, ptr %35, align 2, !range !29
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i32 -19, i32 0
  br label %39

39:                                               ; preds = %34, %32, %5
  %40 = phi i32 [ -11, %5 ], [ %13, %32 ], [ %38, %34 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @will_write_block(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 19
  %4 = load i8, ptr %3, align 2, !range !29
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 18
  %8 = load i8, ptr %7, align 1, !range !29
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !11
  %12 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = call ptr @virtqueue_get_buf(ptr noundef %17, ptr noundef nonnull %2) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 17
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi ptr [ %18, %20 ], [ %25, %22 ]
  call fastcc void @free_buf(ptr noundef nonnull %23, i1 noundef zeroext false) #15
  store i8 0, ptr %21, align 4
  %24 = load ptr, ptr %16, align 4
  %25 = call ptr @virtqueue_get_buf(ptr noundef %24, ptr noundef nonnull %2) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22

27:                                               ; preds = %22, %15, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %28 = getelementptr inbounds %struct.port, ptr %0, i32 0, i32 17
  %29 = load i8, ptr %28, align 4, !range !29
  %30 = icmp ne i8 %29, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %31 = load i16, ptr %11, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  br label %33

33:                                               ; preds = %27, %6, %1
  %34 = phi i1 [ %30, %27 ], [ false, %1 ], [ true, %6 ]
  ret i1 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__splice_from_pipe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pipe_to_sg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.splice_desc, ptr %2, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sg_list, ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %106, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.pipe_buffer, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pipe_buf_operations, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %56, label %16

16:                                               ; preds = %10
  %17 = tail call zeroext i1 %14(ptr noundef %0, ptr noundef %1) #15
  br i1 %17, label %18, label %56

18:                                               ; preds = %16
  %19 = load ptr, ptr %1, align 4
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !8

24:                                               ; preds = %18
  %25 = add i32 %21, -1
  br label %28

26:                                               ; preds = %18
  %27 = ptrtoint ptr %19 to i32
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = inttoptr i32 %29 to ptr
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #15, !srcloc !19
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #15, !srcloc !39
  %33 = load ptr, ptr %1, align 4
  tail call void @unlock_page(ptr noundef %33) #15
  %34 = load ptr, ptr %1, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = and i32 %35, 3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !8

38:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #15, !srcloc !40
  unreachable

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.pipe_buffer, ptr %1, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.sg_list, ptr %5, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %5, align 4
  %45 = getelementptr %struct.scatterlist, ptr %43, i32 %44
  %46 = getelementptr inbounds %struct.pipe_buffer, ptr %1, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.splice_desc, ptr %2, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = tail call i32 @llvm.umin.i32(i32 %47, i32 %49)
  %51 = load i32, ptr %45, align 4
  %52 = and i32 %51, 3
  %53 = or i32 %52, %35
  store i32 %53, ptr %45, align 4
  %54 = getelementptr %struct.scatterlist, ptr %43, i32 %44, i32 1
  store i32 %41, ptr %54, align 4
  %55 = getelementptr %struct.scatterlist, ptr %43, i32 %44, i32 2
  store i32 %50, ptr %55, align 4
  br label %99

56:                                               ; preds = %16, %10
  %57 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  %58 = icmp eq ptr %57, null
  br i1 %58, label %106, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.splice_desc, ptr %2, i32 0, i32 4
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 4095
  %64 = getelementptr inbounds %struct.splice_desc, ptr %2, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %63, %65
  %67 = icmp ugt i32 %66, 4096
  %68 = sub nuw nsw i32 4096, %63
  %69 = select i1 %67, i32 %68, i32 %65
  %70 = load ptr, ptr %1, align 4
  %71 = load i32, ptr @pgprot_kernel, align 4
  %72 = or i32 %71, 512
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !41
  %73 = tail call ptr @llvm.thread.pointer() #15
  %74 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 149
  %75 = load i32, ptr %74, align 8
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !42
  %77 = tail call ptr @__kmap_local_page_prot(ptr noundef %70, i32 noundef %72) #15
  %78 = tail call ptr @page_address(ptr noundef nonnull %57) #15
  %79 = getelementptr i8, ptr %78, i32 %63
  %80 = getelementptr inbounds %struct.pipe_buffer, ptr %1, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i8, ptr %77, i32 %81
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %79, ptr align 1 %82, i32 %69, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %77) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !43
  %83 = load i32, ptr %74, align 8
  %84 = add i32 %83, -1
  store i32 %84, ptr %74, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !44
  %85 = ptrtoint ptr %57 to i32
  %86 = and i32 %85, 3
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88, !prof !8

88:                                               ; preds = %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #15, !srcloc !40
  unreachable

89:                                               ; preds = %59
  %90 = getelementptr inbounds %struct.sg_list, ptr %5, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = load i32, ptr %5, align 4
  %93 = getelementptr %struct.scatterlist, ptr %91, i32 %92
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 3
  %96 = or i32 %95, %85
  store i32 %96, ptr %93, align 4
  %97 = getelementptr %struct.scatterlist, ptr %91, i32 %92, i32 1
  store i32 %63, ptr %97, align 4
  %98 = getelementptr %struct.scatterlist, ptr %91, i32 %92, i32 2
  store i32 %69, ptr %98, align 4
  br label %99

99:                                               ; preds = %89, %39
  %100 = phi i32 [ %50, %39 ], [ %69, %89 ]
  %101 = load i32, ptr %5, align 4
  %102 = add i32 %101, 1
  store i32 %102, ptr %5, align 4
  %103 = getelementptr inbounds %struct.sg_list, ptr %5, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, %100
  store i32 %105, ptr %103, align 4
  br label %106

106:                                              ; preds = %99, %56, %3
  %107 = phi i32 [ %100, %99 ], [ 0, %3 ], [ -12, %56 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @port_debugfs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @port_debugfs_show, ptr noundef %4) #15
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @port_debugfs_show(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.port, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.29, ptr %6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %8) #15
  %9 = getelementptr inbounds %struct.port, ptr %4, i32 0, i32 19
  %10 = load i8, ptr %9, align 2, !range !29
  %11 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %11) #15
  %12 = getelementptr inbounds %struct.port, ptr %4, i32 0, i32 18
  %13 = load i8, ptr %12, align 1, !range !29
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %14) #15
  %15 = getelementptr inbounds %struct.port, ptr %4, i32 0, i32 17
  %16 = load i8, ptr %15, align 4, !range !29
  %17 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %17) #15
  %18 = getelementptr inbounds %struct.port, ptr %4, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %19) #15
  %20 = getelementptr inbounds %struct.port, ptr %4, i32 0, i32 8, i32 1
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %21) #15
  %22 = getelementptr inbounds %struct.port, ptr %4, i32 0, i32 8, i32 2
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %23) #15
  %24 = getelementptr inbounds %struct.port, ptr %4, i32 0, i32 9, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr @.str.38, ptr @.str.37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull %27) #15
  %28 = getelementptr inbounds %struct.port, ptr %4, i32 0, i32 9, i32 3
  %29 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %29) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_break_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @remove_vqs(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %28, label %13

8:                                                ; preds = %24, %21
  %9 = load ptr, ptr %14, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 10
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %28, label %13

13:                                               ; preds = %8, %1
  %14 = phi ptr [ %9, %8 ], [ %6, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !11
  %15 = call ptr @virtqueue_get_buf(ptr noundef %14, ptr noundef nonnull %2) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %17, %13
  %18 = phi ptr [ %19, %17 ], [ %15, %13 ]
  call fastcc void @free_buf(ptr noundef nonnull %18, i1 noundef zeroext true) #15
  %19 = call ptr @virtqueue_get_buf(ptr noundef %14, ptr noundef nonnull %2) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %17

21:                                               ; preds = %17, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %22 = call ptr @virtqueue_detach_unused_buf(ptr noundef %14) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %8, label %24

24:                                               ; preds = %24, %21
  %25 = phi ptr [ %26, %24 ], [ %22, %21 ]
  call fastcc void @free_buf(ptr noundef nonnull %25, i1 noundef zeroext true)
  %26 = call ptr @virtqueue_detach_unused_buf(ptr noundef %14) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %8, label %24

28:                                               ; preds = %8, %1
  %29 = phi ptr [ %4, %1 ], [ %10, %8 ]
  %30 = getelementptr inbounds %struct.virtio_device, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.virtio_config_ops, ptr %31, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  call void %33(ptr noundef %29) #15
  %34 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 12
  %35 = load ptr, ptr %34, align 4
  call void @kfree(ptr noundef %35) #15
  %36 = getelementptr inbounds %struct.ports_device, ptr %0, i32 0, i32 13
  %37 = load ptr, ptr %36, align 4
  call void @kfree(ptr noundef %37) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_detach_unused_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind readonly }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153318169, i64 2153318664, i64 2153318206, i64 2153318262, i64 2153318296, i64 2153318320, i64 2153318361, i64 2153318382, i64 2153318410, i64 2153318444}
!11 = !{!"auto-init"}
!12 = !{i64 2151532288, i64 2151532313}
!13 = !{i64 4027822}
!14 = !{i64 4028019}
!15 = !{i64 2151513298}
!16 = !{i64 2153307225}
!17 = !{i64 2153307067}
!18 = !{i64 2148286419}
!19 = !{i64 683557, i64 2148173528, i64 2148173554, i64 2148173601, i64 2148173623, i64 2148173651, i64 2148173671}
!20 = !{i64 2148188781, i64 2148188813, i64 2148188842, i64 2148188876, i64 2148188907, i64 2148188930}
!21 = !{i64 2148286622}
!22 = !{i64 2153350446}
!23 = !{i64 2153036813, i64 2153037307, i64 2153036850, i64 2153036906, i64 2153036940, i64 2153036964, i64 2153037005, i64 2153037026, i64 2153037054, i64 2153037088}
!24 = !{i64 2149036920}
!25 = !{i64 2149032744}
!26 = !{i64 2149032819, i64 2149032846, i64 2149032893, i64 2149032915, i64 2149032943, i64 2149032963}
!27 = !{i64 589480}
!28 = !{i64 2149061064}
!29 = !{i8 0, i8 2}
!30 = !{i64 2149059923}
!31 = !{i64 2153306444}
!32 = !{i64 2153306286}
!33 = !{i64 2148287420}
!34 = !{i64 2148189555, i64 2148189587, i64 2148189616, i64 2148189650, i64 2148189681, i64 2148189704}
!35 = !{i64 2149374015}
!36 = !{i64 2151886377}
!37 = !{i64 2151531710, i64 2151531735}
!38 = !{i64 2148187198, i64 2148187230, i64 2148187259, i64 2148187293, i64 2148187324, i64 2148187347}
!39 = !{i64 2148185740, i64 2148185766, i64 2148185795, i64 2148185829, i64 2148185860, i64 2148185883}
!40 = !{i64 2152961016, i64 2152961508, i64 2152961053, i64 2152961109, i64 2152961143, i64 2152961167, i64 2152961208, i64 2152961229, i64 2152961257, i64 2152961291}
!41 = !{i64 2152851586}
!42 = !{i64 2151534216}
!43 = !{i64 2151534423}
!44 = !{i64 2152854211}
