; ModuleID = '/llk/IR/drivers/usb/host/xhci-debugfs.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.xhci_file_map = type { ptr, ptr }
%struct.xhci_virt_device = type { i32, ptr, ptr, ptr, [31 x %struct.xhci_virt_ep], i8, i8, ptr, ptr, i32, i16, ptr }
%struct.xhci_virt_ep = type { ptr, i32, ptr, ptr, ptr, i32, %struct.list_head, %struct.timer_list, ptr, ptr, ptr, i8, %struct.xhci_bw_info, %struct.list_head, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.xhci_bw_info = type { i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xhci_slot_priv = type { [32 x i8], ptr, [31 x ptr], ptr }
%struct.xhci_ep_priv = type { [32 x i8], ptr, ptr, ptr, i32 }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.xhci_cap_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xhci_port = type { ptr, i32, i32, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.xhci_regset = type { [32 x i8], %struct.debugfs_regset32, i32, %struct.list_head }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.58, i32 }
%union.anon.58 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.xhci_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.xhci_segment = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%union.xhci_trb = type { %struct.xhci_link_trb }
%struct.xhci_link_trb = type { i64, i32, i32 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.50, %struct.list_head, %struct.list_head, %union.anon.51 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%union.anon.50 = type { %struct.list_head }
%union.anon.51 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }
%struct.xhci_stream_info = type { ptr, i32, ptr, i32, i32, %struct.xarray, ptr }
%struct.xhci_stream_ctx = type { i64, [2 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.xhci_slot_ctx = type { i32, i32, i32, i32, [4 x i32] }
%struct.xhci_container_ctx = type { i32, i32, ptr, i32 }
%struct.xhci_ep_ctx = type { i32, i32, i64, i32, [3 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ep%02d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"stream_id\00", align 1
@stream_id_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @xhci_stream_id_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @xhci_stream_id_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"stream_context_array\00", align 1
@xhci_stream_context_array_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @xhci_stream_context_array_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%02d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ep00\00", align 1
@xhci_debugfs_root = internal unnamed_addr global ptr null, align 4
@xhci_cap_regs = internal constant [8 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.154, i32 0 }, %struct.debugfs_reg32 { ptr @.str.155, i32 4 }, %struct.debugfs_reg32 { ptr @.str.156, i32 8 }, %struct.debugfs_reg32 { ptr @.str.157, i32 12 }, %struct.debugfs_reg32 { ptr @.str.158, i32 16 }, %struct.debugfs_reg32 { ptr @.str.159, i32 20 }, %struct.debugfs_reg32 { ptr @.str.160, i32 24 }, %struct.debugfs_reg32 { ptr @.str.161, i32 28 }], align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"reg-cap\00", align 1
@xhci_op_regs = internal constant [8 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.162, i32 0 }, %struct.debugfs_reg32 { ptr @.str.163, i32 4 }, %struct.debugfs_reg32 { ptr @.str.164, i32 8 }, %struct.debugfs_reg32 { ptr @.str.165, i32 20 }, %struct.debugfs_reg32 { ptr @.str.166, i32 24 }, %struct.debugfs_reg32 { ptr @.str.167, i32 48 }, %struct.debugfs_reg32 { ptr @.str.168, i32 52 }, %struct.debugfs_reg32 { ptr @.str.169, i32 56 }], align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"reg-op\00", align 1
@xhci_runtime_regs = internal constant [8 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.170, i32 0 }, %struct.debugfs_reg32 { ptr @.str.171, i32 32 }, %struct.debugfs_reg32 { ptr @.str.172, i32 36 }, %struct.debugfs_reg32 { ptr @.str.173, i32 40 }, %struct.debugfs_reg32 { ptr @.str.174, i32 48 }, %struct.debugfs_reg32 { ptr @.str.175, i32 52 }, %struct.debugfs_reg32 { ptr @.str.176, i32 56 }, %struct.debugfs_reg32 { ptr @.str.177, i32 60 }], align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"reg-runtime\00", align 1
@xhci_extcap_legsup = internal constant [2 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.179, i32 0 }, %struct.debugfs_reg32 { ptr @.str.180, i32 4 }], align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"reg-ext-legsup\00", align 1
@xhci_extcap_protocol = internal constant [10 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.181, i32 0 }, %struct.debugfs_reg32 { ptr @.str.182, i32 4 }, %struct.debugfs_reg32 { ptr @.str.183, i32 8 }, %struct.debugfs_reg32 { ptr @.str.184, i32 12 }, %struct.debugfs_reg32 { ptr @.str.185, i32 16 }, %struct.debugfs_reg32 { ptr @.str.186, i32 20 }, %struct.debugfs_reg32 { ptr @.str.187, i32 24 }, %struct.debugfs_reg32 { ptr @.str.188, i32 28 }, %struct.debugfs_reg32 { ptr @.str.189, i32 32 }, %struct.debugfs_reg32 { ptr @.str.190, i32 36 }], align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"reg-ext-protocol\00", align 1
@xhci_extcap_dbc = internal constant [14 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.191, i32 0 }, %struct.debugfs_reg32 { ptr @.str.192, i32 4 }, %struct.debugfs_reg32 { ptr @.str.193, i32 8 }, %struct.debugfs_reg32 { ptr @.str.194, i32 16 }, %struct.debugfs_reg32 { ptr @.str.195, i32 20 }, %struct.debugfs_reg32 { ptr @.str.196, i32 24 }, %struct.debugfs_reg32 { ptr @.str.197, i32 28 }, %struct.debugfs_reg32 { ptr @.str.198, i32 32 }, %struct.debugfs_reg32 { ptr @.str.199, i32 36 }, %struct.debugfs_reg32 { ptr @.str.200, i32 40 }, %struct.debugfs_reg32 { ptr @.str.201, i32 48 }, %struct.debugfs_reg32 { ptr @.str.202, i32 52 }, %struct.debugfs_reg32 { ptr @.str.203, i32 56 }, %struct.debugfs_reg32 { ptr @.str.204, i32 60 }], align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"reg-ext-dbc\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"command-ring\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"event-ring\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"xhci\00", align 1
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ring_files = internal unnamed_addr constant [4 x %struct.xhci_file_map] [%struct.xhci_file_map { ptr @.str.15, ptr @xhci_ring_enqueue_show }, %struct.xhci_file_map { ptr @.str.16, ptr @xhci_ring_dequeue_show }, %struct.xhci_file_map { ptr @.str.17, ptr @xhci_ring_cycle_show }, %struct.xhci_file_map { ptr @.str.18, ptr @xhci_ring_trb_show }], align 4
@xhci_ring_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @xhci_ring_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"enqueue\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"dequeue\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"cycle\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"trbs\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%pad\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"%pad: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"LINK %08x%08x intr %d type '%s' flags %c:%c:%c:%c\00", align 1
@.str.23 = private unnamed_addr constant [68 x i8] c"TRB %08x%08x status '%s' len %d slot %d ep %d type '%s' flags %c:%c\00", align 1
@.str.24 = private unnamed_addr constant [129 x i8] c"bRequestType %02x bRequest %02x wValue %02x%02x wIndex %02x%02x wLength %d length %d TD size %d intr %d type '%s' flags %c:%c:%c\00", align 1
@.str.25 = private unnamed_addr constant [82 x i8] c"Buffer %08x%08x length %d TD size %d intr %d type '%s' flags %c:%c:%c:%c:%c:%c:%c\00", align 1
@.str.26 = private unnamed_addr constant [73 x i8] c"Buffer %08x%08x length %d TD size %d intr %d type '%s' flags %c:%c:%c:%c\00", align 1
@.str.27 = private unnamed_addr constant [85 x i8] c"Buffer %08x%08x length %d TD size %d intr %d type '%s' flags %c:%c:%c:%c:%c:%c:%c:%c\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"%s: flags %c\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"%s: slot %d flags %c\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"%s: ctx %08x%08x slot %d flags %c:%c\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"%s: ctx %08x%08x slot %d flags %c\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"%s: ctx %08x%08x slot %d ep %d flags %c:%c\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"%s: slot %d sp %d ep %d flags %c\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"%s: deq %08x%08x stream %d slot %d ep %d flags %c\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"%s: event %08x%08x vf intr %d vf id %d flags %c\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"%s: belt %d flags %c\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"%s: ctx %08x%08x slot %d speed %d flags %c\00", align 1
@.str.38 = private unnamed_addr constant [59 x i8] c"%s: info %08x%08x%08x pkt type %d roothub port %d flags %c\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"type '%s' -> raw %08x %08x %08x %08x\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"Setup Stage\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"Data Stage\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"Status Stage\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"Isoch\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"Event Data\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"No-Op\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"Enable Slot Command\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"Disable Slot Command\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"Address Device Command\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"Configure Endpoint Command\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"Evaluate Context Command\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"Reset Endpoint Command\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Stop Ring Command\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"Set TR Dequeue Pointer Command\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"Reset Device Command\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"Force Event Command\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"Negotiate Bandwidth Command\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"Set Latency Tolerance Value Command\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"Get Port Bandwidth Command\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"Force Header Command\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"No-Op Command\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"Transfer Event\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"Command Completion Event\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"Port Status Change Event\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"Bandwidth Request Event\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"Doorbell Event\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"Host Controller Event\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"Device Notification Event\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"MFINDEX Wrap Event\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"NEC Command Completion Event\00", align 1
@.str.72 = private unnamed_addr constant [34 x i8] c"NET Get Firmware Revision Command\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"Data Buffer Error\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"Babble Detected\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"USB Transaction Error\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"TRB Error\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"Stall Error\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"Resource Error\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"Bandwidth Error\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"No Slots Available Error\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"Invalid Stream Type Error\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"Slot Not Enabled Error\00", align 1
@.str.86 = private unnamed_addr constant [27 x i8] c"Endpoint Not Enabled Error\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"Short Packet\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"Ring Underrun\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"Ring Overrun\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"VF Event Ring Full Error\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"Parameter Error\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"Bandwidth Overrun Error\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"Context State Error\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"No Ping Response Error\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"Event Ring Full Error\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"Incompatible Device Error\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"Missed Service Error\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"Command Ring Stopped\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"Command Aborted\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"Stopped\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"Stopped - Length Invalid\00", align 1
@.str.102 = private unnamed_addr constant [23 x i8] c"Stopped - Short Packet\00", align 1
@.str.103 = private unnamed_addr constant [33 x i8] c"Max Exit Latency Too Large Error\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"Isoch Buffer Overrun\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"Event Lost Error\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"Undefined Error\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c"Invalid Stream ID Error\00", align 1
@.str.108 = private unnamed_addr constant [26 x i8] c"Secondary Bandwidth Error\00", align 1
@.str.109 = private unnamed_addr constant [24 x i8] c"Split Transaction Error\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"Unknown!!\00", align 1
@.str.111 = private unnamed_addr constant [48 x i8] c"Show stream ID %d trb ring, supported [1 - %d]\0A\00", align 1
@.str.112 = private unnamed_addr constant [58 x i8] c"Allocated %d streams and %d stream context array entries\0A\00", align 1
@.str.113 = private unnamed_addr constant [31 x i8] c"%pad stream id %d deq %016llx\0A\00", align 1
@.str.114 = private unnamed_addr constant [48 x i8] c"%pad stream context entry not used deq %016llx\0A\00", align 1
@context_files = internal unnamed_addr constant [3 x %struct.xhci_file_map] [%struct.xhci_file_map { ptr @.str.115, ptr @xhci_device_name_show }, %struct.xhci_file_map { ptr @.str.116, ptr @xhci_slot_context_show }, %struct.xhci_file_map { ptr @.str.117, ptr @xhci_endpoint_context_show }], align 4
@xhci_context_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @xhci_context_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.115 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"slot-context\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"ep-context\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.119 = private unnamed_addr constant [52 x i8] c"RS %05x %s%s%s Ctx Entries %d MEL %d us Port# %d/%d\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"full-speed\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"low-speed\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"high-speed\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"super-speed\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"super-speed plus\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"UNKNOWN speed\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c" multi-TT\00", align 1
@.str.127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.128 = private unnamed_addr constant [5 x i8] c" Hub\00", align 1
@.str.129 = private unnamed_addr constant [55 x i8] c" [TT Slot %d Port# %d TTT %d Intr %d] Addr %d State %s\00", align 1
@.str.130 = private unnamed_addr constant [17 x i8] c"enabled/disabled\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"addressed\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"configured\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.135 = private unnamed_addr constant [38 x i8] c"State %s mult %d max P. Streams %d %s\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"LSA \00", align 1
@.str.137 = private unnamed_addr constant [44 x i8] c"interval %d us max ESIT payload %d CErr %d \00", align 1
@.str.138 = private unnamed_addr constant [40 x i8] c"Type %s %sburst %d maxp %d deq %016llx \00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"HID\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"avg trb len %d\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"halted\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"Isoc OUT\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"Bulk OUT\00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"Int OUT\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"Isoc IN\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"Bulk IN\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"Int IN\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"CAPLENGTH\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"HCSPARAMS1\00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c"HCSPARAMS2\00", align 1
@.str.157 = private unnamed_addr constant [11 x i8] c"HCSPARAMS3\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"HCCPARAMS1\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"DOORBELLOFF\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"RUNTIMEOFF\00", align 1
@.str.161 = private unnamed_addr constant [11 x i8] c"HCCPARAMS2\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"USBCMD\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"USBSTS\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"PAGESIZE\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c"DNCTRL\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"CRCR\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"DCBAAP_LOW\00", align 1
@.str.168 = private unnamed_addr constant [12 x i8] c"DCBAAP_HIGH\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"CONFIG\00", align 1
@.str.170 = private unnamed_addr constant [8 x i8] c"MFINDEX\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"IR0_IMAN\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"IR0_IMOD\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"IR0_ERSTSZ\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"IR0_ERSTBA_LOW\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"IR0_ERSTBA_HIGH\00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c"IR0_ERDP_LOW\00", align 1
@.str.177 = private unnamed_addr constant [14 x i8] c"IR0_ERDP_HIGH\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"%s:%02d\00", align 1
@.str.179 = private unnamed_addr constant [17 x i8] c"EXTCAP_USBLEGSUP\00", align 1
@.str.180 = private unnamed_addr constant [20 x i8] c"EXTCAP_USBLEGCTLSTS\00", align 1
@.str.181 = private unnamed_addr constant [16 x i8] c"EXTCAP_REVISION\00", align 1
@.str.182 = private unnamed_addr constant [12 x i8] c"EXTCAP_NAME\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"EXTCAP_PORTINFO\00", align 1
@.str.184 = private unnamed_addr constant [16 x i8] c"EXTCAP_PORTTYPE\00", align 1
@.str.185 = private unnamed_addr constant [17 x i8] c"EXTCAP_MANTISSA1\00", align 1
@.str.186 = private unnamed_addr constant [17 x i8] c"EXTCAP_MANTISSA2\00", align 1
@.str.187 = private unnamed_addr constant [17 x i8] c"EXTCAP_MANTISSA3\00", align 1
@.str.188 = private unnamed_addr constant [17 x i8] c"EXTCAP_MANTISSA4\00", align 1
@.str.189 = private unnamed_addr constant [17 x i8] c"EXTCAP_MANTISSA5\00", align 1
@.str.190 = private unnamed_addr constant [17 x i8] c"EXTCAP_MANTISSA6\00", align 1
@.str.191 = private unnamed_addr constant [22 x i8] c"EXTCAP_DBC_CAPABILITY\00", align 1
@.str.192 = private unnamed_addr constant [20 x i8] c"EXTCAP_DBC_DOORBELL\00", align 1
@.str.193 = private unnamed_addr constant [20 x i8] c"EXTCAP_DBC_ERSTSIZE\00", align 1
@.str.194 = private unnamed_addr constant [20 x i8] c"EXTCAP_DBC_ERST_LOW\00", align 1
@.str.195 = private unnamed_addr constant [21 x i8] c"EXTCAP_DBC_ERST_HIGH\00", align 1
@.str.196 = private unnamed_addr constant [20 x i8] c"EXTCAP_DBC_ERDP_LOW\00", align 1
@.str.197 = private unnamed_addr constant [21 x i8] c"EXTCAP_DBC_ERDP_HIGH\00", align 1
@.str.198 = private unnamed_addr constant [19 x i8] c"EXTCAP_DBC_CONTROL\00", align 1
@.str.199 = private unnamed_addr constant [18 x i8] c"EXTCAP_DBC_STATUS\00", align 1
@.str.200 = private unnamed_addr constant [18 x i8] c"EXTCAP_DBC_PORTSC\00", align 1
@.str.201 = private unnamed_addr constant [20 x i8] c"EXTCAP_DBC_CONT_LOW\00", align 1
@.str.202 = private unnamed_addr constant [21 x i8] c"EXTCAP_DBC_CONT_HIGH\00", align 1
@.str.203 = private unnamed_addr constant [20 x i8] c"EXTCAP_DBC_DEVINFO1\00", align 1
@.str.204 = private unnamed_addr constant [20 x i8] c"EXTCAP_DBC_DEVINFO2\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"port%02d\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"portsc\00", align 1
@port_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @xhci_port_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @xhci_port_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.208 = private unnamed_addr constant [11 x i8] c"compliance\00", align 1
@.str.211 = private unnamed_addr constant [31 x i8] c"%s %s %s Link:%s PortSpeed:%d \00", align 1
@.str.212 = private unnamed_addr constant [8 x i8] c"Powered\00", align 1
@.str.213 = private unnamed_addr constant [12 x i8] c"Powered-off\00", align 1
@.str.214 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.215 = private unnamed_addr constant [14 x i8] c"Not-connected\00", align 1
@.str.216 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.217 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.218 = private unnamed_addr constant [13 x i8] c"OverCurrent \00", align 1
@.str.219 = private unnamed_addr constant [10 x i8] c"In-Reset \00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c"Change: \00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c"CSC \00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"PEC \00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"WRC \00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"OCC \00", align 1
@.str.225 = private unnamed_addr constant [5 x i8] c"PRC \00", align 1
@.str.226 = private unnamed_addr constant [5 x i8] c"PLC \00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"CEC \00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"CAS \00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"Wake: \00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"WCE \00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"WDE \00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"WOE \00", align 1
@.str.233 = private unnamed_addr constant [3 x i8] c"U0\00", align 1
@.str.234 = private unnamed_addr constant [3 x i8] c"U1\00", align 1
@.str.235 = private unnamed_addr constant [3 x i8] c"U2\00", align 1
@.str.236 = private unnamed_addr constant [3 x i8] c"U3\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"RxDetect\00", align 1
@.str.238 = private unnamed_addr constant [9 x i8] c"Inactive\00", align 1
@.str.239 = private unnamed_addr constant [8 x i8] c"Polling\00", align 1
@.str.240 = private unnamed_addr constant [9 x i8] c"Recovery\00", align 1
@.str.241 = private unnamed_addr constant [10 x i8] c"Hot Reset\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"Compliance mode\00", align 1
@.str.243 = private unnamed_addr constant [10 x i8] c"Test mode\00", align 1
@.str.244 = private unnamed_addr constant [7 x i8] c"Resume\00", align 1
@.str.245 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @xhci_debugfs_remove_root], section "llvm.metadata"
@switch.table.xhci_ring_trb_show = private unnamed_addr constant [37 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.110, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], align 4
@switch.table.xhci_ring_trb_show.246 = private unnamed_addr constant [8 x ptr] [ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], align 4
@switch.table.xhci_ring_trb_show.247 = private unnamed_addr constant [8 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], align 4
@switch.table.xhci_ring_trb_show.248 = private unnamed_addr constant [15 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], align 4
@switch.table.xhci_ring_trb_show.249 = private unnamed_addr constant [10 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], align 4
@switch.table.xhci_ring_trb_show.250 = private unnamed_addr constant [56 x ptr] [ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], align 4
@switch.table.xhci_slot_context_show = private unnamed_addr constant [5 x ptr] [ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], align 4
@switch.table.xhci_slot_context_show.251 = private unnamed_addr constant [4 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133], align 4
@switch.table.xhci_endpoint_context_show = private unnamed_addr constant [8 x ptr] [ptr @.str.145, ptr @.str.146, ptr @.str.146, ptr @.str.146, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], align 4
@switch.table.xhci_endpoint_context_show.252 = private unnamed_addr constant [8 x ptr] [ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], align 4
@switch.table.xhci_portsc_show = private unnamed_addr constant [16 x ptr] [ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.217, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.245, ptr @.str.245, ptr @.str.245, ptr @.str.244], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_create_endpoint(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = getelementptr %struct.xhci_slot_priv, ptr %5, i32 0, i32 2, i32 %2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 48) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 %2, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.xhci_ep_priv, ptr %13, i32 0, i32 3
  store ptr %17, ptr %18, align 8
  %19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %13, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %2)
  %20 = getelementptr inbounds %struct.xhci_slot_priv, ptr %5, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @debugfs_create_dir(ptr noundef nonnull %13, ptr noundef %21) #14
  %23 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %22, ptr noundef %18, ptr noundef nonnull @xhci_ring_fops) #14
  %24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %22, ptr noundef %18, ptr noundef nonnull @xhci_ring_fops) #14
  %25 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 292, ptr noundef %22, ptr noundef %18, ptr noundef nonnull @xhci_ring_fops) #14
  %26 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %22, ptr noundef %18, ptr noundef nonnull @xhci_ring_fops) #14
  %27 = getelementptr inbounds %struct.xhci_ep_priv, ptr %13, i32 0, i32 1
  store ptr %22, ptr %27, align 8
  store ptr %13, ptr %8, align 4
  br label %28

28:                                               ; preds = %15, %11, %7, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_remove_endpoint(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr %struct.xhci_slot_priv, ptr %5, i32 0, i32 2, i32 %2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.xhci_ep_priv, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @debugfs_remove(ptr noundef %13) #14
  store ptr null, ptr %8, align 4
  tail call void @kfree(ptr noundef nonnull %9) #14
  br label %14

14:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_create_stream_files(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = getelementptr %struct.xhci_slot_priv, ptr %5, i32 0, i32 2, i32 %2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 %2, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.xhci_ep_priv, ptr %9, i32 0, i32 2
  store ptr %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.xhci_ep_priv, ptr %9, i32 0, i32 4
  store i32 1, ptr %17, align 4
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr ptr, ptr %18, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.xhci_ep_priv, ptr %9, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.xhci_ep_priv, ptr %9, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 420, ptr noundef %23, ptr noundef nonnull %9, ptr noundef nonnull @stream_id_fops) #14
  %25 = load ptr, ptr %22, align 4
  %26 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %25, ptr noundef nonnull %9, ptr noundef nonnull @xhci_stream_context_array_fops) #14
  br label %27

27:                                               ; preds = %15, %11, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_create_slot(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 164) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %1)
  %10 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 66
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @debugfs_create_dir(ptr noundef nonnull %6, ptr noundef %11) #14
  %13 = getelementptr inbounds %struct.xhci_slot_priv, ptr %6, i32 0, i32 1
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.xhci_slot_priv, ptr %6, i32 0, i32 3
  store ptr %4, ptr %14, align 8
  %15 = getelementptr inbounds %struct.xhci_virt_device, ptr %4, i32 0, i32 11
  store ptr %6, ptr %15, align 4
  %16 = getelementptr inbounds %struct.xhci_virt_device, ptr %4, i32 0, i32 4, i32 0, i32 2
  %17 = load ptr, ptr %13, align 8
  %18 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.4, ptr noundef %17) #14
  %19 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %18, ptr noundef %16, ptr noundef nonnull @xhci_ring_fops) #14
  %20 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %18, ptr noundef %16, ptr noundef nonnull @xhci_ring_fops) #14
  %21 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 292, ptr noundef %18, ptr noundef %16, ptr noundef nonnull @xhci_ring_fops) #14
  %22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %18, ptr noundef %16, ptr noundef nonnull @xhci_ring_fops) #14
  %23 = load ptr, ptr %13, align 8
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.xhci_virt_device, ptr %24, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.115, i16 noundef zeroext 292, ptr noundef %23, ptr noundef %26, ptr noundef nonnull @xhci_context_fops) #14
  %28 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.116, i16 noundef zeroext 292, ptr noundef %23, ptr noundef %26, ptr noundef nonnull @xhci_context_fops) #14
  %29 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.117, i16 noundef zeroext 292, ptr noundef %23, ptr noundef %26, ptr noundef nonnull @xhci_context_fops) #14
  br label %30

30:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_remove_slot(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.xhci_virt_device, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.xhci_slot_priv, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @debugfs_remove(ptr noundef %12) #14
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ 0, %10 ], [ %17, %13 ]
  %15 = getelementptr %struct.xhci_slot_priv, ptr %8, i32 0, i32 2, i32 %14
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #14
  %17 = add nuw nsw i32 %14, 1
  %18 = icmp eq i32 %17, 31
  br i1 %18, label %19, label %13

19:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %8) #14
  store ptr null, ptr %7, align 4
  br label %20

20:                                               ; preds = %19, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [8 x i8], align 8
  %3 = load ptr, ptr %0, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load ptr, ptr %4, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %9, %8 ], [ %6, %1 ]
  %12 = load ptr, ptr @xhci_debugfs_root, align 4
  %13 = tail call ptr @debugfs_create_dir(ptr noundef %11, ptr noundef %12) #14
  %14 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 65
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 67
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 67, i32 1
  store ptr %15, ptr %16, align 4
  tail call void (ptr, i32, ptr, i32, ptr, ptr, ...) @xhci_debugfs_regset(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @xhci_cap_regs, i32 noundef 8, ptr noundef %13, ptr noundef nonnull @.str.5)
  %17 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %20 = and i32 %19, 255
  %21 = load ptr, ptr %14, align 4
  tail call void (ptr, i32, ptr, i32, ptr, ptr, ...) @xhci_debugfs_regset(ptr noundef %0, i32 noundef %20, ptr noundef nonnull @xhci_op_regs, i32 noundef 8, ptr noundef %21, ptr noundef nonnull @.str.6)
  %22 = load ptr, ptr %17, align 8
  %23 = getelementptr inbounds %struct.xhci_cap_regs, ptr %22, i32 0, i32 6
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !10
  %25 = and i32 %24, -32
  %26 = load ptr, ptr %14, align 4
  tail call void (ptr, i32, ptr, i32, ptr, ptr, ...) @xhci_debugfs_regset(ptr noundef %0, i32 noundef %25, ptr noundef nonnull @xhci_runtime_regs, i32 noundef 8, ptr noundef %26, ptr noundef nonnull @.str.7)
  tail call fastcc void @xhci_debugfs_extcap_regset(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @xhci_extcap_legsup, i32 noundef 2, ptr noundef nonnull @.str.8)
  tail call fastcc void @xhci_debugfs_extcap_regset(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @xhci_extcap_protocol, i32 noundef 10, ptr noundef nonnull @.str.9)
  tail call fastcc void @xhci_debugfs_extcap_regset(ptr noundef %0, i32 noundef 10, ptr noundef nonnull @xhci_extcap_dbc, i32 noundef 14, ptr noundef nonnull @.str.10)
  %27 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 29
  %28 = load ptr, ptr %14, align 4
  %29 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.11, ptr noundef %28) #14
  %30 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %29, ptr noundef %27, ptr noundef nonnull @xhci_ring_fops) #14
  %31 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %29, ptr noundef %27, ptr noundef nonnull @xhci_ring_fops) #14
  %32 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 292, ptr noundef %29, ptr noundef %27, ptr noundef nonnull @xhci_ring_fops) #14
  %33 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %29, ptr noundef %27, ptr noundef nonnull @xhci_ring_fops) #14
  %34 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 36
  %35 = load ptr, ptr %14, align 4
  %36 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.12, ptr noundef %35) #14
  %37 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %36, ptr noundef %34, ptr noundef nonnull @xhci_ring_fops) #14
  %38 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %36, ptr noundef %34, ptr noundef nonnull @xhci_ring_fops) #14
  %39 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 292, ptr noundef %36, ptr noundef %34, ptr noundef nonnull @xhci_ring_fops) #14
  %40 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %36, ptr noundef %34, ptr noundef nonnull @xhci_ring_fops) #14
  %41 = load ptr, ptr %14, align 4
  %42 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.13, ptr noundef %41) #14
  %43 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 66
  store ptr %42, ptr %43, align 8
  %44 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store i64 0, ptr %2, align 8, !annotation !11
  %45 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 24
  %48 = and i32 %47, 127
  %49 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.205, ptr noundef %44) #14
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %10
  %52 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 54
  br label %53

53:                                               ; preds = %53, %51
  %54 = phi i32 [ %48, %51 ], [ %55, %53 ]
  %55 = add nsw i32 %54, -1
  %56 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %2, i32 noundef 8, ptr noundef nonnull @.str.206, i32 noundef %54) #14
  %57 = call ptr @debugfs_create_dir(ptr noundef nonnull %2, ptr noundef %49) #14
  %58 = load ptr, ptr %52, align 8
  %59 = getelementptr %struct.xhci_port, ptr %58, i32 %55
  %60 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.207, i16 noundef zeroext 420, ptr noundef %57, ptr noundef %59, ptr noundef nonnull @port_fops) #14
  %61 = icmp eq i32 %55, 0
  br i1 %61, label %62, label %53

62:                                               ; preds = %53, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xhci_debugfs_regset(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) unnamed_addr #0 {
  %7 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !11
  %8 = load ptr, ptr %0, align 8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 60) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.xhci_regset, ptr %10, i32 0, i32 3
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.xhci_regset, ptr %10, i32 0, i32 3, i32 1
  %15 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 67
  %16 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 67, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr %13, ptr %16, align 4
  store ptr %15, ptr %13, align 4
  store ptr %17, ptr %14, align 8
  store volatile ptr %13, ptr %17, align 4
  call void @llvm.va_start(ptr nonnull %7)
  %18 = load i32, ptr %7, align 4
  %19 = insertvalue [1 x i32] poison, i32 %18, 0
  %20 = call i32 @vsnprintf(ptr noundef nonnull %10, i32 noundef 32, ptr noundef %5, [1 x i32] %19)
  call void @llvm.va_end(ptr nonnull %7)
  %21 = getelementptr inbounds %struct.xhci_regset, ptr %10, i32 0, i32 1
  store ptr %2, ptr %21, align 8
  %22 = getelementptr inbounds %struct.xhci_regset, ptr %10, i32 0, i32 1, i32 1
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 16
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr i8, ptr %24, i32 %1
  %26 = getelementptr inbounds %struct.xhci_regset, ptr %10, i32 0, i32 1, i32 2
  store ptr %25, ptr %26, align 8
  call void @debugfs_create_regset32(ptr noundef nonnull %10, i16 noundef zeroext 292, ptr noundef %4, ptr noundef %21) #14
  br label %27

27:                                               ; preds = %12, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_debugfs_extcap_regset(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %10 = icmp eq i32 %9, -1
  %11 = lshr i32 %9, 14
  %12 = and i32 %11, 262140
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %10, i1 true, i1 %13
  br i1 %14, label %78, label %15

15:                                               ; preds = %25, %5
  %16 = phi i32 [ %29, %25 ], [ %12, %5 ]
  %17 = getelementptr i8, ptr %7, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %78, label %20

20:                                               ; preds = %15
  %21 = icmp ne i32 %16, 0
  %22 = and i32 %18, 255
  %23 = icmp eq i32 %22, %1
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = lshr i32 %18, 8
  %27 = and i32 %26, 255
  %28 = shl nuw nsw i32 %27, 2
  %29 = add i32 %28, %16
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %78, label %15

31:                                               ; preds = %20
  %32 = icmp eq i32 %1, 2
  %33 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 65
  %34 = getelementptr i8, ptr %7, i32 8
  br label %35

35:                                               ; preds = %75, %31
  %36 = phi i32 [ %16, %31 ], [ %60, %75 ]
  %37 = phi i32 [ 0, %31 ], [ %76, %75 ]
  %38 = phi i32 [ %3, %31 ], [ %46, %75 ]
  br i1 %32, label %39, label %45

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %34, i32 %36
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  %42 = lshr i32 %41, 28
  %43 = add nuw nsw i32 %42, 4
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 %3)
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi i32 [ %44, %39 ], [ %38, %35 ]
  %47 = load ptr, ptr %33, align 4
  tail call void (ptr, i32, ptr, i32, ptr, ptr, ...) @xhci_debugfs_regset(ptr noundef %0, i32 noundef %36, ptr noundef %2, i32 noundef %46, ptr noundef %47, ptr noundef nonnull @.str.178, ptr noundef %4, i32 noundef %37)
  %48 = and i32 %36, -17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %52 = icmp eq i32 %51, -1
  %53 = lshr i32 %51, 14
  %54 = and i32 %53, 262140
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %52, i1 true, i1 %55
  br i1 %56, label %78, label %57

57:                                               ; preds = %50, %45
  %58 = phi i32 [ %54, %50 ], [ %36, %45 ]
  br label %59

59:                                               ; preds = %69, %57
  %60 = phi i32 [ %73, %69 ], [ %58, %57 ]
  %61 = getelementptr i8, ptr %7, i32 %60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !13
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %78, label %64

64:                                               ; preds = %59
  %65 = icmp ne i32 %60, %36
  %66 = and i32 %62, 255
  %67 = icmp eq i32 %66, %1
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = lshr i32 %62, 8
  %71 = and i32 %70, 255
  %72 = shl nuw nsw i32 %71, 2
  %73 = add i32 %72, %60
  %74 = icmp eq i32 %71, 0
  br i1 %74, label %78, label %59

75:                                               ; preds = %64
  %76 = add i32 %37, 1
  %77 = icmp eq i32 %60, 0
  br i1 %77, label %78, label %35

78:                                               ; preds = %75, %69, %59, %50, %25, %15, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 65
  %3 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %3) #14
  store ptr null, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 66
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 67
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %19, label %8

8:                                                ; preds = %17, %1
  %9 = phi ptr [ %11, %17 ], [ %6, %1 ]
  %10 = getelementptr i8, ptr %9, i32 -52
  %11 = load ptr, ptr %9, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %9, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %11, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  tail call void @kfree(ptr noundef nonnull %10) #14
  br label %17

17:                                               ; preds = %13, %8
  %18 = icmp eq ptr %11, %5
  br i1 %18, label %19, label %8

19:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_create_root() local_unnamed_addr #4 section ".init.text" {
  %1 = load ptr, ptr @usb_debug_root, align 4
  %2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.14, ptr noundef %1) #14
  store ptr %2, ptr @xhci_debugfs_root, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_remove_root() #4 section ".exit.text" {
  %1 = load ptr, ptr @xhci_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %1) #14
  store ptr null, ptr @xhci_debugfs_root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_ring_enqueue_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xhci_ring, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xhci_ring, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %8, ptr noundef %10) #14
  store i32 %11, ptr %3, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_ring_dequeue_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xhci_ring, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xhci_ring, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %8, ptr noundef %10) #14
  store i32 %11, ptr %3, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_ring_cycle_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xhci_ring, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %7) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_ring_trb_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [500 x i8], align 1
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xhci_ring, ptr %7, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %320, label %11

11:                                               ; preds = %315, %2
  %12 = phi ptr [ %316, %315 ], [ %7, %2 ]
  %13 = phi i32 [ %317, %315 ], [ 0, %2 ]
  %14 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(500) %4, i8 0, i32 500, i1 false) #14, !annotation !11
  %15 = getelementptr inbounds %struct.xhci_segment, ptr %14, i32 0, i32 2
  br label %16

16:                                               ; preds = %312, %11
  %17 = phi i32 [ 0, %11 ], [ %313, %312 ]
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr %union.xhci_trb, ptr %18, i32 %17
  %20 = load i32, ptr %15, align 4
  %21 = shl i32 %17, 4
  %22 = add i32 %20, %21
  store i32 %22, ptr %3, align 4
  %23 = load i32, ptr %19, align 8
  %24 = getelementptr [4 x i32], ptr %19, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [4 x i32], ptr %19, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr [4 x i32], ptr %19, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 10
  %31 = and i32 %30, 63
  switch i32 %31, label %301 [
    i32 6, label %32
    i32 32, label %46
    i32 33, label %46
    i32 34, label %46
    i32 35, label %46
    i32 36, label %46
    i32 37, label %46
    i32 38, label %46
    i32 39, label %46
    i32 2, label %76
    i32 3, label %100
    i32 4, label %126
    i32 1, label %143
    i32 5, label %143
    i32 7, label %143
    i32 8, label %143
    i32 23, label %181
    i32 9, label %181
    i32 10, label %195
    i32 19, label %195
    i32 11, label %210
    i32 12, label %219
    i32 13, label %228
    i32 14, label %234
    i32 15, label %245
    i32 16, label %255
    i32 17, label %264
    i32 18, label %270
    i32 20, label %278
    i32 21, label %285
    i32 22, label %293
  ]

32:                                               ; preds = %16
  %33 = lshr i32 %27, 22
  %34 = and i32 %29, 32
  %35 = xor i32 %34, 105
  %36 = and i32 %29, 16
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 99, i32 67
  %39 = and i32 %29, 2
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 116, i32 84
  %42 = and i32 %29, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 99, i32 67
  %45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.22, i32 noundef %25, i32 noundef %23, i32 noundef %33, ptr noundef nonnull @.str.45, i32 noundef %35, i32 noundef %38, i32 noundef %41, i32 noundef %44) #14
  br label %312

46:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16
  %47 = lshr i32 %27, 24
  %48 = trunc i32 %47 to i8
  %49 = icmp ult i8 %48, 37
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = ashr i32 %27, 24
  %52 = getelementptr inbounds [37 x ptr], ptr @switch.table.xhci_ring_trb_show, i32 0, i32 %51
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi ptr [ %53, %50 ], [ @.str.110, %46 ]
  %56 = and i32 %27, 16777215
  %57 = lshr i32 %29, 24
  %58 = lshr i32 %29, 16
  %59 = and i32 %58, 31
  %60 = trunc i32 %30 to i6
  %61 = xor i6 %60, -32
  %62 = icmp ult i6 %61, 8
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = sext i6 %61 to i32
  %65 = getelementptr inbounds [8 x ptr], ptr @switch.table.xhci_ring_trb_show.246, i32 0, i32 %64
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %63, %54
  %68 = phi ptr [ %66, %63 ], [ @.str.73, %54 ]
  %69 = and i32 %29, 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 101, i32 69
  %72 = and i32 %29, 1
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 99, i32 67
  %75 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.23, i32 noundef %25, i32 noundef %23, ptr noundef nonnull %55, i32 noundef %56, i32 noundef %57, i32 noundef %59, ptr noundef nonnull %68, i32 noundef %71, i32 noundef %74) #14
  br label %312

76:                                               ; preds = %16
  %77 = and i32 %23, 255
  %78 = lshr i32 %23, 8
  %79 = and i32 %78, 255
  %80 = lshr i32 %23, 24
  %81 = lshr i32 %23, 16
  %82 = and i32 %81, 255
  %83 = lshr i32 %25, 8
  %84 = and i32 %83, 255
  %85 = and i32 %25, 255
  %86 = lshr i32 %25, 16
  %87 = and i32 %27, 131071
  %88 = lshr i32 %27, 17
  %89 = and i32 %88, 31
  %90 = lshr i32 %27, 22
  %91 = and i32 %29, 64
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 105, i32 73
  %94 = and i32 %29, 32
  %95 = xor i32 %94, 105
  %96 = and i32 %29, 1
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i32 99, i32 67
  %99 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.24, i32 noundef %77, i32 noundef %79, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %85, i32 noundef %86, i32 noundef %87, i32 noundef %89, i32 noundef %90, ptr noundef nonnull @.str.41, i32 noundef %93, i32 noundef %95, i32 noundef %98) #14
  br label %312

100:                                              ; preds = %16
  %101 = and i32 %27, 131071
  %102 = lshr i32 %27, 17
  %103 = and i32 %102, 31
  %104 = lshr i32 %27, 22
  %105 = and i32 %29, 64
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 105, i32 73
  %108 = and i32 %29, 32
  %109 = xor i32 %108, 105
  %110 = and i32 %29, 16
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, i32 99, i32 67
  %113 = and i32 %29, 8
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 115, i32 83
  %116 = and i32 %29, 4
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, i32 105, i32 73
  %119 = and i32 %29, 2
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, i32 101, i32 69
  %122 = and i32 %29, 1
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i32 99, i32 67
  %125 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.25, i32 noundef %25, i32 noundef %23, i32 noundef %101, i32 noundef %103, i32 noundef %104, ptr noundef nonnull @.str.42, i32 noundef %107, i32 noundef %109, i32 noundef %112, i32 noundef %115, i32 noundef %118, i32 noundef %121, i32 noundef %124) #14
  br label %312

126:                                              ; preds = %16
  %127 = and i32 %27, 131071
  %128 = lshr i32 %27, 17
  %129 = and i32 %128, 31
  %130 = lshr i32 %27, 22
  %131 = and i32 %29, 32
  %132 = xor i32 %131, 105
  %133 = and i32 %29, 16
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %134, i32 99, i32 67
  %136 = and i32 %29, 2
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %137, i32 101, i32 69
  %139 = and i32 %29, 1
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %140, i32 99, i32 67
  %142 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.26, i32 noundef %25, i32 noundef %23, i32 noundef %127, i32 noundef %129, i32 noundef %130, ptr noundef nonnull @.str.43, i32 noundef %132, i32 noundef %135, i32 noundef %138, i32 noundef %141) #14
  br label %312

143:                                              ; preds = %16, %16, %16, %16
  %144 = and i32 %27, 131071
  %145 = lshr i32 %27, 17
  %146 = and i32 %145, 31
  %147 = lshr i32 %27, 22
  %148 = trunc i32 %30 to i6
  %149 = add i6 %148, -1
  %150 = icmp ult i6 %149, 8
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = sext i6 %149 to i32
  %153 = getelementptr inbounds [8 x ptr], ptr @switch.table.xhci_ring_trb_show.247, i32 0, i32 %152
  %154 = load ptr, ptr %153, align 4
  br label %155

155:                                              ; preds = %151, %143
  %156 = phi ptr [ %154, %151 ], [ @.str.73, %143 ]
  %157 = and i32 %29, 512
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, i32 98, i32 66
  %160 = and i32 %29, 64
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %161, i32 105, i32 73
  %163 = and i32 %29, 32
  %164 = xor i32 %163, 105
  %165 = and i32 %29, 16
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %166, i32 99, i32 67
  %168 = and i32 %29, 8
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %169, i32 115, i32 83
  %171 = and i32 %29, 4
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %172, i32 105, i32 73
  %174 = and i32 %29, 2
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %175, i32 101, i32 69
  %177 = and i32 %29, 1
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, i32 99, i32 67
  %180 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.27, i32 noundef %25, i32 noundef %23, i32 noundef %144, i32 noundef %146, i32 noundef %147, ptr noundef nonnull %156, i32 noundef %159, i32 noundef %162, i32 noundef %164, i32 noundef %167, i32 noundef %170, i32 noundef %173, i32 noundef %176, i32 noundef %179) #14
  br label %312

181:                                              ; preds = %16, %16
  %182 = trunc i32 %30 to i6
  %183 = add i6 %182, -9
  %184 = icmp ult i6 %183, 15
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = sext i6 %183 to i32
  %187 = getelementptr inbounds [15 x ptr], ptr @switch.table.xhci_ring_trb_show.248, i32 0, i32 %186
  %188 = load ptr, ptr %187, align 4
  br label %189

189:                                              ; preds = %185, %181
  %190 = phi ptr [ %188, %185 ], [ @.str.73, %181 ]
  %191 = and i32 %29, 1
  %192 = icmp eq i32 %191, 0
  %193 = select i1 %192, i32 99, i32 67
  %194 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.28, ptr noundef nonnull %190, i32 noundef %193) #14
  br label %312

195:                                              ; preds = %16, %16
  %196 = trunc i32 %30 to i6
  %197 = add i6 %196, -10
  %198 = icmp ult i6 %197, 10
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = sext i6 %197 to i32
  %201 = getelementptr inbounds [10 x ptr], ptr @switch.table.xhci_ring_trb_show.249, i32 0, i32 %200
  %202 = load ptr, ptr %201, align 4
  br label %203

203:                                              ; preds = %199, %195
  %204 = phi ptr [ %202, %199 ], [ @.str.73, %195 ]
  %205 = lshr i32 %29, 24
  %206 = and i32 %29, 1
  %207 = icmp eq i32 %206, 0
  %208 = select i1 %207, i32 99, i32 67
  %209 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.29, ptr noundef nonnull %204, i32 noundef %205, i32 noundef %208) #14
  br label %312

210:                                              ; preds = %16
  %211 = lshr i32 %29, 24
  %212 = and i32 %29, 512
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %213, i32 98, i32 66
  %215 = and i32 %29, 1
  %216 = icmp eq i32 %215, 0
  %217 = select i1 %216, i32 99, i32 67
  %218 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.50, i32 noundef %25, i32 noundef %23, i32 noundef %211, i32 noundef %214, i32 noundef %217) #14
  br label %312

219:                                              ; preds = %16
  %220 = lshr i32 %29, 24
  %221 = and i32 %29, 512
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, i32 100, i32 68
  %224 = and i32 %29, 1
  %225 = icmp eq i32 %224, 0
  %226 = select i1 %225, i32 99, i32 67
  %227 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.51, i32 noundef %25, i32 noundef %23, i32 noundef %220, i32 noundef %223, i32 noundef %226) #14
  br label %312

228:                                              ; preds = %16
  %229 = lshr i32 %29, 24
  %230 = and i32 %29, 1
  %231 = icmp eq i32 %230, 0
  %232 = select i1 %231, i32 99, i32 67
  %233 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.52, i32 noundef %25, i32 noundef %23, i32 noundef %229, i32 noundef %232) #14
  br label %312

234:                                              ; preds = %16
  %235 = lshr i32 %29, 24
  %236 = lshr i32 %29, 16
  %237 = and i32 %236, 31
  %238 = and i32 %29, 512
  %239 = icmp eq i32 %238, 0
  %240 = select i1 %239, i32 116, i32 84
  %241 = and i32 %29, 1
  %242 = icmp eq i32 %241, 0
  %243 = select i1 %242, i32 99, i32 67
  %244 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.53, i32 noundef %25, i32 noundef %23, i32 noundef %235, i32 noundef %237, i32 noundef %240, i32 noundef %243) #14
  br label %312

245:                                              ; preds = %16
  %246 = lshr i32 %29, 24
  %247 = lshr i32 %29, 23
  %248 = and i32 %247, 1
  %249 = lshr i32 %29, 16
  %250 = and i32 %249, 31
  %251 = and i32 %29, 1
  %252 = icmp eq i32 %251, 0
  %253 = select i1 %252, i32 99, i32 67
  %254 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.54, i32 noundef %246, i32 noundef %248, i32 noundef %250, i32 noundef %253) #14
  br label %312

255:                                              ; preds = %16
  %256 = lshr i32 %27, 16
  %257 = lshr i32 %29, 24
  %258 = lshr i32 %29, 16
  %259 = and i32 %258, 31
  %260 = and i32 %29, 1
  %261 = icmp eq i32 %260, 0
  %262 = select i1 %261, i32 99, i32 67
  %263 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.55, i32 noundef %25, i32 noundef %23, i32 noundef %256, i32 noundef %257, i32 noundef %259, i32 noundef %262) #14
  br label %312

264:                                              ; preds = %16
  %265 = lshr i32 %29, 24
  %266 = and i32 %29, 1
  %267 = icmp eq i32 %266, 0
  %268 = select i1 %267, i32 99, i32 67
  %269 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.56, i32 noundef %265, i32 noundef %268) #14
  br label %312

270:                                              ; preds = %16
  %271 = lshr i32 %27, 22
  %272 = lshr i32 %29, 16
  %273 = and i32 %272, 255
  %274 = and i32 %29, 1
  %275 = icmp eq i32 %274, 0
  %276 = select i1 %275, i32 99, i32 67
  %277 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.57, i32 noundef %25, i32 noundef %23, i32 noundef %271, i32 noundef %273, i32 noundef %276) #14
  br label %312

278:                                              ; preds = %16
  %279 = lshr i32 %29, 16
  %280 = and i32 %279, 4095
  %281 = and i32 %29, 1
  %282 = icmp eq i32 %281, 0
  %283 = select i1 %282, i32 99, i32 67
  %284 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.59, i32 noundef %280, i32 noundef %283) #14
  br label %312

285:                                              ; preds = %16
  %286 = lshr i32 %29, 24
  %287 = lshr i32 %29, 16
  %288 = and i32 %287, 15
  %289 = and i32 %29, 1
  %290 = icmp eq i32 %289, 0
  %291 = select i1 %290, i32 99, i32 67
  %292 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.60, i32 noundef %25, i32 noundef %23, i32 noundef %286, i32 noundef %288, i32 noundef %291) #14
  br label %312

293:                                              ; preds = %16
  %294 = and i32 %23, -32
  %295 = and i32 %23, 31
  %296 = lshr i32 %29, 24
  %297 = and i32 %29, 1
  %298 = icmp eq i32 %297, 0
  %299 = select i1 %298, i32 99, i32 67
  %300 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.61, i32 noundef %27, i32 noundef %25, i32 noundef %294, i32 noundef %295, i32 noundef %296, i32 noundef %299) #14
  br label %312

301:                                              ; preds = %16
  %302 = trunc i32 %30 to i6
  %303 = xor i6 %302, -32
  %304 = icmp ult i6 %303, -8
  br i1 %304, label %305, label %309

305:                                              ; preds = %301
  %306 = zext i6 %303 to i32
  %307 = getelementptr inbounds [56 x ptr], ptr @switch.table.xhci_ring_trb_show.250, i32 0, i32 %306
  %308 = load ptr, ptr %307, align 4
  br label %309

309:                                              ; preds = %305, %301
  %310 = phi ptr [ %308, %305 ], [ @.str.73, %301 ]
  %311 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 500, ptr noundef nonnull @.str.39, ptr noundef nonnull %310, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #14
  br label %312

312:                                              ; preds = %309, %293, %285, %278, %270, %264, %255, %245, %234, %228, %219, %210, %203, %189, %155, %126, %100, %76, %67, %32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %313 = add nuw nsw i32 %17, 1
  %314 = icmp eq i32 %313, 256
  br i1 %314, label %315, label %16

315:                                              ; preds = %312
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %316 = getelementptr inbounds %struct.xhci_segment, ptr %14, i32 0, i32 1
  %317 = add nuw i32 %13, 1
  %318 = load i32, ptr %8, align 4
  %319 = icmp ult i32 %317, %318
  br i1 %319, label %11, label %320

320:                                              ; preds = %315, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_trb_virt_to_dma(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_ring_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8, !prof !15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.dentry_operations, ptr %12, i32 0, i32 12
  %14 = load ptr, ptr %13, align 16
  %15 = tail call ptr %14(ptr noundef %4, ptr noundef %10) #14
  br label %16

16:                                               ; preds = %8, %2
  %17 = phi ptr [ %15, %8 ], [ %4, %2 ]
  %18 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 6
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.15, ptr noundef %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.16, ptr noundef %18)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.17, ptr noundef %18)
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 2, i32 3
  br label %28

28:                                               ; preds = %24, %21, %16
  %29 = phi i32 [ 0, %16 ], [ 1, %21 ], [ %27, %24 ]
  %30 = getelementptr [4 x %struct.xhci_file_map], ptr @ring_files, i32 0, i32 %29, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @single_open(ptr noundef %1, ptr noundef %31, ptr noundef %33) #14
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_stream_id_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #14
  store i16 0, ptr %5, align 2, !annotation !11
  %10 = getelementptr inbounds %struct.xhci_ep_priv, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %4
  %14 = call i32 @kstrtou16_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i16, ptr %5, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp eq i16 %17, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.xhci_stream_info, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, %18
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.xhci_ep_priv, ptr %9, i32 0, i32 4
  store i32 %18, ptr %26, align 4
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr ptr, ptr %27, i32 %18
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.xhci_ep_priv, ptr %9, i32 0, i32 3
  store ptr %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %25, %20, %16, %13, %4
  %32 = phi i32 [ %2, %25 ], [ -1, %4 ], [ %14, %13 ], [ -22, %20 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #14
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_stream_id_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @xhci_stream_id_show, ptr noundef %4) #14
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_stream_id_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.xhci_ep_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.xhci_ep_priv, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xhci_stream_info, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.111, i32 noundef %10, i32 noundef %13) #14
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i32 [ 0, %8 ], [ -1, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_stream_context_array_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @xhci_stream_context_array_show, ptr noundef %4) #14
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_stream_context_array_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %6 = getelementptr inbounds %struct.xhci_ep_priv, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.xhci_stream_info, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.xhci_stream_info, ptr %7, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.112, i32 noundef %11, i32 noundef %13) #14
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.xhci_stream_info, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %34, %9
  %19 = phi ptr [ %36, %34 ], [ %14, %9 ]
  %20 = phi i32 [ %35, %34 ], [ 0, %9 ]
  %21 = getelementptr inbounds %struct.xhci_stream_info, ptr %19, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.xhci_stream_ctx, ptr %22, i32 %20
  %24 = getelementptr inbounds %struct.xhci_stream_info, ptr %19, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %20, 4
  %27 = add i32 %25, %26
  store i32 %27, ptr %3, align 4
  %28 = getelementptr inbounds %struct.xhci_stream_info, ptr %19, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %20, %29
  %31 = load i64, ptr %23, align 8
  br i1 %30, label %32, label %33

32:                                               ; preds = %18
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.113, ptr noundef nonnull %3, i32 noundef %20, i64 noundef %31) #14
  br label %34

33:                                               ; preds = %18
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.114, ptr noundef nonnull %3, i64 noundef %31) #14
  br label %34

34:                                               ; preds = %33, %32
  %35 = add nuw i32 %20, 1
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr inbounds %struct.xhci_stream_info, ptr %36, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %18, label %40

40:                                               ; preds = %34, %9, %2
  %41 = phi i32 [ -1, %2 ], [ 0, %9 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_device_name_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.xhci_slot_priv, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %14, %12 ], [ %10, %2 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.118, ptr noundef %16) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_slot_context_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [500 x i8], align 1
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.xhci_slot_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(500) %3, i8 0, i32 500, i1 false), !annotation !11
  %8 = getelementptr inbounds %struct.xhci_virt_device, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 12
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %11) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 0, i32 25
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi ptr [ %16, %14 ], [ %11, %2 ]
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %18, i32 0, i32 29
  %20 = getelementptr inbounds %struct.xhci_virt_device, ptr %7, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @xhci_get_slot_ctx(ptr noundef %19, ptr noundef %21) #14
  %23 = load ptr, ptr %20, align 4
  %24 = load i32, ptr %22, align 4
  %25 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %22, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %22, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %22, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %24, 15728640
  %32 = add nsw i32 %31, -1048576
  %33 = icmp ult i32 %32, 5242880
  br i1 %33, label %34, label %38

34:                                               ; preds = %17
  %35 = lshr exact i32 %32, 20
  %36 = getelementptr inbounds [5 x ptr], ptr @switch.table.xhci_slot_context_show, i32 0, i32 %35
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %34, %17
  %39 = phi ptr [ %37, %34 ], [ @.str.125, %17 ]
  %40 = and i32 %24, 1048575
  %41 = and i32 %24, 33554432
  %42 = and i32 %24, 67108864
  %43 = icmp eq i32 %41, 0
  %44 = select i1 %43, ptr @.str.127, ptr @.str.126
  %45 = icmp eq i32 %42, 0
  %46 = select i1 %45, ptr @.str.127, ptr @.str.128
  %47 = lshr i32 %24, 27
  %48 = and i32 %26, 65535
  %49 = lshr i32 %26, 16
  %50 = and i32 %49, 255
  %51 = lshr i32 %26, 24
  %52 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.119, i32 noundef %40, ptr noundef nonnull %39, ptr noundef nonnull %44, ptr noundef nonnull %46, i32 noundef %47, i32 noundef %48, i32 noundef %50, i32 noundef %51) #14
  %53 = icmp ult i32 %30, 536870912
  br i1 %53, label %54, label %58

54:                                               ; preds = %38
  %55 = lshr i32 %30, 27
  %56 = getelementptr inbounds [4 x ptr], ptr @switch.table.xhci_slot_context_show.251, i32 0, i32 %55
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %54, %38
  %59 = phi ptr [ %57, %54 ], [ @.str.134, %38 ]
  %60 = getelementptr inbounds %struct.xhci_container_ctx, ptr %23, i32 0, i32 3
  %61 = and i32 %30, 255
  %62 = lshr i32 %28, 22
  %63 = lshr i32 %28, 16
  %64 = and i32 %63, 3
  %65 = lshr i32 %28, 8
  %66 = and i32 %65, 255
  %67 = and i32 %28, 255
  %68 = getelementptr i8, ptr %3, i32 %52
  %69 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %68, ptr noundef nonnull @.str.129, i32 noundef %67, i32 noundef %66, i32 noundef %64, i32 noundef %62, i32 noundef %61, ptr noundef nonnull %59) #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %60, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_endpoint_context_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [500 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !11
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.xhci_slot_priv, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(500) %4, i8 0, i32 500, i1 false), !annotation !11
  %9 = getelementptr inbounds %struct.xhci_virt_device, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 12
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %12) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 0, i32 25
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi ptr [ %17, %15 ], [ %12, %2 ]
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %19, i32 0, i32 29
  %21 = getelementptr inbounds %struct.xhci_virt_device, ptr %8, i32 0, i32 2
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %19, i32 1, i32 0, i32 9, i32 3
  br label %23

23:                                               ; preds = %23, %18
  %24 = phi i32 [ 0, %18 ], [ %30, %23 ]
  %25 = load ptr, ptr %21, align 4
  %26 = call ptr @xhci_get_ep_ctx(ptr noundef %20, ptr noundef %25, i32 noundef %24) #14
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr inbounds %struct.xhci_container_ctx, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = add nuw nsw i32 %24, 1
  %31 = load i32, ptr %22, align 8
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 32, i32 64
  %35 = mul i32 %34, %30
  %36 = add i32 %35, %29
  store i32 %36, ptr %3, align 4
  %37 = load i32, ptr %26, align 8
  %38 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %26, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %26, i32 0, i32 2
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %26, i32 0, i32 3
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %37, 8
  %45 = and i32 %44, 16711680
  %46 = lshr i32 %43, 16
  %47 = or i32 %46, %45
  %48 = lshr i32 %37, 10
  %49 = and i32 %48, 31
  %50 = lshr i32 %37, 16
  %51 = and i32 %44, 3
  %52 = add nuw nsw i32 %51, 1
  %53 = and i32 %37, 32768
  %54 = icmp eq i32 %53, 0
  %55 = lshr i32 %39, 1
  %56 = and i32 %55, 3
  %57 = and i32 %37, 7
  %58 = xor i32 %57, 4
  %59 = getelementptr inbounds [8 x ptr], ptr @switch.table.xhci_endpoint_context_show, i32 0, i32 %58
  %60 = load ptr, ptr %59, align 4
  %61 = select i1 %54, ptr @.str.127, ptr @.str.136
  %62 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.135, ptr noundef nonnull %60, i32 noundef %52, i32 noundef %49, ptr noundef nonnull %61) #14
  %63 = getelementptr i8, ptr %4, i32 %62
  %64 = and i32 %50, 255
  %65 = shl i32 125, %64
  %66 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %63, ptr noundef nonnull @.str.137, i32 noundef %65, i32 noundef %47, i32 noundef %56) #14
  %67 = lshr i32 %39, 3
  %68 = and i32 %67, 7
  %69 = xor i32 %68, 4
  %70 = getelementptr inbounds [8 x ptr], ptr @switch.table.xhci_endpoint_context_show.252, i32 0, i32 %69
  %71 = load ptr, ptr %70, align 4
  %72 = add i32 %66, %62
  %73 = getelementptr i8, ptr %4, i32 %72
  %74 = lshr i32 %39, 16
  %75 = lshr i32 %39, 8
  %76 = and i32 %39, 128
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, ptr @.str.127, ptr @.str.139
  %79 = and i32 %75, 255
  %80 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %73, ptr noundef nonnull @.str.138, ptr noundef nonnull %71, ptr noundef nonnull %78, i32 noundef %79, i32 noundef %74, i64 noundef %41) #14
  %81 = add i32 %80, %72
  %82 = getelementptr i8, ptr %4, i32 %81
  %83 = and i32 %43, 65535
  %84 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %82, ptr noundef nonnull @.str.140, i32 noundef %83) #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %85 = icmp eq i32 %30, 31
  br i1 %85, label %86, label %23

86:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_slot_ctx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_ep_ctx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_context_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8, !prof !15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.dentry_operations, ptr %12, i32 0, i32 12
  %14 = load ptr, ptr %13, align 16
  %15 = tail call ptr %14(ptr noundef %4, ptr noundef %10) #14
  br label %16

16:                                               ; preds = %8, %2
  %17 = phi ptr [ %15, %8 ], [ %4, %2 ]
  %18 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 6
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.115, ptr noundef %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.116, ptr noundef %18)
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 1, i32 2
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i32 [ 0, %16 ], [ %24, %21 ]
  %27 = getelementptr [3 x %struct.xhci_file_map], ptr @context_files, i32 0, i32 %26, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @single_open(ptr noundef %1, ptr noundef %28, ptr noundef %30) #14
  ret i32 %31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_port_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [32 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.xhci_port, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.xhci_hub, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %13) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %13, i32 0, i32 25
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi ptr [ %18, %16 ], [ %13, %4 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !11
  %21 = tail call i32 @llvm.umin.i32(i32 %2, i32 31)
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %21, i32 -1090519040) #15, !srcloc !16
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32, !prof !15

25:                                               ; preds = %19
  %26 = tail call ptr @llvm.thread.pointer() #14
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %27) #16, !srcloc !17
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #14, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !19
  %31 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %21) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #14, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !19
  br label %32

32:                                               ; preds = %25, %19
  %33 = phi i32 [ %31, %25 ], [ %21, %19 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35, !prof !15

35:                                               ; preds = %32
  %36 = sub i32 %21, %33
  %37 = getelementptr i8, ptr %5, i32 %36
  call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %33, i1 false) #14
  br label %59

38:                                               ; preds = %32
  %39 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %5, ptr noundef nonnull dereferenceable(10) @.str.208, i32 10)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 1, i32 0, i32 9, i32 3, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 1, i32 0, i32 10
  %48 = call i32 @_raw_spin_lock_irqsave(ptr noundef %47) #14
  %49 = load ptr, ptr %9, align 4
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #14, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !20
  %51 = and i32 %50, 480
  %52 = icmp eq i32 %51, 160
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %48) #14
  br label %59

54:                                               ; preds = %46
  %55 = call i32 @xhci_port_state_to_neutral(i32 noundef %50) #14
  %56 = and i32 %55, -66017
  %57 = or i32 %56, 65856
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !21
  call void @arm_heavy_mb() #14
  %58 = load ptr, ptr %9, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %57) #14, !srcloc !22
  call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %48) #14
  br label %59

59:                                               ; preds = %54, %53, %41, %38, %35
  %60 = phi i32 [ -1, %53 ], [ %2, %54 ], [ %2, %41 ], [ -22, %38 ], [ -14, %35 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_port_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @xhci_portsc_show, ptr noundef %4) #14
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_port_state_to_neutral(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_portsc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [500 x i8], align 1
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(500) %3, i8 0, i32 500, i1 false), !annotation !11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !23
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.213, ptr @.str.212
  %11 = and i32 %7, 1
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr @.str.215, ptr @.str.214
  %14 = and i32 %7, 2
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, ptr @.str.217, ptr @.str.216
  %17 = lshr i32 %7, 5
  %18 = and i32 %17, 15
  %19 = getelementptr inbounds [16 x ptr], ptr @switch.table.xhci_portsc_show, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = lshr i32 %7, 10
  %22 = and i32 %21, 15
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.211, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %16, ptr noundef nonnull %20, i32 noundef %22) #14
  %24 = and i32 %7, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = getelementptr i8, ptr %3, i32 %23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %27, ptr noundef nonnull align 1 dereferenceable(13) @.str.218, i32 13, i1 false) #14
  %28 = add i32 %23, 12
  br label %29

29:                                               ; preds = %26, %2
  %30 = phi i32 [ %28, %26 ], [ %23, %2 ]
  %31 = and i32 %7, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %3, i32 %30
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %34, ptr noundef nonnull align 1 dereferenceable(10) @.str.219, i32 10, i1 false) #14
  %35 = add i32 %30, 9
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i32 [ %35, %33 ], [ %30, %29 ]
  %38 = getelementptr i8, ptr %3, i32 %37
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %38, ptr noundef nonnull align 1 dereferenceable(9) @.str.220, i32 9, i1 false) #14
  %39 = add i32 %37, 8
  %40 = and i32 %7, 131072
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %3, i32 %39
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %43, ptr noundef nonnull align 1 dereferenceable(5) @.str.221, i32 5, i1 false) #14
  %44 = add i32 %37, 12
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi i32 [ %44, %42 ], [ %39, %36 ]
  %47 = and i32 %7, 262144
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %3, i32 %46
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %50, ptr noundef nonnull align 1 dereferenceable(5) @.str.222, i32 5, i1 false) #14
  %51 = add i32 %46, 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i32 [ %51, %49 ], [ %46, %45 ]
  %54 = and i32 %7, 524288
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %3, i32 %53
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %57, ptr noundef nonnull align 1 dereferenceable(5) @.str.223, i32 5, i1 false) #14
  %58 = add i32 %53, 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %58, %56 ], [ %53, %52 ]
  %61 = and i32 %7, 1048576
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %3, i32 %60
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %64, ptr noundef nonnull align 1 dereferenceable(5) @.str.224, i32 5, i1 false) #14
  %65 = add i32 %60, 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i32 [ %65, %63 ], [ %60, %59 ]
  %68 = and i32 %7, 2097152
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %3, i32 %67
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %71, ptr noundef nonnull align 1 dereferenceable(5) @.str.225, i32 5, i1 false) #14
  %72 = add i32 %67, 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi i32 [ %72, %70 ], [ %67, %66 ]
  %75 = and i32 %7, 4194304
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = getelementptr i8, ptr %3, i32 %74
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %78, ptr noundef nonnull align 1 dereferenceable(5) @.str.226, i32 5, i1 false) #14
  %79 = add i32 %74, 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi i32 [ %79, %77 ], [ %74, %73 ]
  %82 = and i32 %7, 8388608
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %3, i32 %81
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %85, ptr noundef nonnull align 1 dereferenceable(5) @.str.227, i32 5, i1 false) #14
  %86 = add i32 %81, 4
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i32 [ %86, %84 ], [ %81, %80 ]
  %89 = and i32 %7, 16777216
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = getelementptr i8, ptr %3, i32 %88
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %92, ptr noundef nonnull align 1 dereferenceable(5) @.str.228, i32 5, i1 false) #14
  %93 = add i32 %88, 4
  br label %94

94:                                               ; preds = %91, %87
  %95 = phi i32 [ %93, %91 ], [ %88, %87 ]
  %96 = getelementptr i8, ptr %3, i32 %95
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %96, ptr noundef nonnull align 1 dereferenceable(7) @.str.229, i32 7, i1 false) #14
  %97 = add i32 %95, 6
  %98 = and i32 %7, 33554432
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = getelementptr i8, ptr %3, i32 %97
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %101, ptr noundef nonnull align 1 dereferenceable(5) @.str.230, i32 5, i1 false) #14
  %102 = add i32 %95, 10
  br label %103

103:                                              ; preds = %100, %94
  %104 = phi i32 [ %102, %100 ], [ %97, %94 ]
  %105 = and i32 %7, 67108864
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = getelementptr i8, ptr %3, i32 %104
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %108, ptr noundef nonnull align 1 dereferenceable(5) @.str.231, i32 5, i1 false) #14
  %109 = add i32 %104, 4
  br label %110

110:                                              ; preds = %107, %103
  %111 = phi i32 [ %109, %107 ], [ %104, %103 ]
  %112 = and i32 %7, 134217728
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = getelementptr i8, ptr %3, i32 %111
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %115, ptr noundef nonnull align 1 dereferenceable(5) @.str.232, i32 5, i1 false) #14
  br label %116

116:                                              ; preds = %114, %110
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.118, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }

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
!8 = !{i64 3538850}
!9 = !{i64 2152632823}
!10 = !{i64 2152633581}
!11 = !{!"auto-init"}
!12 = !{i64 2152562842}
!13 = !{i64 2152563187}
!14 = !{i64 2152619504}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2150667887, i64 2150667912}
!17 = !{i64 3163999}
!18 = !{i64 3164196}
!19 = !{i64 2150649475}
!20 = !{i64 2152625236}
!21 = !{i64 2152625473}
!22 = !{i64 3538432}
!23 = !{i64 2152622729}
