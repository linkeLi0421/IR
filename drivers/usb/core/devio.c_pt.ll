; ModuleID = '/llk/IR/drivers/usb/core/devio.c_pt.bc'
source_filename = "../drivers/usb/core/devio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic64_t = type { i64 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.usb_dev_state = type { %struct.list_head, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, ptr, %union.sigval, i32, i32, i32, i32, i8, i8 }
%union.sigval = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.async = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, ptr, %union.sigval, ptr, ptr, i32, i32, i8, i8 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usbdevfs_ctrltransfer = type { i8, i8, i16, i16, i16, i32, ptr }
%struct.usbdevfs_bulktransfer = type { i32, i32, i32, ptr }
%struct.usbdevfs_getdriver = type { i32, [256 x i8] }
%struct.usbdevfs_connectinfo = type { i32, i8 }
%struct.usbdevfs_setinterface = type { i32, i32 }
%struct.usbdevfs_urb = type { i8, i8, i32, i32, ptr, i32, i32, i32, %union.anon.69, i32, i32, ptr, [0 x %struct.usbdevfs_iso_packet_desc] }
%union.anon.69 = type { i32 }
%struct.usbdevfs_iso_packet_desc = type { i32, i32, i32 }
%struct.usbdevfs_disconnectsignal = type { i32, ptr }
%struct.usbdevfs_ioctl = type { i32, i32, ptr }
%struct.usbdevfs_disconnect_claim = type { i32, i32, [256 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.usbdevfs_conninfo_ex = type { i32, i32, i32, i32, i8, [7 x i8] }
%struct.timespec64 = type { i64, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%union.anon.52 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.66 = type { %struct.callback_head }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.68 = type { ptr }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_memory = type { %struct.list_head, i32, i32, i32, ptr, i32, i32, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.62, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.62 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.70, i32 }
%union.anon.70 = type { ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usbdevfs_streams = type { i32, i32, [0 x i8] }

@__param_str_usbfs_snoop = internal constant [20 x i8] c"usbcore.usbfs_snoop\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@usbfs_snoop = internal global i8 0, align 1
@__param_usbfs_snoop = internal constant %struct.kernel_param { ptr @__param_str_usbfs_snoop, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @usbfs_snoop } }, section "__param", align 4
@__UNIQUE_ID_usbfs_snooptype231 = internal constant [34 x i8] c"usbcore.parmtype=usbfs_snoop:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_usbfs_snoop232 = internal constant [55 x i8] c"usbcore.parm=usbfs_snoop:true to log all usbfs traffic\00", section ".modinfo", align 1
@__param_str_usbfs_snoop_max = internal constant [24 x i8] c"usbcore.usbfs_snoop_max\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@usbfs_snoop_max = internal global i32 65536, align 4
@__param_usbfs_snoop_max = internal constant %struct.kernel_param { ptr @__param_str_usbfs_snoop_max, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @usbfs_snoop_max } }, section "__param", align 4
@__UNIQUE_ID_usbfs_snoop_maxtype233 = internal constant [38 x i8] c"usbcore.parmtype=usbfs_snoop_max:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_usbfs_snoop_max234 = internal constant [77 x i8] c"usbcore.parm=usbfs_snoop_max:maximum number of bytes to print while snooping\00", section ".modinfo", align 1
@__param_str_usbfs_memory_mb = internal constant [24 x i8] c"usbcore.usbfs_memory_mb\00", align 1
@usbfs_memory_mb = internal global i32 16, align 4
@__param_usbfs_memory_mb = internal constant %struct.kernel_param { ptr @__param_str_usbfs_memory_mb, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @usbfs_memory_mb } }, section "__param", align 4
@__UNIQUE_ID_usbfs_memory_mbtype235 = internal constant [38 x i8] c"usbcore.parmtype=usbfs_memory_mb:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_usbfs_memory_mb236 = internal constant [81 x i8] c"usbcore.parm=usbfs_memory_mb:maximum MB allowed for usbfs buffers (0 = no limit)\00", section ".modinfo", align 1
@usbfs_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @usbfs_mutex, i64 12), ptr getelementptr (i8, ptr @usbfs_mutex, i64 12) } }, align 4
@.str = private unnamed_addr constant [6 x i8] c"usbfs\00", align 1
@usbfs_driver = dso_local global %struct.usb_driver { ptr @.str, ptr @driver_probe, ptr @driver_disconnect, ptr null, ptr @driver_suspend, ptr @driver_resume, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 2 }, align 4
@usbdev_file_operations = dso_local constant %struct.file_operations { ptr null, ptr @no_seek_end_llseek, ptr @usbdev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbdev_poll, ptr @usbdev_ioctl, ptr null, ptr @usbdev_mmap, i32 0, ptr @usbdev_open, ptr null, ptr @usbdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"usb_device\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\013Unable to register minors for usb_device\0A\00", align 1
@usb_device_cdev = internal global %struct.cdev zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"\013Unable to get usb_device major %d\0A\00", align 1
@usbdev_nb = internal global %struct.notifier_block { ptr @usbdev_notify, ptr null, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"interface number %u out of range\0A\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%s: REAPURB\0A\00", align 1
@__func__.usbdev_do_ioctl = private unnamed_addr constant [16 x i8] c"usbdev_do_ioctl\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%s: REAPURBNDELAY\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"%s: CONTROL\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%s: BULK\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"%s: RESETEP\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"%s: RESET\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"%s: CLEAR_HALT\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"%s: GETDRIVER\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%s: CONNECTINFO\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"%s: SETINTERFACE\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"%s: SETCONFIGURATION\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"%s: SUBMITURB\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"%s: DISCARDURB %px\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"%s: DISCSIGNAL\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"%s: CLAIMINTERFACE\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"%s: RELEASEINTERFACE\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"%s: IOCTL\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"%s: CLAIM_PORT\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"%s: RELEASE_PORT\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"reap %px\0A\00", align 1
@usbfs_memory_usage = internal global %struct.atomic64_t zeroinitializer, align 8
@.str.27 = private unnamed_addr constant [83 x i8] c"control urb: bRequestType=%02x bRequest=%02x wValue=%04x wIndex=%04x wLength=%04x\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.29 = private unnamed_addr constant [66 x i8] c"usbfs: USBDEVFS_CONTROL failed cmd %s rqt %u rq %u len %u ret %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"%s: process %i (%s) requesting ep %02x but needs %02x\0A\00", align 1
@__func__.check_ctrlrecip = private unnamed_addr constant [16 x i8] c"check_ctrlrecip\00", align 1
@.str.31 = private unnamed_addr constant [62 x i8] c"usbfs: process %d (%s) did not claim interface %u before use\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@snoop_urb.types = internal unnamed_addr constant [4 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], align 4
@.str.32 = private unnamed_addr constant [5 x i8] c"isoc\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"bulk\00", align 1
@snoop_urb.dirs = internal unnamed_addr constant [2 x ptr] [ptr @.str.36, ptr @.str.37], align 4
@.str.36 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"userurb %px, ep%d %s-%s, length %u\0A\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"userurb %px, ep%d %s-%s, actual_length %u status %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"ep%d %s-%s, length %u, timeout %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"ep%d %s-%s, actual_length %u, status %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"data: \00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"RESETEP\00", align 1
@.str.44 = private unnamed_addr constant [63 x i8] c"Process %d (%s) called USBDEVFS_%s for active endpoint 0x%02x\0A\00", align 1
@.str.45 = private unnamed_addr constant [60 x i8] c"usbfs: interface %d claimed by %s while '%s' resets device\0A\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"CLEAR_HALT\00", align 1
@.str.47 = private unnamed_addr constant [62 x i8] c"usbfs: interface %d claimed by %s while '%s' sets config #%d\0A\00", align 1
@.str.48 = private unnamed_addr constant [50 x i8] c"Requested nonsensical USBDEVFS_URB_SHORT_NOT_OK.\0A\00", align 1
@.str.49 = private unnamed_addr constant [49 x i8] c"Requested nonsensical USBDEVFS_URB_ZERO_PACKET.\0A\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"usbfs: usb_submit_urb returned %d\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.51 = private unnamed_addr constant [14 x i8] c"urb complete\0A\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"port %d claimed by process %d: %s\0A\00", align 1
@usbdev_vm_ops = internal constant %struct.vm_operations_struct { ptr @usbdev_vm_open, ptr @usbdev_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@usbdev_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"&ps->wait\00", align 1
@usbdev_open.__key.54 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"&ps->wait_for_resume\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"opened by process %d: %s\0A\00", align 1
@usb_bus_type = external dso_local global %struct.bus_type, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_usbfs_memory_mb236, ptr @__UNIQUE_ID_usbfs_memory_mbtype235, ptr @__UNIQUE_ID_usbfs_snoop232, ptr @__UNIQUE_ID_usbfs_snoop_max234, ptr @__UNIQUE_ID_usbfs_snoop_maxtype233, ptr @__UNIQUE_ID_usbfs_snooptype231, ptr @__param_usbfs_memory_mb, ptr @__param_usbfs_snoop, ptr @__param_usbfs_snoop_max], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @usbfs_notify_suspend(ptr nocapture noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbfs_notify_resume(ptr noundef readonly %0) local_unnamed_addr #1 {
  tail call void @mutex_lock(ptr noundef nonnull @usbfs_mutex) #14
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 34
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %11, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %9, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.usb_dev_state, ptr %6, i32 0, i32 16
  store volatile i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.usb_dev_state, ptr %6, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %8, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %11, label %5

11:                                               ; preds = %5, %1
  tail call void @mutex_unlock(ptr noundef nonnull @usbfs_mutex) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @driver_probe(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @driver_disconnect(ptr noundef %0) #1 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = icmp eq ptr %4, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %1
  %11 = icmp ult i8 %7, 32
  br i1 %11, label %12, label %14, !prof !8

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef %8, ptr noundef %13) #14
  br label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.4, i32 noundef %8) #15
  br label %16

16:                                               ; preds = %14, %12
  store ptr null, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store volatile ptr %2, ptr %2, align 8
  %17 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 3
  %19 = call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #14
  %20 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %36, label %23

23:                                               ; preds = %34, %16
  %24 = phi ptr [ %25, %34 ], [ %21, %16 ]
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.async, ptr %24, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %8
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %25, ptr %31, align 4
  %33 = load ptr, ptr %17, align 4
  store ptr %24, ptr %17, align 4
  store ptr %2, ptr %24, align 4
  store ptr %33, ptr %30, align 4
  store volatile ptr %24, ptr %33, align 4
  br label %34

34:                                               ; preds = %29, %23
  %35 = icmp eq ptr %25, %20
  br i1 %35, label %36, label %23

36:                                               ; preds = %34, %16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #14
  call fastcc void @destroy_async(ptr noundef nonnull %4, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %37

37:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @driver_suspend(ptr nocapture noundef readnone %0, [1 x i32] %1) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @driver_resume(ptr nocapture noundef readnone %0) #0 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_seek_end_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbdev_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #1 {
  %5 = alloca %struct.usb_device_descriptor, align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.usb_dev_state, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i64, ptr %3, align 8
  %11 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15, i32 9
  tail call void @mutex_lock(ptr noundef %11) #14
  %12 = load volatile ptr, ptr %7, align 4
  %13 = icmp eq ptr %12, %7
  br i1 %13, label %129, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %129, label %19

19:                                               ; preds = %14
  %20 = icmp slt i64 %10, 0
  br i1 %20, label %129, label %21

21:                                               ; preds = %19
  %22 = icmp ult i64 %10, 18
  br i1 %22, label %23, label %49

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %5) #14
  %24 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(18) %5, ptr noundef align 8 dereferenceable(18) %24, i32 18, i1 false)
  %25 = trunc i64 %10 to i32
  %26 = sub nuw nsw i32 18, %25
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %2)
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %27, i32 -1090519040) #16, !srcloc !9
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = getelementptr i8, ptr %5, i32 %25
  %33 = tail call ptr @llvm.thread.pointer() #14
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %35 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #17, !srcloc !10
  %36 = and i32 %35, -13
  %37 = or i32 %36, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %38 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %32, i32 noundef %27) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  br label %39

39:                                               ; preds = %31, %23
  %40 = phi i32 [ %38, %31 ], [ %27, %23 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #14
  br label %129

43:                                               ; preds = %39
  %44 = zext i32 %27 to i64
  %45 = load i64, ptr %3, align 8
  %46 = add i64 %45, %44
  store i64 %46, ptr %3, align 8
  %47 = getelementptr i8, ptr %1, i32 %27
  %48 = sub i32 %2, %27
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #14
  br label %49

49:                                               ; preds = %43, %21
  %50 = phi i32 [ %27, %43 ], [ 0, %21 ]
  %51 = phi i32 [ %48, %43 ], [ %2, %21 ]
  %52 = phi ptr [ %47, %43 ], [ %1, %21 ]
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %129, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 16, i32 13
  %56 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 23
  %57 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 19
  br label %58

58:                                               ; preds = %123, %54
  %59 = phi ptr [ %52, %54 ], [ %126, %123 ]
  %60 = phi i32 [ %51, %54 ], [ %125, %123 ]
  %61 = phi i32 [ 0, %54 ], [ %127, %123 ]
  %62 = phi i64 [ 18, %54 ], [ %75, %123 ]
  %63 = phi i32 [ %50, %54 ], [ %124, %123 ]
  %64 = load i8, ptr %55, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ult i32 %61, %65
  br i1 %66, label %67, label %129

67:                                               ; preds = %58
  %68 = load ptr, ptr %56, align 8
  %69 = getelementptr ptr, ptr %68, i32 %61
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.usb_config_descriptor, ptr %70, i32 0, i32 2
  %72 = load i16, ptr %71, align 1
  %73 = load i64, ptr %3, align 8
  %74 = zext i16 %72 to i64
  %75 = add i64 %62, %74
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %77, label %123

77:                                               ; preds = %67
  %78 = load ptr, ptr %57, align 8
  %79 = getelementptr %struct.usb_host_config, ptr %78, i32 %61, i32 0, i32 2
  %80 = load i16, ptr %79, align 2
  %81 = sub i64 %62, %73
  %82 = add i64 %81, %74
  %83 = trunc i64 %82 to i32
  %84 = call i32 @llvm.umin.i32(i32 %60, i32 %83)
  %85 = zext i16 %80 to i64
  %86 = sub i64 %73, %62
  %87 = icmp slt i64 %86, %85
  br i1 %87, label %88, label %116

88:                                               ; preds = %77
  %89 = sub i64 %85, %86
  %90 = trunc i64 %89 to i32
  %91 = trunc i64 %86 to i32
  %92 = getelementptr i8, ptr %70, i32 %91
  %93 = call i32 @llvm.umin.i32(i32 %84, i32 %90)
  %94 = icmp slt i32 %93, 0
  %95 = load i1, ptr @check_copy_size.__already_done, align 1
  %96 = xor i1 %95, true
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %99, !prof !13

98:                                               ; preds = %88
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %99

99:                                               ; preds = %98, %88
  br i1 %94, label %129, label %100, !prof !13

100:                                              ; preds = %99
  %101 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %59, i32 %93, i32 -1090519040) #16, !srcloc !9
  %102 = extractvalue { i32, i32 } %101, 0
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = tail call ptr @llvm.thread.pointer() #14
  %106 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 3
  %107 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %106) #17, !srcloc !10
  %108 = and i32 %107, -13
  %109 = or i32 %108, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %110 = call i32 @arm_copy_to_user(ptr noundef %59, ptr noundef %92, i32 noundef %93) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  br label %111

111:                                              ; preds = %104, %100
  %112 = phi i32 [ %110, %104 ], [ %93, %100 ]
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %111
  %115 = load i64, ptr %3, align 8
  br label %116

116:                                              ; preds = %114, %77
  %117 = phi i64 [ %115, %114 ], [ %73, %77 ]
  %118 = zext i32 %84 to i64
  %119 = add i64 %117, %118
  store i64 %119, ptr %3, align 8
  %120 = getelementptr i8, ptr %59, i32 %84
  %121 = sub i32 %60, %84
  %122 = add i32 %84, %63
  br label %123

123:                                              ; preds = %116, %67
  %124 = phi i32 [ %63, %67 ], [ %122, %116 ]
  %125 = phi i32 [ %60, %67 ], [ %121, %116 ]
  %126 = phi ptr [ %59, %67 ], [ %120, %116 ]
  %127 = add nuw nsw i32 %61, 1
  %128 = icmp eq i32 %125, 0
  br i1 %128, label %129, label %58

129:                                              ; preds = %123, %111, %99, %58, %49, %42, %19, %14, %4
  %130 = phi i32 [ -19, %14 ], [ -22, %19 ], [ -14, %42 ], [ -19, %4 ], [ %50, %49 ], [ -14, %111 ], [ %63, %58 ], [ %124, %123 ], [ -14, %99 ]
  call void @mutex_unlock(ptr noundef %11) #14
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbdev_poll(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 7
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #14
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 5
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  %22 = select i1 %21, i32 0, i32 260
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i32 [ 0, %13 ], [ %22, %18 ]
  %25 = load volatile ptr, ptr %4, align 4
  %26 = icmp eq ptr %25, %4
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 3
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %23
  %34 = or i32 %24, 16
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i32 [ %34, %33 ], [ %24, %27 ]
  %37 = load volatile ptr, ptr %4, align 4
  %38 = icmp eq ptr %37, %4
  %39 = or i32 %36, 8
  %40 = select i1 %38, i32 %39, i32 %36
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbdev_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.completion, align 8
  %5 = alloca %struct.completion, align 8
  %6 = alloca %struct.completion, align 8
  %7 = alloca %struct.completion, align 8
  %8 = alloca %struct.usbdevfs_ctrltransfer, align 4
  %9 = alloca %struct.usbdevfs_bulktransfer, align 4
  %10 = alloca %struct.usbdevfs_getdriver, align 4
  %11 = alloca %struct.usbdevfs_connectinfo, align 8
  %12 = alloca %struct.list_head, align 8
  %13 = alloca %struct.usbdevfs_setinterface, align 8
  %14 = alloca %struct.usbdevfs_urb, align 4
  %15 = alloca %struct.usbdevfs_disconnectsignal, align 8
  %16 = alloca %struct.list_head, align 8
  %17 = alloca %struct.usbdevfs_ioctl, align 4
  %18 = alloca %struct.usbdevfs_disconnect_claim, align 4
  %19 = alloca %struct.list_head, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 4
  %23 = alloca ptr, align 4
  %24 = alloca %struct.list_head, align 8
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 4
  %27 = alloca ptr, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.wait_queue_entry, align 4
  %30 = alloca %struct.usbdevfs_conninfo_ex, align 4
  %31 = alloca %struct.wait_queue_entry, align 4
  %32 = alloca %struct.timespec64, align 8
  %33 = alloca %struct.timespec64, align 8
  %34 = alloca %struct.timespec64, align 8
  %35 = alloca %struct.timespec64, align 8
  %36 = alloca %struct.timespec64, align 8
  %37 = alloca %struct.timespec64, align 8
  %38 = inttoptr i32 %2 to ptr
  %39 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 1
  %44 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %2710, label %48

48:                                               ; preds = %3
  %49 = load ptr, ptr %43, align 4
  %50 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  %51 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15, i32 9
  tail call void @mutex_lock(ptr noundef %51) #14
  switch i32 %1, label %154 [
    i32 1074025740, label %52
    i32 1074025741, label %118
  ]

52:                                               ; preds = %48
  %53 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %56

56:                                               ; preds = %55, %52
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %31) #14
  %57 = getelementptr inbounds %struct.wait_queue_entry, ptr %31, i32 0, i32 1
  %58 = tail call ptr @llvm.thread.pointer() #14
  store i32 0, ptr %31, align 4
  store ptr %58, ptr %57, align 4
  %59 = getelementptr inbounds %struct.wait_queue_entry, ptr %31, i32 0, i32 2
  store ptr @default_wake_function, ptr %59, align 4
  %60 = getelementptr inbounds %struct.wait_queue_entry, ptr %31, i32 0, i32 3
  store ptr null, ptr %60, align 4
  %61 = getelementptr inbounds %struct.wait_queue_entry, ptr %31, i32 0, i32 3, i32 1
  store ptr null, ptr %61, align 4
  %62 = load ptr, ptr %43, align 4
  %63 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 7
  call void @add_wait_queue(ptr noundef %63, ptr noundef nonnull %31) #14
  %64 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 1
  %65 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 3
  %66 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 5
  %67 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15, i32 9
  br label %68

68:                                               ; preds = %95, %56
  store volatile i32 1, ptr %64, align 8
  %69 = call i32 @_raw_spin_lock_irqsave(ptr noundef %65) #14
  %70 = load volatile ptr, ptr %66, align 4
  %71 = icmp eq ptr %70, %66
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  call void @_raw_spin_unlock_irqrestore(ptr noundef %65, i32 noundef %69) #14
  br label %79

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %70, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %75, ptr %77, align 4
  store volatile ptr %76, ptr %75, align 4
  store volatile ptr %70, ptr %70, align 4
  store ptr %70, ptr %74, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %65, i32 noundef %69) #14
  %78 = icmp eq ptr %70, null
  br i1 %78, label %79, label %96

79:                                               ; preds = %73, %72
  %80 = load volatile ptr, ptr %40, align 4
  %81 = icmp eq ptr %80, %40
  br i1 %81, label %96, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %43, align 4
  %84 = getelementptr inbounds %struct.usb_device, ptr %83, i32 0, i32 3
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %82
  %88 = load volatile i32, ptr %58, align 4
  %89 = and i32 %88, 256
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96, !prof !8

91:                                               ; preds = %87
  %92 = load volatile i32, ptr %58, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  call void @mutex_unlock(ptr noundef %67) #14
  call void @schedule() #14
  call void @mutex_lock(ptr noundef %67) #14
  br label %68

96:                                               ; preds = %91, %87, %82, %79, %73
  %97 = phi ptr [ null, %91 ], [ %70, %73 ], [ null, %82 ], [ null, %79 ], [ null, %87 ]
  call void @remove_wait_queue(ptr noundef %63, ptr noundef nonnull %31) #14
  store volatile i32 0, ptr %64, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %31) #14
  %98 = icmp eq ptr %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  %100 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %43, align 4
  %104 = getelementptr inbounds %struct.usb_device, ptr %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.async, ptr %97, i32 0, i32 7
  %106 = load ptr, ptr %105, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull @.str.26, ptr noundef %106) #15
  br label %107

107:                                              ; preds = %102, %99
  %108 = call fastcc i32 @processcompl(ptr noundef nonnull %97, ptr noundef %38) #14
  call fastcc void @free_async(ptr noundef nonnull %97) #14
  br label %2702

109:                                              ; preds = %96
  %110 = load volatile i32, ptr %58, align 4
  %111 = and i32 %110, 256
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %2696, !prof !8

113:                                              ; preds = %109
  %114 = load volatile i32, ptr %58, align 4
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i32 -19, i32 -4
  br label %2696

118:                                              ; preds = %48
  %119 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %122

122:                                              ; preds = %121, %118
  %123 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 3
  %124 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %123) #14
  %125 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 5
  %126 = load volatile ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %125
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %123, i32 noundef %124) #14
  br label %145

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = load ptr, ptr %126, align 4
  %133 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  store ptr %131, ptr %133, align 4
  store volatile ptr %132, ptr %131, align 4
  store volatile ptr %126, ptr %126, align 4
  store ptr %126, ptr %130, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %123, i32 noundef %124) #14
  %134 = icmp eq ptr %126, null
  br i1 %134, label %145, label %135

135:                                              ; preds = %129
  %136 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %43, align 4
  %140 = getelementptr inbounds %struct.usb_device, ptr %139, i32 0, i32 15
  %141 = getelementptr inbounds %struct.async, ptr %126, i32 0, i32 7
  %142 = load ptr, ptr %141, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %140, ptr noundef nonnull @.str.26, ptr noundef %142) #15
  br label %143

143:                                              ; preds = %138, %135
  %144 = tail call fastcc i32 @processcompl(ptr noundef nonnull %126, ptr noundef %38) #14
  tail call fastcc void @free_async(ptr noundef nonnull %126) #14
  br label %2702

145:                                              ; preds = %129, %128
  %146 = load volatile ptr, ptr %40, align 4
  %147 = icmp eq ptr %146, %40
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %43, align 4
  %150 = getelementptr inbounds %struct.usb_device, ptr %149, i32 0, i32 3
  %151 = load i32, ptr %150, align 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %2696

153:                                              ; preds = %148, %145
  br label %2696

154:                                              ; preds = %48
  %155 = load volatile ptr, ptr %40, align 4
  %156 = icmp eq ptr %155, %40
  br i1 %156, label %162, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %43, align 4
  %159 = getelementptr inbounds %struct.usb_device, ptr %158, i32 0, i32 3
  %160 = load i32, ptr %159, align 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157, %154
  tail call void @mutex_unlock(ptr noundef %51) #14
  br label %2710

163:                                              ; preds = %157
  switch i32 %1, label %2632 [
    i32 -1072671488, label %164
    i32 -1072671486, label %461
    i32 -2147199741, label %835
    i32 21780, label %950
    i32 -2147199723, label %1002
    i32 1090802952, label %1125
    i32 1074287889, label %1166
    i32 -2146937596, label %1193
    i32 -2147199739, label %1267
    i32 -2144578294, label %1319
    i32 21771, label %2112
    i32 -2146937586, label %2139
    i32 -2147199729, label %2167
    i32 -2147199728, label %2183
    i32 -1072933614, label %2235
    i32 -2147199720, label %2361
    i32 -2147199719, label %2388
    i32 -2147199718, label %2405
    i32 -2130160357, label %2425
    i32 -2146937572, label %2479
    i32 -2146937571, label %2514
    i32 1074025758, label %2548
    i32 21791, label %2572
    i32 21793, label %2575
    i32 21794, label %2586
    i32 21795, label %2595
  ]

164:                                              ; preds = %163
  %165 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %164
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %168

168:                                              ; preds = %167, %164
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false) #14, !annotation !16
  %169 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 16, i32 -1090519040) #16, !srcloc !17
  %170 = extractvalue { i32, i32 } %169, 0
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %180, !prof !8

172:                                              ; preds = %168
  %173 = tail call ptr @llvm.thread.pointer() #14
  %174 = getelementptr inbounds %struct.thread_info, ptr %173, i32 0, i32 3
  %175 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %174) #17, !srcloc !10
  %176 = and i32 %175, -13
  %177 = or i32 %176, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %177) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %178 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %38, i32 noundef 16) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %175) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180, !prof !8

180:                                              ; preds = %172, %168
  %181 = phi i32 [ %178, %172 ], [ 16, %168 ]
  %182 = sub i32 16, %181
  %183 = getelementptr i8, ptr %8, i32 %182
  call void @llvm.memset.p0.i32(ptr align 1 %183, i8 0, i32 %181, i1 false) #14
  br label %454

184:                                              ; preds = %172
  %185 = load ptr, ptr %43, align 4
  %186 = load i8, ptr %8, align 4
  %187 = zext i8 %186 to i32
  %188 = getelementptr inbounds %struct.usbdevfs_ctrltransfer, ptr %8, i32 0, i32 1
  %189 = load i8, ptr %188, align 1
  %190 = zext i8 %189 to i32
  %191 = getelementptr inbounds %struct.usbdevfs_ctrltransfer, ptr %8, i32 0, i32 3
  %192 = load i16, ptr %191, align 4
  %193 = zext i16 %192 to i32
  %194 = call fastcc i32 @check_ctrlrecip(ptr noundef %40, i32 noundef %187, i32 noundef %190, i32 noundef %193) #14
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %456

196:                                              ; preds = %184
  %197 = getelementptr inbounds %struct.usbdevfs_ctrltransfer, ptr %8, i32 0, i32 4
  %198 = load i16, ptr %197, align 2
  %199 = zext i16 %198 to i32
  %200 = icmp ugt i16 %198, 4096
  br i1 %200, label %454, label %201

201:                                              ; preds = %196
  %202 = load volatile i32, ptr @usbfs_memory_mb, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @usbfs_memory_usage) #14, !srcloc !18
  %203 = call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @usbfs_memory_usage, ptr nonnull @usbfs_memory_usage, i64 4228, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !19
  %204 = icmp eq i32 %202, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %201
  %206 = zext i32 %202 to i64
  %207 = shl nuw nsw i64 %206, 20
  %208 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull @usbfs_memory_usage, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !20
  %209 = icmp ugt i64 %208, %207
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @usbfs_memory_usage) #14, !srcloc !18
  %211 = call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @usbfs_memory_usage, ptr nonnull @usbfs_memory_usage, i64 4228, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !21
  br label %454

212:                                              ; preds = %205, %201
  %213 = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #14
  %214 = inttoptr i32 %213 to ptr
  %215 = icmp eq i32 %213, 0
  br i1 %215, label %449, label %216

216:                                              ; preds = %212
  %217 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3072) #14
  %218 = icmp eq ptr %217, null
  br i1 %218, label %449, label %219

219:                                              ; preds = %216
  %220 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %221 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %220, i32 noundef 3072, i32 noundef 8) #18
  %222 = icmp eq ptr %221, null
  br i1 %222, label %449, label %223

223:                                              ; preds = %219
  %224 = load i8, ptr %8, align 4
  store i8 %224, ptr %221, align 8
  %225 = load i8, ptr %188, align 1
  %226 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %221, i32 0, i32 1
  store i8 %225, ptr %226, align 1
  %227 = getelementptr inbounds %struct.usbdevfs_ctrltransfer, ptr %8, i32 0, i32 2
  %228 = load i16, ptr %227, align 2
  %229 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %221, i32 0, i32 2
  store i16 %228, ptr %229, align 2
  %230 = load i16, ptr %191, align 4
  %231 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %221, i32 0, i32 3
  store i16 %230, ptr %231, align 4
  %232 = load i16, ptr %197, align 2
  %233 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %221, i32 0, i32 4
  store i16 %232, ptr %233, align 2
  %234 = getelementptr inbounds %struct.usbdevfs_ctrltransfer, ptr %8, i32 0, i32 5
  %235 = load i32, ptr %234, align 4
  %236 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %223
  %239 = getelementptr inbounds %struct.usb_device, ptr %185, i32 0, i32 15
  %240 = zext i8 %224 to i32
  %241 = zext i8 %225 to i32
  %242 = zext i16 %228 to i32
  %243 = zext i16 %230 to i32
  %244 = zext i16 %232 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %239, ptr noundef nonnull @.str.27, i32 noundef %240, i32 noundef %241, i32 noundef %242, i32 noundef %243, i32 noundef %244) #15
  %245 = load i8, ptr %8, align 4
  br label %246

246:                                              ; preds = %238, %223
  %247 = phi i8 [ %245, %238 ], [ %224, %223 ]
  %248 = icmp slt i8 %247, 0
  %249 = icmp ne i16 %198, 0
  %250 = select i1 %248, i1 %249, i1 false
  br i1 %250, label %251, label %341

251:                                              ; preds = %246
  %252 = load i32, ptr %185, align 8
  %253 = shl i32 %252, 8
  %254 = or i32 %253, -2147483520
  %255 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 8
  store ptr %185, ptr %255, align 4
  %256 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 10
  store i32 %254, ptr %256, align 4
  %257 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 21
  store ptr %221, ptr %257, align 4
  %258 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 14
  store ptr %214, ptr %258, align 4
  %259 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 19
  store i32 %199, ptr %259, align 4
  %260 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 28
  store ptr null, ptr %260, align 4
  %261 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 27
  store ptr null, ptr %261, align 4
  %262 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %271, label %264

264:                                              ; preds = %251
  %265 = lshr i32 %253, 15
  %266 = and i32 %265, 15
  %267 = lshr i32 %254, 30
  %268 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %267
  %269 = load ptr, ptr %268, align 4
  %270 = getelementptr inbounds %struct.usb_device, ptr %185, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %270, ptr noundef nonnull @.str.40, i32 noundef %266, ptr noundef %269, ptr noundef nonnull @.str.37, i32 noundef %199, i32 noundef %235) #15
  br label %271

271:                                              ; preds = %264, %251
  %272 = getelementptr inbounds %struct.usb_device, ptr %185, i32 0, i32 15, i32 9
  call void @mutex_unlock(ptr noundef %272) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %273 = getelementptr inbounds %struct.completion, ptr %4, i32 0, i32 1, i32 1
  store i64 0, ptr %4, align 8
  store ptr %273, ptr %273, align 8
  %274 = getelementptr inbounds %struct.completion, ptr %4, i32 0, i32 1, i32 1, i32 1
  store ptr %273, ptr %274, align 4
  store ptr %4, ptr %261, align 4
  store ptr @usbfs_blocking_completion, ptr %260, align 4
  %275 = call i32 @usb_submit_urb(ptr noundef nonnull %217, i32 noundef 3264) #14
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %301, !prof !8

277:                                              ; preds = %271
  %278 = icmp eq i32 %235, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %277
  %280 = call i32 @__msecs_to_jiffies(i32 noundef %235) #14
  br label %281

281:                                              ; preds = %279, %277
  %282 = phi i32 [ 2147483647, %277 ], [ %280, %279 ]
  %283 = call i32 @wait_for_completion_killable_timeout(ptr noundef nonnull %4, i32 noundef %282) #14
  %284 = icmp slt i32 %283, 1
  br i1 %284, label %288, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 12
  %287 = load i32, ptr %286, align 4
  br label %297

288:                                              ; preds = %281
  call void @usb_kill_urb(ptr noundef nonnull %217) #14
  %289 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 12
  %290 = load i32, ptr %289, align 4
  %291 = icmp eq i32 %290, -2
  br i1 %291, label %292, label %297

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 20
  %294 = load i32, ptr %293, align 4
  %295 = icmp slt i32 %283, 0
  %296 = select i1 %295, i32 -4, i32 -110
  br label %301

297:                                              ; preds = %288, %285
  %298 = phi i32 [ %287, %285 ], [ %290, %288 ]
  %299 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 20
  %300 = load i32, ptr %299, align 4
  br label %301

301:                                              ; preds = %297, %292, %271
  %302 = phi i32 [ %294, %292 ], [ %300, %297 ], [ 0, %271 ]
  %303 = phi i32 [ %296, %292 ], [ %298, %297 ], [ %275, %271 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call void @mutex_lock(ptr noundef %272) #14
  %304 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %317, label %306

306:                                              ; preds = %301
  %307 = lshr i32 %253, 15
  %308 = and i32 %307, 15
  %309 = lshr i32 %254, 30
  %310 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %309
  %311 = load ptr, ptr %310, align 4
  %312 = getelementptr inbounds %struct.usb_device, ptr %185, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %312, ptr noundef nonnull @.str.41, i32 noundef %308, ptr noundef %311, ptr noundef nonnull @.str.37, i32 noundef %302, i32 noundef %303) #15
  %313 = load i32, ptr @usbfs_snoop_max, align 4
  %314 = call i32 @llvm.umin.i32(i32 %313, i32 %302) #14
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %306
  call void @print_hex_dump(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %214, i32 noundef %314, i1 noundef zeroext true) #14
  br label %317

317:                                              ; preds = %316, %306, %301
  %318 = icmp eq i32 %303, 0
  %319 = icmp ne i32 %302, 0
  %320 = and i1 %319, %318
  br i1 %320, label %321, label %425

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.usbdevfs_ctrltransfer, ptr %8, i32 0, i32 6
  %323 = load ptr, ptr %322, align 4
  %324 = icmp slt i32 %302, 0
  %325 = load i1, ptr @check_copy_size.__already_done, align 1
  %326 = xor i1 %325, true
  %327 = select i1 %324, i1 %326, i1 false
  br i1 %327, label %328, label %329, !prof !13

328:                                              ; preds = %321
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %329

329:                                              ; preds = %328, %321
  br i1 %324, label %442, label %330, !prof !13

330:                                              ; preds = %329
  %331 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %323, i32 %302, i32 -1090519040) #16, !srcloc !9
  %332 = extractvalue { i32, i32 } %331, 0
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %442

334:                                              ; preds = %330
  %335 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %174) #17, !srcloc !10
  %336 = and i32 %335, -13
  %337 = or i32 %336, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %337) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %338 = call i32 @arm_copy_to_user(ptr noundef %323, ptr noundef nonnull %214, i32 noundef %302) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %335) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %339 = icmp eq i32 %338, 0
  %340 = select i1 %339, i32 %302, i32 -14
  br label %442

341:                                              ; preds = %246
  br i1 %249, label %342, label %359

342:                                              ; preds = %341
  %343 = getelementptr inbounds %struct.usbdevfs_ctrltransfer, ptr %8, i32 0, i32 6
  %344 = load ptr, ptr %343, align 4
  %345 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %344, i32 %199, i32 -1090519040) #16, !srcloc !17
  %346 = extractvalue { i32, i32 } %345, 0
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %353, !prof !8

348:                                              ; preds = %342
  %349 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %174) #17, !srcloc !10
  %350 = and i32 %349, -13
  %351 = or i32 %350, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %351) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %352 = call i32 @arm_copy_from_user(ptr noundef nonnull %214, ptr noundef %344, i32 noundef %199) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %349) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  br label %353

353:                                              ; preds = %348, %342
  %354 = phi i32 [ %352, %348 ], [ %199, %342 ]
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %359, label %356, !prof !8

356:                                              ; preds = %353
  %357 = sub i32 %199, %354
  %358 = getelementptr i8, ptr %214, i32 %357
  call void @llvm.memset.p0.i32(ptr align 1 %358, i8 0, i32 %354, i1 false) #14
  br label %449

359:                                              ; preds = %353, %341
  %360 = load i32, ptr %185, align 8
  %361 = shl i32 %360, 8
  %362 = or i32 %361, -2147483648
  %363 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 8
  store ptr %185, ptr %363, align 4
  %364 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 10
  store i32 %362, ptr %364, align 4
  %365 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 21
  store ptr %221, ptr %365, align 4
  %366 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 14
  store ptr %214, ptr %366, align 4
  %367 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 19
  store i32 %199, ptr %367, align 4
  %368 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 28
  store ptr null, ptr %368, align 4
  %369 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 27
  store ptr null, ptr %369, align 4
  %370 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %383, label %372

372:                                              ; preds = %359
  %373 = lshr i32 %361, 15
  %374 = and i32 %373, 15
  %375 = lshr i32 %362, 30
  %376 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %375
  %377 = load ptr, ptr %376, align 4
  %378 = getelementptr inbounds %struct.usb_device, ptr %185, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %378, ptr noundef nonnull @.str.40, i32 noundef %374, ptr noundef %377, ptr noundef nonnull @.str.36, i32 noundef %199, i32 noundef %235) #15
  %379 = load i32, ptr @usbfs_snoop_max, align 4
  %380 = call i32 @llvm.umin.i32(i32 %379, i32 %199) #14
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %383, label %382

382:                                              ; preds = %372
  call void @print_hex_dump(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %214, i32 noundef %380, i1 noundef zeroext true) #14
  br label %383

383:                                              ; preds = %382, %372, %359
  %384 = getelementptr inbounds %struct.usb_device, ptr %185, i32 0, i32 15, i32 9
  call void @mutex_unlock(ptr noundef %384) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %385 = getelementptr inbounds %struct.completion, ptr %5, i32 0, i32 1, i32 1
  store i64 0, ptr %5, align 8
  store ptr %385, ptr %385, align 8
  %386 = getelementptr inbounds %struct.completion, ptr %5, i32 0, i32 1, i32 1, i32 1
  store ptr %385, ptr %386, align 4
  store ptr %5, ptr %369, align 4
  store ptr @usbfs_blocking_completion, ptr %368, align 4
  %387 = call i32 @usb_submit_urb(ptr noundef nonnull %217, i32 noundef 3264) #14
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %413, !prof !8

389:                                              ; preds = %383
  %390 = icmp eq i32 %235, 0
  br i1 %390, label %393, label %391

391:                                              ; preds = %389
  %392 = call i32 @__msecs_to_jiffies(i32 noundef %235) #14
  br label %393

393:                                              ; preds = %391, %389
  %394 = phi i32 [ 2147483647, %389 ], [ %392, %391 ]
  %395 = call i32 @wait_for_completion_killable_timeout(ptr noundef nonnull %5, i32 noundef %394) #14
  %396 = icmp slt i32 %395, 1
  br i1 %396, label %400, label %397

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 12
  %399 = load i32, ptr %398, align 4
  br label %409

400:                                              ; preds = %393
  call void @usb_kill_urb(ptr noundef nonnull %217) #14
  %401 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 12
  %402 = load i32, ptr %401, align 4
  %403 = icmp eq i32 %402, -2
  br i1 %403, label %404, label %409

404:                                              ; preds = %400
  %405 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 20
  %406 = load i32, ptr %405, align 4
  %407 = icmp slt i32 %395, 0
  %408 = select i1 %407, i32 -4, i32 -110
  br label %413

409:                                              ; preds = %400, %397
  %410 = phi i32 [ %399, %397 ], [ %402, %400 ]
  %411 = getelementptr inbounds %struct.urb, ptr %217, i32 0, i32 20
  %412 = load i32, ptr %411, align 4
  br label %413

413:                                              ; preds = %409, %404, %383
  %414 = phi i32 [ %406, %404 ], [ %412, %409 ], [ 0, %383 ]
  %415 = phi i32 [ %408, %404 ], [ %410, %409 ], [ %387, %383 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @mutex_lock(ptr noundef %384) #14
  %416 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %425, label %418

418:                                              ; preds = %413
  %419 = lshr i32 %361, 15
  %420 = and i32 %419, 15
  %421 = lshr i32 %362, 30
  %422 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %421
  %423 = load ptr, ptr %422, align 4
  %424 = getelementptr inbounds %struct.usb_device, ptr %185, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %424, ptr noundef nonnull @.str.41, i32 noundef %420, ptr noundef %423, ptr noundef nonnull @.str.36, i32 noundef %414, i32 noundef %415) #15
  br label %425

425:                                              ; preds = %418, %413, %317
  %426 = phi i32 [ %302, %317 ], [ %414, %413 ], [ %414, %418 ]
  %427 = phi i32 [ %303, %317 ], [ %415, %413 ], [ %415, %418 ]
  %428 = icmp slt i32 %427, 0
  %429 = icmp ne i32 %427, -32
  %430 = and i1 %428, %429
  br i1 %430, label %431, label %440

431:                                              ; preds = %425
  %432 = getelementptr inbounds %struct.usb_device, ptr %185, i32 0, i32 15
  %433 = getelementptr inbounds %struct.task_struct, ptr %173, i32 0, i32 85
  %434 = load i8, ptr %8, align 4
  %435 = zext i8 %434 to i32
  %436 = load i8, ptr %188, align 1
  %437 = zext i8 %436 to i32
  %438 = load i16, ptr %197, align 2
  %439 = zext i16 %438 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.28, ptr noundef %432, ptr noundef nonnull @.str.29, ptr noundef %433, i32 noundef %435, i32 noundef %437, i32 noundef %439, i32 noundef %427) #15
  br label %441

440:                                              ; preds = %425
  br i1 %428, label %441, label %442

441:                                              ; preds = %440, %431
  br label %442

442:                                              ; preds = %441, %440, %334, %330, %329
  %443 = phi i32 [ %427, %441 ], [ %426, %440 ], [ -14, %329 ], [ -14, %330 ], [ %340, %334 ]
  %444 = getelementptr inbounds %struct.usb_device, ptr %185, i32 0, i32 36
  %445 = load i32, ptr %444, align 8
  %446 = and i32 %445, 8192
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %449, label %448

448:                                              ; preds = %442
  call void @msleep(i32 noundef 200) #14
  br label %449

449:                                              ; preds = %448, %442, %356, %219, %216, %212
  %450 = phi i32 [ %443, %448 ], [ %443, %442 ], [ -12, %219 ], [ -12, %216 ], [ -12, %212 ], [ -14, %356 ]
  %451 = phi ptr [ %217, %448 ], [ %217, %442 ], [ %217, %219 ], [ null, %216 ], [ null, %212 ], [ %217, %356 ]
  %452 = phi ptr [ %221, %448 ], [ %221, %442 ], [ null, %219 ], [ null, %216 ], [ null, %212 ], [ %221, %356 ]
  call void @kfree(ptr noundef %452) #14
  call void @usb_free_urb(ptr noundef %451) #14
  call void @free_pages(i32 noundef %213, i32 noundef 0) #14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @usbfs_memory_usage) #14, !srcloc !18
  %453 = call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @usbfs_memory_usage, ptr nonnull @usbfs_memory_usage, i64 4228, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !21
  br label %456

454:                                              ; preds = %210, %196, %180
  %455 = phi i32 [ -12, %210 ], [ -22, %196 ], [ -14, %180 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  br label %2698

456:                                              ; preds = %449, %184
  %457 = phi i32 [ %450, %449 ], [ %194, %184 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  %458 = icmp sgt i32 %457, -1
  br i1 %458, label %459, label %2698

459:                                              ; preds = %456
  %460 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %32) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %32, ptr noundef %42) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %460, ptr noundef nonnull align 8 dereferenceable(16) %32, i32 16, i1 false) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %32) #14
  br label %2705

461:                                              ; preds = %163
  %462 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %465, label %464

464:                                              ; preds = %461
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %465

465:                                              ; preds = %464, %461
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i32 16, i1 false) #14, !annotation !16
  %466 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 16, i32 -1090519040) #16, !srcloc !17
  %467 = extractvalue { i32, i32 } %466, 0
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %477, !prof !8

469:                                              ; preds = %465
  %470 = tail call ptr @llvm.thread.pointer() #14
  %471 = getelementptr inbounds %struct.thread_info, ptr %470, i32 0, i32 3
  %472 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %471) #17, !srcloc !10
  %473 = and i32 %472, -13
  %474 = or i32 %473, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %474) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %475 = call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %38, i32 noundef 16) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %472) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %481, label %477, !prof !8

477:                                              ; preds = %469, %465
  %478 = phi i32 [ %475, %469 ], [ 16, %465 ]
  %479 = sub i32 16, %478
  %480 = getelementptr i8, ptr %9, i32 %479
  call void @llvm.memset.p0.i32(ptr align 1 %480, i8 0, i32 %478, i1 false) #14
  br label %828

481:                                              ; preds = %469
  %482 = load ptr, ptr %43, align 4
  %483 = load i32, ptr %9, align 4
  %484 = and i32 %483, -144
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %828

486:                                              ; preds = %481
  %487 = getelementptr inbounds %struct.usb_device, ptr %482, i32 0, i32 20
  %488 = load ptr, ptr %487, align 4
  %489 = icmp eq ptr %488, null
  br i1 %489, label %828, label %490

490:                                              ; preds = %486
  %491 = getelementptr inbounds %struct.usb_config_descriptor, ptr %488, i32 0, i32 3
  %492 = load i8, ptr %491, align 4
  %493 = zext i8 %492 to i32
  %494 = icmp eq i8 %492, 0
  br i1 %494, label %828, label %495

495:                                              ; preds = %526, %490
  %496 = phi i32 [ %527, %526 ], [ 0, %490 ]
  %497 = getelementptr %struct.usb_host_config, ptr %488, i32 0, i32 3, i32 %496
  %498 = load ptr, ptr %497, align 4
  %499 = getelementptr inbounds %struct.usb_interface, ptr %498, i32 0, i32 2
  %500 = load i32, ptr %499, align 8
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %526, label %502

502:                                              ; preds = %495
  %503 = load ptr, ptr %498, align 8
  br label %504

504:                                              ; preds = %523, %502
  %505 = phi i32 [ 0, %502 ], [ %524, %523 ]
  %506 = getelementptr %struct.usb_host_interface, ptr %503, i32 %505
  %507 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %506, i32 0, i32 4
  %508 = load i8, ptr %507, align 4
  %509 = zext i8 %508 to i32
  %510 = icmp eq i8 %508, 0
  br i1 %510, label %523, label %511

511:                                              ; preds = %504
  %512 = getelementptr %struct.usb_host_interface, ptr %503, i32 %505, i32 3
  %513 = load ptr, ptr %512, align 4
  br label %517

514:                                              ; preds = %517
  %515 = add nuw nsw i32 %518, 1
  %516 = icmp eq i32 %515, %509
  br i1 %516, label %523, label %517

517:                                              ; preds = %514, %511
  %518 = phi i32 [ 0, %511 ], [ %515, %514 ]
  %519 = getelementptr %struct.usb_host_endpoint, ptr %513, i32 %518, i32 0, i32 2
  %520 = load i8, ptr %519, align 1
  %521 = zext i8 %520 to i32
  %522 = icmp eq i32 %483, %521
  br i1 %522, label %529, label %514

523:                                              ; preds = %514, %504
  %524 = add nuw i32 %505, 1
  %525 = icmp eq i32 %524, %500
  br i1 %525, label %526, label %504

526:                                              ; preds = %523, %495
  %527 = add nuw nsw i32 %496, 1
  %528 = icmp eq i32 %527, %493
  br i1 %528, label %828, label %495

529:                                              ; preds = %517
  %530 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %506, i32 0, i32 2
  %531 = load i8, ptr %530, align 2
  %532 = zext i8 %531 to i32
  %533 = getelementptr inbounds %struct.usb_device, ptr %482, i32 0, i32 3
  %534 = load i32, ptr %533, align 8
  %535 = icmp eq i32 %534, 7
  br i1 %535, label %536, label %828

536:                                              ; preds = %529
  %537 = icmp ugt i8 %531, 31
  br i1 %537, label %828, label %538

538:                                              ; preds = %536
  %539 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 13
  %540 = lshr i32 %532, 5
  %541 = getelementptr i32, ptr %539, i32 %540
  %542 = load volatile i32, ptr %541, align 4
  %543 = shl nuw i32 1, %532
  %544 = and i32 %542, %543
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %553

546:                                              ; preds = %538
  %547 = getelementptr inbounds %struct.usb_device, ptr %482, i32 0, i32 15
  %548 = getelementptr inbounds %struct.task_struct, ptr %470, i32 0, i32 52
  %549 = load i32, ptr %548, align 8
  %550 = getelementptr inbounds %struct.task_struct, ptr %470, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %547, ptr noundef nonnull @.str.31, i32 noundef %549, ptr noundef %550, i32 noundef %532) #15
  %551 = call fastcc i32 @claimintf(ptr noundef %40, i32 noundef %532) #14
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %830

553:                                              ; preds = %546, %538
  %554 = getelementptr inbounds %struct.usbdevfs_bulktransfer, ptr %9, i32 0, i32 1
  %555 = load i32, ptr %554, align 4
  %556 = icmp ugt i32 %555, 2147483522
  br i1 %556, label %828, label %557

557:                                              ; preds = %553
  %558 = load i32, ptr %9, align 4
  %559 = and i32 %558, 128
  %560 = load i32, ptr %482, align 8
  %561 = shl i32 %560, 8
  %562 = shl i32 %558, 15
  %563 = and i32 %562, 4161536
  %564 = or i32 %563, %561
  %565 = or i32 %559, %564
  %566 = or i32 %565, -1073741824
  %567 = icmp eq i32 %559, 0
  %568 = getelementptr inbounds %struct.usb_device, ptr %482, i32 0, i32 21
  %569 = getelementptr inbounds %struct.usb_device, ptr %482, i32 0, i32 22
  %570 = select i1 %567, ptr %569, ptr %568
  %571 = lshr i32 %564, 15
  %572 = and i32 %571, 15
  %573 = getelementptr ptr, ptr %570, i32 %572
  %574 = load ptr, ptr %573, align 4
  %575 = icmp eq ptr %574, null
  br i1 %575, label %828, label %576

576:                                              ; preds = %557
  %577 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %574, i32 0, i32 4
  %578 = load i16, ptr %577, align 1
  %579 = and i16 %578, 2047
  %580 = icmp eq i16 %579, 0
  br i1 %580, label %828, label %581

581:                                              ; preds = %576
  %582 = add nuw nsw i32 %555, 124
  %583 = zext i32 %582 to i64
  %584 = load volatile i32, ptr @usbfs_memory_mb, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @usbfs_memory_usage) #14, !srcloc !18
  %585 = call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @usbfs_memory_usage, ptr nonnull @usbfs_memory_usage, i64 %583, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !19
  %586 = icmp eq i32 %584, 0
  br i1 %586, label %594, label %587

587:                                              ; preds = %581
  %588 = zext i32 %584 to i64
  %589 = shl nuw nsw i64 %588, 20
  %590 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull @usbfs_memory_usage, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !20
  %591 = icmp ugt i64 %590, %589
  br i1 %591, label %592, label %594

592:                                              ; preds = %587
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @usbfs_memory_usage) #14, !srcloc !18
  %593 = call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @usbfs_memory_usage, ptr nonnull @usbfs_memory_usage, i64 %583, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !21
  br label %828

594:                                              ; preds = %587, %581
  %595 = call noalias align 64 ptr @__kmalloc(i32 noundef %555, i32 noundef 11456) #19
  %596 = icmp eq ptr %595, null
  br i1 %596, label %823, label %597

597:                                              ; preds = %594
  %598 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %599 = icmp eq ptr %598, null
  br i1 %599, label %823, label %600

600:                                              ; preds = %597
  %601 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %574, i32 0, i32 3
  %602 = load i8, ptr %601, align 1
  %603 = and i8 %602, 3
  %604 = icmp eq i8 %603, 3
  br i1 %604, label %605, label %630

605:                                              ; preds = %600
  %606 = and i32 %566, 2147483520
  %607 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %574, i32 0, i32 5
  %608 = load i8, ptr %607, align 2
  %609 = zext i8 %608 to i32
  %610 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 8
  store ptr %482, ptr %610, align 4
  %611 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 10
  store i32 %606, ptr %611, align 4
  %612 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 14
  store ptr %595, ptr %612, align 4
  %613 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 19
  store i32 %555, ptr %613, align 4
  %614 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 28
  store ptr null, ptr %614, align 4
  %615 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 27
  store ptr null, ptr %615, align 4
  %616 = getelementptr inbounds %struct.usb_device, ptr %482, i32 0, i32 4
  %617 = load i32, ptr %616, align 4
  %618 = icmp eq i32 %617, 3
  %619 = icmp ugt i32 %617, 4
  %620 = or i1 %618, %619
  br i1 %620, label %621, label %626

621:                                              ; preds = %605
  %622 = call i32 @llvm.smax.i32(i32 %609, i32 1) #14
  %623 = call i32 @llvm.umin.i32(i32 %622, i32 16) #14
  %624 = add nsw i32 %623, -1
  %625 = shl nuw nsw i32 1, %624
  br label %626

626:                                              ; preds = %621, %605
  %627 = phi i32 [ %625, %621 ], [ %609, %605 ]
  %628 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 25
  store i32 %627, ptr %628, align 4
  %629 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 23
  store i32 -1, ptr %629, align 4
  br label %637

630:                                              ; preds = %600
  %631 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 8
  store ptr %482, ptr %631, align 4
  %632 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 10
  store i32 %566, ptr %632, align 4
  %633 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 14
  store ptr %595, ptr %633, align 4
  %634 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 19
  store i32 %555, ptr %634, align 4
  %635 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 28
  store ptr null, ptr %635, align 4
  %636 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 27
  store ptr null, ptr %636, align 4
  br label %637

637:                                              ; preds = %630, %626
  %638 = phi i32 [ %606, %626 ], [ %566, %630 ]
  %639 = getelementptr inbounds %struct.usbdevfs_bulktransfer, ptr %9, i32 0, i32 2
  %640 = load i32, ptr %639, align 4
  %641 = load i32, ptr %9, align 4
  %642 = and i32 %641, 128
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %734, label %644

644:                                              ; preds = %637
  %645 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %646 = icmp eq i8 %645, 0
  br i1 %646, label %658, label %647

647:                                              ; preds = %644
  %648 = lshr i32 %638, 15
  %649 = and i32 %648, 15
  %650 = lshr i32 %638, 30
  %651 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %650
  %652 = load ptr, ptr %651, align 4
  %653 = lshr i32 %638, 7
  %654 = and i32 %653, 1
  %655 = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %654
  %656 = load ptr, ptr %655, align 4
  %657 = getelementptr inbounds %struct.usb_device, ptr %482, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %657, ptr noundef nonnull @.str.40, i32 noundef %649, ptr noundef %652, ptr noundef %656, i32 noundef %555, i32 noundef %640) #15
  br label %658

658:                                              ; preds = %647, %644
  %659 = getelementptr inbounds %struct.usb_device, ptr %482, i32 0, i32 15, i32 9
  call void @mutex_unlock(ptr noundef %659) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %660 = getelementptr inbounds %struct.completion, ptr %6, i32 0, i32 1, i32 1
  store i64 0, ptr %6, align 8
  store ptr %660, ptr %660, align 8
  %661 = getelementptr inbounds %struct.completion, ptr %6, i32 0, i32 1, i32 1, i32 1
  store ptr %660, ptr %661, align 4
  %662 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 27
  store ptr %6, ptr %662, align 4
  %663 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 28
  store ptr @usbfs_blocking_completion, ptr %663, align 4
  %664 = call i32 @usb_submit_urb(ptr noundef nonnull %598, i32 noundef 3264) #14
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %690, !prof !8

666:                                              ; preds = %658
  %667 = icmp eq i32 %640, 0
  br i1 %667, label %670, label %668

668:                                              ; preds = %666
  %669 = call i32 @__msecs_to_jiffies(i32 noundef %640) #14
  br label %670

670:                                              ; preds = %668, %666
  %671 = phi i32 [ 2147483647, %666 ], [ %669, %668 ]
  %672 = call i32 @wait_for_completion_killable_timeout(ptr noundef nonnull %6, i32 noundef %671) #14
  %673 = icmp slt i32 %672, 1
  br i1 %673, label %677, label %674

674:                                              ; preds = %670
  %675 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 12
  %676 = load i32, ptr %675, align 4
  br label %686

677:                                              ; preds = %670
  call void @usb_kill_urb(ptr noundef nonnull %598) #14
  %678 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 12
  %679 = load i32, ptr %678, align 4
  %680 = icmp eq i32 %679, -2
  br i1 %680, label %681, label %686

681:                                              ; preds = %677
  %682 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 20
  %683 = load i32, ptr %682, align 4
  %684 = icmp slt i32 %672, 0
  %685 = select i1 %684, i32 -4, i32 -110
  br label %690

686:                                              ; preds = %677, %674
  %687 = phi i32 [ %676, %674 ], [ %679, %677 ]
  %688 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 20
  %689 = load i32, ptr %688, align 4
  br label %690

690:                                              ; preds = %686, %681, %658
  %691 = phi i32 [ %683, %681 ], [ %689, %686 ], [ 0, %658 ]
  %692 = phi i32 [ %685, %681 ], [ %687, %686 ], [ %664, %658 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  call void @mutex_lock(ptr noundef %659) #14
  %693 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %694 = icmp eq i8 %693, 0
  br i1 %694, label %710, label %695

695:                                              ; preds = %690
  %696 = lshr i32 %638, 15
  %697 = and i32 %696, 15
  %698 = lshr i32 %638, 30
  %699 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %698
  %700 = load ptr, ptr %699, align 4
  %701 = lshr i32 %638, 7
  %702 = and i32 %701, 1
  %703 = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %702
  %704 = load ptr, ptr %703, align 4
  %705 = getelementptr inbounds %struct.usb_device, ptr %482, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %705, ptr noundef nonnull @.str.41, i32 noundef %697, ptr noundef %700, ptr noundef %704, i32 noundef %691, i32 noundef %692) #15
  %706 = load i32, ptr @usbfs_snoop_max, align 4
  %707 = call i32 @llvm.umin.i32(i32 %706, i32 %691) #14
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %710, label %709

709:                                              ; preds = %695
  call void @print_hex_dump(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %595, i32 noundef %707, i1 noundef zeroext true) #14
  br label %710

710:                                              ; preds = %709, %695, %690
  %711 = icmp eq i32 %692, 0
  %712 = icmp ne i32 %691, 0
  %713 = and i1 %712, %711
  br i1 %713, label %714, label %818

714:                                              ; preds = %710
  %715 = getelementptr inbounds %struct.usbdevfs_bulktransfer, ptr %9, i32 0, i32 3
  %716 = load ptr, ptr %715, align 4
  %717 = icmp slt i32 %691, 0
  %718 = load i1, ptr @check_copy_size.__already_done, align 1
  %719 = xor i1 %718, true
  %720 = select i1 %717, i1 %719, i1 false
  br i1 %720, label %721, label %722, !prof !13

721:                                              ; preds = %714
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %722

722:                                              ; preds = %721, %714
  br i1 %717, label %823, label %723, !prof !13

723:                                              ; preds = %722
  %724 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %716, i32 %691, i32 -1090519040) #16, !srcloc !9
  %725 = extractvalue { i32, i32 } %724, 0
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %727, label %823

727:                                              ; preds = %723
  %728 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %471) #17, !srcloc !10
  %729 = and i32 %728, -13
  %730 = or i32 %729, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %730) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %731 = call i32 @arm_copy_to_user(ptr noundef %716, ptr noundef nonnull %595, i32 noundef %691) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %728) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %732 = icmp eq i32 %731, 0
  %733 = select i1 %732, i32 %691, i32 -14
  br label %823

734:                                              ; preds = %637
  %735 = icmp eq i32 %555, 0
  br i1 %735, label %752, label %736

736:                                              ; preds = %734
  %737 = getelementptr inbounds %struct.usbdevfs_bulktransfer, ptr %9, i32 0, i32 3
  %738 = load ptr, ptr %737, align 4
  %739 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %738, i32 %555, i32 -1090519040) #16, !srcloc !17
  %740 = extractvalue { i32, i32 } %739, 0
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %742, label %748, !prof !8

742:                                              ; preds = %736
  %743 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %471) #17, !srcloc !10
  %744 = and i32 %743, -13
  %745 = or i32 %744, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %745) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %746 = call i32 @arm_copy_from_user(ptr noundef nonnull %595, ptr noundef %738, i32 noundef %555) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %743) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %752, label %748, !prof !8

748:                                              ; preds = %742, %736
  %749 = phi i32 [ %746, %742 ], [ %555, %736 ]
  %750 = sub i32 %555, %749
  %751 = getelementptr i8, ptr %595, i32 %750
  call void @llvm.memset.p0.i32(ptr align 1 %751, i8 0, i32 %749, i1 false) #14
  br label %823

752:                                              ; preds = %742, %734
  %753 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %754 = icmp eq i8 %753, 0
  br i1 %754, label %770, label %755

755:                                              ; preds = %752
  %756 = lshr i32 %638, 15
  %757 = and i32 %756, 15
  %758 = lshr i32 %638, 30
  %759 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %758
  %760 = load ptr, ptr %759, align 4
  %761 = lshr i32 %638, 7
  %762 = and i32 %761, 1
  %763 = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %762
  %764 = load ptr, ptr %763, align 4
  %765 = getelementptr inbounds %struct.usb_device, ptr %482, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %765, ptr noundef nonnull @.str.40, i32 noundef %757, ptr noundef %760, ptr noundef %764, i32 noundef %555, i32 noundef %640) #15
  %766 = load i32, ptr @usbfs_snoop_max, align 4
  %767 = call i32 @llvm.umin.i32(i32 %766, i32 %555) #14
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %770, label %769

769:                                              ; preds = %755
  call void @print_hex_dump(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %595, i32 noundef %767, i1 noundef zeroext true) #14
  br label %770

770:                                              ; preds = %769, %755, %752
  %771 = getelementptr inbounds %struct.usb_device, ptr %482, i32 0, i32 15, i32 9
  call void @mutex_unlock(ptr noundef %771) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %772 = getelementptr inbounds %struct.completion, ptr %7, i32 0, i32 1, i32 1
  store i64 0, ptr %7, align 8
  store ptr %772, ptr %772, align 8
  %773 = getelementptr inbounds %struct.completion, ptr %7, i32 0, i32 1, i32 1, i32 1
  store ptr %772, ptr %773, align 4
  %774 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 27
  store ptr %7, ptr %774, align 4
  %775 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 28
  store ptr @usbfs_blocking_completion, ptr %775, align 4
  %776 = call i32 @usb_submit_urb(ptr noundef nonnull %598, i32 noundef 3264) #14
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %802, !prof !8

778:                                              ; preds = %770
  %779 = icmp eq i32 %640, 0
  br i1 %779, label %782, label %780

780:                                              ; preds = %778
  %781 = call i32 @__msecs_to_jiffies(i32 noundef %640) #14
  br label %782

782:                                              ; preds = %780, %778
  %783 = phi i32 [ 2147483647, %778 ], [ %781, %780 ]
  %784 = call i32 @wait_for_completion_killable_timeout(ptr noundef nonnull %7, i32 noundef %783) #14
  %785 = icmp slt i32 %784, 1
  br i1 %785, label %789, label %786

786:                                              ; preds = %782
  %787 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 12
  %788 = load i32, ptr %787, align 4
  br label %798

789:                                              ; preds = %782
  call void @usb_kill_urb(ptr noundef nonnull %598) #14
  %790 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 12
  %791 = load i32, ptr %790, align 4
  %792 = icmp eq i32 %791, -2
  br i1 %792, label %793, label %798

793:                                              ; preds = %789
  %794 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 20
  %795 = load i32, ptr %794, align 4
  %796 = icmp slt i32 %784, 0
  %797 = select i1 %796, i32 -4, i32 -110
  br label %802

798:                                              ; preds = %789, %786
  %799 = phi i32 [ %788, %786 ], [ %791, %789 ]
  %800 = getelementptr inbounds %struct.urb, ptr %598, i32 0, i32 20
  %801 = load i32, ptr %800, align 4
  br label %802

802:                                              ; preds = %798, %793, %770
  %803 = phi i32 [ %795, %793 ], [ %801, %798 ], [ 0, %770 ]
  %804 = phi i32 [ %797, %793 ], [ %799, %798 ], [ %776, %770 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @mutex_lock(ptr noundef %771) #14
  %805 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %806 = icmp eq i8 %805, 0
  br i1 %806, label %818, label %807

807:                                              ; preds = %802
  %808 = lshr i32 %638, 15
  %809 = and i32 %808, 15
  %810 = lshr i32 %638, 30
  %811 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %810
  %812 = load ptr, ptr %811, align 4
  %813 = lshr i32 %638, 7
  %814 = and i32 %813, 1
  %815 = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %814
  %816 = load ptr, ptr %815, align 4
  %817 = getelementptr inbounds %struct.usb_device, ptr %482, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %817, ptr noundef nonnull @.str.41, i32 noundef %809, ptr noundef %812, ptr noundef %816, i32 noundef %803, i32 noundef %804) #15
  br label %818

818:                                              ; preds = %807, %802, %710
  %819 = phi i32 [ %691, %710 ], [ %803, %802 ], [ %803, %807 ]
  %820 = phi i32 [ %692, %710 ], [ %804, %802 ], [ %804, %807 ]
  %821 = icmp slt i32 %820, 0
  %822 = select i1 %821, i32 %820, i32 %819
  br label %823

823:                                              ; preds = %818, %748, %727, %723, %722, %597, %594
  %824 = phi ptr [ %595, %597 ], [ null, %594 ], [ %595, %722 ], [ %595, %723 ], [ %595, %748 ], [ %595, %727 ], [ %595, %818 ]
  %825 = phi i32 [ -12, %597 ], [ -12, %594 ], [ -14, %722 ], [ -14, %723 ], [ -14, %748 ], [ %733, %727 ], [ %822, %818 ]
  %826 = phi ptr [ null, %597 ], [ null, %594 ], [ %598, %722 ], [ %598, %723 ], [ %598, %748 ], [ %598, %727 ], [ %598, %818 ]
  call void @usb_free_urb(ptr noundef %826) #14
  call void @kfree(ptr noundef %824) #14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @usbfs_memory_usage) #14, !srcloc !18
  %827 = call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @usbfs_memory_usage, ptr nonnull @usbfs_memory_usage, i64 %583, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !21
  br label %830

828:                                              ; preds = %592, %576, %557, %553, %536, %529, %526, %490, %486, %481, %477
  %829 = phi i32 [ -113, %529 ], [ -22, %536 ], [ -22, %481 ], [ -3, %486 ], [ -2, %490 ], [ -12, %592 ], [ -22, %557 ], [ -22, %576 ], [ -22, %553 ], [ -14, %477 ], [ -2, %526 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  br label %2698

830:                                              ; preds = %823, %546
  %831 = phi i32 [ %825, %823 ], [ %551, %546 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  %832 = icmp sgt i32 %831, -1
  br i1 %832, label %833, label %2698

833:                                              ; preds = %830
  %834 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %33) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %33, ptr noundef %42) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %834, ptr noundef nonnull align 8 dereferenceable(16) %33, i32 16, i1 false) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %33) #14
  br label %2705

835:                                              ; preds = %163
  %836 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %837 = icmp eq i8 %836, 0
  br i1 %837, label %839, label %838

838:                                              ; preds = %835
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %839

839:                                              ; preds = %838, %835
  %840 = tail call ptr @llvm.thread.pointer() #14
  %841 = getelementptr inbounds %struct.thread_info, ptr %840, i32 0, i32 3
  %842 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %841) #17, !srcloc !10
  %843 = and i32 %842, -13
  %844 = or i32 %843, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %844) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %845 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %38, i32 -1090519041) #14, !srcloc !22
  %846 = extractvalue { i32, i32 } %845, 0
  %847 = extractvalue { i32, i32 } %845, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %842) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %848 = icmp eq i32 %846, 0
  br i1 %848, label %849, label %2698

849:                                              ; preds = %839
  %850 = load ptr, ptr %43, align 4
  %851 = and i32 %847, -144
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %853, label %2698

853:                                              ; preds = %849
  %854 = getelementptr inbounds %struct.usb_device, ptr %850, i32 0, i32 20
  %855 = load ptr, ptr %854, align 4
  %856 = icmp eq ptr %855, null
  br i1 %856, label %2698, label %857

857:                                              ; preds = %853
  %858 = getelementptr inbounds %struct.usb_config_descriptor, ptr %855, i32 0, i32 3
  %859 = load i8, ptr %858, align 4
  %860 = zext i8 %859 to i32
  %861 = icmp eq i8 %859, 0
  br i1 %861, label %2698, label %862

862:                                              ; preds = %893, %857
  %863 = phi i32 [ %894, %893 ], [ 0, %857 ]
  %864 = getelementptr %struct.usb_host_config, ptr %855, i32 0, i32 3, i32 %863
  %865 = load ptr, ptr %864, align 4
  %866 = getelementptr inbounds %struct.usb_interface, ptr %865, i32 0, i32 2
  %867 = load i32, ptr %866, align 8
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %893, label %869

869:                                              ; preds = %862
  %870 = load ptr, ptr %865, align 8
  br label %871

871:                                              ; preds = %890, %869
  %872 = phi i32 [ 0, %869 ], [ %891, %890 ]
  %873 = getelementptr %struct.usb_host_interface, ptr %870, i32 %872
  %874 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %873, i32 0, i32 4
  %875 = load i8, ptr %874, align 4
  %876 = zext i8 %875 to i32
  %877 = icmp eq i8 %875, 0
  br i1 %877, label %890, label %878

878:                                              ; preds = %871
  %879 = getelementptr %struct.usb_host_interface, ptr %870, i32 %872, i32 3
  %880 = load ptr, ptr %879, align 4
  br label %884

881:                                              ; preds = %884
  %882 = add nuw nsw i32 %885, 1
  %883 = icmp eq i32 %882, %876
  br i1 %883, label %890, label %884

884:                                              ; preds = %881, %878
  %885 = phi i32 [ 0, %878 ], [ %882, %881 ]
  %886 = getelementptr %struct.usb_host_endpoint, ptr %880, i32 %885, i32 0, i32 2
  %887 = load i8, ptr %886, align 1
  %888 = zext i8 %887 to i32
  %889 = icmp eq i32 %847, %888
  br i1 %889, label %896, label %881

890:                                              ; preds = %881, %871
  %891 = add nuw i32 %872, 1
  %892 = icmp eq i32 %891, %867
  br i1 %892, label %893, label %871

893:                                              ; preds = %890, %862
  %894 = add nuw nsw i32 %863, 1
  %895 = icmp eq i32 %894, %860
  br i1 %895, label %2698, label %862

896:                                              ; preds = %884
  %897 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %873, i32 0, i32 2
  %898 = load i8, ptr %897, align 2
  %899 = zext i8 %898 to i32
  %900 = getelementptr inbounds %struct.usb_device, ptr %850, i32 0, i32 3
  %901 = load i32, ptr %900, align 8
  %902 = icmp eq i32 %901, 7
  br i1 %902, label %903, label %2698

903:                                              ; preds = %896
  %904 = icmp ugt i8 %898, 31
  br i1 %904, label %2698, label %905

905:                                              ; preds = %903
  %906 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 13
  %907 = lshr i32 %899, 5
  %908 = getelementptr i32, ptr %906, i32 %907
  %909 = load volatile i32, ptr %908, align 4
  %910 = shl nuw i32 1, %899
  %911 = and i32 %909, %910
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %913, label %922

913:                                              ; preds = %905
  %914 = getelementptr inbounds %struct.usb_device, ptr %850, i32 0, i32 15
  %915 = getelementptr inbounds %struct.task_struct, ptr %840, i32 0, i32 52
  %916 = load i32, ptr %915, align 8
  %917 = getelementptr inbounds %struct.task_struct, ptr %840, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %914, ptr noundef nonnull @.str.31, i32 noundef %916, ptr noundef %917, i32 noundef %899) #15
  %918 = tail call fastcc i32 @claimintf(ptr noundef %40, i32 noundef %899) #14
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %920, label %945

920:                                              ; preds = %913
  %921 = load ptr, ptr %43, align 4
  br label %922

922:                                              ; preds = %920, %905
  %923 = phi ptr [ %921, %920 ], [ %850, %905 ]
  %924 = and i32 %847, 128
  %925 = icmp eq i32 %924, 0
  %926 = getelementptr inbounds %struct.usb_device, ptr %923, i32 0, i32 21
  %927 = getelementptr inbounds %struct.usb_device, ptr %923, i32 0, i32 22
  %928 = select i1 %925, ptr %927, ptr %926
  %929 = and i32 %847, 15
  %930 = getelementptr ptr, ptr %928, i32 %929
  %931 = load ptr, ptr %930, align 4
  %932 = icmp eq ptr %931, null
  br i1 %932, label %943, label %933

933:                                              ; preds = %922
  %934 = getelementptr inbounds %struct.usb_host_endpoint, ptr %931, i32 0, i32 4
  %935 = load volatile ptr, ptr %934, align 4
  %936 = icmp eq ptr %935, %934
  br i1 %936, label %943, label %937

937:                                              ; preds = %933
  %938 = getelementptr inbounds %struct.usb_device, ptr %923, i32 0, i32 15
  %939 = getelementptr inbounds %struct.task_struct, ptr %840, i32 0, i32 52
  %940 = load i32, ptr %939, align 8
  %941 = getelementptr inbounds %struct.task_struct, ptr %840, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %938, ptr noundef nonnull @.str.44, i32 noundef %940, ptr noundef %941, ptr noundef nonnull @.str.43, i32 noundef %847) #15
  %942 = load ptr, ptr %43, align 4
  br label %943

943:                                              ; preds = %937, %933, %922
  %944 = phi ptr [ %923, %922 ], [ %923, %933 ], [ %942, %937 ]
  tail call void @usb_reset_endpoint(ptr noundef %944, i32 noundef %847) #14
  br label %947

945:                                              ; preds = %913
  %946 = icmp sgt i32 %918, -1
  br i1 %946, label %947, label %2698

947:                                              ; preds = %945, %943
  %948 = phi i32 [ 0, %943 ], [ %918, %945 ]
  %949 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %34) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %34, ptr noundef %42) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %949, ptr noundef nonnull align 8 dereferenceable(16) %34, i32 16, i1 false) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %34) #14
  br label %2705

950:                                              ; preds = %163
  %951 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %952 = icmp eq i8 %951, 0
  br i1 %952, label %955, label %953

953:                                              ; preds = %950
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  %954 = load ptr, ptr %43, align 4
  br label %955

955:                                              ; preds = %953, %950
  %956 = phi ptr [ %954, %953 ], [ %158, %950 ]
  %957 = getelementptr inbounds %struct.usb_device, ptr %956, i32 0, i32 20
  %958 = load ptr, ptr %957, align 4
  %959 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 18
  %960 = load i8, ptr %959, align 1, !range !14
  %961 = icmp ne i8 %960, 0
  %962 = icmp ne ptr %958, null
  %963 = select i1 %961, i1 %962, i1 false
  br i1 %963, label %964, label %1000

964:                                              ; preds = %955
  %965 = getelementptr inbounds %struct.usb_config_descriptor, ptr %958, i32 0, i32 3
  %966 = load i8, ptr %965, align 4
  %967 = zext i8 %966 to i32
  %968 = icmp eq i8 %966, 0
  br i1 %968, label %1000, label %969

969:                                              ; preds = %964
  %970 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 13
  br label %971

971:                                              ; preds = %997, %969
  %972 = phi i32 [ 0, %969 ], [ %998, %997 ]
  %973 = getelementptr %struct.usb_host_config, ptr %958, i32 0, i32 3, i32 %972
  %974 = load ptr, ptr %973, align 4
  %975 = getelementptr inbounds %struct.usb_interface, ptr %974, i32 0, i32 7, i32 6
  %976 = load ptr, ptr %975, align 8
  %977 = icmp eq ptr %976, null
  br i1 %977, label %997, label %978

978:                                              ; preds = %971
  %979 = getelementptr inbounds %struct.usb_interface, ptr %974, i32 0, i32 1
  %980 = load ptr, ptr %979, align 4
  %981 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %980, i32 0, i32 2
  %982 = load i8, ptr %981, align 2
  %983 = zext i8 %982 to i32
  %984 = lshr i32 %983, 5
  %985 = getelementptr i32, ptr %970, i32 %984
  %986 = load volatile i32, ptr %985, align 4
  %987 = and i32 %983, 31
  %988 = shl nuw i32 1, %987
  %989 = and i32 %988, %986
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %991, label %997

991:                                              ; preds = %978
  %992 = zext i8 %982 to i32
  %993 = getelementptr inbounds %struct.usb_device, ptr %956, i32 0, i32 15
  %994 = load ptr, ptr %976, align 4
  %995 = tail call ptr @llvm.thread.pointer() #14
  %996 = getelementptr inbounds %struct.task_struct, ptr %995, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %993, ptr noundef nonnull @.str.45, i32 noundef %992, ptr noundef %994, ptr noundef %996) #15
  br label %2700

997:                                              ; preds = %978, %971
  %998 = add nuw nsw i32 %972, 1
  %999 = icmp eq i32 %998, %967
  br i1 %999, label %1000, label %971

1000:                                             ; preds = %997, %964, %955
  %1001 = tail call i32 @usb_reset_device(ptr noundef %956) #14
  br label %2702

1002:                                             ; preds = %163
  %1003 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %1004 = icmp eq i8 %1003, 0
  br i1 %1004, label %1006, label %1005

1005:                                             ; preds = %1002
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %1006

1006:                                             ; preds = %1005, %1002
  %1007 = tail call ptr @llvm.thread.pointer() #14
  %1008 = getelementptr inbounds %struct.thread_info, ptr %1007, i32 0, i32 3
  %1009 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1008) #17, !srcloc !10
  %1010 = and i32 %1009, -13
  %1011 = or i32 %1010, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1011) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1012 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %38, i32 -1090519041) #14, !srcloc !23
  %1013 = extractvalue { i32, i32 } %1012, 0
  %1014 = extractvalue { i32, i32 } %1012, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1009) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1015 = icmp eq i32 %1013, 0
  br i1 %1015, label %1016, label %2698

1016:                                             ; preds = %1006
  %1017 = load ptr, ptr %43, align 4
  %1018 = and i32 %1014, -144
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1020, label %2698

1020:                                             ; preds = %1016
  %1021 = getelementptr inbounds %struct.usb_device, ptr %1017, i32 0, i32 20
  %1022 = load ptr, ptr %1021, align 4
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %2698, label %1024

1024:                                             ; preds = %1020
  %1025 = getelementptr inbounds %struct.usb_config_descriptor, ptr %1022, i32 0, i32 3
  %1026 = load i8, ptr %1025, align 4
  %1027 = zext i8 %1026 to i32
  %1028 = icmp eq i8 %1026, 0
  br i1 %1028, label %2698, label %1029

1029:                                             ; preds = %1060, %1024
  %1030 = phi i32 [ %1061, %1060 ], [ 0, %1024 ]
  %1031 = getelementptr %struct.usb_host_config, ptr %1022, i32 0, i32 3, i32 %1030
  %1032 = load ptr, ptr %1031, align 4
  %1033 = getelementptr inbounds %struct.usb_interface, ptr %1032, i32 0, i32 2
  %1034 = load i32, ptr %1033, align 8
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1060, label %1036

1036:                                             ; preds = %1029
  %1037 = load ptr, ptr %1032, align 8
  br label %1038

1038:                                             ; preds = %1057, %1036
  %1039 = phi i32 [ 0, %1036 ], [ %1058, %1057 ]
  %1040 = getelementptr %struct.usb_host_interface, ptr %1037, i32 %1039
  %1041 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1040, i32 0, i32 4
  %1042 = load i8, ptr %1041, align 4
  %1043 = zext i8 %1042 to i32
  %1044 = icmp eq i8 %1042, 0
  br i1 %1044, label %1057, label %1045

1045:                                             ; preds = %1038
  %1046 = getelementptr %struct.usb_host_interface, ptr %1037, i32 %1039, i32 3
  %1047 = load ptr, ptr %1046, align 4
  br label %1051

1048:                                             ; preds = %1051
  %1049 = add nuw nsw i32 %1052, 1
  %1050 = icmp eq i32 %1049, %1043
  br i1 %1050, label %1057, label %1051

1051:                                             ; preds = %1048, %1045
  %1052 = phi i32 [ 0, %1045 ], [ %1049, %1048 ]
  %1053 = getelementptr %struct.usb_host_endpoint, ptr %1047, i32 %1052, i32 0, i32 2
  %1054 = load i8, ptr %1053, align 1
  %1055 = zext i8 %1054 to i32
  %1056 = icmp eq i32 %1014, %1055
  br i1 %1056, label %1063, label %1048

1057:                                             ; preds = %1048, %1038
  %1058 = add nuw i32 %1039, 1
  %1059 = icmp eq i32 %1058, %1034
  br i1 %1059, label %1060, label %1038

1060:                                             ; preds = %1057, %1029
  %1061 = add nuw nsw i32 %1030, 1
  %1062 = icmp eq i32 %1061, %1027
  br i1 %1062, label %2698, label %1029

1063:                                             ; preds = %1051
  %1064 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1040, i32 0, i32 2
  %1065 = load i8, ptr %1064, align 2
  %1066 = zext i8 %1065 to i32
  %1067 = getelementptr inbounds %struct.usb_device, ptr %1017, i32 0, i32 3
  %1068 = load i32, ptr %1067, align 8
  %1069 = icmp eq i32 %1068, 7
  br i1 %1069, label %1070, label %2698

1070:                                             ; preds = %1063
  %1071 = icmp ugt i8 %1065, 31
  br i1 %1071, label %2698, label %1072

1072:                                             ; preds = %1070
  %1073 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 13
  %1074 = lshr i32 %1066, 5
  %1075 = getelementptr i32, ptr %1073, i32 %1074
  %1076 = load volatile i32, ptr %1075, align 4
  %1077 = shl nuw i32 1, %1066
  %1078 = and i32 %1076, %1077
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1080, label %1089

1080:                                             ; preds = %1072
  %1081 = getelementptr inbounds %struct.usb_device, ptr %1017, i32 0, i32 15
  %1082 = getelementptr inbounds %struct.task_struct, ptr %1007, i32 0, i32 52
  %1083 = load i32, ptr %1082, align 8
  %1084 = getelementptr inbounds %struct.task_struct, ptr %1007, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1081, ptr noundef nonnull @.str.31, i32 noundef %1083, ptr noundef %1084, i32 noundef %1066) #15
  %1085 = tail call fastcc i32 @claimintf(ptr noundef %40, i32 noundef %1066) #14
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1087, label %1120

1087:                                             ; preds = %1080
  %1088 = load ptr, ptr %43, align 4
  br label %1089

1089:                                             ; preds = %1087, %1072
  %1090 = phi ptr [ %1088, %1087 ], [ %1017, %1072 ]
  %1091 = and i32 %1014, 128
  %1092 = icmp eq i32 %1091, 0
  %1093 = getelementptr inbounds %struct.usb_device, ptr %1090, i32 0, i32 21
  %1094 = getelementptr inbounds %struct.usb_device, ptr %1090, i32 0, i32 22
  %1095 = select i1 %1092, ptr %1094, ptr %1093
  %1096 = and i32 %1014, 15
  %1097 = getelementptr ptr, ptr %1095, i32 %1096
  %1098 = load ptr, ptr %1097, align 4
  %1099 = icmp eq ptr %1098, null
  br i1 %1099, label %1110, label %1100

1100:                                             ; preds = %1089
  %1101 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1098, i32 0, i32 4
  %1102 = load volatile ptr, ptr %1101, align 4
  %1103 = icmp eq ptr %1102, %1101
  br i1 %1103, label %1110, label %1104

1104:                                             ; preds = %1100
  %1105 = getelementptr inbounds %struct.usb_device, ptr %1090, i32 0, i32 15
  %1106 = getelementptr inbounds %struct.task_struct, ptr %1007, i32 0, i32 52
  %1107 = load i32, ptr %1106, align 8
  %1108 = getelementptr inbounds %struct.task_struct, ptr %1007, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1105, ptr noundef nonnull @.str.44, i32 noundef %1107, ptr noundef %1108, ptr noundef nonnull @.str.46, i32 noundef %1014) #15
  %1109 = load ptr, ptr %43, align 4
  br label %1110

1110:                                             ; preds = %1104, %1100, %1089
  %1111 = phi ptr [ %1109, %1104 ], [ %1090, %1100 ], [ %1090, %1089 ]
  %1112 = load i32, ptr %1111, align 8
  %1113 = shl i32 %1112, 8
  %1114 = shl i32 %1014, 15
  %1115 = and i32 %1114, 4161536
  %1116 = or i32 %1091, %1115
  %1117 = or i32 %1116, %1113
  %1118 = or i32 %1117, -1073741824
  %1119 = tail call i32 @usb_clear_halt(ptr noundef %1111, i32 noundef %1118) #14
  br label %1120

1120:                                             ; preds = %1110, %1080
  %1121 = phi i32 [ %1119, %1110 ], [ %1085, %1080 ]
  %1122 = icmp sgt i32 %1121, -1
  br i1 %1122, label %1123, label %2698

1123:                                             ; preds = %1120
  %1124 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %35) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %35, ptr noundef %42) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1124, ptr noundef nonnull align 8 dereferenceable(16) %35, i32 16, i1 false) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %35) #14
  br label %2705

1125:                                             ; preds = %163
  %1126 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %1127 = icmp eq i8 %1126, 0
  br i1 %1127, label %1129, label %1128

1128:                                             ; preds = %1125
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %1129

1129:                                             ; preds = %1128, %1125
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %10) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(260) %10, i8 0, i32 260, i1 false) #14, !annotation !16
  %1130 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 260, i32 -1090519040) #16
  %1131 = extractvalue { i32, i32 } %1130, 0
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1133, label %1141, !prof !8

1133:                                             ; preds = %1129
  %1134 = tail call ptr @llvm.thread.pointer() #14
  %1135 = getelementptr inbounds %struct.thread_info, ptr %1134, i32 0, i32 3
  %1136 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1135) #17, !srcloc !10
  %1137 = and i32 %1136, -13
  %1138 = or i32 %1137, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1138) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1139 = call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %38, i32 noundef 260) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1136) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1145, label %1141, !prof !8

1141:                                             ; preds = %1133, %1129
  %1142 = phi i32 [ %1139, %1133 ], [ 260, %1129 ]
  %1143 = sub i32 260, %1142
  %1144 = getelementptr i8, ptr %10, i32 %1143
  call void @llvm.memset.p0.i32(ptr align 1 %1144, i8 0, i32 %1142, i1 false) #14
  br label %1164

1145:                                             ; preds = %1133
  %1146 = load ptr, ptr %43, align 4
  %1147 = load i32, ptr %10, align 4
  %1148 = call ptr @usb_ifnum_to_if(ptr noundef %1146, i32 noundef %1147) #14
  %1149 = icmp eq ptr %1148, null
  br i1 %1149, label %1164, label %1150

1150:                                             ; preds = %1145
  %1151 = getelementptr inbounds %struct.usb_interface, ptr %1148, i32 0, i32 7, i32 6
  %1152 = load ptr, ptr %1151, align 8
  %1153 = icmp eq ptr %1152, null
  br i1 %1153, label %1164, label %1154

1154:                                             ; preds = %1150
  %1155 = getelementptr inbounds %struct.usbdevfs_getdriver, ptr %10, i32 0, i32 1
  %1156 = load ptr, ptr %1152, align 4
  %1157 = call i32 @strlcpy(ptr noundef %1155, ptr noundef %1156, i32 noundef 256) #14
  %1158 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1135) #17, !srcloc !10
  %1159 = and i32 %1158, -13
  %1160 = or i32 %1159, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1160) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1161 = call i32 @arm_copy_to_user(ptr noundef %38, ptr noundef nonnull %10, i32 noundef 260) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1158) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1162 = icmp eq i32 %1161, 0
  %1163 = select i1 %1162, i32 0, i32 -14
  br label %1164

1164:                                             ; preds = %1154, %1150, %1145, %1141
  %1165 = phi i32 [ -61, %1150 ], [ -61, %1145 ], [ -14, %1141 ], [ %1163, %1154 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %10) #14
  br label %2702

1166:                                             ; preds = %163
  %1167 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %1168 = icmp eq i8 %1167, 0
  br i1 %1168, label %1171, label %1169

1169:                                             ; preds = %1166
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  %1170 = load ptr, ptr %43, align 4
  br label %1171

1171:                                             ; preds = %1169, %1166
  %1172 = phi ptr [ %1170, %1169 ], [ %158, %1166 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  store i64 0, ptr %11, align 8
  %1173 = load i32, ptr %1172, align 8
  store i32 %1173, ptr %11, align 8
  %1174 = getelementptr inbounds %struct.usb_device, ptr %1172, i32 0, i32 4
  %1175 = load i32, ptr %1174, align 4
  %1176 = icmp eq i32 %1175, 1
  %1177 = zext i1 %1176 to i8
  %1178 = getelementptr inbounds %struct.usbdevfs_connectinfo, ptr %11, i32 0, i32 1
  store i8 %1177, ptr %1178, align 4
  %1179 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 8, i32 -1090519040) #16, !srcloc !9
  %1180 = extractvalue { i32, i32 } %1179, 0
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1182, label %1191

1182:                                             ; preds = %1171
  %1183 = tail call ptr @llvm.thread.pointer() #14
  %1184 = getelementptr inbounds %struct.thread_info, ptr %1183, i32 0, i32 3
  %1185 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1184) #17, !srcloc !10
  %1186 = and i32 %1185, -13
  %1187 = or i32 %1186, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1187) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1188 = call i32 @arm_copy_to_user(ptr noundef %38, ptr noundef nonnull %11, i32 noundef 8) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1185) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1189 = icmp eq i32 %1188, 0
  %1190 = select i1 %1189, i32 0, i32 -14
  br label %1191

1191:                                             ; preds = %1182, %1171
  %1192 = phi i32 [ -14, %1171 ], [ %1190, %1182 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  br label %2702

1193:                                             ; preds = %163
  %1194 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %1195 = icmp eq i8 %1194, 0
  br i1 %1195, label %1197, label %1196

1196:                                             ; preds = %1193
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %1197

1197:                                             ; preds = %1196, %1193
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  store i64 0, ptr %13, align 8, !annotation !16
  %1198 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 8, i32 -1090519040) #16, !srcloc !17
  %1199 = extractvalue { i32, i32 } %1198, 0
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1201, label %1209, !prof !8

1201:                                             ; preds = %1197
  %1202 = tail call ptr @llvm.thread.pointer() #14
  %1203 = getelementptr inbounds %struct.thread_info, ptr %1202, i32 0, i32 3
  %1204 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1203) #17, !srcloc !10
  %1205 = and i32 %1204, -13
  %1206 = or i32 %1205, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1206) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1207 = call i32 @arm_copy_from_user(ptr noundef nonnull %13, ptr noundef %38, i32 noundef 8) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1204) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1213, label %1209, !prof !8

1209:                                             ; preds = %1201, %1197
  %1210 = phi i32 [ %1207, %1201 ], [ 8, %1197 ]
  %1211 = sub i32 8, %1210
  %1212 = getelementptr i8, ptr %13, i32 %1211
  call void @llvm.memset.p0.i32(ptr align 1 %1212, i8 0, i32 %1210, i1 false) #14
  br label %1265

1213:                                             ; preds = %1201
  %1214 = load i32, ptr %13, align 8
  %1215 = load ptr, ptr %43, align 4
  %1216 = getelementptr inbounds %struct.usb_device, ptr %1215, i32 0, i32 3
  %1217 = load i32, ptr %1216, align 8
  %1218 = icmp eq i32 %1217, 7
  br i1 %1218, label %1219, label %1265

1219:                                             ; preds = %1213
  %1220 = icmp ugt i32 %1214, 31
  br i1 %1220, label %1265, label %1221

1221:                                             ; preds = %1219
  %1222 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 13
  %1223 = lshr i32 %1214, 5
  %1224 = getelementptr i32, ptr %1222, i32 %1223
  %1225 = load volatile i32, ptr %1224, align 4
  %1226 = shl nuw i32 1, %1214
  %1227 = and i32 %1225, %1226
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1229, label %1238

1229:                                             ; preds = %1221
  %1230 = getelementptr inbounds %struct.usb_device, ptr %1215, i32 0, i32 15
  %1231 = getelementptr inbounds %struct.task_struct, ptr %1202, i32 0, i32 52
  %1232 = load i32, ptr %1231, align 8
  %1233 = getelementptr inbounds %struct.task_struct, ptr %1202, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1230, ptr noundef nonnull @.str.31, i32 noundef %1232, ptr noundef %1233, i32 noundef %1214) #15
  %1234 = call fastcc i32 @claimintf(ptr noundef %40, i32 noundef %1214) #14
  %1235 = icmp eq i32 %1234, 0
  br i1 %1235, label %1236, label %1265

1236:                                             ; preds = %1229
  %1237 = load i32, ptr %13, align 8
  br label %1238

1238:                                             ; preds = %1236, %1221
  %1239 = phi i32 [ %1237, %1236 ], [ %1214, %1221 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  store volatile ptr %12, ptr %12, align 8
  %1240 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %12, ptr %1240, align 4
  %1241 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 3
  %1242 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1241) #14
  %1243 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 4
  %1244 = load ptr, ptr %1243, align 4
  %1245 = icmp eq ptr %1244, %1243
  br i1 %1245, label %1259, label %1246

1246:                                             ; preds = %1257, %1238
  %1247 = phi ptr [ %1248, %1257 ], [ %1244, %1238 ]
  %1248 = load ptr, ptr %1247, align 4
  %1249 = getelementptr inbounds %struct.async, ptr %1247, i32 0, i32 5
  %1250 = load i32, ptr %1249, align 4
  %1251 = icmp eq i32 %1250, %1239
  br i1 %1251, label %1252, label %1257

1252:                                             ; preds = %1246
  %1253 = getelementptr inbounds %struct.list_head, ptr %1247, i32 0, i32 1
  %1254 = load ptr, ptr %1253, align 4
  %1255 = getelementptr inbounds %struct.list_head, ptr %1248, i32 0, i32 1
  store ptr %1254, ptr %1255, align 4
  store volatile ptr %1248, ptr %1254, align 4
  %1256 = load ptr, ptr %1240, align 4
  store ptr %1247, ptr %1240, align 4
  store ptr %12, ptr %1247, align 4
  store ptr %1256, ptr %1253, align 4
  store volatile ptr %1247, ptr %1256, align 4
  br label %1257

1257:                                             ; preds = %1252, %1246
  %1258 = icmp eq ptr %1248, %1243
  br i1 %1258, label %1259, label %1246

1259:                                             ; preds = %1257, %1238
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1241, i32 noundef %1242) #14
  call fastcc void @destroy_async(ptr noundef %40, ptr noundef nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  %1260 = load ptr, ptr %43, align 4
  %1261 = load i32, ptr %13, align 8
  %1262 = getelementptr inbounds %struct.usbdevfs_setinterface, ptr %13, i32 0, i32 1
  %1263 = load i32, ptr %1262, align 4
  %1264 = call i32 @usb_set_interface(ptr noundef %1260, i32 noundef %1261, i32 noundef %1263) #14
  br label %1265

1265:                                             ; preds = %1259, %1229, %1219, %1213, %1209
  %1266 = phi i32 [ %1264, %1259 ], [ %1234, %1229 ], [ -14, %1209 ], [ -22, %1219 ], [ -113, %1213 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  br label %2702

1267:                                             ; preds = %163
  %1268 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %1269 = icmp eq i8 %1268, 0
  br i1 %1269, label %1271, label %1270

1270:                                             ; preds = %1267
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %1271

1271:                                             ; preds = %1270, %1267
  %1272 = tail call ptr @llvm.thread.pointer() #14
  %1273 = getelementptr inbounds %struct.thread_info, ptr %1272, i32 0, i32 3
  %1274 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1273) #17, !srcloc !10
  %1275 = and i32 %1274, -13
  %1276 = or i32 %1275, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1276) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1277 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %38, i32 -1090519041) #14, !srcloc !24
  %1278 = extractvalue { i32, i32 } %1277, 0
  %1279 = extractvalue { i32, i32 } %1277, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1274) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1280 = icmp eq i32 %1278, 0
  br i1 %1280, label %1281, label %2700

1281:                                             ; preds = %1271
  %1282 = load ptr, ptr %43, align 4
  %1283 = getelementptr inbounds %struct.usb_device, ptr %1282, i32 0, i32 20
  %1284 = load ptr, ptr %1283, align 4
  %1285 = icmp eq ptr %1284, null
  br i1 %1285, label %1317, label %1286

1286:                                             ; preds = %1281
  %1287 = getelementptr inbounds %struct.usb_config_descriptor, ptr %1284, i32 0, i32 3
  %1288 = load i8, ptr %1287, align 4
  %1289 = zext i8 %1288 to i32
  %1290 = icmp eq i8 %1288, 0
  br i1 %1290, label %1310, label %1294

1291:                                             ; preds = %1294
  %1292 = add nuw nsw i32 %1295, 1
  %1293 = icmp eq i32 %1292, %1289
  br i1 %1293, label %1310, label %1294

1294:                                             ; preds = %1291, %1286
  %1295 = phi i32 [ %1292, %1291 ], [ 0, %1286 ]
  %1296 = getelementptr %struct.usb_host_config, ptr %1284, i32 0, i32 3, i32 %1295
  %1297 = load ptr, ptr %1296, align 4
  %1298 = getelementptr inbounds %struct.usb_interface, ptr %1297, i32 0, i32 7, i32 6
  %1299 = load ptr, ptr %1298, align 8
  %1300 = icmp eq ptr %1299, null
  br i1 %1300, label %1291, label %1301

1301:                                             ; preds = %1294
  %1302 = getelementptr inbounds %struct.usb_device, ptr %1282, i32 0, i32 15
  %1303 = getelementptr inbounds %struct.usb_interface, ptr %1297, i32 0, i32 1
  %1304 = load ptr, ptr %1303, align 4
  %1305 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1304, i32 0, i32 2
  %1306 = load i8, ptr %1305, align 2
  %1307 = zext i8 %1306 to i32
  %1308 = load ptr, ptr %1299, align 4
  %1309 = getelementptr inbounds %struct.task_struct, ptr %1272, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1302, ptr noundef nonnull @.str.47, i32 noundef %1307, ptr noundef %1308, ptr noundef %1309, i32 noundef %1279) #15
  br label %2700

1310:                                             ; preds = %1291, %1286
  %1311 = getelementptr inbounds %struct.usb_config_descriptor, ptr %1284, i32 0, i32 4
  %1312 = load i8, ptr %1311, align 1
  %1313 = zext i8 %1312 to i32
  %1314 = icmp eq i32 %1279, %1313
  br i1 %1314, label %1315, label %1317

1315:                                             ; preds = %1310
  %1316 = tail call i32 @usb_reset_configuration(ptr noundef %1282) #14
  br label %2702

1317:                                             ; preds = %1310, %1281
  %1318 = tail call i32 @usb_set_configuration(ptr noundef %1282, i32 noundef %1279) #14
  br label %2702

1319:                                             ; preds = %163
  %1320 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %1321 = icmp eq i8 %1320, 0
  br i1 %1321, label %1323, label %1322

1322:                                             ; preds = %1319
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %1323

1323:                                             ; preds = %1322, %1319
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %14) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %14, i8 0, i32 44, i1 false) #14, !annotation !16
  %1324 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 44, i32 -1090519040) #16, !srcloc !17
  %1325 = extractvalue { i32, i32 } %1324, 0
  %1326 = icmp eq i32 %1325, 0
  br i1 %1326, label %1327, label %1335, !prof !8

1327:                                             ; preds = %1323
  %1328 = tail call ptr @llvm.thread.pointer() #14
  %1329 = getelementptr inbounds %struct.thread_info, ptr %1328, i32 0, i32 3
  %1330 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1329) #17, !srcloc !10
  %1331 = and i32 %1330, -13
  %1332 = or i32 %1331, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1332) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1333 = call i32 @arm_copy_from_user(ptr noundef nonnull %14, ptr noundef %38, i32 noundef 44) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1330) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1339, label %1335, !prof !8

1335:                                             ; preds = %1327, %1323
  %1336 = phi i32 [ %1333, %1327 ], [ 44, %1323 ]
  %1337 = sub i32 44, %1336
  %1338 = getelementptr i8, ptr %14, i32 %1337
  call void @llvm.memset.p0.i32(ptr align 1 %1338, i8 0, i32 %1336, i1 false) #14
  br label %2104

1339:                                             ; preds = %1327
  %1340 = getelementptr inbounds %struct.usbdevfs_urb, ptr %38, i32 0, i32 12
  %1341 = load i8, ptr %14, align 4
  %1342 = icmp eq i8 %1341, 0
  %1343 = select i1 %1342, i32 -232, i32 -230
  %1344 = getelementptr inbounds %struct.usbdevfs_urb, ptr %14, i32 0, i32 3
  %1345 = load i32, ptr %1344, align 4
  %1346 = and i32 %1343, %1345
  %1347 = icmp eq i32 %1346, 0
  br i1 %1347, label %1348, label %2104

1348:                                             ; preds = %1339
  %1349 = getelementptr inbounds %struct.usbdevfs_urb, ptr %14, i32 0, i32 5
  %1350 = load i32, ptr %1349, align 4
  %1351 = icmp ugt i32 %1350, 2146483646
  br i1 %1351, label %2104, label %1352

1352:                                             ; preds = %1348
  %1353 = icmp ne i32 %1350, 0
  %1354 = getelementptr inbounds %struct.usbdevfs_urb, ptr %14, i32 0, i32 4
  %1355 = load ptr, ptr %1354, align 4
  %1356 = icmp eq ptr %1355, null
  %1357 = select i1 %1353, i1 %1356, i1 false
  br i1 %1357, label %2104, label %1358

1358:                                             ; preds = %1352
  %1359 = icmp eq i8 %1341, 2
  %1360 = getelementptr inbounds %struct.usbdevfs_urb, ptr %14, i32 0, i32 1
  %1361 = load i8, ptr %1360, align 1
  %1362 = and i8 %1361, 127
  %1363 = icmp eq i8 %1362, 0
  %1364 = select i1 %1359, i1 %1363, i1 false
  br i1 %1364, label %1437, label %1365

1365:                                             ; preds = %1358
  %1366 = load ptr, ptr %43, align 4
  %1367 = and i8 %1361, 112
  %1368 = icmp eq i8 %1367, 0
  br i1 %1368, label %1369, label %2104

1369:                                             ; preds = %1365
  %1370 = getelementptr inbounds %struct.usb_device, ptr %1366, i32 0, i32 20
  %1371 = load ptr, ptr %1370, align 4
  %1372 = icmp eq ptr %1371, null
  br i1 %1372, label %2104, label %1373

1373:                                             ; preds = %1369
  %1374 = getelementptr inbounds %struct.usb_config_descriptor, ptr %1371, i32 0, i32 3
  %1375 = load i8, ptr %1374, align 4
  %1376 = zext i8 %1375 to i32
  %1377 = icmp eq i8 %1375, 0
  br i1 %1377, label %2104, label %1378

1378:                                             ; preds = %1408, %1373
  %1379 = phi i32 [ %1409, %1408 ], [ 0, %1373 ]
  %1380 = getelementptr %struct.usb_host_config, ptr %1371, i32 0, i32 3, i32 %1379
  %1381 = load ptr, ptr %1380, align 4
  %1382 = getelementptr inbounds %struct.usb_interface, ptr %1381, i32 0, i32 2
  %1383 = load i32, ptr %1382, align 8
  %1384 = icmp eq i32 %1383, 0
  br i1 %1384, label %1408, label %1385

1385:                                             ; preds = %1378
  %1386 = load ptr, ptr %1381, align 8
  br label %1387

1387:                                             ; preds = %1405, %1385
  %1388 = phi i32 [ 0, %1385 ], [ %1406, %1405 ]
  %1389 = getelementptr %struct.usb_host_interface, ptr %1386, i32 %1388
  %1390 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1389, i32 0, i32 4
  %1391 = load i8, ptr %1390, align 4
  %1392 = zext i8 %1391 to i32
  %1393 = icmp eq i8 %1391, 0
  br i1 %1393, label %1405, label %1394

1394:                                             ; preds = %1387
  %1395 = getelementptr %struct.usb_host_interface, ptr %1386, i32 %1388, i32 3
  %1396 = load ptr, ptr %1395, align 4
  br label %1400

1397:                                             ; preds = %1400
  %1398 = add nuw nsw i32 %1401, 1
  %1399 = icmp eq i32 %1398, %1392
  br i1 %1399, label %1405, label %1400

1400:                                             ; preds = %1397, %1394
  %1401 = phi i32 [ 0, %1394 ], [ %1398, %1397 ]
  %1402 = getelementptr %struct.usb_host_endpoint, ptr %1396, i32 %1401, i32 0, i32 2
  %1403 = load i8, ptr %1402, align 1
  %1404 = icmp eq i8 %1403, %1361
  br i1 %1404, label %1411, label %1397

1405:                                             ; preds = %1397, %1387
  %1406 = add nuw i32 %1388, 1
  %1407 = icmp eq i32 %1406, %1383
  br i1 %1407, label %1408, label %1387

1408:                                             ; preds = %1405, %1378
  %1409 = add nuw nsw i32 %1379, 1
  %1410 = icmp eq i32 %1409, %1376
  br i1 %1410, label %2104, label %1378

1411:                                             ; preds = %1400
  %1412 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1389, i32 0, i32 2
  %1413 = load i8, ptr %1412, align 2
  %1414 = zext i8 %1413 to i32
  %1415 = getelementptr inbounds %struct.usb_device, ptr %1366, i32 0, i32 3
  %1416 = load i32, ptr %1415, align 8
  %1417 = icmp eq i32 %1416, 7
  br i1 %1417, label %1418, label %2104

1418:                                             ; preds = %1411
  %1419 = icmp ugt i8 %1413, 31
  br i1 %1419, label %2104, label %1420

1420:                                             ; preds = %1418
  %1421 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 13
  %1422 = lshr i32 %1414, 5
  %1423 = getelementptr i32, ptr %1421, i32 %1422
  %1424 = load volatile i32, ptr %1423, align 4
  %1425 = shl nuw i32 1, %1414
  %1426 = and i32 %1424, %1425
  %1427 = icmp eq i32 %1426, 0
  br i1 %1427, label %1428, label %1437

1428:                                             ; preds = %1420
  %1429 = getelementptr inbounds %struct.usb_device, ptr %1366, i32 0, i32 15
  %1430 = getelementptr inbounds %struct.task_struct, ptr %1328, i32 0, i32 52
  %1431 = load i32, ptr %1430, align 8
  %1432 = getelementptr inbounds %struct.task_struct, ptr %1328, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1429, ptr noundef nonnull @.str.31, i32 noundef %1431, ptr noundef %1432, i32 noundef %1414) #15
  %1433 = call fastcc i32 @claimintf(ptr noundef %40, i32 noundef %1414) #14
  %1434 = icmp eq i32 %1433, 0
  br i1 %1434, label %1435, label %2106

1435:                                             ; preds = %1428
  %1436 = load i8, ptr %1360, align 1
  br label %1437

1437:                                             ; preds = %1435, %1420, %1358
  %1438 = phi i8 [ %1436, %1435 ], [ %1361, %1420 ], [ %1361, %1358 ]
  %1439 = phi i32 [ %1414, %1435 ], [ %1414, %1420 ], [ -1, %1358 ]
  %1440 = load ptr, ptr %43, align 4
  %1441 = zext i8 %1438 to i32
  %1442 = and i32 %1441, 128
  %1443 = icmp eq i32 %1442, 0
  %1444 = and i32 %1441, 15
  %1445 = getelementptr %struct.usb_device, ptr %1440, i32 0, i32 21, i32 %1444
  %1446 = getelementptr %struct.usb_device, ptr %1440, i32 0, i32 22, i32 %1444
  %1447 = select i1 %1443, ptr %1446, ptr %1445
  %1448 = load ptr, ptr %1447, align 4
  %1449 = icmp eq ptr %1448, null
  br i1 %1449, label %2104, label %1450

1450:                                             ; preds = %1437
  %1451 = icmp slt i8 %1438, 0
  %1452 = load i8, ptr %14, align 4
  switch i8 %1452, label %2104 [
    i8 2, label %1453
    i8 3, label %1525
    i8 1, label %1555
    i8 0, label %1567
  ]

1453:                                             ; preds = %1450
  %1454 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1448, i32 0, i32 3
  %1455 = load i8, ptr %1454, align 1
  %1456 = and i8 %1455, 3
  %1457 = icmp ne i8 %1456, 0
  %1458 = load i32, ptr %1349, align 4
  %1459 = icmp slt i32 %1458, 8
  %1460 = select i1 %1457, i1 true, i1 %1459
  br i1 %1460, label %2104, label %1461

1461:                                             ; preds = %1453
  %1462 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %1463 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1462, i32 noundef 3264, i32 noundef 8) #18
  %1464 = icmp eq ptr %1463, null
  br i1 %1464, label %2104, label %1465

1465:                                             ; preds = %1461
  %1466 = load ptr, ptr %1354, align 4
  %1467 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1466, i32 8, i32 -1090519040) #16, !srcloc !17
  %1468 = extractvalue { i32, i32 } %1467, 0
  %1469 = icmp eq i32 %1468, 0
  br i1 %1469, label %1470, label %1476, !prof !8

1470:                                             ; preds = %1465
  %1471 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1329) #17, !srcloc !10
  %1472 = and i32 %1471, -13
  %1473 = or i32 %1472, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1473) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1474 = call i32 @arm_copy_from_user(ptr noundef nonnull %1463, ptr noundef %1466, i32 noundef 8) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1471) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1480, label %1476, !prof !8

1476:                                             ; preds = %1470, %1465
  %1477 = phi i32 [ %1474, %1470 ], [ 8, %1465 ]
  %1478 = sub i32 8, %1477
  %1479 = getelementptr i8, ptr %1463, i32 %1478
  call void @llvm.memset.p0.i32(ptr align 1 %1479, i8 0, i32 %1477, i1 false) #14
  br label %2097

1480:                                             ; preds = %1470
  %1481 = load i32, ptr %1349, align 4
  %1482 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1463, i32 0, i32 4
  %1483 = load i16, ptr %1482, align 2
  %1484 = zext i16 %1483 to i32
  %1485 = add nuw nsw i32 %1484, 8
  %1486 = icmp slt i32 %1481, %1485
  br i1 %1486, label %2097, label %1487

1487:                                             ; preds = %1480
  %1488 = load i8, ptr %1463, align 8
  %1489 = zext i8 %1488 to i32
  %1490 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1463, i32 0, i32 1
  %1491 = load i8, ptr %1490, align 1
  %1492 = zext i8 %1491 to i32
  %1493 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1463, i32 0, i32 3
  %1494 = load i16, ptr %1493, align 4
  %1495 = zext i16 %1494 to i32
  %1496 = call fastcc i32 @check_ctrlrecip(ptr noundef %40, i32 noundef %1489, i32 noundef %1492, i32 noundef %1495) #14
  %1497 = icmp eq i32 %1496, 0
  br i1 %1497, label %1498, label %2097

1498:                                             ; preds = %1487
  %1499 = load i16, ptr %1482, align 2
  %1500 = zext i16 %1499 to i32
  store i32 %1500, ptr %1349, align 4
  %1501 = load ptr, ptr %1354, align 4
  %1502 = getelementptr i8, ptr %1501, i32 8
  store ptr %1502, ptr %1354, align 4
  %1503 = load i8, ptr %1463, align 8
  %1504 = icmp sgt i8 %1503, -1
  %1505 = icmp eq i16 %1499, 0
  %1506 = select i1 %1504, i1 true, i1 %1505
  %1507 = load i8, ptr %1360, align 1
  %1508 = and i8 %1507, 127
  %1509 = select i1 %1506, i8 0, i8 -128
  %1510 = or i8 %1509, %1508
  %1511 = xor i1 %1506, true
  store i8 %1510, ptr %1360, align 1
  %1512 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %1513 = icmp eq i8 %1512, 0
  br i1 %1513, label %1595, label %1514

1514:                                             ; preds = %1498
  %1515 = load ptr, ptr %43, align 4
  %1516 = getelementptr inbounds %struct.usb_device, ptr %1515, i32 0, i32 15
  %1517 = zext i8 %1503 to i32
  %1518 = load i8, ptr %1490, align 1
  %1519 = zext i8 %1518 to i32
  %1520 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1463, i32 0, i32 2
  %1521 = load i16, ptr %1520, align 2
  %1522 = zext i16 %1521 to i32
  %1523 = load i16, ptr %1493, align 4
  %1524 = zext i16 %1523 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1516, ptr noundef nonnull @.str.27, i32 noundef %1517, i32 noundef %1519, i32 noundef %1522, i32 noundef %1524, i32 noundef %1500) #15
  br label %1595

1525:                                             ; preds = %1450
  %1526 = xor i1 %1451, true
  %1527 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1448, i32 0, i32 3
  %1528 = load i8, ptr %1527, align 1
  %1529 = and i8 %1528, 3
  %1530 = zext i8 %1529 to i32
  switch i32 %1530, label %1534 [
    i32 0, label %2104
    i32 1, label %2104
    i32 3, label %1531
  ]

1531:                                             ; preds = %1525
  %1532 = zext i1 %1526 to i8
  %1533 = lshr i8 %1438, 7
  store i8 1, ptr %14, align 4
  br label %1560

1534:                                             ; preds = %1525
  %1535 = load i32, ptr %1349, align 4
  %1536 = add i32 %1535, -1
  %1537 = icmp ult i32 %1536, 16384
  br i1 %1537, label %1546, label %1538

1538:                                             ; preds = %1534
  %1539 = add i32 %1535, 16383
  %1540 = sdiv i32 %1539, 16384
  %1541 = getelementptr inbounds %struct.usb_device, ptr %1440, i32 0, i32 12
  %1542 = load ptr, ptr %1541, align 8
  %1543 = getelementptr inbounds %struct.usb_bus, ptr %1542, i32 0, i32 7
  %1544 = load i32, ptr %1543, align 4
  %1545 = icmp ugt i32 %1540, %1544
  br i1 %1545, label %1546, label %1547

1546:                                             ; preds = %1538, %1534
  br label %1547

1547:                                             ; preds = %1546, %1538
  %1548 = phi i32 [ 0, %1546 ], [ %1540, %1538 ]
  %1549 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1448, i32 0, i32 10
  %1550 = load i32, ptr %1549, align 4
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1595, label %1552

1552:                                             ; preds = %1547
  %1553 = getelementptr inbounds %struct.usbdevfs_urb, ptr %14, i32 0, i32 8
  %1554 = load i32, ptr %1553, align 4
  br label %1595

1555:                                             ; preds = %1450
  %1556 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1448, i32 0, i32 3
  %1557 = load i8, ptr %1556, align 1
  %1558 = and i8 %1557, 3
  %1559 = icmp eq i8 %1558, 3
  br i1 %1559, label %1560, label %2104

1560:                                             ; preds = %1555, %1531
  %1561 = phi i8 [ 0, %1555 ], [ %1533, %1531 ]
  %1562 = phi i8 [ 0, %1555 ], [ %1532, %1531 ]
  br i1 %1451, label %1565, label %1563

1563:                                             ; preds = %1560
  %1564 = icmp ne i8 %1561, 0
  br label %1595

1565:                                             ; preds = %1560
  %1566 = icmp ne i8 %1562, 0
  br label %1595

1567:                                             ; preds = %1450
  %1568 = getelementptr inbounds %struct.usbdevfs_urb, ptr %14, i32 0, i32 8
  %1569 = load i32, ptr %1568, align 4
  %1570 = add i32 %1569, -129
  %1571 = icmp ult i32 %1570, -128
  br i1 %1571, label %2104, label %1572

1572:                                             ; preds = %1567
  %1573 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1448, i32 0, i32 3
  %1574 = load i8, ptr %1573, align 1
  %1575 = and i8 %1574, 3
  %1576 = icmp eq i8 %1575, 1
  br i1 %1576, label %1577, label %2104

1577:                                             ; preds = %1572
  %1578 = mul nuw nsw i32 %1569, 12
  %1579 = call ptr @memdup_user(ptr noundef %1340, i32 noundef %1578) #14
  %1580 = icmp ugt ptr %1579, inttoptr (i32 -4096 to ptr)
  br i1 %1580, label %1581, label %1583

1581:                                             ; preds = %1577
  %1582 = ptrtoint ptr %1579 to i32
  br label %2097

1583:                                             ; preds = %1589, %1577
  %1584 = phi i32 [ %1591, %1589 ], [ 0, %1577 ]
  %1585 = phi i32 [ %1590, %1589 ], [ 0, %1577 ]
  %1586 = getelementptr %struct.usbdevfs_iso_packet_desc, ptr %1579, i32 %1584
  %1587 = load i32, ptr %1586, align 4
  %1588 = icmp ugt i32 %1587, 98304
  br i1 %1588, label %2097, label %1589

1589:                                             ; preds = %1583
  %1590 = add i32 %1587, %1585
  %1591 = add nuw nsw i32 %1584, 1
  %1592 = icmp eq i32 %1591, %1569
  br i1 %1592, label %1593, label %1583

1593:                                             ; preds = %1589
  %1594 = shl i32 %1569, 4
  store i32 %1590, ptr %1349, align 4
  br label %1595

1595:                                             ; preds = %1593, %1565, %1563, %1552, %1547, %1514, %1498
  %1596 = phi i32 [ 0, %1593 ], [ 0, %1565 ], [ 0, %1563 ], [ %1548, %1552 ], [ %1548, %1547 ], [ 0, %1514 ], [ 0, %1498 ]
  %1597 = phi i32 [ %1569, %1593 ], [ 0, %1565 ], [ 0, %1563 ], [ 0, %1552 ], [ 0, %1547 ], [ 0, %1514 ], [ 0, %1498 ]
  %1598 = phi i32 [ 0, %1593 ], [ 0, %1565 ], [ 0, %1563 ], [ %1554, %1552 ], [ 0, %1547 ], [ 0, %1514 ], [ 0, %1498 ]
  %1599 = phi i1 [ %1451, %1593 ], [ true, %1565 ], [ false, %1563 ], [ %1451, %1552 ], [ %1451, %1547 ], [ %1511, %1514 ], [ %1511, %1498 ]
  %1600 = phi i1 [ false, %1593 ], [ true, %1565 ], [ %1564, %1563 ], [ %1451, %1552 ], [ %1451, %1547 ], [ %1511, %1514 ], [ %1511, %1498 ]
  %1601 = phi i1 [ false, %1593 ], [ %1566, %1565 ], [ true, %1563 ], [ %1526, %1552 ], [ %1526, %1547 ], [ false, %1514 ], [ false, %1498 ]
  %1602 = phi i32 [ %1594, %1593 ], [ 0, %1565 ], [ 0, %1563 ], [ 0, %1552 ], [ 0, %1547 ], [ 8, %1514 ], [ 8, %1498 ]
  %1603 = phi ptr [ null, %1593 ], [ null, %1565 ], [ null, %1563 ], [ null, %1552 ], [ null, %1547 ], [ %1463, %1514 ], [ %1463, %1498 ]
  %1604 = phi ptr [ %1579, %1593 ], [ null, %1565 ], [ null, %1563 ], [ null, %1552 ], [ null, %1547 ], [ null, %1514 ], [ null, %1498 ]
  %1605 = load i32, ptr %1349, align 4
  %1606 = icmp sgt i32 %1605, 0
  br i1 %1606, label %1607, label %1612

1607:                                             ; preds = %1595
  %1608 = load ptr, ptr %1354, align 4
  %1609 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1608, i32 %1605, i32 -1090519040) #16, !srcloc !25
  %1610 = extractvalue { i32, i32 } %1609, 0
  %1611 = icmp eq i32 %1610, 0
  br i1 %1611, label %1612, label %2097

1612:                                             ; preds = %1607, %1595
  %1613 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %1614 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1613, i32 noundef 3520, i32 noundef 60) #18
  %1615 = icmp eq ptr %1614, null
  br i1 %1615, label %2097, label %1616

1616:                                             ; preds = %1612
  %1617 = call ptr @usb_alloc_urb(i32 noundef %1597, i32 noundef 3264) #14
  %1618 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 9
  store ptr %1617, ptr %1618, align 8
  %1619 = icmp eq ptr %1617, null
  br i1 %1619, label %1620, label %1621

1620:                                             ; preds = %1616
  call void @kfree(ptr noundef nonnull %1614) #14
  br label %2097

1621:                                             ; preds = %1616
  %1622 = load ptr, ptr %1354, align 4
  %1623 = ptrtoint ptr %1622 to i32
  %1624 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 3
  %1625 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1624) #14
  %1626 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 6
  %1627 = load ptr, ptr %1626, align 4
  %1628 = icmp eq ptr %1627, %1626
  br i1 %1628, label %1648, label %1629

1629:                                             ; preds = %1645, %1621
  %1630 = phi ptr [ %1646, %1645 ], [ %1627, %1621 ]
  %1631 = getelementptr inbounds %struct.usb_memory, ptr %1630, i32 0, i32 6
  %1632 = load i32, ptr %1631, align 4
  %1633 = icmp ugt i32 %1632, %1623
  br i1 %1633, label %1645, label %1634

1634:                                             ; preds = %1629
  %1635 = getelementptr inbounds %struct.usb_memory, ptr %1630, i32 0, i32 3
  %1636 = load i32, ptr %1635, align 4
  %1637 = add i32 %1636, %1632
  %1638 = icmp ugt i32 %1637, %1623
  br i1 %1638, label %1639, label %1645

1639:                                             ; preds = %1634
  %1640 = load i32, ptr %1349, align 4
  %1641 = sub i32 %1637, %1623
  %1642 = icmp ugt i32 %1640, %1641
  br i1 %1642, label %1643, label %1650

1643:                                             ; preds = %1639
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1624, i32 noundef %1625) #14
  %1644 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 10
  store ptr inttoptr (i32 -22 to ptr), ptr %1644, align 4
  br label %1656

1645:                                             ; preds = %1634, %1629
  %1646 = load ptr, ptr %1630, align 4
  %1647 = icmp eq ptr %1646, %1626
  br i1 %1647, label %1648, label %1629

1648:                                             ; preds = %1645, %1621
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1624, i32 noundef %1625) #14
  %1649 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 10
  store ptr null, ptr %1649, align 4
  br label %1660

1650:                                             ; preds = %1639
  %1651 = getelementptr inbounds %struct.usb_memory, ptr %1630, i32 0, i32 2
  %1652 = load i32, ptr %1651, align 4
  %1653 = add i32 %1652, 1
  store i32 %1653, ptr %1651, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1624, i32 noundef %1625) #14
  %1654 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 10
  store ptr %1630, ptr %1654, align 4
  %1655 = icmp ugt ptr %1630, inttoptr (i32 -4096 to ptr)
  br i1 %1655, label %1656, label %1660

1656:                                             ; preds = %1650, %1643
  %1657 = phi ptr [ %1644, %1643 ], [ %1654, %1650 ]
  %1658 = phi ptr [ inttoptr (i32 -22 to ptr), %1643 ], [ %1630, %1650 ]
  %1659 = ptrtoint ptr %1658 to i32
  store ptr null, ptr %1657, align 4
  br label %2097

1660:                                             ; preds = %1650, %1648
  %1661 = phi ptr [ %1649, %1648 ], [ %1654, %1650 ]
  %1662 = phi ptr [ null, %1648 ], [ %1630, %1650 ]
  %1663 = icmp eq ptr %1662, null
  %1664 = select i1 %1663, i32 %1596, i32 0
  %1665 = load i32, ptr %1349, align 4
  %1666 = select i1 %1663, i32 %1665, i32 0
  %1667 = mul nsw i32 %1664, 20
  %1668 = add i32 %1602, 184
  %1669 = add i32 %1668, %1666
  %1670 = add i32 %1669, %1667
  %1671 = zext i32 %1670 to i64
  %1672 = load volatile i32, ptr @usbfs_memory_mb, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @usbfs_memory_usage) #14, !srcloc !18
  %1673 = call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @usbfs_memory_usage, ptr nonnull @usbfs_memory_usage, i64 %1671, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !19
  %1674 = icmp eq i32 %1672, 0
  br i1 %1674, label %1682, label %1675

1675:                                             ; preds = %1660
  %1676 = zext i32 %1672 to i64
  %1677 = shl nuw nsw i64 %1676, 20
  %1678 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull @usbfs_memory_usage, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !20
  %1679 = icmp ugt i64 %1678, %1677
  br i1 %1679, label %1680, label %1682

1680:                                             ; preds = %1675
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @usbfs_memory_usage) #14, !srcloc !18
  %1681 = call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @usbfs_memory_usage, ptr nonnull @usbfs_memory_usage, i64 %1671, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !21
  br label %2097

1682:                                             ; preds = %1675, %1660
  %1683 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 11
  store i32 %1670, ptr %1683, align 8
  %1684 = icmp eq i32 %1664, 0
  br i1 %1684, label %1765, label %1685

1685:                                             ; preds = %1682
  %1686 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1664, i32 20) #14
  %1687 = extractvalue { i32, i1 } %1686, 1
  br i1 %1687, label %1691, label %1688, !prof !13

1688:                                             ; preds = %1685
  %1689 = extractvalue { i32, i1 } %1686, 0
  %1690 = call noalias align 64 ptr @__kmalloc(i32 noundef %1689, i32 noundef 11456) #19
  br label %1691

1691:                                             ; preds = %1688, %1685
  %1692 = phi ptr [ %1690, %1688 ], [ null, %1685 ]
  %1693 = load ptr, ptr %1618, align 8
  %1694 = getelementptr inbounds %struct.urb, ptr %1693, i32 0, i32 16
  store ptr %1692, ptr %1694, align 4
  %1695 = load ptr, ptr %1618, align 8
  %1696 = getelementptr inbounds %struct.urb, ptr %1695, i32 0, i32 16
  %1697 = load ptr, ptr %1696, align 4
  %1698 = icmp eq ptr %1697, null
  br i1 %1698, label %2097, label %1699

1699:                                             ; preds = %1691
  %1700 = getelementptr inbounds %struct.urb, ptr %1695, i32 0, i32 18
  store i32 %1664, ptr %1700, align 4
  %1701 = load ptr, ptr %1618, align 8
  %1702 = getelementptr inbounds %struct.urb, ptr %1701, i32 0, i32 16
  %1703 = load ptr, ptr %1702, align 4
  %1704 = getelementptr inbounds %struct.urb, ptr %1701, i32 0, i32 18
  %1705 = load i32, ptr %1704, align 4
  call void @sg_init_table(ptr noundef %1703, i32 noundef %1705) #14
  %1706 = load ptr, ptr %1618, align 8
  %1707 = getelementptr inbounds %struct.urb, ptr %1706, i32 0, i32 18
  %1708 = load i32, ptr %1707, align 4
  %1709 = icmp sgt i32 %1708, 0
  br i1 %1709, label %1710, label %1820

1710:                                             ; preds = %1699
  %1711 = load i32, ptr %1349, align 4
  br label %1712

1712:                                             ; preds = %1758, %1710
  %1713 = phi i32 [ %1711, %1710 ], [ %1759, %1758 ]
  %1714 = phi i32 [ 0, %1710 ], [ %1760, %1758 ]
  %1715 = call i32 @llvm.umin.i32(i32 %1713, i32 16384) #14
  %1716 = call noalias align 64 ptr @__kmalloc(i32 noundef %1715, i32 noundef 3264) #19
  %1717 = icmp eq ptr %1716, null
  br i1 %1717, label %2097, label %1718

1718:                                             ; preds = %1712
  %1719 = load ptr, ptr @mem_map, align 4
  %1720 = ptrtoint ptr %1716 to i32
  %1721 = add i32 %1720, 1073741824
  %1722 = lshr i32 %1721, 12
  %1723 = getelementptr %struct.page, ptr %1719, i32 %1722
  %1724 = ptrtoint ptr %1723 to i32
  %1725 = and i32 %1724, 3
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %1728, label %1727, !prof !8

1727:                                             ; preds = %1718
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !26
  unreachable

1728:                                             ; preds = %1718
  %1729 = load ptr, ptr %1618, align 8
  %1730 = getelementptr inbounds %struct.urb, ptr %1729, i32 0, i32 16
  %1731 = load ptr, ptr %1730, align 4
  %1732 = getelementptr %struct.scatterlist, ptr %1731, i32 %1714
  %1733 = and i32 %1720, 4032
  %1734 = load i32, ptr %1732, align 4
  %1735 = and i32 %1734, 3
  %1736 = or i32 %1735, %1724
  store i32 %1736, ptr %1732, align 4
  %1737 = getelementptr %struct.scatterlist, ptr %1731, i32 %1714, i32 1
  store i32 %1733, ptr %1737, align 4
  %1738 = getelementptr %struct.scatterlist, ptr %1731, i32 %1714, i32 2
  store i32 %1715, ptr %1738, align 4
  br i1 %1599, label %1758, label %1739

1739:                                             ; preds = %1728
  %1740 = load ptr, ptr %1354, align 4
  %1741 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1740, i32 %1715, i32 -1090519040) #16, !srcloc !17
  %1742 = extractvalue { i32, i32 } %1741, 0
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %1744, label %1749, !prof !8

1744:                                             ; preds = %1739
  %1745 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1329) #17, !srcloc !10
  %1746 = and i32 %1745, -13
  %1747 = or i32 %1746, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1747) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1748 = call i32 @arm_copy_from_user(ptr noundef nonnull %1716, ptr noundef %1740, i32 noundef %1715) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1745) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  br label %1749

1749:                                             ; preds = %1744, %1739
  %1750 = phi i32 [ %1748, %1744 ], [ %1715, %1739 ]
  %1751 = icmp eq i32 %1750, 0
  br i1 %1751, label %1755, label %1752, !prof !8

1752:                                             ; preds = %1749
  %1753 = sub i32 %1715, %1750
  %1754 = getelementptr i8, ptr %1716, i32 %1753
  call void @llvm.memset.p0.i32(ptr align 1 %1754, i8 0, i32 %1750, i1 false) #14
  br label %2097

1755:                                             ; preds = %1749
  %1756 = load ptr, ptr %1354, align 4
  %1757 = getelementptr i8, ptr %1756, i32 %1715
  store ptr %1757, ptr %1354, align 4
  br label %1758

1758:                                             ; preds = %1755, %1728
  %1759 = sub i32 %1713, %1715
  %1760 = add nuw nsw i32 %1714, 1
  %1761 = load ptr, ptr %1618, align 8
  %1762 = getelementptr inbounds %struct.urb, ptr %1761, i32 0, i32 18
  %1763 = load i32, ptr %1762, align 4
  %1764 = icmp slt i32 %1760, %1763
  br i1 %1764, label %1712, label %1820

1765:                                             ; preds = %1682
  %1766 = load i32, ptr %1349, align 4
  %1767 = icmp sgt i32 %1766, 0
  br i1 %1767, label %1768, label %1820

1768:                                             ; preds = %1765
  %1769 = load ptr, ptr %1661, align 4
  %1770 = icmp eq ptr %1769, null
  br i1 %1770, label %1782, label %1771

1771:                                             ; preds = %1768
  %1772 = load ptr, ptr %1354, align 4
  %1773 = ptrtoint ptr %1772 to i32
  %1774 = getelementptr inbounds %struct.usb_memory, ptr %1769, i32 0, i32 4
  %1775 = load ptr, ptr %1774, align 4
  %1776 = getelementptr inbounds %struct.usb_memory, ptr %1769, i32 0, i32 6
  %1777 = load i32, ptr %1776, align 4
  %1778 = sub i32 %1773, %1777
  %1779 = getelementptr i8, ptr %1775, i32 %1778
  %1780 = load ptr, ptr %1618, align 8
  %1781 = getelementptr inbounds %struct.urb, ptr %1780, i32 0, i32 14
  store ptr %1779, ptr %1781, align 4
  br label %1820

1782:                                             ; preds = %1768
  %1783 = call noalias align 64 ptr @__kmalloc(i32 noundef %1766, i32 noundef 11456) #19
  %1784 = load ptr, ptr %1618, align 8
  %1785 = getelementptr inbounds %struct.urb, ptr %1784, i32 0, i32 14
  store ptr %1783, ptr %1785, align 4
  %1786 = load ptr, ptr %1618, align 8
  %1787 = getelementptr inbounds %struct.urb, ptr %1786, i32 0, i32 14
  %1788 = load ptr, ptr %1787, align 4
  %1789 = icmp eq ptr %1788, null
  br i1 %1789, label %2097, label %1790

1790:                                             ; preds = %1782
  br i1 %1599, label %1815, label %1791

1791:                                             ; preds = %1790
  %1792 = load ptr, ptr %1354, align 4
  %1793 = load i32, ptr %1349, align 4
  %1794 = icmp slt i32 %1793, 0
  %1795 = load i1, ptr @check_copy_size.__already_done, align 1
  %1796 = xor i1 %1795, true
  %1797 = select i1 %1794, i1 %1796, i1 false
  br i1 %1797, label %1798, label %1799, !prof !13

1798:                                             ; preds = %1791
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %1799

1799:                                             ; preds = %1798, %1791
  br i1 %1794, label %2097, label %1800, !prof !13

1800:                                             ; preds = %1799
  %1801 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1792, i32 %1793, i32 -1090519040) #16, !srcloc !17
  %1802 = extractvalue { i32, i32 } %1801, 0
  %1803 = icmp eq i32 %1802, 0
  br i1 %1803, label %1804, label %1809, !prof !8

1804:                                             ; preds = %1800
  %1805 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %1329) #17, !srcloc !10
  %1806 = and i32 %1805, -13
  %1807 = or i32 %1806, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1807) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %1808 = call i32 @arm_copy_from_user(ptr noundef nonnull %1788, ptr noundef %1792, i32 noundef %1793) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %1805) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  br label %1809

1809:                                             ; preds = %1804, %1800
  %1810 = phi i32 [ %1808, %1804 ], [ %1793, %1800 ]
  %1811 = icmp eq i32 %1810, 0
  br i1 %1811, label %1820, label %1812, !prof !8

1812:                                             ; preds = %1809
  %1813 = sub i32 %1793, %1810
  %1814 = getelementptr i8, ptr %1788, i32 %1813
  call void @llvm.memset.p0.i32(ptr align 1 %1814, i8 0, i32 %1810, i1 false) #14
  br label %2097

1815:                                             ; preds = %1790
  %1816 = load i8, ptr %14, align 4
  %1817 = icmp eq i8 %1816, 0
  br i1 %1817, label %1818, label %1820

1818:                                             ; preds = %1815
  %1819 = load i32, ptr %1349, align 4
  call void @llvm.memset.p0.i32(ptr nonnull align 1 %1788, i8 0, i32 %1819, i1 false) #14
  br label %1820

1820:                                             ; preds = %1818, %1815, %1809, %1771, %1765, %1758, %1699
  %1821 = load ptr, ptr %43, align 4
  %1822 = load ptr, ptr %1618, align 8
  %1823 = getelementptr inbounds %struct.urb, ptr %1822, i32 0, i32 8
  store ptr %1821, ptr %1823, align 4
  %1824 = load i8, ptr %14, align 4
  %1825 = zext i8 %1824 to i32
  %1826 = shl i32 %1825, 30
  %1827 = load ptr, ptr %43, align 4
  %1828 = load i8, ptr %1360, align 1
  %1829 = and i8 %1828, 15
  %1830 = zext i8 %1829 to i32
  %1831 = load i32, ptr %1827, align 8
  %1832 = shl i32 %1831, 8
  %1833 = shl nuw nsw i32 %1830, 15
  %1834 = and i8 %1828, -128
  %1835 = zext i8 %1834 to i32
  %1836 = or i32 %1832, %1826
  %1837 = or i32 %1836, %1835
  %1838 = or i32 %1837, %1833
  %1839 = load ptr, ptr %1618, align 8
  %1840 = getelementptr inbounds %struct.urb, ptr %1839, i32 0, i32 10
  store i32 %1838, ptr %1840, align 4
  %1841 = select i1 %1599, i32 512, i32 0
  %1842 = load i32, ptr %1344, align 4
  %1843 = and i32 %1842, 2
  %1844 = or i32 %1843, %1841
  %1845 = and i32 %1842, 1
  %1846 = select i1 %1600, i32 %1845, i32 0
  %1847 = and i32 %1842, 64
  %1848 = select i1 %1601, i32 %1847, i32 0
  %1849 = and i32 %1842, 128
  %1850 = or i32 %1844, %1849
  %1851 = or i32 %1850, %1846
  %1852 = or i32 %1851, %1848
  %1853 = load ptr, ptr %1618, align 8
  %1854 = getelementptr inbounds %struct.urb, ptr %1853, i32 0, i32 13
  store i32 %1852, ptr %1854, align 4
  %1855 = icmp eq i32 %1845, 0
  %1856 = select i1 %1600, i1 true, i1 %1855
  br i1 %1856, label %1860, label %1857

1857:                                             ; preds = %1820
  %1858 = load ptr, ptr %43, align 4
  %1859 = getelementptr inbounds %struct.usb_device, ptr %1858, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1859, ptr noundef nonnull @.str.48) #15
  br label %1860

1860:                                             ; preds = %1857, %1820
  br i1 %1601, label %1868, label %1861

1861:                                             ; preds = %1860
  %1862 = load i32, ptr %1344, align 4
  %1863 = and i32 %1862, 64
  %1864 = icmp eq i32 %1863, 0
  br i1 %1864, label %1868, label %1865

1865:                                             ; preds = %1861
  %1866 = load ptr, ptr %43, align 4
  %1867 = getelementptr inbounds %struct.usb_device, ptr %1866, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1867, ptr noundef nonnull @.str.49) #15
  br label %1868

1868:                                             ; preds = %1865, %1861, %1860
  %1869 = load i32, ptr %1349, align 4
  %1870 = load ptr, ptr %1618, align 8
  %1871 = getelementptr inbounds %struct.urb, ptr %1870, i32 0, i32 19
  store i32 %1869, ptr %1871, align 4
  %1872 = load ptr, ptr %1618, align 8
  %1873 = getelementptr inbounds %struct.urb, ptr %1872, i32 0, i32 21
  store ptr %1603, ptr %1873, align 4
  %1874 = getelementptr inbounds %struct.usbdevfs_urb, ptr %14, i32 0, i32 7
  %1875 = load i32, ptr %1874, align 4
  %1876 = load ptr, ptr %1618, align 8
  %1877 = getelementptr inbounds %struct.urb, ptr %1876, i32 0, i32 23
  store i32 %1875, ptr %1877, align 4
  %1878 = load ptr, ptr %1618, align 8
  %1879 = getelementptr inbounds %struct.urb, ptr %1878, i32 0, i32 24
  store i32 %1597, ptr %1879, align 4
  %1880 = load ptr, ptr %1618, align 8
  %1881 = getelementptr inbounds %struct.urb, ptr %1880, i32 0, i32 11
  store i32 %1598, ptr %1881, align 4
  %1882 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1448, i32 0, i32 5
  %1883 = load i8, ptr %1882, align 2
  %1884 = icmp eq i8 %1883, 0
  br i1 %1884, label %1906, label %1885

1885:                                             ; preds = %1868
  %1886 = load i8, ptr %14, align 4
  %1887 = icmp eq i8 %1886, 0
  br i1 %1887, label %1895, label %1888

1888:                                             ; preds = %1885
  %1889 = load ptr, ptr %43, align 4
  %1890 = getelementptr inbounds %struct.usb_device, ptr %1889, i32 0, i32 4
  %1891 = load i32, ptr %1890, align 4
  %1892 = icmp eq i32 %1891, 3
  %1893 = icmp ugt i32 %1891, 4
  %1894 = or i1 %1892, %1893
  br i1 %1894, label %1895, label %1900

1895:                                             ; preds = %1888, %1885
  %1896 = zext i8 %1883 to i32
  %1897 = call i32 @llvm.smin.i32(i32 %1896, i32 16) #14
  %1898 = add nsw i32 %1897, -1
  %1899 = shl nuw nsw i32 1, %1898
  br label %1902

1900:                                             ; preds = %1888
  %1901 = zext i8 %1883 to i32
  br label %1902

1902:                                             ; preds = %1900, %1895
  %1903 = phi i32 [ %1899, %1895 ], [ %1901, %1900 ]
  %1904 = load ptr, ptr %1618, align 8
  %1905 = getelementptr inbounds %struct.urb, ptr %1904, i32 0, i32 25
  store i32 %1903, ptr %1905, align 4
  br label %1906

1906:                                             ; preds = %1902, %1868
  %1907 = load ptr, ptr %1618, align 8
  %1908 = getelementptr inbounds %struct.urb, ptr %1907, i32 0, i32 27
  store ptr %1614, ptr %1908, align 4
  %1909 = load ptr, ptr %1618, align 8
  %1910 = getelementptr inbounds %struct.urb, ptr %1909, i32 0, i32 28
  store ptr @async_completed, ptr %1910, align 4
  %1911 = icmp eq i32 %1597, 0
  br i1 %1911, label %1925, label %1912

1912:                                             ; preds = %1912, %1906
  %1913 = phi i32 [ %1923, %1912 ], [ 0, %1906 ]
  %1914 = phi i32 [ %1922, %1912 ], [ 0, %1906 ]
  %1915 = load ptr, ptr %1618, align 8
  %1916 = getelementptr %struct.urb, ptr %1915, i32 0, i32 29, i32 %1913
  store i32 %1914, ptr %1916, align 4
  %1917 = getelementptr %struct.usbdevfs_iso_packet_desc, ptr %1604, i32 %1913
  %1918 = load i32, ptr %1917, align 4
  %1919 = load ptr, ptr %1618, align 8
  %1920 = getelementptr %struct.urb, ptr %1919, i32 0, i32 29, i32 %1913, i32 1
  store i32 %1918, ptr %1920, align 4
  %1921 = load i32, ptr %1917, align 4
  %1922 = add i32 %1921, %1914
  %1923 = add nuw i32 %1913, 1
  %1924 = icmp eq i32 %1923, %1597
  br i1 %1924, label %1925, label %1912

1925:                                             ; preds = %1912, %1906
  call void @kfree(ptr noundef %1604) #14
  %1926 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 1
  store ptr %40, ptr %1926, align 8
  %1927 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 7
  store ptr %38, ptr %1927, align 8
  %1928 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 8
  store i32 %2, ptr %1928, align 4
  %1929 = load ptr, ptr %1661, align 4
  %1930 = icmp eq ptr %1929, null
  br i1 %1930, label %1947, label %1931

1931:                                             ; preds = %1925
  %1932 = load ptr, ptr %1354, align 4
  %1933 = ptrtoint ptr %1932 to i32
  %1934 = load ptr, ptr %1618, align 8
  %1935 = getelementptr inbounds %struct.urb, ptr %1934, i32 0, i32 13
  %1936 = load i32, ptr %1935, align 4
  %1937 = or i32 %1936, 4
  store i32 %1937, ptr %1935, align 4
  %1938 = load ptr, ptr %1661, align 4
  %1939 = getelementptr inbounds %struct.usb_memory, ptr %1938, i32 0, i32 5
  %1940 = load i32, ptr %1939, align 4
  %1941 = getelementptr inbounds %struct.usb_memory, ptr %1938, i32 0, i32 6
  %1942 = load i32, ptr %1941, align 4
  %1943 = add i32 %1940, %1933
  %1944 = sub i32 %1943, %1942
  %1945 = load ptr, ptr %1618, align 8
  %1946 = getelementptr inbounds %struct.urb, ptr %1945, i32 0, i32 15
  store i32 %1944, ptr %1946, align 4
  br label %1954

1947:                                             ; preds = %1925
  %1948 = load i32, ptr %1349, align 4
  %1949 = icmp sgt i32 %1948, 0
  %1950 = select i1 %1599, i1 %1949, i1 false
  br i1 %1950, label %1951, label %1954

1951:                                             ; preds = %1947
  %1952 = load ptr, ptr %1354, align 4
  %1953 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 6
  store ptr %1952, ptr %1953, align 4
  br label %1954

1954:                                             ; preds = %1951, %1947, %1931
  %1955 = getelementptr inbounds %struct.usbdevfs_urb, ptr %14, i32 0, i32 10
  %1956 = load i32, ptr %1955, align 4
  %1957 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 4
  store i32 %1956, ptr %1957, align 4
  %1958 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 5
  store i32 %1439, ptr %1958, align 8
  %1959 = getelementptr inbounds %struct.task_struct, ptr %1328, i32 0, i32 62
  %1960 = load ptr, ptr %1959, align 64
  %1961 = icmp eq ptr %1960, null
  br i1 %1961, label %1972, label %1962

1962:                                             ; preds = %1954
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1960) #14, !srcloc !18
  %1963 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1960, ptr nonnull %1960, i32 1, ptr nonnull elementtype(i32) %1960) #14, !srcloc !27
  %1964 = extractvalue { i32, i32, i32 } %1963, 0
  %1965 = icmp eq i32 %1964, 0
  br i1 %1965, label %1970, label %1966, !prof !13

1966:                                             ; preds = %1962
  %1967 = add i32 %1964, 1
  %1968 = or i32 %1967, %1964
  %1969 = icmp sgt i32 %1968, -1
  br i1 %1969, label %1972, label %1970, !prof !8

1970:                                             ; preds = %1966, %1962
  %1971 = phi i32 [ 2, %1962 ], [ 1, %1966 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %1960, i32 noundef %1971) #14
  br label %1972

1972:                                             ; preds = %1970, %1966, %1954
  %1973 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 2
  store ptr %1960, ptr %1973, align 4
  %1974 = getelementptr inbounds %struct.task_struct, ptr %1328, i32 0, i32 83
  %1975 = load ptr, ptr %1974, align 8
  %1976 = icmp eq ptr %1975, null
  br i1 %1976, label %1980, label %1977

1977:                                             ; preds = %1972
  %1978 = getelementptr inbounds %struct.cred, ptr %1975, i32 0, i32 24
  store i32 0, ptr %1978, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1975) #14, !srcloc !18
  %1979 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1975, ptr nonnull %1975, i32 1, ptr nonnull elementtype(i32) %1975) #14, !srcloc !28
  br label %1980

1980:                                             ; preds = %1977, %1972
  %1981 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 3
  store ptr %1975, ptr %1981, align 8
  %1982 = load ptr, ptr %1927, align 8
  %1983 = load ptr, ptr %1618, align 8
  %1984 = getelementptr inbounds %struct.urb, ptr %1983, i32 0, i32 19
  %1985 = load i32, ptr %1984, align 4
  %1986 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %1987 = icmp eq i8 %1986, 0
  br i1 %1987, label %2005, label %1988

1988:                                             ; preds = %1980
  %1989 = getelementptr inbounds %struct.urb, ptr %1983, i32 0, i32 10
  %1990 = load i32, ptr %1989, align 4
  %1991 = load ptr, ptr %43, align 4
  %1992 = lshr i32 %1990, 15
  %1993 = and i32 %1992, 15
  %1994 = lshr i32 %1990, 30
  %1995 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %1994
  %1996 = load ptr, ptr %1995, align 4
  %1997 = lshr i32 %1990, 7
  %1998 = and i32 %1997, 1
  %1999 = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %1998
  %2000 = load ptr, ptr %1999, align 4
  %2001 = icmp eq ptr %1982, null
  %2002 = getelementptr inbounds %struct.usb_device, ptr %1991, i32 0, i32 15
  br i1 %2001, label %2004, label %2003

2003:                                             ; preds = %1988
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %2002, ptr noundef nonnull @.str.38, ptr noundef nonnull %1982, i32 noundef %1993, ptr noundef %1996, ptr noundef %2000, i32 noundef %1985) #15
  br label %2005

2004:                                             ; preds = %1988
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %2002, ptr noundef nonnull @.str.40, i32 noundef %1993, ptr noundef %1996, ptr noundef %2000, i32 noundef %1985, i32 noundef 0) #15
  br label %2005

2005:                                             ; preds = %2004, %2003, %1980
  br i1 %1599, label %2010, label %2006

2006:                                             ; preds = %2005
  %2007 = load ptr, ptr %1618, align 8
  %2008 = getelementptr inbounds %struct.urb, ptr %2007, i32 0, i32 19
  %2009 = load i32, ptr %2008, align 4
  call fastcc void @snoop_urb_data(ptr noundef %2007, i32 noundef %2009) #14
  br label %2010

2010:                                             ; preds = %2006, %2005
  %2011 = load ptr, ptr %1926, align 8
  %2012 = getelementptr inbounds %struct.usb_dev_state, ptr %2011, i32 0, i32 3
  %2013 = call i32 @_raw_spin_lock_irqsave(ptr noundef %2012) #14
  %2014 = getelementptr inbounds %struct.usb_dev_state, ptr %2011, i32 0, i32 4
  %2015 = getelementptr inbounds %struct.usb_dev_state, ptr %2011, i32 0, i32 4, i32 1
  %2016 = load ptr, ptr %2015, align 4
  store ptr %1614, ptr %2015, align 4
  store ptr %2014, ptr %1614, align 8
  %2017 = getelementptr inbounds %struct.list_head, ptr %1614, i32 0, i32 1
  store ptr %2016, ptr %2017, align 4
  store volatile ptr %1614, ptr %2016, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2012, i32 noundef %2013) #14
  %2018 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1448, i32 0, i32 3
  %2019 = load i8, ptr %2018, align 1
  %2020 = and i8 %2019, 3
  %2021 = icmp eq i8 %2020, 2
  br i1 %2021, label %2022, label %2059

2022:                                             ; preds = %2010
  call void @_raw_spin_lock_irq(ptr noundef %1624) #14
  %2023 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1448, i32 0, i32 2
  %2024 = load i8, ptr %2023, align 1
  %2025 = and i8 %2024, 15
  %2026 = lshr i8 %2024, 3
  %2027 = and i8 %2026, 16
  %2028 = or i8 %2027, %2025
  %2029 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 13
  store i8 %2028, ptr %2029, align 8
  %2030 = load i32, ptr %1344, align 4
  %2031 = and i32 %2030, 4
  %2032 = icmp eq i32 %2031, 0
  br i1 %2032, label %2037, label %2033

2033:                                             ; preds = %2022
  %2034 = getelementptr inbounds %struct.async, ptr %1614, i32 0, i32 14
  store i8 1, ptr %2034, align 1
  %2035 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 14
  %2036 = load i32, ptr %2035, align 4
  br label %2045

2037:                                             ; preds = %2022
  %2038 = zext i8 %2028 to i32
  %2039 = shl nuw i32 1, %2038
  %2040 = xor i32 %2039, -1
  %2041 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 14
  %2042 = load i32, ptr %2041, align 4
  %2043 = and i32 %2042, %2040
  store i32 %2043, ptr %2041, align 4
  %2044 = load i8, ptr %2029, align 8
  br label %2045

2045:                                             ; preds = %2037, %2033
  %2046 = phi i8 [ %2044, %2037 ], [ %2028, %2033 ]
  %2047 = phi i32 [ %2043, %2037 ], [ %2036, %2033 ]
  %2048 = zext i8 %2046 to i32
  %2049 = shl nuw i32 1, %2048
  %2050 = and i32 %2049, %2047
  %2051 = icmp eq i32 %2050, 0
  br i1 %2051, label %2052, label %2055

2052:                                             ; preds = %2045
  %2053 = load ptr, ptr %1618, align 8
  %2054 = call i32 @usb_submit_urb(ptr noundef %2053, i32 noundef 2592) #14
  br label %2055

2055:                                             ; preds = %2052, %2045
  %2056 = phi i32 [ %2054, %2052 ], [ -121, %2045 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !29
  %2057 = load i16, ptr %1624, align 4
  %2058 = add i16 %2057, 1
  store i16 %2058, ptr %1624, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !30
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !31
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !32
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !33
  br label %2062

2059:                                             ; preds = %2010
  %2060 = load ptr, ptr %1618, align 8
  %2061 = call i32 @usb_submit_urb(ptr noundef %2060, i32 noundef 3264) #14
  br label %2062

2062:                                             ; preds = %2059, %2055
  %2063 = phi i32 [ %2056, %2055 ], [ %2061, %2059 ]
  %2064 = icmp eq i32 %2063, 0
  br i1 %2064, label %2065, label %2066

2065:                                             ; preds = %2062
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %14) #14
  br label %2109

2066:                                             ; preds = %2062
  %2067 = load ptr, ptr %43, align 4
  %2068 = getelementptr inbounds %struct.usb_device, ptr %2067, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.28, ptr noundef %2068, ptr noundef nonnull @.str.50, i32 noundef %2063) #15
  %2069 = load ptr, ptr %1927, align 8
  %2070 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %2071 = icmp eq i8 %2070, 0
  br i1 %2071, label %2090, label %2072

2072:                                             ; preds = %2066
  %2073 = load ptr, ptr %1618, align 8
  %2074 = getelementptr inbounds %struct.urb, ptr %2073, i32 0, i32 10
  %2075 = load i32, ptr %2074, align 4
  %2076 = load ptr, ptr %43, align 4
  %2077 = lshr i32 %2075, 15
  %2078 = and i32 %2077, 15
  %2079 = lshr i32 %2075, 30
  %2080 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %2079
  %2081 = load ptr, ptr %2080, align 4
  %2082 = lshr i32 %2075, 7
  %2083 = and i32 %2082, 1
  %2084 = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %2083
  %2085 = load ptr, ptr %2084, align 4
  %2086 = icmp eq ptr %2069, null
  %2087 = getelementptr inbounds %struct.usb_device, ptr %2076, i32 0, i32 15
  br i1 %2086, label %2089, label %2088

2088:                                             ; preds = %2072
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %2087, ptr noundef nonnull @.str.39, ptr noundef nonnull %2069, i32 noundef %2078, ptr noundef %2081, ptr noundef %2085, i32 noundef 0, i32 noundef %2063) #15
  br label %2090

2089:                                             ; preds = %2072
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %2087, ptr noundef nonnull @.str.41, i32 noundef %2078, ptr noundef %2081, ptr noundef %2085, i32 noundef 0, i32 noundef %2063) #15
  br label %2090

2090:                                             ; preds = %2089, %2088, %2066
  %2091 = load ptr, ptr %1926, align 8
  %2092 = getelementptr inbounds %struct.usb_dev_state, ptr %2091, i32 0, i32 3
  %2093 = call i32 @_raw_spin_lock_irqsave(ptr noundef %2092) #14
  %2094 = load ptr, ptr %2017, align 4
  %2095 = load ptr, ptr %1614, align 8
  %2096 = getelementptr inbounds %struct.list_head, ptr %2095, i32 0, i32 1
  store ptr %2094, ptr %2096, align 4
  store volatile ptr %2095, ptr %2094, align 4
  store volatile ptr %1614, ptr %1614, align 8
  store ptr %1614, ptr %2017, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2092, i32 noundef %2093) #14
  br label %2097

2097:                                             ; preds = %2090, %1812, %1799, %1782, %1752, %1712, %1691, %1680, %1656, %1620, %1612, %1607, %1583, %1581, %1487, %1480, %1476
  %2098 = phi i32 [ %1582, %1581 ], [ %1659, %1656 ], [ -12, %1680 ], [ %2063, %2090 ], [ %1496, %1487 ], [ -22, %1480 ], [ -14, %1607 ], [ -12, %1691 ], [ -12, %1782 ], [ -14, %1476 ], [ -14, %1752 ], [ -14, %1799 ], [ -14, %1812 ], [ -12, %1620 ], [ -12, %1612 ], [ -12, %1712 ], [ -22, %1583 ]
  %2099 = phi ptr [ null, %1581 ], [ %1603, %1656 ], [ %1603, %1680 ], [ null, %2090 ], [ %1463, %1487 ], [ %1463, %1480 ], [ %1603, %1607 ], [ %1603, %1691 ], [ %1603, %1782 ], [ %1463, %1476 ], [ %1603, %1752 ], [ %1603, %1799 ], [ %1603, %1812 ], [ %1603, %1620 ], [ %1603, %1612 ], [ %1603, %1712 ], [ null, %1583 ]
  %2100 = phi ptr [ null, %1581 ], [ %1614, %1656 ], [ %1614, %1680 ], [ %1614, %2090 ], [ null, %1487 ], [ null, %1480 ], [ null, %1607 ], [ %1614, %1691 ], [ %1614, %1782 ], [ null, %1476 ], [ %1614, %1752 ], [ %1614, %1799 ], [ %1614, %1812 ], [ null, %1620 ], [ null, %1612 ], [ %1614, %1712 ], [ null, %1583 ]
  %2101 = phi ptr [ null, %1581 ], [ %1604, %1656 ], [ %1604, %1680 ], [ null, %2090 ], [ null, %1487 ], [ null, %1480 ], [ %1604, %1607 ], [ %1604, %1691 ], [ %1604, %1782 ], [ null, %1476 ], [ %1604, %1752 ], [ %1604, %1799 ], [ %1604, %1812 ], [ %1604, %1620 ], [ %1604, %1612 ], [ %1604, %1712 ], [ %1579, %1583 ]
  call void @kfree(ptr noundef %2101) #14
  call void @kfree(ptr noundef %2099) #14
  %2102 = icmp eq ptr %2100, null
  br i1 %2102, label %2106, label %2103

2103:                                             ; preds = %2097
  call fastcc void @free_async(ptr noundef nonnull %2100) #14
  br label %2106

2104:                                             ; preds = %1572, %1567, %1555, %1525, %1525, %1461, %1453, %1450, %1437, %1418, %1411, %1408, %1373, %1369, %1365, %1352, %1348, %1339, %1335
  %2105 = phi i32 [ -22, %1352 ], [ -14, %1335 ], [ -113, %1411 ], [ -22, %1418 ], [ -22, %1365 ], [ -3, %1369 ], [ -2, %1373 ], [ -22, %1450 ], [ -22, %1572 ], [ -22, %1567 ], [ -22, %1555 ], [ -22, %1525 ], [ -22, %1525 ], [ -12, %1461 ], [ -22, %1453 ], [ -2, %1437 ], [ -22, %1348 ], [ -22, %1339 ], [ -2, %1408 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %14) #14
  br label %2698

2106:                                             ; preds = %2103, %2097, %1428
  %2107 = phi i32 [ %1433, %1428 ], [ %2098, %2103 ], [ %2098, %2097 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %14) #14
  %2108 = icmp sgt i32 %2107, -1
  br i1 %2108, label %2109, label %2698

2109:                                             ; preds = %2106, %2065
  %2110 = phi i32 [ 0, %2065 ], [ %2107, %2106 ]
  %2111 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %36) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %36, ptr noundef %42) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %2111, ptr noundef nonnull align 8 dereferenceable(16) %36, i32 16, i1 false) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %36) #14
  br label %2705

2112:                                             ; preds = %163
  %2113 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %2114 = icmp eq i8 %2113, 0
  br i1 %2114, label %2116, label %2115

2115:                                             ; preds = %2112
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.usbdev_do_ioctl, ptr noundef %38) #15
  br label %2116

2116:                                             ; preds = %2115, %2112
  %2117 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 3
  %2118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2117) #14
  %2119 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 4
  br label %2120

2120:                                             ; preds = %2124, %2116
  %2121 = phi ptr [ %2119, %2116 ], [ %2122, %2124 ]
  %2122 = load ptr, ptr %2121, align 4
  %2123 = icmp eq ptr %2122, %2119
  br i1 %2123, label %2134, label %2124

2124:                                             ; preds = %2120
  %2125 = getelementptr inbounds %struct.async, ptr %2122, i32 0, i32 7
  %2126 = load ptr, ptr %2125, align 4
  %2127 = icmp eq ptr %2126, %38
  br i1 %2127, label %2128, label %2120

2128:                                             ; preds = %2124
  %2129 = getelementptr inbounds %struct.list_head, ptr %2122, i32 0, i32 1
  %2130 = load ptr, ptr %2129, align 4
  %2131 = load ptr, ptr %2122, align 4
  %2132 = getelementptr inbounds %struct.list_head, ptr %2131, i32 0, i32 1
  store ptr %2130, ptr %2132, align 4
  store volatile ptr %2131, ptr %2130, align 4
  store volatile ptr %2122, ptr %2122, align 4
  store ptr %2122, ptr %2129, align 4
  %2133 = icmp eq ptr %2122, null
  br i1 %2133, label %2134, label %2135

2134:                                             ; preds = %2128, %2120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2117, i32 noundef %2118) #14
  br label %2700

2135:                                             ; preds = %2128
  %2136 = getelementptr inbounds %struct.async, ptr %2122, i32 0, i32 9
  %2137 = load ptr, ptr %2136, align 4
  %2138 = tail call ptr @usb_get_urb(ptr noundef %2137) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2117, i32 noundef %2118) #14
  tail call void @usb_kill_urb(ptr noundef %2137) #14
  tail call void @usb_free_urb(ptr noundef %2137) #14
  br label %2705

2139:                                             ; preds = %163
  %2140 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %2141 = icmp eq i8 %2140, 0
  br i1 %2141, label %2143, label %2142

2142:                                             ; preds = %2139
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %2143

2143:                                             ; preds = %2142, %2139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #14
  store i64 0, ptr %15, align 8, !annotation !16
  %2144 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 8, i32 -1090519040) #16, !srcloc !17
  %2145 = extractvalue { i32, i32 } %2144, 0
  %2146 = icmp eq i32 %2145, 0
  br i1 %2146, label %2147, label %2155, !prof !8

2147:                                             ; preds = %2143
  %2148 = tail call ptr @llvm.thread.pointer() #14
  %2149 = getelementptr inbounds %struct.thread_info, ptr %2148, i32 0, i32 3
  %2150 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %2149) #17, !srcloc !10
  %2151 = and i32 %2150, -13
  %2152 = or i32 %2151, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2152) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2153 = call i32 @arm_copy_from_user(ptr noundef nonnull %15, ptr noundef %38, i32 noundef 8) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2150) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2154 = icmp eq i32 %2153, 0
  br i1 %2154, label %2159, label %2155, !prof !8

2155:                                             ; preds = %2147, %2143
  %2156 = phi i32 [ %2153, %2147 ], [ 8, %2143 ]
  %2157 = sub i32 8, %2156
  %2158 = getelementptr i8, ptr %15, i32 %2157
  call void @llvm.memset.p0.i32(ptr align 1 %2158, i8 0, i32 %2156, i1 false) #14
  br label %2165

2159:                                             ; preds = %2147
  %2160 = load i32, ptr %15, align 8
  %2161 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 9
  store i32 %2160, ptr %2161, align 4
  %2162 = getelementptr inbounds %struct.usbdevfs_disconnectsignal, ptr %15, i32 0, i32 1
  %2163 = load ptr, ptr %2162, align 4
  %2164 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 12
  store ptr %2163, ptr %2164, align 4
  br label %2165

2165:                                             ; preds = %2159, %2155
  %2166 = phi i32 [ 0, %2159 ], [ -14, %2155 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  br label %2702

2167:                                             ; preds = %163
  %2168 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %2169 = icmp eq i8 %2168, 0
  br i1 %2169, label %2171, label %2170

2170:                                             ; preds = %2167
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %2171

2171:                                             ; preds = %2170, %2167
  %2172 = tail call ptr @llvm.thread.pointer() #14
  %2173 = getelementptr inbounds %struct.thread_info, ptr %2172, i32 0, i32 3
  %2174 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %2173) #17, !srcloc !10
  %2175 = and i32 %2174, -13
  %2176 = or i32 %2175, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2176) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2177 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %38, i32 -1090519041) #14, !srcloc !34
  %2178 = extractvalue { i32, i32 } %2177, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2174) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2179 = icmp eq i32 %2178, 0
  br i1 %2179, label %2180, label %2700

2180:                                             ; preds = %2171
  %2181 = extractvalue { i32, i32 } %2177, 1
  %2182 = tail call fastcc i32 @claimintf(ptr noundef %40, i32 noundef %2181) #14
  br label %2702

2183:                                             ; preds = %163
  %2184 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %2185 = icmp eq i8 %2184, 0
  br i1 %2185, label %2187, label %2186

2186:                                             ; preds = %2183
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %2187

2187:                                             ; preds = %2186, %2183
  %2188 = tail call ptr @llvm.thread.pointer() #14
  %2189 = getelementptr inbounds %struct.thread_info, ptr %2188, i32 0, i32 3
  %2190 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %2189) #17, !srcloc !10
  %2191 = and i32 %2190, -13
  %2192 = or i32 %2191, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2192) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2193 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %38, i32 -1090519041) #14, !srcloc !35
  %2194 = extractvalue { i32, i32 } %2193, 0
  %2195 = extractvalue { i32, i32 } %2193, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2190) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2196 = icmp eq i32 %2194, 0
  br i1 %2196, label %2197, label %2700

2197:                                             ; preds = %2187
  %2198 = icmp ugt i32 %2195, 31
  br i1 %2198, label %2700, label %2199

2199:                                             ; preds = %2197
  %2200 = load ptr, ptr %43, align 4
  %2201 = tail call ptr @usb_ifnum_to_if(ptr noundef %2200, i32 noundef %2195) #14
  %2202 = icmp eq ptr %2201, null
  br i1 %2202, label %2700, label %2203

2203:                                             ; preds = %2199
  %2204 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 13
  %2205 = tail call i32 @_test_and_clear_bit(i32 noundef %2195, ptr noundef %2204) #14
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2700, label %2207

2207:                                             ; preds = %2203
  %2208 = getelementptr inbounds %struct.usb_interface, ptr %2201, i32 0, i32 7, i32 0, i32 7
  %2209 = load i8, ptr %2208, align 8
  %2210 = and i8 %2209, 16
  %2211 = or i8 %2209, 16
  store i8 %2211, ptr %2208, align 8
  tail call void @usb_driver_release_interface(ptr noundef nonnull @usbfs_driver, ptr noundef nonnull %2201) #14
  %2212 = load i8, ptr %2208, align 8
  %2213 = and i8 %2212, -17
  %2214 = or i8 %2213, %2210
  store i8 %2214, ptr %2208, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #14
  store volatile ptr %16, ptr %16, align 8
  %2215 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %16, ptr %2215, align 4
  %2216 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 3
  %2217 = call i32 @_raw_spin_lock_irqsave(ptr noundef %2216) #14
  %2218 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 4
  %2219 = load ptr, ptr %2218, align 4
  %2220 = icmp eq ptr %2219, %2218
  br i1 %2220, label %2234, label %2221

2221:                                             ; preds = %2232, %2207
  %2222 = phi ptr [ %2223, %2232 ], [ %2219, %2207 ]
  %2223 = load ptr, ptr %2222, align 4
  %2224 = getelementptr inbounds %struct.async, ptr %2222, i32 0, i32 5
  %2225 = load i32, ptr %2224, align 4
  %2226 = icmp eq i32 %2225, %2195
  br i1 %2226, label %2227, label %2232

2227:                                             ; preds = %2221
  %2228 = getelementptr inbounds %struct.list_head, ptr %2222, i32 0, i32 1
  %2229 = load ptr, ptr %2228, align 4
  %2230 = getelementptr inbounds %struct.list_head, ptr %2223, i32 0, i32 1
  store ptr %2229, ptr %2230, align 4
  store volatile ptr %2223, ptr %2229, align 4
  %2231 = load ptr, ptr %2215, align 4
  store ptr %2222, ptr %2215, align 4
  store ptr %16, ptr %2222, align 4
  store ptr %2231, ptr %2228, align 4
  store volatile ptr %2222, ptr %2231, align 4
  br label %2232

2232:                                             ; preds = %2227, %2221
  %2233 = icmp eq ptr %2223, %2218
  br i1 %2233, label %2234, label %2221

2234:                                             ; preds = %2232, %2207
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2216, i32 noundef %2217) #14
  call fastcc void @destroy_async(ptr noundef %40, ptr noundef nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #14
  br label %2705

2235:                                             ; preds = %163
  %2236 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %2237 = icmp eq i8 %2236, 0
  br i1 %2237, label %2239, label %2238

2238:                                             ; preds = %2235
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %2239

2239:                                             ; preds = %2238, %2235
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %17, i8 0, i32 12, i1 false) #14, !annotation !16
  %2240 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 12, i32 -1090519040) #16, !srcloc !17
  %2241 = extractvalue { i32, i32 } %2240, 0
  %2242 = icmp eq i32 %2241, 0
  br i1 %2242, label %2243, label %2251, !prof !8

2243:                                             ; preds = %2239
  %2244 = tail call ptr @llvm.thread.pointer() #14
  %2245 = getelementptr inbounds %struct.thread_info, ptr %2244, i32 0, i32 3
  %2246 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %2245) #17, !srcloc !10
  %2247 = and i32 %2246, -13
  %2248 = or i32 %2247, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2248) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2249 = call i32 @arm_copy_from_user(ptr noundef nonnull %17, ptr noundef %38, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2246) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2250 = icmp eq i32 %2249, 0
  br i1 %2250, label %2255, label %2251, !prof !8

2251:                                             ; preds = %2243, %2239
  %2252 = phi i32 [ %2249, %2243 ], [ 12, %2239 ]
  %2253 = sub i32 12, %2252
  %2254 = getelementptr i8, ptr %17, i32 %2253
  call void @llvm.memset.p0.i32(ptr align 1 %2254, i8 0, i32 %2252, i1 false) #14
  br label %2359

2255:                                             ; preds = %2243
  %2256 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 18
  %2257 = load i8, ptr %2256, align 1, !range !14
  %2258 = icmp eq i8 %2257, 0
  br i1 %2258, label %2259, label %2359

2259:                                             ; preds = %2255
  %2260 = load volatile ptr, ptr %40, align 4
  %2261 = icmp eq ptr %2260, %40
  br i1 %2261, label %2359, label %2262

2262:                                             ; preds = %2259
  %2263 = load ptr, ptr %43, align 4
  %2264 = getelementptr inbounds %struct.usb_device, ptr %2263, i32 0, i32 3
  %2265 = load i32, ptr %2264, align 8
  %2266 = icmp eq i32 %2265, 0
  br i1 %2266, label %2359, label %2267

2267:                                             ; preds = %2262
  %2268 = getelementptr inbounds %struct.usbdevfs_ioctl, ptr %17, i32 0, i32 1
  %2269 = load i32, ptr %2268, align 4
  %2270 = lshr i32 %2269, 16
  %2271 = and i32 %2270, 16383
  %2272 = icmp ne i32 %2271, 0
  br i1 %2272, label %2273, label %2297

2273:                                             ; preds = %2267
  %2274 = call noalias align 64 ptr @__kmalloc(i32 noundef %2271, i32 noundef 3264) #19
  %2275 = icmp eq ptr %2274, null
  br i1 %2275, label %2359, label %2276

2276:                                             ; preds = %2273
  %2277 = load i32, ptr %2268, align 4
  %2278 = and i32 %2277, 1073741824
  %2279 = icmp eq i32 %2278, 0
  br i1 %2279, label %2296, label %2280

2280:                                             ; preds = %2276
  %2281 = getelementptr inbounds %struct.usbdevfs_ioctl, ptr %17, i32 0, i32 2
  %2282 = load ptr, ptr %2281, align 4
  %2283 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2282, i32 %2271, i32 -1090519040) #16, !srcloc !17
  %2284 = extractvalue { i32, i32 } %2283, 0
  %2285 = icmp eq i32 %2284, 0
  br i1 %2285, label %2286, label %2292, !prof !8

2286:                                             ; preds = %2280
  %2287 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %2245) #17, !srcloc !10
  %2288 = and i32 %2287, -13
  %2289 = or i32 %2288, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2289) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2290 = call i32 @arm_copy_from_user(ptr noundef nonnull %2274, ptr noundef %2282, i32 noundef %2271) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2287) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2291 = icmp eq i32 %2290, 0
  br i1 %2291, label %2297, label %2292, !prof !8

2292:                                             ; preds = %2286, %2280
  %2293 = phi i32 [ %2290, %2286 ], [ %2271, %2280 ]
  %2294 = sub i32 %2271, %2293
  %2295 = getelementptr i8, ptr %2274, i32 %2294
  call void @llvm.memset.p0.i32(ptr align 1 %2295, i8 0, i32 %2293, i1 false) #14
  call void @kfree(ptr noundef nonnull %2274) #14
  br label %2359

2296:                                             ; preds = %2276
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %2274, i8 0, i32 %2271, i1 false) #14
  br label %2297

2297:                                             ; preds = %2296, %2286, %2267
  %2298 = phi ptr [ %2274, %2296 ], [ null, %2267 ], [ %2274, %2286 ]
  %2299 = load ptr, ptr %43, align 4
  %2300 = getelementptr inbounds %struct.usb_device, ptr %2299, i32 0, i32 3
  %2301 = load i32, ptr %2300, align 8
  %2302 = icmp eq i32 %2301, 7
  br i1 %2302, label %2303, label %2357

2303:                                             ; preds = %2297
  %2304 = load i32, ptr %17, align 4
  %2305 = call ptr @usb_ifnum_to_if(ptr noundef %2299, i32 noundef %2304) #14
  %2306 = icmp eq ptr %2305, null
  br i1 %2306, label %2357, label %2307

2307:                                             ; preds = %2303
  %2308 = load i32, ptr %2268, align 4
  switch i32 %2308, label %2322 [
    i32 21782, label %2309
    i32 21783, label %2315
  ]

2309:                                             ; preds = %2307
  %2310 = getelementptr inbounds %struct.usb_interface, ptr %2305, i32 0, i32 7, i32 6
  %2311 = load ptr, ptr %2310, align 8
  %2312 = icmp eq ptr %2311, null
  br i1 %2312, label %2357, label %2313

2313:                                             ; preds = %2309
  %2314 = getelementptr i8, ptr %2311, i32 -56
  call void @usb_driver_release_interface(ptr noundef %2314, ptr noundef nonnull %2305) #14
  br label %2339

2315:                                             ; preds = %2307
  %2316 = getelementptr inbounds %struct.usb_interface, ptr %2305, i32 0, i32 7, i32 6
  %2317 = load ptr, ptr %2316, align 8
  %2318 = icmp eq ptr %2317, null
  br i1 %2318, label %2319, label %2357

2319:                                             ; preds = %2315
  %2320 = getelementptr inbounds %struct.usb_interface, ptr %2305, i32 0, i32 7
  %2321 = call i32 @device_attach(ptr noundef %2320) #14
  br label %2336

2322:                                             ; preds = %2307
  %2323 = getelementptr inbounds %struct.usb_interface, ptr %2305, i32 0, i32 7, i32 6
  %2324 = load ptr, ptr %2323, align 8
  %2325 = icmp eq ptr %2324, null
  %2326 = getelementptr i8, ptr %2324, i32 -56
  %2327 = icmp eq ptr %2326, null
  %2328 = or i1 %2325, %2327
  br i1 %2328, label %2357, label %2329

2329:                                             ; preds = %2322
  %2330 = getelementptr i8, ptr %2324, i32 -44
  %2331 = load ptr, ptr %2330, align 4
  %2332 = icmp eq ptr %2331, null
  br i1 %2332, label %2357, label %2333

2333:                                             ; preds = %2329
  %2334 = call i32 %2331(ptr noundef nonnull %2305, i32 noundef %2308, ptr noundef %2298) #14
  %2335 = icmp eq i32 %2334, -515
  br i1 %2335, label %2357, label %2336

2336:                                             ; preds = %2333, %2319
  %2337 = phi i32 [ %2334, %2333 ], [ %2321, %2319 ]
  %2338 = icmp sgt i32 %2337, -1
  br i1 %2338, label %2339, label %2357

2339:                                             ; preds = %2336, %2313
  %2340 = phi i32 [ 0, %2313 ], [ %2337, %2336 ]
  %2341 = load i32, ptr %2268, align 4
  %2342 = icmp slt i32 %2341, 0
  %2343 = select i1 %2342, i1 %2272, i1 false
  br i1 %2343, label %2344, label %2357

2344:                                             ; preds = %2339
  %2345 = getelementptr inbounds %struct.usbdevfs_ioctl, ptr %17, i32 0, i32 2
  %2346 = load ptr, ptr %2345, align 4
  %2347 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2346, i32 %2271, i32 -1090519040) #16, !srcloc !9
  %2348 = extractvalue { i32, i32 } %2347, 0
  %2349 = icmp eq i32 %2348, 0
  br i1 %2349, label %2350, label %2357

2350:                                             ; preds = %2344
  %2351 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %2245) #17, !srcloc !10
  %2352 = and i32 %2351, -13
  %2353 = or i32 %2352, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2353) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2354 = call i32 @arm_copy_to_user(ptr noundef %2346, ptr noundef %2298, i32 noundef %2271) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2351) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2355 = icmp eq i32 %2354, 0
  %2356 = select i1 %2355, i32 %2340, i32 -14
  br label %2357

2357:                                             ; preds = %2350, %2344, %2339, %2336, %2333, %2329, %2322, %2315, %2309, %2303, %2297
  %2358 = phi i32 [ %2340, %2339 ], [ %2337, %2336 ], [ -25, %2322 ], [ -25, %2329 ], [ -16, %2315 ], [ -61, %2309 ], [ -22, %2303 ], [ -113, %2297 ], [ -25, %2333 ], [ -14, %2344 ], [ %2356, %2350 ]
  call void @kfree(ptr noundef %2298) #14
  br label %2359

2359:                                             ; preds = %2357, %2292, %2273, %2262, %2259, %2255, %2251
  %2360 = phi i32 [ -14, %2292 ], [ %2358, %2357 ], [ -13, %2255 ], [ -19, %2262 ], [ -12, %2273 ], [ -19, %2259 ], [ -14, %2251 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #14
  br label %2702

2361:                                             ; preds = %163
  %2362 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %2363 = icmp eq i8 %2362, 0
  br i1 %2363, label %2365, label %2364

2364:                                             ; preds = %2361
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %2365

2365:                                             ; preds = %2364, %2361
  %2366 = tail call ptr @llvm.thread.pointer() #14
  %2367 = getelementptr inbounds %struct.thread_info, ptr %2366, i32 0, i32 3
  %2368 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %2367) #17, !srcloc !10
  %2369 = and i32 %2368, -13
  %2370 = or i32 %2369, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2370) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2371 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %38, i32 -1090519041) #14, !srcloc !36
  %2372 = extractvalue { i32, i32 } %2371, 0
  %2373 = extractvalue { i32, i32 } %2371, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2368) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2374 = icmp eq i32 %2372, 0
  br i1 %2374, label %2375, label %2700

2375:                                             ; preds = %2365
  %2376 = load ptr, ptr %43, align 4
  %2377 = tail call i32 @usb_hub_claim_port(ptr noundef %2376, i32 noundef %2373, ptr noundef %40) #14
  %2378 = icmp ne i32 %2377, 0
  %2379 = load i8, ptr @usbfs_snoop, align 1
  %2380 = icmp eq i8 %2379, 0
  %2381 = select i1 %2378, i1 true, i1 %2380
  br i1 %2381, label %2702, label %2382

2382:                                             ; preds = %2375
  %2383 = load ptr, ptr %43, align 4
  %2384 = getelementptr inbounds %struct.usb_device, ptr %2383, i32 0, i32 15
  %2385 = getelementptr inbounds %struct.task_struct, ptr %2366, i32 0, i32 52
  %2386 = load i32, ptr %2385, align 8
  %2387 = getelementptr inbounds %struct.task_struct, ptr %2366, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2384, ptr noundef nonnull @.str.52, i32 noundef %2373, i32 noundef %2386, ptr noundef %2387) #15
  br label %2705

2388:                                             ; preds = %163
  %2389 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %2390 = icmp eq i8 %2389, 0
  br i1 %2390, label %2392, label %2391

2391:                                             ; preds = %2388
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.usbdev_do_ioctl) #15
  br label %2392

2392:                                             ; preds = %2391, %2388
  %2393 = tail call ptr @llvm.thread.pointer() #14
  %2394 = getelementptr inbounds %struct.thread_info, ptr %2393, i32 0, i32 3
  %2395 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %2394) #17, !srcloc !10
  %2396 = and i32 %2395, -13
  %2397 = or i32 %2396, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2397) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2398 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %38, i32 -1090519041) #14, !srcloc !37
  %2399 = extractvalue { i32, i32 } %2398, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2395) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2400 = icmp eq i32 %2399, 0
  br i1 %2400, label %2401, label %2700

2401:                                             ; preds = %2392
  %2402 = extractvalue { i32, i32 } %2398, 1
  %2403 = load ptr, ptr %43, align 4
  %2404 = tail call i32 @usb_hub_release_port(ptr noundef %2403, i32 noundef %2402, ptr noundef %40) #14
  br label %2702

2405:                                             ; preds = %163
  %2406 = getelementptr inbounds %struct.usb_device, ptr %158, i32 0, i32 12
  %2407 = load ptr, ptr %2406, align 8
  %2408 = getelementptr inbounds %struct.usb_bus, ptr %2407, i32 0, i32 6
  %2409 = load i8, ptr %2408, align 2
  %2410 = and i8 %2409, 4
  %2411 = icmp eq i8 %2410, 0
  %2412 = select i1 %2411, i32 503, i32 501
  %2413 = getelementptr inbounds %struct.usb_bus, ptr %2407, i32 0, i32 7
  %2414 = load i32, ptr %2413, align 4
  %2415 = icmp eq i32 %2414, 0
  %2416 = or i32 %2412, 8
  %2417 = select i1 %2415, i32 %2412, i32 %2416
  %2418 = tail call ptr @llvm.thread.pointer() #14
  %2419 = getelementptr inbounds %struct.thread_info, ptr %2418, i32 0, i32 3
  %2420 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %2419) #17, !srcloc !10
  %2421 = and i32 %2420, -13
  %2422 = or i32 %2421, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2422) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2423 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %38, i32 %2417, i32 -1090519041) #14, !srcloc !38
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2420) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2424 = icmp eq i32 %2423, 0
  br i1 %2424, label %2705, label %2700

2425:                                             ; preds = %163
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %18) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(264) %18, i8 0, i32 264, i1 false) #14, !annotation !16
  %2426 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 264, i32 -1090519040) #16, !srcloc !17
  %2427 = extractvalue { i32, i32 } %2426, 0
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2429, label %2437, !prof !8

2429:                                             ; preds = %2425
  %2430 = tail call ptr @llvm.thread.pointer() #14
  %2431 = getelementptr inbounds %struct.thread_info, ptr %2430, i32 0, i32 3
  %2432 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %2431) #17, !srcloc !10
  %2433 = and i32 %2432, -13
  %2434 = or i32 %2433, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2434) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2435 = call i32 @arm_copy_from_user(ptr noundef nonnull %18, ptr noundef %38, i32 noundef 264) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2432) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2436 = icmp eq i32 %2435, 0
  br i1 %2436, label %2441, label %2437, !prof !8

2437:                                             ; preds = %2429, %2425
  %2438 = phi i32 [ %2435, %2429 ], [ 264, %2425 ]
  %2439 = sub i32 264, %2438
  %2440 = getelementptr i8, ptr %18, i32 %2439
  call void @llvm.memset.p0.i32(ptr align 1 %2440, i8 0, i32 %2438, i1 false) #14
  br label %2477

2441:                                             ; preds = %2429
  %2442 = load ptr, ptr %43, align 4
  %2443 = load i32, ptr %18, align 4
  %2444 = call ptr @usb_ifnum_to_if(ptr noundef %2442, i32 noundef %2443) #14
  %2445 = icmp eq ptr %2444, null
  br i1 %2445, label %2477, label %2446

2446:                                             ; preds = %2441
  %2447 = getelementptr inbounds %struct.usb_interface, ptr %2444, i32 0, i32 7, i32 6
  %2448 = load ptr, ptr %2447, align 8
  %2449 = icmp eq ptr %2448, null
  br i1 %2449, label %2474, label %2450

2450:                                             ; preds = %2446
  %2451 = getelementptr i8, ptr %2448, i32 -56
  %2452 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 18
  %2453 = load i8, ptr %2452, align 1, !range !14
  %2454 = icmp eq i8 %2453, 0
  br i1 %2454, label %2455, label %2477

2455:                                             ; preds = %2450
  %2456 = getelementptr inbounds %struct.usbdevfs_disconnect_claim, ptr %18, i32 0, i32 1
  %2457 = load i32, ptr %2456, align 4
  %2458 = and i32 %2457, 1
  %2459 = icmp eq i32 %2458, 0
  br i1 %2459, label %2465, label %2460

2460:                                             ; preds = %2455
  %2461 = getelementptr inbounds %struct.usbdevfs_disconnect_claim, ptr %18, i32 0, i32 2
  %2462 = load ptr, ptr %2448, align 4
  %2463 = call i32 @strncmp(ptr noundef %2461, ptr noundef %2462, i32 noundef 256) #14
  %2464 = icmp eq i32 %2463, 0
  br i1 %2464, label %2465, label %2477

2465:                                             ; preds = %2460, %2455
  %2466 = and i32 %2457, 2
  %2467 = icmp eq i32 %2466, 0
  br i1 %2467, label %2473, label %2468

2468:                                             ; preds = %2465
  %2469 = getelementptr inbounds %struct.usbdevfs_disconnect_claim, ptr %18, i32 0, i32 2
  %2470 = load ptr, ptr %2448, align 4
  %2471 = call i32 @strncmp(ptr noundef %2469, ptr noundef %2470, i32 noundef 256) #14
  %2472 = icmp eq i32 %2471, 0
  br i1 %2472, label %2477, label %2473

2473:                                             ; preds = %2468, %2465
  call void @usb_driver_release_interface(ptr noundef %2451, ptr noundef nonnull %2444) #14
  br label %2474

2474:                                             ; preds = %2473, %2446
  %2475 = load i32, ptr %18, align 4
  %2476 = call fastcc i32 @claimintf(ptr noundef %40, i32 noundef %2475) #14
  br label %2477

2477:                                             ; preds = %2474, %2468, %2460, %2450, %2441, %2437
  %2478 = phi i32 [ %2476, %2474 ], [ -22, %2441 ], [ -14, %2437 ], [ -16, %2468 ], [ -16, %2460 ], [ -13, %2450 ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %18) #14
  br label %2702

2479:                                             ; preds = %163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #14
  store i32 0, ptr %20, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #14
  store i32 0, ptr %21, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #14
  store ptr null, ptr %22, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #14
  store ptr null, ptr %23, align 4, !annotation !16
  %2480 = call fastcc i32 @parse_usbdevfs_streams(ptr noundef %40, ptr noundef %38, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #14
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2482, label %2512

2482:                                             ; preds = %2479
  %2483 = load ptr, ptr %23, align 4
  %2484 = load ptr, ptr %2483, align 8
  %2485 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2484, i32 0, i32 2
  %2486 = load i8, ptr %2485, align 2
  %2487 = zext i8 %2486 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #14
  store volatile ptr %19, ptr %19, align 8
  %2488 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %19, ptr %2488, align 4
  %2489 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 3
  %2490 = call i32 @_raw_spin_lock_irqsave(ptr noundef %2489) #14
  %2491 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 4
  %2492 = load ptr, ptr %2491, align 4
  %2493 = icmp eq ptr %2492, %2491
  br i1 %2493, label %2507, label %2494

2494:                                             ; preds = %2505, %2482
  %2495 = phi ptr [ %2496, %2505 ], [ %2492, %2482 ]
  %2496 = load ptr, ptr %2495, align 4
  %2497 = getelementptr inbounds %struct.async, ptr %2495, i32 0, i32 5
  %2498 = load i32, ptr %2497, align 4
  %2499 = icmp eq i32 %2498, %2487
  br i1 %2499, label %2500, label %2505

2500:                                             ; preds = %2494
  %2501 = getelementptr inbounds %struct.list_head, ptr %2495, i32 0, i32 1
  %2502 = load ptr, ptr %2501, align 4
  %2503 = getelementptr inbounds %struct.list_head, ptr %2496, i32 0, i32 1
  store ptr %2502, ptr %2503, align 4
  store volatile ptr %2496, ptr %2502, align 4
  %2504 = load ptr, ptr %2488, align 4
  store ptr %2495, ptr %2488, align 4
  store ptr %19, ptr %2495, align 4
  store ptr %2504, ptr %2501, align 4
  store volatile ptr %2495, ptr %2504, align 4
  br label %2505

2505:                                             ; preds = %2500, %2494
  %2506 = icmp eq ptr %2496, %2491
  br i1 %2506, label %2507, label %2494

2507:                                             ; preds = %2505, %2482
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2489, i32 noundef %2490) #14
  call fastcc void @destroy_async(ptr noundef %40, ptr noundef nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  %2508 = load ptr, ptr %22, align 4
  %2509 = load i32, ptr %21, align 4
  %2510 = load i32, ptr %20, align 4
  %2511 = call i32 @usb_alloc_streams(ptr noundef %2483, ptr noundef %2508, i32 noundef %2509, i32 noundef %2510, i32 noundef 3264) #14
  call void @kfree(ptr noundef %2508) #14
  br label %2512

2512:                                             ; preds = %2507, %2479
  %2513 = phi i32 [ %2511, %2507 ], [ %2480, %2479 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #14
  br label %2702

2514:                                             ; preds = %163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #14
  store i32 0, ptr %25, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #14
  store ptr null, ptr %26, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #14
  store ptr null, ptr %27, align 4, !annotation !16
  %2515 = call fastcc i32 @parse_usbdevfs_streams(ptr noundef %40, ptr noundef %38, ptr noundef null, ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef nonnull %27) #14
  %2516 = icmp eq i32 %2515, 0
  br i1 %2516, label %2517, label %2546

2517:                                             ; preds = %2514
  %2518 = load ptr, ptr %27, align 4
  %2519 = load ptr, ptr %2518, align 8
  %2520 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2519, i32 0, i32 2
  %2521 = load i8, ptr %2520, align 2
  %2522 = zext i8 %2521 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #14
  store volatile ptr %24, ptr %24, align 8
  %2523 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %24, ptr %2523, align 4
  %2524 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 3
  %2525 = call i32 @_raw_spin_lock_irqsave(ptr noundef %2524) #14
  %2526 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 4
  %2527 = load ptr, ptr %2526, align 4
  %2528 = icmp eq ptr %2527, %2526
  br i1 %2528, label %2542, label %2529

2529:                                             ; preds = %2540, %2517
  %2530 = phi ptr [ %2531, %2540 ], [ %2527, %2517 ]
  %2531 = load ptr, ptr %2530, align 4
  %2532 = getelementptr inbounds %struct.async, ptr %2530, i32 0, i32 5
  %2533 = load i32, ptr %2532, align 4
  %2534 = icmp eq i32 %2533, %2522
  br i1 %2534, label %2535, label %2540

2535:                                             ; preds = %2529
  %2536 = getelementptr inbounds %struct.list_head, ptr %2530, i32 0, i32 1
  %2537 = load ptr, ptr %2536, align 4
  %2538 = getelementptr inbounds %struct.list_head, ptr %2531, i32 0, i32 1
  store ptr %2537, ptr %2538, align 4
  store volatile ptr %2531, ptr %2537, align 4
  %2539 = load ptr, ptr %2523, align 4
  store ptr %2530, ptr %2523, align 4
  store ptr %24, ptr %2530, align 4
  store ptr %2539, ptr %2536, align 4
  store volatile ptr %2530, ptr %2539, align 4
  br label %2540

2540:                                             ; preds = %2535, %2529
  %2541 = icmp eq ptr %2531, %2526
  br i1 %2541, label %2542, label %2529

2542:                                             ; preds = %2540, %2517
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2524, i32 noundef %2525) #14
  call fastcc void @destroy_async(ptr noundef %40, ptr noundef nonnull %24) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #14
  %2543 = load ptr, ptr %26, align 4
  %2544 = load i32, ptr %25, align 4
  %2545 = call i32 @usb_free_streams(ptr noundef %2518, ptr noundef %2543, i32 noundef %2544, i32 noundef 3264) #14
  call void @kfree(ptr noundef %2543) #14
  br label %2546

2546:                                             ; preds = %2542, %2514
  %2547 = phi i32 [ %2545, %2542 ], [ %2515, %2514 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #14
  br label %2702

2548:                                             ; preds = %163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #14
  store i32 0, ptr %28, align 4, !annotation !16
  %2549 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 4, i32 -1090519040) #16, !srcloc !17
  %2550 = extractvalue { i32, i32 } %2549, 0
  %2551 = icmp eq i32 %2550, 0
  br i1 %2551, label %2552, label %2560, !prof !8

2552:                                             ; preds = %2548
  %2553 = tail call ptr @llvm.thread.pointer() #14
  %2554 = getelementptr inbounds %struct.thread_info, ptr %2553, i32 0, i32 3
  %2555 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %2554) #17, !srcloc !10
  %2556 = and i32 %2555, -13
  %2557 = or i32 %2556, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2557) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2558 = call i32 @arm_copy_from_user(ptr noundef nonnull %28, ptr noundef %38, i32 noundef 4) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2555) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2559 = icmp eq i32 %2558, 0
  br i1 %2559, label %2564, label %2560, !prof !8

2560:                                             ; preds = %2552, %2548
  %2561 = phi i32 [ %2558, %2552 ], [ 4, %2548 ]
  %2562 = sub i32 4, %2561
  %2563 = getelementptr i8, ptr %28, i32 %2562
  call void @llvm.memset.p0.i32(ptr align 1 %2563, i8 0, i32 %2561, i1 false) #14
  br label %2570

2564:                                             ; preds = %2552
  %2565 = load i32, ptr %28, align 4
  %2566 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 15
  %2567 = load i32, ptr %2566, align 4
  %2568 = and i32 %2567, %2565
  store i32 %2568, ptr %2566, align 4
  %2569 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 18
  store i8 1, ptr %2569, align 1
  br label %2570

2570:                                             ; preds = %2564, %2560
  %2571 = phi i32 [ 0, %2564 ], [ -14, %2560 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #14
  br label %2702

2572:                                             ; preds = %163
  %2573 = getelementptr inbounds %struct.usb_device, ptr %158, i32 0, i32 4
  %2574 = load i32, ptr %2573, align 4
  br label %2702

2575:                                             ; preds = %163
  %2576 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 17
  %2577 = load i8, ptr %2576, align 4, !range !14
  %2578 = icmp eq i8 %2577, 0
  br i1 %2578, label %2705, label %2579

2579:                                             ; preds = %2575
  %2580 = tail call i32 @usb_autoresume_device(ptr noundef %158) #14
  %2581 = icmp eq i32 %2580, 0
  br i1 %2581, label %2582, label %2583

2582:                                             ; preds = %2579
  store i8 0, ptr %2576, align 4
  br label %2705

2583:                                             ; preds = %2579
  %2584 = icmp eq i32 %2580, -19
  %2585 = select i1 %2584, i32 -19, i32 -5
  br label %2700

2586:                                             ; preds = %163
  %2587 = load volatile ptr, ptr %40, align 4
  %2588 = icmp eq ptr %2587, %40
  br i1 %2588, label %2700, label %2589

2589:                                             ; preds = %2586
  %2590 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 16
  store volatile i32 1, ptr %2590, align 4
  %2591 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 17
  %2592 = load i8, ptr %2591, align 4, !range !14
  %2593 = icmp eq i8 %2592, 0
  br i1 %2593, label %2594, label %2705

2594:                                             ; preds = %2589
  tail call void @usb_autosuspend_device(ptr noundef %158) #14
  store i8 1, ptr %2591, align 4
  br label %2705

2595:                                             ; preds = %163
  %2596 = getelementptr inbounds %struct.usb_device, ptr %158, i32 0, i32 15, i32 9
  tail call void @mutex_unlock(ptr noundef %2596) #14
  %2597 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 16
  %2598 = load volatile i32, ptr %2597, align 4
  %2599 = icmp eq i32 %2598, 0
  br i1 %2599, label %2615, label %2600

2600:                                             ; preds = %2595
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %29) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %29, i8 0, i32 20, i1 false) #14, !annotation !16
  call void @init_wait_entry(ptr noundef nonnull %29, i32 noundef 0) #14
  %2601 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 8
  %2602 = call i32 @prepare_to_wait_event(ptr noundef %2601, ptr noundef nonnull %29, i32 noundef 1) #14
  %2603 = load volatile i32, ptr %2597, align 4
  %2604 = icmp eq i32 %2603, 0
  br i1 %2604, label %2612, label %2605

2605:                                             ; preds = %2608, %2600
  %2606 = phi i32 [ %2609, %2608 ], [ %2602, %2600 ]
  %2607 = icmp eq i32 %2606, 0
  br i1 %2607, label %2608, label %2613

2608:                                             ; preds = %2605
  call void @schedule() #14
  %2609 = call i32 @prepare_to_wait_event(ptr noundef %2601, ptr noundef nonnull %29, i32 noundef 1) #14
  %2610 = load volatile i32, ptr %2597, align 4
  %2611 = icmp eq i32 %2610, 0
  br i1 %2611, label %2612, label %2605

2612:                                             ; preds = %2608, %2600
  call void @finish_wait(ptr noundef %2601, ptr noundef nonnull %29) #14
  br label %2613

2613:                                             ; preds = %2612, %2605
  %2614 = phi i32 [ 0, %2612 ], [ %2606, %2605 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %29) #14
  br label %2615

2615:                                             ; preds = %2613, %2595
  %2616 = phi i32 [ 0, %2595 ], [ %2614, %2613 ]
  %2617 = load ptr, ptr %43, align 4
  %2618 = getelementptr inbounds %struct.usb_device, ptr %2617, i32 0, i32 15, i32 9
  call void @mutex_lock(ptr noundef %2618) #14
  %2619 = icmp eq i32 %2616, 0
  br i1 %2619, label %2620, label %2700

2620:                                             ; preds = %2615
  %2621 = getelementptr inbounds %struct.usb_dev_state, ptr %40, i32 0, i32 17
  %2622 = load i8, ptr %2621, align 4, !range !14
  %2623 = icmp eq i8 %2622, 0
  br i1 %2623, label %2705, label %2624

2624:                                             ; preds = %2620
  %2625 = load ptr, ptr %43, align 4
  %2626 = call i32 @usb_autoresume_device(ptr noundef %2625) #14
  %2627 = icmp eq i32 %2626, 0
  br i1 %2627, label %2628, label %2629

2628:                                             ; preds = %2624
  store i8 0, ptr %2621, align 4
  br label %2705

2629:                                             ; preds = %2624
  %2630 = icmp eq i32 %2626, -19
  %2631 = select i1 %2630, i32 -19, i32 -5
  br label %2700

2632:                                             ; preds = %163
  %2633 = and i32 %1, -1073676289
  %2634 = icmp eq i32 %2633, -2147461856
  br i1 %2634, label %2635, label %2696

2635:                                             ; preds = %2632
  %2636 = lshr i32 %1, 16
  %2637 = and i32 %2636, 16383
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %30) #14
  %2638 = icmp ult i32 %2637, 4
  br i1 %2638, label %2694, label %2639

2639:                                             ; preds = %2635
  %2640 = getelementptr inbounds i8, ptr %30, i32 16
  store i64 0, ptr %2640, align 4
  store i32 24, ptr %30, align 4
  %2641 = getelementptr inbounds %struct.usb_device, ptr %158, i32 0, i32 12
  %2642 = load ptr, ptr %2641, align 8
  %2643 = getelementptr inbounds %struct.usb_bus, ptr %2642, i32 0, i32 2
  %2644 = load i32, ptr %2643, align 4
  %2645 = getelementptr inbounds %struct.usbdevfs_conninfo_ex, ptr %30, i32 0, i32 1
  store i32 %2644, ptr %2645, align 4
  %2646 = load i32, ptr %158, align 8
  %2647 = getelementptr inbounds %struct.usbdevfs_conninfo_ex, ptr %30, i32 0, i32 2
  store i32 %2646, ptr %2647, align 4
  %2648 = getelementptr inbounds %struct.usb_device, ptr %158, i32 0, i32 4
  %2649 = load i32, ptr %2648, align 4
  %2650 = getelementptr inbounds %struct.usbdevfs_conninfo_ex, ptr %30, i32 0, i32 3
  store i32 %2649, ptr %2650, align 4
  %2651 = icmp eq ptr %158, null
  br i1 %2651, label %2672, label %2652

2652:                                             ; preds = %2665, %2639
  %2653 = phi ptr [ %2667, %2665 ], [ %158, %2639 ]
  %2654 = getelementptr inbounds %struct.usb_device, ptr %2653, i32 0, i32 25
  %2655 = load i8, ptr %2654, align 2
  %2656 = icmp eq i8 %2655, 0
  br i1 %2656, label %2669, label %2657

2657:                                             ; preds = %2652
  %2658 = load i8, ptr %2640, align 4
  %2659 = add i8 %2658, 1
  store i8 %2659, ptr %2640, align 4
  %2660 = icmp ult i8 %2659, 8
  br i1 %2660, label %2661, label %2665

2661:                                             ; preds = %2657
  %2662 = zext i8 %2659 to i32
  %2663 = sub nuw nsw i32 7, %2662
  %2664 = getelementptr %struct.usbdevfs_conninfo_ex, ptr %30, i32 0, i32 5, i32 %2663
  store i8 %2655, ptr %2664, align 1
  br label %2665

2665:                                             ; preds = %2661, %2657
  %2666 = getelementptr inbounds %struct.usb_device, ptr %2653, i32 0, i32 11
  %2667 = load ptr, ptr %2666, align 4
  %2668 = icmp eq ptr %2667, null
  br i1 %2668, label %2669, label %2652

2669:                                             ; preds = %2665, %2652
  %2670 = load i8, ptr %2640, align 4
  %2671 = icmp ult i8 %2670, 7
  br i1 %2671, label %2672, label %2678

2672:                                             ; preds = %2669, %2639
  %2673 = phi i8 [ %2670, %2669 ], [ 0, %2639 ]
  %2674 = zext i8 %2673 to i32
  %2675 = getelementptr inbounds %struct.usbdevfs_conninfo_ex, ptr %30, i32 0, i32 5
  %2676 = sub nuw nsw i32 7, %2674
  %2677 = getelementptr %struct.usbdevfs_conninfo_ex, ptr %30, i32 0, i32 5, i32 %2676
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %2675, ptr align 1 %2677, i32 %2674, i1 false) #14
  br label %2678

2678:                                             ; preds = %2672, %2669
  %2679 = tail call i32 @llvm.umin.i32(i32 %2637, i32 24) #14
  %2680 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 %2679, i32 -1090519040) #16, !srcloc !9
  %2681 = extractvalue { i32, i32 } %2680, 0
  %2682 = icmp eq i32 %2681, 0
  br i1 %2682, label %2683, label %2690

2683:                                             ; preds = %2678
  %2684 = tail call ptr @llvm.thread.pointer() #14
  %2685 = getelementptr inbounds %struct.thread_info, ptr %2684, i32 0, i32 3
  %2686 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %2685) #17, !srcloc !10
  %2687 = and i32 %2686, -13
  %2688 = or i32 %2687, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2688) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %2689 = call i32 @arm_copy_to_user(ptr noundef %38, ptr noundef nonnull %30, i32 noundef %2679) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2686) #14, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  br label %2690

2690:                                             ; preds = %2683, %2678
  %2691 = phi i32 [ %2689, %2683 ], [ %2679, %2678 ]
  %2692 = icmp eq i32 %2691, 0
  %2693 = select i1 %2692, i32 0, i32 -14
  br label %2694

2694:                                             ; preds = %2690, %2635
  %2695 = phi i32 [ -22, %2635 ], [ %2693, %2690 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #14
  br label %2702

2696:                                             ; preds = %2632, %153, %148, %113, %109
  %2697 = phi i32 [ -11, %148 ], [ -19, %153 ], [ %117, %113 ], [ -4, %109 ], [ -25, %2632 ]
  call void @mutex_unlock(ptr noundef %51) #14
  br label %2710

2698:                                             ; preds = %2106, %2104, %1120, %1070, %1063, %1060, %1024, %1020, %1016, %1006, %945, %903, %896, %893, %857, %853, %849, %839, %830, %828, %456, %454
  %2699 = phi i32 [ %2107, %2106 ], [ %1121, %1120 ], [ %918, %945 ], [ %831, %830 ], [ %457, %456 ], [ %455, %454 ], [ %829, %828 ], [ %2105, %2104 ], [ -113, %896 ], [ -22, %903 ], [ -22, %849 ], [ -3, %853 ], [ -2, %857 ], [ -14, %839 ], [ -113, %1063 ], [ -22, %1070 ], [ -22, %1016 ], [ -3, %1020 ], [ -2, %1024 ], [ -14, %1006 ], [ -2, %893 ], [ -2, %1060 ]
  call void @mutex_unlock(ptr noundef %51) #14
  br label %2710

2700:                                             ; preds = %2629, %2615, %2586, %2583, %2405, %2392, %2365, %2203, %2199, %2197, %2187, %2171, %2134, %1301, %1271, %991
  %2701 = phi i32 [ %2631, %2629 ], [ -4, %2615 ], [ -19, %2586 ], [ %2585, %2583 ], [ -14, %2392 ], [ -14, %2365 ], [ -22, %2197 ], [ -22, %2203 ], [ -2, %2199 ], [ -14, %2187 ], [ -14, %2171 ], [ -22, %2134 ], [ -16, %1301 ], [ -14, %1271 ], [ -13, %991 ], [ -14, %2405 ]
  call void @mutex_unlock(ptr noundef %51) #14
  br label %2710

2702:                                             ; preds = %2694, %2572, %2570, %2546, %2512, %2477, %2401, %2375, %2359, %2180, %2165, %1317, %1315, %1265, %1191, %1164, %1000, %143, %107
  %2703 = phi i32 [ %2695, %2694 ], [ %108, %107 ], [ %144, %143 ], [ %1165, %1164 ], [ %1192, %1191 ], [ %1266, %1265 ], [ %2166, %2165 ], [ %2360, %2359 ], [ %2478, %2477 ], [ %2513, %2512 ], [ %2547, %2546 ], [ %2571, %2570 ], [ %2574, %2572 ], [ %1001, %1000 ], [ %1316, %1315 ], [ %1318, %1317 ], [ %2182, %2180 ], [ %2377, %2375 ], [ %2404, %2401 ]
  call void @mutex_unlock(ptr noundef %51) #14
  %2704 = icmp sgt i32 %2703, -1
  br i1 %2704, label %2707, label %2710

2705:                                             ; preds = %2628, %2620, %2594, %2589, %2582, %2575, %2405, %2382, %2234, %2135, %2109, %1123, %947, %833, %459
  %2706 = phi i32 [ %2110, %2109 ], [ %1121, %1123 ], [ %948, %947 ], [ %831, %833 ], [ %457, %459 ], [ 0, %2135 ], [ 0, %2234 ], [ 0, %2382 ], [ 0, %2582 ], [ 0, %2575 ], [ 0, %2594 ], [ 0, %2589 ], [ 0, %2628 ], [ 0, %2620 ], [ 0, %2405 ]
  call void @mutex_unlock(ptr noundef %51) #14
  br label %2707

2707:                                             ; preds = %2705, %2702
  %2708 = phi i32 [ %2703, %2702 ], [ %2706, %2705 ]
  %2709 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %37) #14
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %37, ptr noundef %42) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %2709, ptr noundef nonnull align 8 dereferenceable(16) %37, i32 16, i1 false) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %37) #14
  br label %2710

2710:                                             ; preds = %2707, %2702, %2700, %2698, %2696, %162, %3
  %2711 = phi i32 [ -19, %162 ], [ -1, %3 ], [ %2708, %2707 ], [ %2703, %2702 ], [ %2697, %2696 ], [ %2699, %2698 ], [ %2701, %2700 ]
  ret i32 %2711
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbdev_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 12
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %1, align 4
  %13 = sub i32 %11, %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !16
  %14 = add i32 %13, 36
  %15 = zext i32 %14 to i64
  %16 = load volatile i32, ptr @usbfs_memory_mb, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @usbfs_memory_usage) #14, !srcloc !18
  %17 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @usbfs_memory_usage, ptr nonnull @usbfs_memory_usage, i64 %15, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !19
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = zext i32 %16 to i64
  %21 = shl nuw nsw i64 %20, 20
  %22 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull @usbfs_memory_usage, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !20
  %23 = icmp ugt i64 %22, %21
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @usbfs_memory_usage) #14, !srcloc !18
  %25 = tail call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @usbfs_memory_usage, ptr nonnull @usbfs_memory_usage, i64 %15, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !21
  br label %83

26:                                               ; preds = %19, %2
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 36) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %81, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %6, align 4
  %32 = call ptr @usb_alloc_coherent(ptr noundef %31, i32 noundef %13, i32 noundef 1060032, ptr noundef nonnull %3) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @kfree(ptr noundef nonnull %28) #14
  br label %81

35:                                               ; preds = %30
  call void @llvm.memset.p0.i32(ptr nonnull align 1 %32, i8 0, i32 %13, i1 false)
  %36 = getelementptr inbounds %struct.usb_memory, ptr %28, i32 0, i32 4
  store ptr %32, ptr %36, align 4
  %37 = load i32, ptr %3, align 4
  %38 = getelementptr inbounds %struct.usb_memory, ptr %28, i32 0, i32 5
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.usb_memory, ptr %28, i32 0, i32 3
  store i32 %13, ptr %39, align 8
  %40 = getelementptr inbounds %struct.usb_memory, ptr %28, i32 0, i32 7
  store ptr %5, ptr %40, align 8
  %41 = load i32, ptr %1, align 4
  %42 = getelementptr inbounds %struct.usb_memory, ptr %28, i32 0, i32 6
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.usb_memory, ptr %28, i32 0, i32 1
  store i32 1, ptr %43, align 8
  store volatile ptr %28, ptr %28, align 8
  %44 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %28, ptr %44, align 4
  %45 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 28
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 9
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.hc_driver, ptr %50, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48, %35
  %56 = ptrtoint ptr %32 to i32
  %57 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %56, i32 -2130706432, i32 8454144) #16, !srcloc !39
  %58 = lshr i32 %57, 12
  %59 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %41, i32 noundef %58, i32 noundef %13, i32 noundef %60) #14
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  call fastcc void @dec_usb_memory_use_count(ptr noundef nonnull %28, ptr noundef %43)
  br label %83

64:                                               ; preds = %48
  %65 = getelementptr inbounds %struct.usb_bus, ptr %9, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 @dma_mmap_attrs(ptr noundef %66, ptr noundef %1, ptr noundef nonnull %32, i32 noundef %37, i32 noundef %13, i32 noundef 0) #14
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  call fastcc void @dec_usb_memory_use_count(ptr noundef nonnull %28, ptr noundef %43)
  br label %83

70:                                               ; preds = %64, %55
  %71 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %72 = load i32, ptr %71, align 4
  %73 = or i32 %72, 67387392
  store i32 %73, ptr %71, align 4
  %74 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @usbdev_vm_ops, ptr %74, align 4
  %75 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  store ptr %28, ptr %75, align 4
  %76 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 3
  %77 = call i32 @_raw_spin_lock_irqsave(ptr noundef %76) #14
  %78 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 6
  %79 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 6, i32 1
  %80 = load ptr, ptr %79, align 4
  store ptr %28, ptr %79, align 4
  store ptr %78, ptr %28, align 8
  store ptr %80, ptr %44, align 4
  store volatile ptr %28, ptr %80, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %76, i32 noundef %77) #14
  br label %83

81:                                               ; preds = %34, %26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @usbfs_memory_usage) #14, !srcloc !18
  %82 = call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @usbfs_memory_usage, ptr nonnull @usbfs_memory_usage, i64 %15, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !21
  br label %83

83:                                               ; preds = %81, %70, %69, %63, %24
  %84 = phi i32 [ -11, %63 ], [ 0, %70 ], [ -11, %69 ], [ -12, %24 ], [ -12, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbdev_open(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 104) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %76, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -1048576
  %11 = icmp eq i32 %10, 198180864
  br i1 %11, label %12, label %76

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 %9, ptr %3, align 4
  %13 = call ptr @bus_find_device(ptr noundef nonnull @usb_bus_type, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @device_match_devt) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %14 = icmp eq ptr %13, null
  %15 = getelementptr i8, ptr %13, i32 -128
  %16 = icmp eq ptr %15, null
  %17 = or i1 %14, %16
  br i1 %17, label %76, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 9
  call void @mutex_lock(ptr noundef %19) #14
  %20 = getelementptr i8, ptr %13, i32 -104
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %74, label %23

23:                                               ; preds = %18
  %24 = call i32 @usb_autoresume_device(ptr noundef nonnull %15) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 1
  store ptr %15, ptr %27, align 8
  %28 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 2
  store ptr %1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 15
  store i32 -1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 3
  store i32 0, ptr %30, align 8
  store volatile ptr %5, ptr %5, align 8
  %31 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %31, align 4
  %32 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 4
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 4, i32 1
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 5
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 5, i32 1
  store ptr %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 6
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 6, i32 1
  store ptr %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 7
  call void @__init_waitqueue_head(ptr noundef %38, ptr noundef nonnull @.str.53, ptr noundef nonnull @usbdev_open.__key) #14
  %39 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 8
  call void @__init_waitqueue_head(ptr noundef %39, ptr noundef nonnull @.str.55, ptr noundef nonnull @usbdev_open.__key.54) #14
  %40 = tail call ptr @llvm.thread.pointer() #14
  %41 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 62
  %42 = load ptr, ptr %41, align 64
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %42) #14, !srcloc !18
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %42, ptr nonnull %42, i32 1, ptr nonnull elementtype(i32) %42) #14, !srcloc !27
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48, !prof !13

48:                                               ; preds = %44
  %49 = add i32 %46, 1
  %50 = or i32 %49, %46
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %54, label %52, !prof !8

52:                                               ; preds = %48, %44
  %53 = phi i32 [ 2, %44 ], [ 1, %48 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %42, i32 noundef %53) #14
  br label %54

54:                                               ; preds = %52, %48, %26
  %55 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 10
  store ptr %42, ptr %55, align 8
  %56 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 83
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.cred, ptr %57, i32 0, i32 24
  store i32 0, ptr %60, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %57) #14, !srcloc !18
  %61 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %57, ptr nonnull %57, i32 1, ptr nonnull elementtype(i32) %57) #14, !srcloc !28
  br label %62

62:                                               ; preds = %59, %54
  %63 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 11
  store ptr %57, ptr %63, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !40
  %64 = getelementptr i8, ptr %13, i32 660
  %65 = getelementptr i8, ptr %13, i32 664
  %66 = load ptr, ptr %65, align 4
  store ptr %5, ptr %65, align 4
  store ptr %64, ptr %5, align 8
  store ptr %66, ptr %31, align 4
  store volatile ptr %5, ptr %66, align 4
  %67 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %5, ptr %67, align 8
  call void @mutex_unlock(ptr noundef %19) #14
  %68 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 52
  %72 = load i32, ptr %71, align 8
  %73 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %13, ptr noundef nonnull @.str.56, i32 noundef %72, ptr noundef %73) #15
  br label %78

74:                                               ; preds = %23, %18
  %75 = phi i32 [ -19, %18 ], [ %24, %23 ]
  call void @mutex_unlock(ptr noundef %19) #14
  call void @usb_put_dev(ptr noundef nonnull %15) #14
  br label %76

76:                                               ; preds = %74, %12, %7, %2
  %77 = phi i32 [ %75, %74 ], [ -12, %2 ], [ -19, %7 ], [ -19, %12 ]
  call void @kfree(ptr noundef %5) #14
  br label %78

78:                                               ; preds = %76, %70, %62
  %79 = phi i32 [ %77, %76 ], [ 0, %70 ], [ 0, %62 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbdev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15, i32 9
  tail call void @mutex_lock(ptr noundef %7) #14
  tail call void @usb_hub_release_all_ports(ptr noundef %6, ptr noundef %4) #14
  tail call void @mutex_lock(ptr noundef nonnull @usbfs_mutex) #14
  %8 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @usbfs_mutex) #14
  %12 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %38, %2
  %16 = phi i32 [ %39, %38 ], [ 0, %2 ]
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr %12, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = shl nuw i32 1, %16
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %5, align 4
  %25 = tail call ptr @usb_ifnum_to_if(ptr noundef %24, i32 noundef %16) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @_test_and_clear_bit(i32 noundef %16, ptr noundef %12) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 7, i32 0, i32 7
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, 16
  %34 = or i8 %32, 16
  store i8 %34, ptr %31, align 8
  tail call void @usb_driver_release_interface(ptr noundef nonnull @usbfs_driver, ptr noundef nonnull %25) #14
  %35 = load i8, ptr %31, align 8
  %36 = and i8 %35, -17
  %37 = or i8 %36, %33
  store i8 %37, ptr %31, align 8
  br label %38

38:                                               ; preds = %30, %27, %23, %15
  %39 = add nuw nsw i32 %16, 1
  %40 = load i32, ptr %12, align 4
  %41 = icmp ne i32 %40, 0
  %42 = icmp ult i32 %16, 31
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %15, label %44

44:                                               ; preds = %38, %2
  %45 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 4
  tail call fastcc void @destroy_async(ptr noundef %4, ptr noundef %45) #14
  %46 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 17
  %47 = load i8, ptr %46, align 4, !range !14
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  tail call void @usb_autosuspend_device(ptr noundef %6) #14
  br label %50

50:                                               ; preds = %49, %44
  tail call void @mutex_unlock(ptr noundef %7) #14
  tail call void @usb_put_dev(ptr noundef %6) #14
  %51 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 10
  %52 = load ptr, ptr %51, align 4
  tail call void @put_pid(ptr noundef %52) #14
  %53 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 11
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %54) #14, !srcloc !18
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %54, ptr nonnull %54, i32 1, ptr nonnull elementtype(i32) %54) #14, !srcloc !42
  %58 = extractvalue { i32, i32 } %57, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !43
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  tail call void @__put_cred(ptr noundef nonnull %54) #14
  br label %61

61:                                               ; preds = %60, %56, %50
  %62 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 3
  %63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %62) #14
  %64 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 5
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %84, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %65, align 4
  %71 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %69, ptr %71, align 4
  store volatile ptr %70, ptr %69, align 4
  store volatile ptr %65, ptr %65, align 4
  store ptr %65, ptr %68, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %62, i32 noundef %63) #14
  %72 = icmp eq ptr %65, null
  br i1 %72, label %86, label %73

73:                                               ; preds = %78, %67
  %74 = phi ptr [ %76, %78 ], [ %65, %67 ]
  tail call fastcc void @free_async(ptr noundef nonnull %74)
  %75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %62) #14
  %76 = load volatile ptr, ptr %64, align 4
  %77 = icmp eq ptr %76, %64
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %76, align 4
  %82 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %80, ptr %82, align 4
  store volatile ptr %81, ptr %80, align 4
  store volatile ptr %76, ptr %76, align 4
  store ptr %76, ptr %79, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %62, i32 noundef %75) #14
  %83 = icmp eq ptr %76, null
  br i1 %83, label %86, label %73

84:                                               ; preds = %73, %61
  %85 = phi i32 [ %63, %61 ], [ %75, %73 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %62, i32 noundef %85) #14
  br label %86

86:                                               ; preds = %84, %78, %67
  tail call void @kfree(ptr noundef %4) #14
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @usb_devio_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @register_chrdev_region(i32 noundef 198180864, i32 noundef 8192, ptr noundef nonnull @.str.1) #14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #15
  br label %11

5:                                                ; preds = %0
  tail call void @cdev_init(ptr noundef nonnull @usb_device_cdev, ptr noundef nonnull @usbdev_file_operations) #14
  %6 = tail call i32 @cdev_add(ptr noundef nonnull @usb_device_cdev, i32 noundef 198180864, i32 noundef 8192) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 189) #15
  tail call void @unregister_chrdev_region(i32 noundef 198180864, i32 noundef 8192) #14
  br label %11

10:                                               ; preds = %5
  tail call void @usb_register_notify(ptr noundef nonnull @usbdev_nb) #14
  br label %11

11:                                               ; preds = %10, %8, %3
  %12 = phi i32 [ %1, %3 ], [ %6, %8 ], [ 0, %10 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_register_notify(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_devio_cleanup() local_unnamed_addr #1 {
  tail call void @usb_unregister_notify(ptr noundef nonnull @usbdev_nb) #14
  tail call void @cdev_del(ptr noundef nonnull @usb_device_cdev) #14
  tail call void @unregister_chrdev_region(i32 noundef 198180864, i32 noundef 8192) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unregister_notify(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @destroy_async(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.usb_dev_state, ptr %0, i32 0, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %5 = load volatile ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %4, %7 ], [ %19, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %12, align 4
  %16 = getelementptr inbounds %struct.async, ptr %11, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @usb_get_urb(ptr noundef %17) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %10) #14
  tail call void @usb_kill_urb(ptr noundef %17) #14
  tail call void @usb_free_urb(ptr noundef %17) #14
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %20 = load volatile ptr, ptr %1, align 4
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %9

22:                                               ; preds = %9, %2
  %23 = phi i32 [ %4, %2 ], [ %19, %9 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %23) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @processcompl(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.async, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.async, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %10, %2
  %11 = phi i32 [ %16, %10 ], [ 0, %2 ]
  %12 = phi i32 [ %15, %10 ], [ 0, %2 ]
  %13 = getelementptr %struct.urb, ptr %4, i32 0, i32 29, i32 %11, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = add nuw nsw i32 %11, 1
  %17 = icmp eq i32 %16, %8
  br i1 %17, label %18, label %10

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 20
  store i32 %15, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %2
  %21 = getelementptr inbounds %struct.async, ptr %0, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %95, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 20
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %95, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 19
  %30 = select i1 %9, ptr %29, ptr %25
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 18
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = icmp eq i32 %31, 0
  br i1 %36, label %95, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 16
  br label %62

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 14
  %41 = load ptr, ptr %40, align 4
  %42 = icmp slt i32 %31, 0
  %43 = load i1, ptr @check_copy_size.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !13

46:                                               ; preds = %39
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %47

47:                                               ; preds = %46, %39
  br i1 %42, label %164, label %48, !prof !13

48:                                               ; preds = %47
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %22, i32 %31, i32 -1090519040) #16, !srcloc !9
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = tail call ptr @llvm.thread.pointer() #14
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %54) #17, !srcloc !10
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %58 = tail call i32 @arm_copy_to_user(ptr noundef nonnull %22, ptr noundef %41, i32 noundef %31) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi i32 [ %58, %52 ], [ %31, %48 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %95, label %164

62:                                               ; preds = %87, %37
  %63 = phi i32 [ %31, %37 ], [ %89, %87 ]
  %64 = phi i32 [ 0, %37 ], [ %90, %87 ]
  %65 = phi ptr [ %22, %37 ], [ %88, %87 ]
  %66 = tail call i32 @llvm.umin.i32(i32 %63, i32 16384) #14
  %67 = load ptr, ptr %38, align 4
  %68 = getelementptr %struct.scatterlist, ptr %67, i32 %64
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, -4
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call ptr @page_address(ptr noundef %71) #14
  %73 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %65, i32 %66, i32 -1090519040) #16, !srcloc !9
  %74 = extractvalue { i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %164

76:                                               ; preds = %62
  %77 = getelementptr %struct.scatterlist, ptr %67, i32 %64, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i8, ptr %72, i32 %78
  %80 = tail call ptr @llvm.thread.pointer() #14
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 3
  %82 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %81) #17, !srcloc !10
  %83 = and i32 %82, -13
  %84 = or i32 %83, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %85 = tail call i32 @arm_copy_to_user(ptr noundef %65, ptr noundef %79, i32 noundef %66) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %164

87:                                               ; preds = %76
  %88 = getelementptr i8, ptr %65, i32 %66
  %89 = sub i32 %63, %66
  %90 = add nuw i32 %64, 1
  %91 = load i32, ptr %32, align 4
  %92 = icmp ult i32 %90, %91
  %93 = icmp ne i32 %89, 0
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %62, label %95

95:                                               ; preds = %87, %59, %35, %24, %20
  %96 = getelementptr inbounds %struct.usbdevfs_urb, ptr %6, i32 0, i32 2
  %97 = getelementptr inbounds %struct.async, ptr %0, i32 0, i32 12
  %98 = load i32, ptr %97, align 4
  %99 = tail call ptr @llvm.thread.pointer() #14
  %100 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 3
  %101 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %100) #17, !srcloc !10
  %102 = and i32 %101, -13
  %103 = or i32 %102, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %103) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %104 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %96, i32 %98, i32 -1090519041) #14, !srcloc !44
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %164

106:                                              ; preds = %95
  %107 = getelementptr inbounds %struct.usbdevfs_urb, ptr %6, i32 0, i32 6
  %108 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 20
  %109 = load i32, ptr %108, align 4
  %110 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %100) #17, !srcloc !10
  %111 = and i32 %110, -13
  %112 = or i32 %111, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %112) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %113 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %107, i32 %109, i32 -1090519041) #14, !srcloc !45
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %164

115:                                              ; preds = %106
  %116 = getelementptr inbounds %struct.usbdevfs_urb, ptr %6, i32 0, i32 9
  %117 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 26
  %118 = load i32, ptr %117, align 4
  %119 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %100) #17, !srcloc !10
  %120 = and i32 %119, -13
  %121 = or i32 %120, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %121) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %122 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %116, i32 %118, i32 -1090519041) #14, !srcloc !46
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %119) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %164

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 9
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %126, i32 0, i32 3
  %128 = load i8, ptr %127, align 1
  %129 = and i8 %128, 3
  %130 = icmp eq i8 %129, 1
  br i1 %130, label %131, label %157

131:                                              ; preds = %124
  %132 = load i32, ptr %7, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %157, label %138

134:                                              ; preds = %148
  %135 = add nuw i32 %139, 1
  %136 = load i32, ptr %7, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %157

138:                                              ; preds = %134, %131
  %139 = phi i32 [ %135, %134 ], [ 0, %131 ]
  %140 = getelementptr %struct.usbdevfs_urb, ptr %6, i32 0, i32 12, i32 %139, i32 1
  %141 = getelementptr %struct.urb, ptr %4, i32 0, i32 29, i32 %139, i32 2
  %142 = load i32, ptr %141, align 4
  %143 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %100) #17, !srcloc !10
  %144 = and i32 %143, -13
  %145 = or i32 %144, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %145) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %146 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %140, i32 %142, i32 -1090519041) #14, !srcloc !47
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %143) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %138
  %149 = getelementptr %struct.usbdevfs_urb, ptr %6, i32 0, i32 12, i32 %139, i32 2
  %150 = getelementptr %struct.urb, ptr %4, i32 0, i32 29, i32 %139, i32 3
  %151 = load i32, ptr %150, align 4
  %152 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %100) #17, !srcloc !10
  %153 = and i32 %152, -13
  %154 = or i32 %153, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %154) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %155 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %149, i32 %151, i32 -1090519041) #14, !srcloc !48
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %152) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %134, label %164

157:                                              ; preds = %134, %131, %124
  %158 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %100) #17, !srcloc !10
  %159 = and i32 %158, -13
  %160 = or i32 %159, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %160) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %161 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, ptr %6, i32 -1090519041) #14, !srcloc !49
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %158) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, i32 0, i32 -14
  br label %164

164:                                              ; preds = %157, %148, %138, %115, %106, %95, %76, %62, %59, %47
  %165 = phi i32 [ %163, %157 ], [ -14, %115 ], [ -14, %106 ], [ -14, %95 ], [ -14, %47 ], [ -14, %59 ], [ -14, %148 ], [ -14, %138 ], [ -14, %76 ], [ -14, %62 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_async(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.async, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @put_pid(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.async, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #14, !srcloc !18
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #14, !srcloc !42
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !43
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @__put_cred(ptr noundef nonnull %5) #14
  br label %12

12:                                               ; preds = %11, %7, %1
  %13 = getelementptr inbounds %struct.async, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 18
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %34, %12
  %19 = phi ptr [ %35, %34 ], [ %14, %12 ]
  %20 = phi i32 [ %36, %34 ], [ 0, %12 ]
  %21 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 16
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.scatterlist, ptr %22, i32 %20
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, -4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %18
  %28 = inttoptr i32 %25 to ptr
  %29 = tail call ptr @page_address(ptr noundef nonnull %28) #14
  %30 = getelementptr %struct.scatterlist, ptr %22, i32 %20, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %29, i32 %31
  tail call void @kfree(ptr noundef %32) #14
  %33 = load ptr, ptr %13, align 4
  br label %34

34:                                               ; preds = %27, %18
  %35 = phi ptr [ %19, %18 ], [ %33, %27 ]
  %36 = add nuw nsw i32 %20, 1
  %37 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 18
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %18, label %40

40:                                               ; preds = %34, %12
  %41 = phi ptr [ %14, %12 ], [ %35, %34 ]
  %42 = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 16
  %43 = load ptr, ptr %42, align 4
  tail call void @kfree(ptr noundef %43) #14
  %44 = getelementptr inbounds %struct.async, ptr %0, i32 0, i32 10
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load ptr, ptr %13, align 4
  %49 = getelementptr inbounds %struct.urb, ptr %48, i32 0, i32 14
  %50 = load ptr, ptr %49, align 4
  tail call void @kfree(ptr noundef %50) #14
  br label %53

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.usb_memory, ptr %45, i32 0, i32 2
  tail call fastcc void @dec_usb_memory_use_count(ptr noundef nonnull %45, ptr noundef %52)
  br label %53

53:                                               ; preds = %51, %47
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 21
  %56 = load ptr, ptr %55, align 4
  tail call void @kfree(ptr noundef %56) #14
  %57 = load ptr, ptr %13, align 4
  tail call void @usb_free_urb(ptr noundef %57) #14
  %58 = getelementptr inbounds %struct.async, ptr %0, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = zext i32 %59 to i64
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @usbfs_memory_usage) #14, !srcloc !18
  %61 = tail call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @usbfs_memory_usage, ptr nonnull @usbfs_memory_usage, i64 %60, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !21
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dec_usb_memory_use_count(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.usb_memory, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = load i32, ptr %1, align 4
  %8 = add i32 %7, -1
  store i32 %8, ptr %1, align 4
  %9 = getelementptr inbounds %struct.usb_memory, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.usb_memory, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  %21 = getelementptr inbounds %struct.usb_dev_state, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_memory, ptr %0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_memory, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_memory, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  tail call void @usb_free_coherent(ptr noundef %22, i32 noundef %24, ptr noundef %26, i32 noundef %28) #14
  %29 = load i32, ptr %23, align 4
  %30 = add i32 %29, 36
  %31 = zext i32 %30 to i64
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @usbfs_memory_usage) #14, !srcloc !18
  %32 = tail call { i64, i32 } asm sideeffect "@ atomic64_sub\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @usbfs_memory_usage, ptr nonnull @usbfs_memory_usage, i64 %31, ptr nonnull elementtype(i64) @usbfs_memory_usage) #14, !srcloc !21
  tail call void @kfree(ptr noundef %0) #14
  br label %34

33:                                               ; preds = %12, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  br label %34

34:                                               ; preds = %33, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_ctrlrecip(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.usb_dev_state, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  switch i32 %8, label %189 [
    i32 4, label %9
    i32 6, label %9
    i32 7, label %9
  ]

9:                                                ; preds = %4, %4, %4
  %10 = and i32 %1, 96
  %11 = icmp eq i32 %10, 64
  br i1 %11, label %189, label %12

12:                                               ; preds = %9
  %13 = icmp eq i32 %1, 161
  %14 = icmp eq i32 %2, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = lshr i32 %3, 8
  %20 = and i32 %3, 255
  %21 = tail call ptr @usb_find_alt_setting(ptr noundef %18, i32 noundef %19, i32 noundef %20) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %21, i32 0, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 7
  br i1 %26, label %189, label %27

27:                                               ; preds = %23, %16
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  br label %165

31:                                               ; preds = %12
  %32 = and i32 %3, 255
  %33 = and i32 %1, 31
  switch i32 %33, label %189 [
    i32 2, label %34
    i32 1, label %165
  ]

34:                                               ; preds = %31
  %35 = and i32 %3, 127
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %189, label %37

37:                                               ; preds = %34
  %38 = and i32 %3, 112
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %189

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 20
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %88, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.usb_config_descriptor, ptr %42, i32 0, i32 3
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i32
  %48 = icmp eq i8 %46, 0
  br i1 %48, label %88, label %49

49:                                               ; preds = %44
  %50 = trunc i32 %3 to i8
  br label %51

51:                                               ; preds = %81, %49
  %52 = phi i32 [ %82, %81 ], [ 0, %49 ]
  %53 = getelementptr %struct.usb_host_config, ptr %42, i32 0, i32 3, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.usb_interface, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %51
  %59 = load ptr, ptr %54, align 8
  br label %60

60:                                               ; preds = %78, %58
  %61 = phi i32 [ 0, %58 ], [ %79, %78 ]
  %62 = getelementptr %struct.usb_host_interface, ptr %59, i32 %61
  %63 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %62, i32 0, i32 4
  %64 = load i8, ptr %63, align 4
  %65 = zext i8 %64 to i32
  %66 = icmp eq i8 %64, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %60
  %68 = getelementptr %struct.usb_host_interface, ptr %59, i32 %61, i32 3
  %69 = load ptr, ptr %68, align 4
  br label %73

70:                                               ; preds = %73
  %71 = add nuw nsw i32 %74, 1
  %72 = icmp eq i32 %71, %65
  br i1 %72, label %78, label %73

73:                                               ; preds = %70, %67
  %74 = phi i32 [ 0, %67 ], [ %71, %70 ]
  %75 = getelementptr %struct.usb_host_endpoint, ptr %69, i32 %74, i32 0, i32 2
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, %50
  br i1 %77, label %84, label %70

78:                                               ; preds = %70, %60
  %79 = add nuw i32 %61, 1
  %80 = icmp eq i32 %79, %56
  br i1 %80, label %81, label %60

81:                                               ; preds = %78, %51
  %82 = add nuw nsw i32 %52, 1
  %83 = icmp eq i32 %82, %47
  br i1 %83, label %87, label %51

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %62, i32 0, i32 2
  %86 = load i8, ptr %85, align 2
  br label %143

87:                                               ; preds = %81
  br i1 %39, label %88, label %189

88:                                               ; preds = %87, %44, %40
  %89 = xor i32 %32, 128
  %90 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 20
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %189, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.usb_config_descriptor, ptr %91, i32 0, i32 3
  %95 = load i8, ptr %94, align 4
  %96 = zext i8 %95 to i32
  %97 = icmp eq i8 %95, 0
  br i1 %97, label %189, label %98

98:                                               ; preds = %129, %93
  %99 = phi i32 [ %130, %129 ], [ 0, %93 ]
  %100 = getelementptr %struct.usb_host_config, ptr %91, i32 0, i32 3, i32 %99
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.usb_interface, ptr %101, i32 0, i32 2
  %103 = load i32, ptr %102, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %129, label %105

105:                                              ; preds = %98
  %106 = load ptr, ptr %101, align 8
  br label %107

107:                                              ; preds = %126, %105
  %108 = phi i32 [ 0, %105 ], [ %127, %126 ]
  %109 = getelementptr %struct.usb_host_interface, ptr %106, i32 %108
  %110 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %109, i32 0, i32 4
  %111 = load i8, ptr %110, align 4
  %112 = zext i8 %111 to i32
  %113 = icmp eq i8 %111, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %107
  %115 = getelementptr %struct.usb_host_interface, ptr %106, i32 %108, i32 3
  %116 = load ptr, ptr %115, align 4
  br label %120

117:                                              ; preds = %120
  %118 = add nuw nsw i32 %121, 1
  %119 = icmp eq i32 %118, %112
  br i1 %119, label %126, label %120

120:                                              ; preds = %117, %114
  %121 = phi i32 [ 0, %114 ], [ %118, %117 ]
  %122 = getelementptr %struct.usb_host_endpoint, ptr %116, i32 %121, i32 0, i32 2
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %89, %124
  br i1 %125, label %132, label %117

126:                                              ; preds = %117, %107
  %127 = add nuw i32 %108, 1
  %128 = icmp eq i32 %127, %103
  br i1 %128, label %129, label %107

129:                                              ; preds = %126, %98
  %130 = add nuw nsw i32 %99, 1
  %131 = icmp eq i32 %130, %96
  br i1 %131, label %189, label %98

132:                                              ; preds = %120
  %133 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %109, i32 0, i32 2
  %134 = load i8, ptr %133, align 2
  %135 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %136 = tail call ptr @llvm.thread.pointer() #14
  %137 = getelementptr inbounds %struct.task_struct, ptr %136, i32 0, i32 52
  %138 = load i32, ptr %137, align 8
  %139 = getelementptr inbounds %struct.task_struct, ptr %136, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %135, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.check_ctrlrecip, i32 noundef %138, ptr noundef %139, i32 noundef %32, i32 noundef %89) #15
  %140 = load ptr, ptr %5, align 4
  %141 = getelementptr inbounds %struct.usb_device, ptr %140, i32 0, i32 3
  %142 = load i32, ptr %141, align 8
  br label %143

143:                                              ; preds = %132, %84
  %144 = phi i32 [ %8, %84 ], [ %142, %132 ]
  %145 = phi ptr [ %6, %84 ], [ %140, %132 ]
  %146 = phi i8 [ %86, %84 ], [ %134, %132 ]
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %144, 7
  br i1 %148, label %149, label %189

149:                                              ; preds = %143
  %150 = icmp ugt i8 %146, 31
  br i1 %150, label %189, label %151

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.usb_dev_state, ptr %0, i32 0, i32 13
  %153 = lshr i32 %147, 5
  %154 = getelementptr i32, ptr %152, i32 %153
  %155 = load volatile i32, ptr %154, align 4
  %156 = shl nuw i32 1, %147
  %157 = and i32 %155, %156
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %189

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.usb_device, ptr %145, i32 0, i32 15
  %161 = tail call ptr @llvm.thread.pointer() #14
  %162 = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 52
  %163 = load i32, ptr %162, align 8
  %164 = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %160, ptr noundef nonnull @.str.31, i32 noundef %163, ptr noundef %164, i32 noundef %147) #15
  br label %186

165:                                              ; preds = %31, %27
  %166 = phi i32 [ %30, %27 ], [ %8, %31 ]
  %167 = phi ptr [ %28, %27 ], [ %6, %31 ]
  %168 = phi i32 [ %20, %27 ], [ %32, %31 ]
  %169 = icmp eq i32 %166, 7
  br i1 %169, label %170, label %189

170:                                              ; preds = %165
  %171 = icmp ugt i32 %168, 31
  br i1 %171, label %189, label %172

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.usb_dev_state, ptr %0, i32 0, i32 13
  %174 = lshr i32 %168, 5
  %175 = getelementptr i32, ptr %173, i32 %174
  %176 = load volatile i32, ptr %175, align 4
  %177 = shl nuw i32 1, %168
  %178 = and i32 %176, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %172
  %181 = getelementptr inbounds %struct.usb_device, ptr %167, i32 0, i32 15
  %182 = tail call ptr @llvm.thread.pointer() #14
  %183 = getelementptr inbounds %struct.task_struct, ptr %182, i32 0, i32 52
  %184 = load i32, ptr %183, align 8
  %185 = getelementptr inbounds %struct.task_struct, ptr %182, i32 0, i32 85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %181, ptr noundef nonnull @.str.31, i32 noundef %184, ptr noundef %185, i32 noundef %168) #15
  br label %186

186:                                              ; preds = %180, %159
  %187 = phi i32 [ %168, %180 ], [ %147, %159 ]
  %188 = tail call fastcc i32 @claimintf(ptr noundef %0, i32 noundef %187) #14
  br label %189

189:                                              ; preds = %186, %172, %170, %165, %151, %149, %143, %129, %93, %88, %87, %37, %34, %31, %23, %9, %4
  %190 = phi i32 [ -113, %4 ], [ 0, %9 ], [ 0, %23 ], [ 0, %34 ], [ 0, %31 ], [ -2, %93 ], [ -3, %88 ], [ -22, %87 ], [ -113, %143 ], [ -22, %149 ], [ 0, %151 ], [ -113, %165 ], [ -22, %170 ], [ 0, %172 ], [ -22, %37 ], [ %188, %186 ], [ -2, %129 ]
  ret i32 %190
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_alt_setting(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @claimintf(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.usb_dev_state, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt i32 %1, 31
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_dev_state, ptr %0, i32 0, i32 13
  %8 = lshr i32 %1, 5
  %9 = getelementptr i32, ptr %7, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = shl nuw i32 1, %1
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.usb_dev_state, ptr %0, i32 0, i32 18
  %16 = load i8, ptr %15, align 1, !range !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.usb_dev_state, ptr %0, i32 0, i32 15
  %20 = getelementptr i32, ptr %19, i32 %8
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, %11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %18, %14
  %25 = tail call ptr @usb_ifnum_to_if(ptr noundef %4, i32 noundef %1) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 7, i32 0, i32 7
  %29 = load i8, ptr %28, align 8
  %30 = and i8 %29, 16
  %31 = or i8 %29, 16
  store i8 %31, ptr %28, align 8
  %32 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @usbfs_driver, ptr noundef nonnull %25, ptr noundef %0) #14
  %33 = load i8, ptr %28, align 8
  %34 = and i8 %33, -17
  %35 = or i8 %34, %30
  store i8 %35, ptr %28, align 8
  %36 = icmp eq i32 %32, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  tail call void @_set_bit(i32 noundef %1, ptr noundef %7) #14
  br label %38

38:                                               ; preds = %37, %27, %24, %18, %6, %2
  %39 = phi i32 [ -22, %2 ], [ 0, %6 ], [ -13, %18 ], [ 0, %37 ], [ %32, %27 ], [ -2, %24 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbfs_blocking_completion(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  tail call void @complete(ptr noundef %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_reset_endpoint(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_configuration(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @async_completed(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.async, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %8 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 5
  %9 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  %13 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 5, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr %3, ptr %13, align 4
  store ptr %8, ptr %3, align 4
  store ptr %14, ptr %9, align 4
  store volatile ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.async, ptr %3, i32 0, i32 12
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.async, ptr %3, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.async, ptr %3, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.async, ptr %3, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %25) #14, !srcloc !18
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #14, !srcloc !27
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !13

31:                                               ; preds = %27
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !8

35:                                               ; preds = %31, %27
  %36 = phi i32 [ 2, %27 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %25, i32 noundef %36) #14
  br label %37

37:                                               ; preds = %35, %31, %21
  %38 = getelementptr inbounds %struct.async, ptr %3, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.cred, ptr %39, i32 0, i32 24
  store i32 0, ptr %42, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %39) #14, !srcloc !18
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %39, ptr nonnull %39, i32 1, ptr nonnull elementtype(i32) %39) #14, !srcloc !28
  br label %44

44:                                               ; preds = %41, %37, %1
  %45 = phi ptr [ null, %1 ], [ %25, %37 ], [ %25, %41 ]
  %46 = phi ptr [ null, %1 ], [ null, %37 ], [ %39, %41 ]
  %47 = phi i32 [ 0, %1 ], [ %23, %37 ], [ %23, %41 ]
  %48 = phi i32 [ 0, %1 ], [ %16, %37 ], [ %16, %41 ]
  %49 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  br label %82

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.51) #15
  %57 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %58 = icmp eq i8 %57, 0
  %59 = getelementptr inbounds %struct.async, ptr %3, i32 0, i32 7
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %17, align 4
  br i1 %58, label %82, label %64

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 10
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = lshr i32 %66, 15
  %70 = and i32 %69, 15
  %71 = lshr i32 %66, 30
  %72 = getelementptr [4 x ptr], ptr @snoop_urb.types, i32 0, i32 %71
  %73 = load ptr, ptr %72, align 4
  %74 = lshr i32 %66, 7
  %75 = and i32 %74, 1
  %76 = getelementptr [2 x ptr], ptr @snoop_urb.dirs, i32 0, i32 %75
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %60, null
  %79 = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 15
  br i1 %78, label %81, label %80

80:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.39, ptr noundef nonnull %60, i32 noundef %70, ptr noundef %73, ptr noundef %77, i32 noundef %62, i32 noundef %63) #15
  br label %82

81:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.41, i32 noundef %70, ptr noundef %73, ptr noundef %77, i32 noundef %62, i32 noundef %63) #15
  br label %82

82:                                               ; preds = %81, %80, %53, %51
  %83 = phi ptr [ %52, %51 ], [ %61, %80 ], [ %61, %81 ], [ %61, %53 ]
  %84 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 13
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 512
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = load i32, ptr %83, align 4
  tail call fastcc void @snoop_urb_data(ptr noundef %0, i32 noundef %89)
  br label %90

90:                                               ; preds = %88, %82
  %91 = load i32, ptr %17, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %149

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.async, ptr %3, i32 0, i32 13
  %95 = load i8, ptr %94, align 4
  %96 = zext i8 %95 to i32
  %97 = icmp eq i8 %95, 0
  %98 = icmp eq i32 %91, -104
  %99 = select i1 %97, i1 true, i1 %98
  %100 = icmp eq i32 %91, -2
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %149, label %102

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 4
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %103
  br i1 %105, label %119, label %106

106:                                              ; preds = %116, %102
  %107 = phi ptr [ %117, %116 ], [ %104, %102 ]
  %108 = getelementptr inbounds %struct.async, ptr %107, i32 0, i32 13
  %109 = load i8, ptr %108, align 4
  %110 = icmp eq i8 %109, %95
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.async, ptr %107, i32 0, i32 14
  %113 = load i8, ptr %112, align 1
  %114 = icmp eq i8 %113, 1
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  store i8 2, ptr %112, align 1
  store i8 0, ptr %108, align 4
  br label %116

116:                                              ; preds = %115, %106
  %117 = load ptr, ptr %107, align 4
  %118 = icmp eq ptr %117, %103
  br i1 %118, label %119, label %106

119:                                              ; preds = %116, %102
  %120 = shl nuw i32 1, %96
  %121 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 14
  %122 = load i32, ptr %121, align 4
  %123 = or i32 %122, %120
  store i32 %123, ptr %121, align 4
  br label %124

124:                                              ; preds = %119, %111
  %125 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 4, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %103
  br i1 %127, label %149, label %128

128:                                              ; preds = %147, %124
  %129 = phi ptr [ %148, %147 ], [ %126, %124 ]
  %130 = getelementptr inbounds %struct.async, ptr %129, i32 0, i32 14
  %131 = load i8, ptr %130, align 1
  %132 = icmp eq i8 %131, 2
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.async, ptr %129, i32 0, i32 14
  store i8 0, ptr %134, align 1
  %135 = getelementptr inbounds %struct.async, ptr %129, i32 0, i32 9
  %136 = load ptr, ptr %135, align 4
  %137 = tail call ptr @usb_get_urb(ptr noundef %136) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !29
  %138 = load i16, ptr %6, align 4
  %139 = add i16 %138, 1
  store i16 %139, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !50
  %140 = tail call i32 @usb_unlink_urb(ptr noundef %136) #14
  tail call void @usb_free_urb(ptr noundef %136) #14
  tail call void @_raw_spin_lock(ptr noundef %6) #14
  %141 = load ptr, ptr %125, align 4
  %142 = icmp eq ptr %141, %103
  br i1 %142, label %149, label %147

143:                                              ; preds = %128
  %144 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, %103
  br i1 %146, label %149, label %147

147:                                              ; preds = %143, %133
  %148 = phi ptr [ %145, %143 ], [ %141, %133 ]
  br label %128

149:                                              ; preds = %143, %133, %124, %93, %90
  %150 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %150, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #14
  br i1 %20, label %160, label %151

151:                                              ; preds = %149
  %152 = insertvalue [1 x i32] poison, i32 %47, 0
  %153 = tail call i32 @kill_pid_usb_asyncio(i32 noundef %19, i32 noundef %48, [1 x i32] %152, ptr noundef %45, ptr noundef %46) #14
  tail call void @put_pid(ptr noundef %45) #14
  %154 = icmp eq ptr %46, null
  br i1 %154, label %160, label %155

155:                                              ; preds = %151
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %46) #14, !srcloc !18
  %156 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %46, ptr nonnull %46, i32 1, ptr nonnull elementtype(i32) %46) #14, !srcloc !42
  %157 = extractvalue { i32, i32 } %156, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !43
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  tail call void @__put_cred(ptr noundef nonnull %46) #14
  br label %160

160:                                              ; preds = %159, %155, %151, %149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snoop_urb_data(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load i32, ptr @usbfs_snoop_max, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %1)
  %5 = load i8, ptr @usbfs_snoop, align 1, !range !14
  %6 = icmp eq i8 %5, 0
  %7 = icmp eq i32 %4, 0
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %39, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 16
  br label %20

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 32, i32 noundef 1, ptr noundef %19, i32 noundef %4, i1 noundef zeroext true) #14
  br label %39

20:                                               ; preds = %20, %15
  %21 = phi i32 [ %4, %15 ], [ %33, %20 ]
  %22 = phi i32 [ 0, %15 ], [ %34, %20 ]
  %23 = tail call i32 @llvm.umin.i32(i32 %21, i32 16384)
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr %struct.scatterlist, ptr %24, i32 %22
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, -4
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call ptr @page_address(ptr noundef %28) #14
  %30 = getelementptr %struct.scatterlist, ptr %24, i32 %22, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %29, i32 %31
  tail call void @print_hex_dump(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 32, i32 noundef 1, ptr noundef %32, i32 noundef %23, i1 noundef zeroext true) #14
  %33 = sub i32 %21, %23
  %34 = add nuw nsw i32 %22, 1
  %35 = load i32, ptr %10, align 4
  %36 = icmp slt i32 %34, %35
  %37 = icmp ne i32 %33, 0
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %20, label %39

39:                                               ; preds = %20, %17, %13, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid_usb_asyncio(i32 noundef, i32 noundef, [1 x i32], ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_claim_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_release_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_usbdevfs_streams(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #1 {
  %7 = tail call ptr @llvm.thread.pointer() #14
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #17, !srcloc !10
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #14, !srcloc !51
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %154

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.usbdevfs_streams, ptr %1, i32 0, i32 1
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #17, !srcloc !10
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %21 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %17, i32 -1090519041) #14, !srcloc !52
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = extractvalue { i32, i32 } %21, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %154

25:                                               ; preds = %16
  %26 = add i32 %23, -31
  %27 = icmp ult i32 %26, -30
  br i1 %27, label %154, label %28

28:                                               ; preds = %25
  %29 = icmp eq ptr %2, null
  %30 = xor i1 %29, true
  %31 = add i32 %14, -65537
  %32 = icmp ult i32 %31, -65535
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %154, label %34

34:                                               ; preds = %28
  %35 = shl nuw nsw i32 %23, 2
  %36 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %35, i32 noundef 3264) #19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %154, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.usb_dev_state, ptr %0, i32 0, i32 1
  %40 = getelementptr inbounds %struct.usb_dev_state, ptr %0, i32 0, i32 13
  %41 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 52
  %42 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 85
  br label %43

43:                                               ; preds = %145, %38
  %44 = phi i32 [ 0, %38 ], [ %147, %145 ]
  %45 = phi ptr [ null, %38 ], [ %146, %145 ]
  %46 = getelementptr %struct.usbdevfs_streams, ptr %1, i32 0, i32 2, i32 %44
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #17, !srcloc !10
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %50 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %46, i32 -1090519041) #14, !srcloc !53
  %51 = extractvalue { i32, i32 } %50, 0
  %52 = extractvalue { i32, i32 } %50, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #14, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !12
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %54, label %152

54:                                               ; preds = %43
  %55 = load ptr, ptr %39, align 4
  %56 = and i32 %52, 128
  %57 = icmp eq i32 %56, 0
  %58 = and i32 %52, 15
  %59 = getelementptr %struct.usb_device, ptr %55, i32 0, i32 21, i32 %58
  %60 = getelementptr %struct.usb_device, ptr %55, i32 0, i32 22, i32 %58
  %61 = select i1 %57, ptr %60, ptr %59
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr ptr, ptr %36, i32 %44
  store ptr %62, ptr %63, align 4
  %64 = icmp ne ptr %62, null
  %65 = and i32 %52, 112
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %152

68:                                               ; preds = %54
  %69 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 20
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %152, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.usb_config_descriptor, ptr %70, i32 0, i32 3
  %74 = load i8, ptr %73, align 4
  %75 = zext i8 %74 to i32
  %76 = icmp eq i8 %74, 0
  br i1 %76, label %152, label %77

77:                                               ; preds = %72
  %78 = trunc i32 %52 to i8
  br label %79

79:                                               ; preds = %109, %77
  %80 = phi i32 [ %110, %109 ], [ 0, %77 ]
  %81 = getelementptr %struct.usb_host_config, ptr %70, i32 0, i32 3, i32 %80
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.usb_interface, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %109, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr %82, align 8
  br label %88

88:                                               ; preds = %106, %86
  %89 = phi i32 [ 0, %86 ], [ %107, %106 ]
  %90 = getelementptr %struct.usb_host_interface, ptr %87, i32 %89
  %91 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %90, i32 0, i32 4
  %92 = load i8, ptr %91, align 4
  %93 = zext i8 %92 to i32
  %94 = icmp eq i8 %92, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %88
  %96 = getelementptr %struct.usb_host_interface, ptr %87, i32 %89, i32 3
  %97 = load ptr, ptr %96, align 4
  br label %101

98:                                               ; preds = %101
  %99 = add nuw nsw i32 %102, 1
  %100 = icmp eq i32 %99, %93
  br i1 %100, label %106, label %101

101:                                              ; preds = %98, %95
  %102 = phi i32 [ 0, %95 ], [ %99, %98 ]
  %103 = getelementptr %struct.usb_host_endpoint, ptr %97, i32 %102, i32 0, i32 2
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, %78
  br i1 %105, label %112, label %98

106:                                              ; preds = %98, %88
  %107 = add nuw i32 %89, 1
  %108 = icmp eq i32 %107, %84
  br i1 %108, label %109, label %88

109:                                              ; preds = %106, %79
  %110 = add nuw nsw i32 %80, 1
  %111 = icmp eq i32 %110, %75
  br i1 %111, label %152, label %79

112:                                              ; preds = %101
  %113 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %90, i32 0, i32 2
  %114 = load i8, ptr %113, align 2
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %44, 0
  br i1 %116, label %117, label %140

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 3
  %119 = load i32, ptr %118, align 8
  %120 = icmp eq i32 %119, 7
  br i1 %120, label %121, label %152

121:                                              ; preds = %117
  %122 = icmp ugt i8 %114, 31
  br i1 %122, label %152, label %123

123:                                              ; preds = %121
  %124 = lshr i32 %115, 5
  %125 = getelementptr i32, ptr %40, i32 %124
  %126 = load volatile i32, ptr %125, align 4
  %127 = shl nuw i32 1, %115
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 15
  %132 = load i32, ptr %41, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %131, ptr noundef nonnull @.str.31, i32 noundef %132, ptr noundef %42, i32 noundef %115) #15
  %133 = tail call fastcc i32 @claimintf(ptr noundef %0, i32 noundef %115) #14
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %152, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr %39, align 4
  br label %137

137:                                              ; preds = %135, %123
  %138 = phi ptr [ %136, %135 ], [ %55, %123 ]
  %139 = tail call ptr @usb_ifnum_to_if(ptr noundef %138, i32 noundef %115) #14
  br label %145

140:                                              ; preds = %112
  %141 = load ptr, ptr %45, align 8
  %142 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %141, i32 0, i32 2
  %143 = load i8, ptr %142, align 2
  %144 = icmp eq i8 %114, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %140, %137
  %146 = phi ptr [ %139, %137 ], [ %45, %140 ]
  %147 = add nuw i32 %44, 1
  %148 = icmp eq i32 %147, %23
  br i1 %148, label %149, label %43

149:                                              ; preds = %145
  br i1 %29, label %151, label %150

150:                                              ; preds = %149
  store i32 %14, ptr %2, align 4
  br label %151

151:                                              ; preds = %150, %149
  store i32 %23, ptr %3, align 4
  store ptr %36, ptr %4, align 4
  store ptr %146, ptr %5, align 4
  br label %154

152:                                              ; preds = %140, %130, %121, %117, %109, %72, %68, %54, %43
  %153 = phi i32 [ -2, %109 ], [ -113, %117 ], [ -22, %121 ], [ -3, %68 ], [ -2, %72 ], [ -22, %140 ], [ -22, %54 ], [ -14, %43 ], [ %133, %130 ]
  tail call void @kfree(ptr noundef nonnull %36) #14
  br label %154

154:                                              ; preds = %152, %151, %34, %28, %25, %16, %6
  %155 = phi i32 [ %153, %152 ], [ 0, %151 ], [ -14, %16 ], [ -14, %6 ], [ -22, %25 ], [ -22, %28 ], [ -12, %34 ]
  ret i32 %155
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_alloc_streams(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_free_streams(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autoresume_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autosuspend_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbdev_vm_open(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_memory, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_dev_state, ptr %5, i32 0, i32 3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %8 = getelementptr inbounds %struct.usb_memory, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.usb_dev_state, ptr %11, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %7) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbdev_vm_close(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_memory, ptr %3, i32 0, i32 1
  tail call fastcc void @dec_usb_memory_use_count(ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_devt(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hub_release_all_ports(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbdev_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %5, label %35

5:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @usbfs_mutex) #14
  %6 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 34
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %34, label %9

9:                                                ; preds = %31, %5
  %10 = phi ptr [ %32, %31 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.usb_dev_state, ptr %10, i32 0, i32 4
  tail call fastcc void @destroy_async(ptr noundef %10, ptr noundef %11) #14
  %12 = getelementptr inbounds %struct.usb_dev_state, ptr %10, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %12, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  %13 = getelementptr inbounds %struct.usb_dev_state, ptr %10, i32 0, i32 16
  store volatile i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.usb_dev_state, ptr %10, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %14, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  %15 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %15, align 4
  %19 = getelementptr inbounds %struct.usb_dev_state, ptr %10, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.usb_dev_state, ptr %10, i32 0, i32 12
  %24 = getelementptr inbounds %struct.usb_dev_state, ptr %10, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.usb_dev_state, ptr %10, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %23, align 4
  %29 = insertvalue [1 x i32] undef, i32 %28, 0
  %30 = tail call i32 @kill_pid_usb_asyncio(i32 noundef %20, i32 noundef 32, [1 x i32] %29, ptr noundef %25, ptr noundef %27) #14
  br label %31

31:                                               ; preds = %22, %9
  %32 = load volatile ptr, ptr %6, align 4
  %33 = icmp eq ptr %32, %6
  br i1 %33, label %34, label %9

34:                                               ; preds = %31, %5
  tail call void @mutex_unlock(ptr noundef nonnull @usbfs_mutex) #14
  br label %35

35:                                               ; preds = %34, %3
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

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
!9 = !{i64 2151031734, i64 2151031759}
!10 = !{i64 3527268}
!11 = !{i64 3527465}
!12 = !{i64 2151012744}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i8 0, i8 2}
!15 = !{i64 2154072005}
!16 = !{!"auto-init"}
!17 = !{i64 2151031156, i64 2151031181}
!18 = !{i64 897497, i64 2148387468, i64 2148387494, i64 2148387541, i64 2148387563, i64 2148387591, i64 2148387611}
!19 = !{i64 2148410115, i64 2148410143, i64 2148410177, i64 2148410211, i64 2148410245, i64 2148410281, i64 2148410304}
!20 = !{i64 887111, i64 887132}
!21 = !{i64 2148412601, i64 2148412629, i64 2148412663, i64 2148412697, i64 2148412731, i64 2148412767, i64 2148412790}
!22 = !{i64 2153968036, i64 2153968316, i64 2153968650, i64 2153968984}
!23 = !{i64 2153980035, i64 2153980315, i64 2153980649, i64 2153980983}
!24 = !{i64 2153995843, i64 2153996123, i64 2153996457, i64 2153996791}
!25 = !{i64 2154010859, i64 2154010884}
!26 = !{i64 2153228253, i64 2153228745, i64 2153228290, i64 2153228346, i64 2153228380, i64 2153228404, i64 2153228445, i64 2153228466, i64 2153228494, i64 2153228528}
!27 = !{i64 2148400341, i64 2148400373, i64 2148400402, i64 2148400436, i64 2148400467, i64 2148400490}
!28 = !{i64 2148398883, i64 2148398909, i64 2148398938, i64 2148398972, i64 2148399003, i64 2148399026}
!29 = !{i64 2149066101}
!30 = !{i64 2149061925}
!31 = !{i64 2149062000, i64 2149062027, i64 2149062074, i64 2149062096, i64 2149062124, i64 2149062144}
!32 = !{i64 803420}
!33 = !{i64 2149090245}
!34 = !{i64 2154081746, i64 2154082026, i64 2154082360, i64 2154082694}
!35 = !{i64 2154093769, i64 2154094049, i64 2154094383, i64 2154094717}
!36 = !{i64 2154110832, i64 2154111112, i64 2154111446, i64 2154111780}
!37 = !{i64 2154123784, i64 2154124064, i64 2154124398, i64 2154124732}
!38 = !{i64 2154132825, i64 2154133105, i64 2154133439, i64 2154133773}
!39 = !{i64 2148835597, i64 2148835620, i64 2148835652, i64 2148835684, i64 2148835722, i64 2148835752}
!40 = !{i64 2153952459}
!41 = !{i64 2148499562}
!42 = !{i64 2148401924, i64 2148401956, i64 2148401985, i64 2148402019, i64 2148402050, i64 2148402073}
!43 = !{i64 2148499765}
!44 = !{i64 2154022104, i64 2154022384, i64 2154022718, i64 2154023052}
!45 = !{i64 2154030349, i64 2154030629, i64 2154030963, i64 2154031297}
!46 = !{i64 2154038580, i64 2154038860, i64 2154039194, i64 2154039528}
!47 = !{i64 2154046951, i64 2154047231, i64 2154047565, i64 2154047899}
!48 = !{i64 2154055273, i64 2154055553, i64 2154055887, i64 2154056221}
!49 = !{i64 2154063510, i64 2154063790, i64 2154064124, i64 2154064458}
!50 = !{i64 2149089104}
!51 = !{i64 2153921997, i64 2153922277, i64 2153922611, i64 2153922945}
!52 = !{i64 2153933997, i64 2153934277, i64 2153934611, i64 2153934945}
!53 = !{i64 2153941027, i64 2153941307, i64 2153941641, i64 2153941975}
