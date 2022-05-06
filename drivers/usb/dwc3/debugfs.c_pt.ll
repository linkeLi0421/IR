; ModuleID = '/llk/IR/drivers/usb/dwc3/debugfs.c_pt.bc'
source_filename = "../drivers/usb/dwc3/debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.debugfs_reg32 = type { ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dwc3_ep_file_map = type { [25 x i8], ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dwc3_ep = type { %struct.usb_ep, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, i8, i8, i32, i32, [20 x i8], i8, i8, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dwc3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i8, ptr, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dwc3_hwparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.dwc3_trb = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@dwc3_regs = internal constant [304 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.24, i32 49408 }, %struct.debugfs_reg32 { ptr @.str.25, i32 49412 }, %struct.debugfs_reg32 { ptr @.str.26, i32 49416 }, %struct.debugfs_reg32 { ptr @.str.27, i32 49420 }, %struct.debugfs_reg32 { ptr @.str.28, i32 49424 }, %struct.debugfs_reg32 { ptr @.str.29, i32 49428 }, %struct.debugfs_reg32 { ptr @.str.30, i32 49432 }, %struct.debugfs_reg32 { ptr @.str.31, i32 49436 }, %struct.debugfs_reg32 { ptr @.str.32, i32 49440 }, %struct.debugfs_reg32 { ptr @.str.33, i32 49444 }, %struct.debugfs_reg32 { ptr @.str.34, i32 49448 }, %struct.debugfs_reg32 { ptr @.str.35, i32 49452 }, %struct.debugfs_reg32 { ptr @.str.36, i32 49456 }, %struct.debugfs_reg32 { ptr @.str.37, i32 49460 }, %struct.debugfs_reg32 { ptr @.str.38, i32 49464 }, %struct.debugfs_reg32 { ptr @.str.39, i32 49468 }, %struct.debugfs_reg32 { ptr @.str.40, i32 49472 }, %struct.debugfs_reg32 { ptr @.str.41, i32 49476 }, %struct.debugfs_reg32 { ptr @.str.42, i32 49480 }, %struct.debugfs_reg32 { ptr @.str.43, i32 49484 }, %struct.debugfs_reg32 { ptr @.str.44, i32 49488 }, %struct.debugfs_reg32 { ptr @.str.45, i32 49492 }, %struct.debugfs_reg32 { ptr @.str.46, i32 49496 }, %struct.debugfs_reg32 { ptr @.str.47, i32 49500 }, %struct.debugfs_reg32 { ptr @.str.48, i32 49504 }, %struct.debugfs_reg32 { ptr @.str.49, i32 49508 }, %struct.debugfs_reg32 { ptr @.str.50, i32 49516 }, %struct.debugfs_reg32 { ptr @.str.51, i32 49536 }, %struct.debugfs_reg32 { ptr @.str.52, i32 49540 }, %struct.debugfs_reg32 { ptr @.str.53, i32 49544 }, %struct.debugfs_reg32 { ptr @.str.54, i32 49548 }, %struct.debugfs_reg32 { ptr @.str.55, i32 49664 }, %struct.debugfs_reg32 { ptr @.str.56, i32 49668 }, %struct.debugfs_reg32 { ptr @.str.57, i32 49672 }, %struct.debugfs_reg32 { ptr @.str.58, i32 49676 }, %struct.debugfs_reg32 { ptr @.str.59, i32 49680 }, %struct.debugfs_reg32 { ptr @.str.60, i32 49684 }, %struct.debugfs_reg32 { ptr @.str.61, i32 49688 }, %struct.debugfs_reg32 { ptr @.str.62, i32 49692 }, %struct.debugfs_reg32 { ptr @.str.63, i32 49696 }, %struct.debugfs_reg32 { ptr @.str.64, i32 49700 }, %struct.debugfs_reg32 { ptr @.str.65, i32 49704 }, %struct.debugfs_reg32 { ptr @.str.66, i32 49708 }, %struct.debugfs_reg32 { ptr @.str.67, i32 49712 }, %struct.debugfs_reg32 { ptr @.str.68, i32 49716 }, %struct.debugfs_reg32 { ptr @.str.69, i32 49720 }, %struct.debugfs_reg32 { ptr @.str.70, i32 49724 }, %struct.debugfs_reg32 { ptr @.str.71, i32 49728 }, %struct.debugfs_reg32 { ptr @.str.72, i32 49732 }, %struct.debugfs_reg32 { ptr @.str.73, i32 49736 }, %struct.debugfs_reg32 { ptr @.str.74, i32 49740 }, %struct.debugfs_reg32 { ptr @.str.75, i32 49744 }, %struct.debugfs_reg32 { ptr @.str.76, i32 49748 }, %struct.debugfs_reg32 { ptr @.str.77, i32 49752 }, %struct.debugfs_reg32 { ptr @.str.78, i32 49756 }, %struct.debugfs_reg32 { ptr @.str.79, i32 49760 }, %struct.debugfs_reg32 { ptr @.str.80, i32 49764 }, %struct.debugfs_reg32 { ptr @.str.81, i32 49768 }, %struct.debugfs_reg32 { ptr @.str.82, i32 49772 }, %struct.debugfs_reg32 { ptr @.str.83, i32 49776 }, %struct.debugfs_reg32 { ptr @.str.84, i32 49780 }, %struct.debugfs_reg32 { ptr @.str.85, i32 49784 }, %struct.debugfs_reg32 { ptr @.str.86, i32 49788 }, %struct.debugfs_reg32 { ptr @.str.87, i32 49792 }, %struct.debugfs_reg32 { ptr @.str.88, i32 49796 }, %struct.debugfs_reg32 { ptr @.str.89, i32 49800 }, %struct.debugfs_reg32 { ptr @.str.90, i32 49804 }, %struct.debugfs_reg32 { ptr @.str.91, i32 49808 }, %struct.debugfs_reg32 { ptr @.str.92, i32 49812 }, %struct.debugfs_reg32 { ptr @.str.93, i32 49816 }, %struct.debugfs_reg32 { ptr @.str.94, i32 49820 }, %struct.debugfs_reg32 { ptr @.str.95, i32 49824 }, %struct.debugfs_reg32 { ptr @.str.96, i32 49828 }, %struct.debugfs_reg32 { ptr @.str.97, i32 49832 }, %struct.debugfs_reg32 { ptr @.str.98, i32 49836 }, %struct.debugfs_reg32 { ptr @.str.99, i32 49840 }, %struct.debugfs_reg32 { ptr @.str.100, i32 49844 }, %struct.debugfs_reg32 { ptr @.str.101, i32 49848 }, %struct.debugfs_reg32 { ptr @.str.102, i32 49852 }, %struct.debugfs_reg32 { ptr @.str.103, i32 49856 }, %struct.debugfs_reg32 { ptr @.str.104, i32 49860 }, %struct.debugfs_reg32 { ptr @.str.105, i32 49864 }, %struct.debugfs_reg32 { ptr @.str.106, i32 49868 }, %struct.debugfs_reg32 { ptr @.str.107, i32 49872 }, %struct.debugfs_reg32 { ptr @.str.108, i32 49876 }, %struct.debugfs_reg32 { ptr @.str.109, i32 49880 }, %struct.debugfs_reg32 { ptr @.str.110, i32 49884 }, %struct.debugfs_reg32 { ptr @.str.111, i32 49888 }, %struct.debugfs_reg32 { ptr @.str.112, i32 49892 }, %struct.debugfs_reg32 { ptr @.str.113, i32 49896 }, %struct.debugfs_reg32 { ptr @.str.114, i32 49900 }, %struct.debugfs_reg32 { ptr @.str.115, i32 49904 }, %struct.debugfs_reg32 { ptr @.str.116, i32 49908 }, %struct.debugfs_reg32 { ptr @.str.117, i32 49912 }, %struct.debugfs_reg32 { ptr @.str.118, i32 49916 }, %struct.debugfs_reg32 { ptr @.str.119, i32 49920 }, %struct.debugfs_reg32 { ptr @.str.120, i32 49924 }, %struct.debugfs_reg32 { ptr @.str.121, i32 49928 }, %struct.debugfs_reg32 { ptr @.str.122, i32 49932 }, %struct.debugfs_reg32 { ptr @.str.123, i32 49936 }, %struct.debugfs_reg32 { ptr @.str.124, i32 49940 }, %struct.debugfs_reg32 { ptr @.str.125, i32 49944 }, %struct.debugfs_reg32 { ptr @.str.126, i32 49948 }, %struct.debugfs_reg32 { ptr @.str.127, i32 49952 }, %struct.debugfs_reg32 { ptr @.str.128, i32 49956 }, %struct.debugfs_reg32 { ptr @.str.129, i32 49960 }, %struct.debugfs_reg32 { ptr @.str.130, i32 49964 }, %struct.debugfs_reg32 { ptr @.str.131, i32 49968 }, %struct.debugfs_reg32 { ptr @.str.132, i32 49972 }, %struct.debugfs_reg32 { ptr @.str.133, i32 49976 }, %struct.debugfs_reg32 { ptr @.str.134, i32 49980 }, %struct.debugfs_reg32 { ptr @.str.135, i32 49984 }, %struct.debugfs_reg32 { ptr @.str.136, i32 49988 }, %struct.debugfs_reg32 { ptr @.str.137, i32 49992 }, %struct.debugfs_reg32 { ptr @.str.138, i32 49996 }, %struct.debugfs_reg32 { ptr @.str.139, i32 50000 }, %struct.debugfs_reg32 { ptr @.str.140, i32 50004 }, %struct.debugfs_reg32 { ptr @.str.141, i32 50008 }, %struct.debugfs_reg32 { ptr @.str.142, i32 50012 }, %struct.debugfs_reg32 { ptr @.str.143, i32 50016 }, %struct.debugfs_reg32 { ptr @.str.144, i32 50020 }, %struct.debugfs_reg32 { ptr @.str.145, i32 50024 }, %struct.debugfs_reg32 { ptr @.str.146, i32 50028 }, %struct.debugfs_reg32 { ptr @.str.147, i32 50032 }, %struct.debugfs_reg32 { ptr @.str.148, i32 50036 }, %struct.debugfs_reg32 { ptr @.str.149, i32 50040 }, %struct.debugfs_reg32 { ptr @.str.150, i32 50044 }, %struct.debugfs_reg32 { ptr @.str.151, i32 50048 }, %struct.debugfs_reg32 { ptr @.str.152, i32 50052 }, %struct.debugfs_reg32 { ptr @.str.153, i32 50056 }, %struct.debugfs_reg32 { ptr @.str.154, i32 50060 }, %struct.debugfs_reg32 { ptr @.str.155, i32 50064 }, %struct.debugfs_reg32 { ptr @.str.156, i32 50068 }, %struct.debugfs_reg32 { ptr @.str.157, i32 50072 }, %struct.debugfs_reg32 { ptr @.str.158, i32 50076 }, %struct.debugfs_reg32 { ptr @.str.159, i32 50080 }, %struct.debugfs_reg32 { ptr @.str.160, i32 50084 }, %struct.debugfs_reg32 { ptr @.str.161, i32 50088 }, %struct.debugfs_reg32 { ptr @.str.162, i32 50092 }, %struct.debugfs_reg32 { ptr @.str.163, i32 50096 }, %struct.debugfs_reg32 { ptr @.str.164, i32 50100 }, %struct.debugfs_reg32 { ptr @.str.165, i32 50104 }, %struct.debugfs_reg32 { ptr @.str.166, i32 50108 }, %struct.debugfs_reg32 { ptr @.str.167, i32 50112 }, %struct.debugfs_reg32 { ptr @.str.168, i32 50116 }, %struct.debugfs_reg32 { ptr @.str.169, i32 50120 }, %struct.debugfs_reg32 { ptr @.str.170, i32 50124 }, %struct.debugfs_reg32 { ptr @.str.171, i32 50128 }, %struct.debugfs_reg32 { ptr @.str.172, i32 50132 }, %struct.debugfs_reg32 { ptr @.str.173, i32 50136 }, %struct.debugfs_reg32 { ptr @.str.174, i32 50140 }, %struct.debugfs_reg32 { ptr @.str.175, i32 50144 }, %struct.debugfs_reg32 { ptr @.str.176, i32 50148 }, %struct.debugfs_reg32 { ptr @.str.177, i32 50152 }, %struct.debugfs_reg32 { ptr @.str.178, i32 50156 }, %struct.debugfs_reg32 { ptr @.str.179, i32 50160 }, %struct.debugfs_reg32 { ptr @.str.180, i32 50164 }, %struct.debugfs_reg32 { ptr @.str.181, i32 50168 }, %struct.debugfs_reg32 { ptr @.str.182, i32 50172 }, %struct.debugfs_reg32 { ptr @.str.183, i32 50176 }, %struct.debugfs_reg32 { ptr @.str.184, i32 50180 }, %struct.debugfs_reg32 { ptr @.str.185, i32 50184 }, %struct.debugfs_reg32 { ptr @.str.186, i32 50188 }, %struct.debugfs_reg32 { ptr @.str.187, i32 50688 }, %struct.debugfs_reg32 { ptr @.str.188, i32 50944 }, %struct.debugfs_reg32 { ptr @.str.189, i32 50948 }, %struct.debugfs_reg32 { ptr @.str.190, i32 50952 }, %struct.debugfs_reg32 { ptr @.str.191, i32 50956 }, %struct.debugfs_reg32 { ptr @.str.192, i32 50960 }, %struct.debugfs_reg32 { ptr @.str.193, i32 50964 }, %struct.debugfs_reg32 { ptr @.str.194, i32 50976 }, %struct.debugfs_reg32 { ptr @.str.195, i32 51200 }, %struct.debugfs_reg32 { ptr @.str.196, i32 51204 }, %struct.debugfs_reg32 { ptr @.str.197, i32 51208 }, %struct.debugfs_reg32 { ptr @.str.198, i32 51212 }, %struct.debugfs_reg32 { ptr @.str.199, i32 51216 }, %struct.debugfs_reg32 { ptr @.str.200, i32 51220 }, %struct.debugfs_reg32 { ptr @.str.201, i32 51224 }, %struct.debugfs_reg32 { ptr @.str.202, i32 51228 }, %struct.debugfs_reg32 { ptr @.str.203, i32 51232 }, %struct.debugfs_reg32 { ptr @.str.204, i32 51236 }, %struct.debugfs_reg32 { ptr @.str.205, i32 51240 }, %struct.debugfs_reg32 { ptr @.str.206, i32 51244 }, %struct.debugfs_reg32 { ptr @.str.207, i32 51248 }, %struct.debugfs_reg32 { ptr @.str.208, i32 51252 }, %struct.debugfs_reg32 { ptr @.str.209, i32 51256 }, %struct.debugfs_reg32 { ptr @.str.210, i32 51260 }, %struct.debugfs_reg32 { ptr @.str.211, i32 51264 }, %struct.debugfs_reg32 { ptr @.str.212, i32 51268 }, %struct.debugfs_reg32 { ptr @.str.213, i32 51272 }, %struct.debugfs_reg32 { ptr @.str.214, i32 51276 }, %struct.debugfs_reg32 { ptr @.str.215, i32 51280 }, %struct.debugfs_reg32 { ptr @.str.216, i32 51284 }, %struct.debugfs_reg32 { ptr @.str.217, i32 51288 }, %struct.debugfs_reg32 { ptr @.str.218, i32 51292 }, %struct.debugfs_reg32 { ptr @.str.219, i32 51296 }, %struct.debugfs_reg32 { ptr @.str.220, i32 51300 }, %struct.debugfs_reg32 { ptr @.str.221, i32 51304 }, %struct.debugfs_reg32 { ptr @.str.222, i32 51308 }, %struct.debugfs_reg32 { ptr @.str.223, i32 51312 }, %struct.debugfs_reg32 { ptr @.str.224, i32 51316 }, %struct.debugfs_reg32 { ptr @.str.225, i32 51320 }, %struct.debugfs_reg32 { ptr @.str.226, i32 51324 }, %struct.debugfs_reg32 { ptr @.str.227, i32 51328 }, %struct.debugfs_reg32 { ptr @.str.228, i32 51332 }, %struct.debugfs_reg32 { ptr @.str.229, i32 51336 }, %struct.debugfs_reg32 { ptr @.str.230, i32 51340 }, %struct.debugfs_reg32 { ptr @.str.231, i32 51344 }, %struct.debugfs_reg32 { ptr @.str.232, i32 51348 }, %struct.debugfs_reg32 { ptr @.str.233, i32 51352 }, %struct.debugfs_reg32 { ptr @.str.234, i32 51356 }, %struct.debugfs_reg32 { ptr @.str.235, i32 51360 }, %struct.debugfs_reg32 { ptr @.str.236, i32 51364 }, %struct.debugfs_reg32 { ptr @.str.237, i32 51368 }, %struct.debugfs_reg32 { ptr @.str.238, i32 51372 }, %struct.debugfs_reg32 { ptr @.str.239, i32 51376 }, %struct.debugfs_reg32 { ptr @.str.240, i32 51380 }, %struct.debugfs_reg32 { ptr @.str.241, i32 51384 }, %struct.debugfs_reg32 { ptr @.str.242, i32 51388 }, %struct.debugfs_reg32 { ptr @.str.243, i32 51392 }, %struct.debugfs_reg32 { ptr @.str.244, i32 51396 }, %struct.debugfs_reg32 { ptr @.str.245, i32 51400 }, %struct.debugfs_reg32 { ptr @.str.246, i32 51404 }, %struct.debugfs_reg32 { ptr @.str.247, i32 51408 }, %struct.debugfs_reg32 { ptr @.str.248, i32 51412 }, %struct.debugfs_reg32 { ptr @.str.249, i32 51416 }, %struct.debugfs_reg32 { ptr @.str.250, i32 51420 }, %struct.debugfs_reg32 { ptr @.str.251, i32 51424 }, %struct.debugfs_reg32 { ptr @.str.252, i32 51428 }, %struct.debugfs_reg32 { ptr @.str.253, i32 51432 }, %struct.debugfs_reg32 { ptr @.str.254, i32 51436 }, %struct.debugfs_reg32 { ptr @.str.255, i32 51440 }, %struct.debugfs_reg32 { ptr @.str.256, i32 51444 }, %struct.debugfs_reg32 { ptr @.str.257, i32 51448 }, %struct.debugfs_reg32 { ptr @.str.258, i32 51452 }, %struct.debugfs_reg32 { ptr @.str.259, i32 51456 }, %struct.debugfs_reg32 { ptr @.str.260, i32 51460 }, %struct.debugfs_reg32 { ptr @.str.261, i32 51464 }, %struct.debugfs_reg32 { ptr @.str.262, i32 51468 }, %struct.debugfs_reg32 { ptr @.str.263, i32 51472 }, %struct.debugfs_reg32 { ptr @.str.264, i32 51476 }, %struct.debugfs_reg32 { ptr @.str.265, i32 51480 }, %struct.debugfs_reg32 { ptr @.str.266, i32 51484 }, %struct.debugfs_reg32 { ptr @.str.267, i32 51488 }, %struct.debugfs_reg32 { ptr @.str.268, i32 51492 }, %struct.debugfs_reg32 { ptr @.str.269, i32 51496 }, %struct.debugfs_reg32 { ptr @.str.270, i32 51500 }, %struct.debugfs_reg32 { ptr @.str.271, i32 51504 }, %struct.debugfs_reg32 { ptr @.str.272, i32 51508 }, %struct.debugfs_reg32 { ptr @.str.273, i32 51512 }, %struct.debugfs_reg32 { ptr @.str.274, i32 51516 }, %struct.debugfs_reg32 { ptr @.str.275, i32 51520 }, %struct.debugfs_reg32 { ptr @.str.276, i32 51524 }, %struct.debugfs_reg32 { ptr @.str.277, i32 51528 }, %struct.debugfs_reg32 { ptr @.str.278, i32 51532 }, %struct.debugfs_reg32 { ptr @.str.279, i32 51536 }, %struct.debugfs_reg32 { ptr @.str.280, i32 51540 }, %struct.debugfs_reg32 { ptr @.str.281, i32 51544 }, %struct.debugfs_reg32 { ptr @.str.282, i32 51548 }, %struct.debugfs_reg32 { ptr @.str.283, i32 51552 }, %struct.debugfs_reg32 { ptr @.str.284, i32 51556 }, %struct.debugfs_reg32 { ptr @.str.285, i32 51560 }, %struct.debugfs_reg32 { ptr @.str.286, i32 51564 }, %struct.debugfs_reg32 { ptr @.str.287, i32 51568 }, %struct.debugfs_reg32 { ptr @.str.288, i32 51572 }, %struct.debugfs_reg32 { ptr @.str.289, i32 51576 }, %struct.debugfs_reg32 { ptr @.str.290, i32 51580 }, %struct.debugfs_reg32 { ptr @.str.291, i32 51584 }, %struct.debugfs_reg32 { ptr @.str.292, i32 51588 }, %struct.debugfs_reg32 { ptr @.str.293, i32 51592 }, %struct.debugfs_reg32 { ptr @.str.294, i32 51596 }, %struct.debugfs_reg32 { ptr @.str.295, i32 51600 }, %struct.debugfs_reg32 { ptr @.str.296, i32 51604 }, %struct.debugfs_reg32 { ptr @.str.297, i32 51608 }, %struct.debugfs_reg32 { ptr @.str.298, i32 51612 }, %struct.debugfs_reg32 { ptr @.str.299, i32 51616 }, %struct.debugfs_reg32 { ptr @.str.300, i32 51620 }, %struct.debugfs_reg32 { ptr @.str.301, i32 51624 }, %struct.debugfs_reg32 { ptr @.str.302, i32 51628 }, %struct.debugfs_reg32 { ptr @.str.303, i32 51632 }, %struct.debugfs_reg32 { ptr @.str.304, i32 51636 }, %struct.debugfs_reg32 { ptr @.str.305, i32 51640 }, %struct.debugfs_reg32 { ptr @.str.306, i32 51644 }, %struct.debugfs_reg32 { ptr @.str.307, i32 51648 }, %struct.debugfs_reg32 { ptr @.str.308, i32 51652 }, %struct.debugfs_reg32 { ptr @.str.309, i32 51656 }, %struct.debugfs_reg32 { ptr @.str.310, i32 51660 }, %struct.debugfs_reg32 { ptr @.str.311, i32 51664 }, %struct.debugfs_reg32 { ptr @.str.312, i32 51668 }, %struct.debugfs_reg32 { ptr @.str.313, i32 51672 }, %struct.debugfs_reg32 { ptr @.str.314, i32 51676 }, %struct.debugfs_reg32 { ptr @.str.315, i32 51680 }, %struct.debugfs_reg32 { ptr @.str.316, i32 51684 }, %struct.debugfs_reg32 { ptr @.str.317, i32 51688 }, %struct.debugfs_reg32 { ptr @.str.318, i32 51692 }, %struct.debugfs_reg32 { ptr @.str.319, i32 51696 }, %struct.debugfs_reg32 { ptr @.str.320, i32 51700 }, %struct.debugfs_reg32 { ptr @.str.321, i32 51704 }, %struct.debugfs_reg32 { ptr @.str.322, i32 51708 }, %struct.debugfs_reg32 { ptr @.str.323, i32 52224 }, %struct.debugfs_reg32 { ptr @.str.324, i32 52228 }, %struct.debugfs_reg32 { ptr @.str.325, i32 52232 }, %struct.debugfs_reg32 { ptr @.str.326, i32 52236 }, %struct.debugfs_reg32 { ptr @.str.327, i32 52240 }], align 4
@.str = private unnamed_addr constant [8 x i8] c"regdump\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"lsp_dump\00", align 1
@dwc3_lsp_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @dwc3_lsp_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_lsp_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@dwc3_mode_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @dwc3_mode_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_mode_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"testmode\00", align 1
@dwc3_testmode_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @dwc3_testmode_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_testmode_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"link_state\00", align 1
@dwc3_link_state_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @dwc3_link_state_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_link_state_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dwc3_ep_file_map = internal constant [10 x %struct.dwc3_ep_file_map] [%struct.dwc3_ep_file_map { [25 x i8] c"tx_fifo_size\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc3_tx_fifo_size_fops }, %struct.dwc3_ep_file_map { [25 x i8] c"rx_fifo_size\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc3_rx_fifo_size_fops }, %struct.dwc3_ep_file_map { [25 x i8] c"tx_request_queue\00\00\00\00\00\00\00\00\00", ptr @dwc3_tx_request_queue_fops }, %struct.dwc3_ep_file_map { [25 x i8] c"rx_request_queue\00\00\00\00\00\00\00\00\00", ptr @dwc3_rx_request_queue_fops }, %struct.dwc3_ep_file_map { [25 x i8] c"rx_info_queue\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc3_rx_info_queue_fops }, %struct.dwc3_ep_file_map { [25 x i8] c"descriptor_fetch_queue\00\00\00", ptr @dwc3_descriptor_fetch_queue_fops }, %struct.dwc3_ep_file_map { [25 x i8] c"event_queue\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc3_event_queue_fops }, %struct.dwc3_ep_file_map { [25 x i8] c"transfer_type\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc3_transfer_type_fops }, %struct.dwc3_ep_file_map { [25 x i8] c"trb_ring\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc3_trb_ring_fops }, %struct.dwc3_ep_file_map { [25 x i8] c"GDBGEPINFO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc3_ep_info_register_fops }], align 4
@dwc3_tx_fifo_size_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_tx_fifo_size_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dwc3_rx_fifo_size_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_rx_fifo_size_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dwc3_tx_request_queue_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_tx_request_queue_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dwc3_rx_request_queue_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_rx_request_queue_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dwc3_rx_info_queue_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_rx_info_queue_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dwc3_descriptor_fetch_queue_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_descriptor_fetch_queue_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dwc3_event_queue_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_event_queue_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dwc3_transfer_type_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_transfer_type_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dwc3_trb_ring_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_trb_ring_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dwc3_ep_info_register_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dwc3_ep_info_register_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"control\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"isochronous\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"bulk\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"interrupt\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"buffer_addr,size,type,ioc,isp_imi,csp,chn,lst,hwo\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"%08x%08x,%d,%s,%d,%d,%d,%d,%d,%d       %c%c\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"status2\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"status3\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"isoc-first\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"isoc\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"0x%016llx\0A\00", align 1
@__tracepoint_dwc3_writel = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_dwc3_readl = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"GSBUSCFG0\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"GSBUSCFG1\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"GTXTHRCFG\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"GRXTHRCFG\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"GCTL\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"GEVTEN\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"GSTS\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"GUCTL1\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"GSNPSID\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"GGPIO\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"GUID\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"GUCTL\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"GBUSERRADDR0\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"GBUSERRADDR1\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"GPRTBIMAP0\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"GPRTBIMAP1\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"GHWPARAMS0\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"GHWPARAMS1\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"GHWPARAMS2\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"GHWPARAMS3\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"GHWPARAMS4\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"GHWPARAMS5\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"GHWPARAMS6\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"GHWPARAMS7\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"GDBGFIFOSPACE\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"GDBGLTSSM\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"GDBGBMU\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"GPRTBIMAP_HS0\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"GPRTBIMAP_HS1\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"GPRTBIMAP_FS0\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"GPRTBIMAP_FS1\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"GUSB2PHYCFG(0)\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"GUSB2PHYCFG(1)\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"GUSB2PHYCFG(2)\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"GUSB2PHYCFG(3)\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"GUSB2PHYCFG(4)\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"GUSB2PHYCFG(5)\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"GUSB2PHYCFG(6)\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"GUSB2PHYCFG(7)\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"GUSB2PHYCFG(8)\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"GUSB2PHYCFG(9)\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"GUSB2PHYCFG(10)\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"GUSB2PHYCFG(11)\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"GUSB2PHYCFG(12)\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"GUSB2PHYCFG(13)\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"GUSB2PHYCFG(14)\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"GUSB2PHYCFG(15)\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"GUSB2I2CCTL(0)\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"GUSB2I2CCTL(1)\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"GUSB2I2CCTL(2)\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"GUSB2I2CCTL(3)\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"GUSB2I2CCTL(4)\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"GUSB2I2CCTL(5)\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"GUSB2I2CCTL(6)\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"GUSB2I2CCTL(7)\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"GUSB2I2CCTL(8)\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"GUSB2I2CCTL(9)\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"GUSB2I2CCTL(10)\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"GUSB2I2CCTL(11)\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"GUSB2I2CCTL(12)\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"GUSB2I2CCTL(13)\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"GUSB2I2CCTL(14)\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"GUSB2I2CCTL(15)\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"GUSB2PHYACC(0)\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"GUSB2PHYACC(1)\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"GUSB2PHYACC(2)\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"GUSB2PHYACC(3)\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"GUSB2PHYACC(4)\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"GUSB2PHYACC(5)\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"GUSB2PHYACC(6)\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"GUSB2PHYACC(7)\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"GUSB2PHYACC(8)\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"GUSB2PHYACC(9)\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"GUSB2PHYACC(10)\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"GUSB2PHYACC(11)\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"GUSB2PHYACC(12)\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"GUSB2PHYACC(13)\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"GUSB2PHYACC(14)\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"GUSB2PHYACC(15)\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"GUSB3PIPECTL(0)\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"GUSB3PIPECTL(1)\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"GUSB3PIPECTL(2)\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"GUSB3PIPECTL(3)\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"GUSB3PIPECTL(4)\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"GUSB3PIPECTL(5)\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"GUSB3PIPECTL(6)\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"GUSB3PIPECTL(7)\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"GUSB3PIPECTL(8)\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"GUSB3PIPECTL(9)\00", align 1
@.str.113 = private unnamed_addr constant [17 x i8] c"GUSB3PIPECTL(10)\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"GUSB3PIPECTL(11)\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"GUSB3PIPECTL(12)\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"GUSB3PIPECTL(13)\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"GUSB3PIPECTL(14)\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"GUSB3PIPECTL(15)\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"GTXFIFOSIZ(0)\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"GTXFIFOSIZ(1)\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"GTXFIFOSIZ(2)\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"GTXFIFOSIZ(3)\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"GTXFIFOSIZ(4)\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"GTXFIFOSIZ(5)\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"GTXFIFOSIZ(6)\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"GTXFIFOSIZ(7)\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"GTXFIFOSIZ(8)\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"GTXFIFOSIZ(9)\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(10)\00", align 1
@.str.130 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(11)\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(12)\00", align 1
@.str.132 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(13)\00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(14)\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(15)\00", align 1
@.str.135 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(16)\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(17)\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(18)\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(19)\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(20)\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(21)\00", align 1
@.str.141 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(22)\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(23)\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(24)\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(25)\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(26)\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(27)\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(28)\00", align 1
@.str.148 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(29)\00", align 1
@.str.149 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(30)\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"GTXFIFOSIZ(31)\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"GRXFIFOSIZ(0)\00", align 1
@.str.152 = private unnamed_addr constant [14 x i8] c"GRXFIFOSIZ(1)\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"GRXFIFOSIZ(2)\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"GRXFIFOSIZ(3)\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"GRXFIFOSIZ(4)\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"GRXFIFOSIZ(5)\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"GRXFIFOSIZ(6)\00", align 1
@.str.158 = private unnamed_addr constant [14 x i8] c"GRXFIFOSIZ(7)\00", align 1
@.str.159 = private unnamed_addr constant [14 x i8] c"GRXFIFOSIZ(8)\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"GRXFIFOSIZ(9)\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(10)\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(11)\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(12)\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(13)\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(14)\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(15)\00", align 1
@.str.167 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(16)\00", align 1
@.str.168 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(17)\00", align 1
@.str.169 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(18)\00", align 1
@.str.170 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(19)\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(20)\00", align 1
@.str.172 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(21)\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(22)\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(23)\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(24)\00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(25)\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(26)\00", align 1
@.str.178 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(27)\00", align 1
@.str.179 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(28)\00", align 1
@.str.180 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(29)\00", align 1
@.str.181 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(30)\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"GRXFIFOSIZ(31)\00", align 1
@.str.183 = private unnamed_addr constant [14 x i8] c"GEVNTADRLO(0)\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"GEVNTADRHI(0)\00", align 1
@.str.185 = private unnamed_addr constant [12 x i8] c"GEVNTSIZ(0)\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"GEVNTCOUNT(0)\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"GHWPARAMS8\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"DCFG\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"DCTL\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"DEVTEN\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"DSTS\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"DGCMDPAR\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"DGCMD\00", align 1
@.str.194 = private unnamed_addr constant [9 x i8] c"DALEPENA\00", align 1
@.str.195 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR2(0)\00", align 1
@.str.196 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR1(0)\00", align 1
@.str.197 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR0(0)\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c"DEPCMD(0)\00", align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR2(1)\00", align 1
@.str.200 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR1(1)\00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR0(1)\00", align 1
@.str.202 = private unnamed_addr constant [10 x i8] c"DEPCMD(1)\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR2(2)\00", align 1
@.str.204 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR1(2)\00", align 1
@.str.205 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR0(2)\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"DEPCMD(2)\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR2(3)\00", align 1
@.str.208 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR1(3)\00", align 1
@.str.209 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR0(3)\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"DEPCMD(3)\00", align 1
@.str.211 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR2(4)\00", align 1
@.str.212 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR1(4)\00", align 1
@.str.213 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR0(4)\00", align 1
@.str.214 = private unnamed_addr constant [10 x i8] c"DEPCMD(4)\00", align 1
@.str.215 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR2(5)\00", align 1
@.str.216 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR1(5)\00", align 1
@.str.217 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR0(5)\00", align 1
@.str.218 = private unnamed_addr constant [10 x i8] c"DEPCMD(5)\00", align 1
@.str.219 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR2(6)\00", align 1
@.str.220 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR1(6)\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR0(6)\00", align 1
@.str.222 = private unnamed_addr constant [10 x i8] c"DEPCMD(6)\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR2(7)\00", align 1
@.str.224 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR1(7)\00", align 1
@.str.225 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR0(7)\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"DEPCMD(7)\00", align 1
@.str.227 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR2(8)\00", align 1
@.str.228 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR1(8)\00", align 1
@.str.229 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR0(8)\00", align 1
@.str.230 = private unnamed_addr constant [10 x i8] c"DEPCMD(8)\00", align 1
@.str.231 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR2(9)\00", align 1
@.str.232 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR1(9)\00", align 1
@.str.233 = private unnamed_addr constant [14 x i8] c"DEPCMDPAR0(9)\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c"DEPCMD(9)\00", align 1
@.str.235 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(10)\00", align 1
@.str.236 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(10)\00", align 1
@.str.237 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(10)\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"DEPCMD(10)\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(11)\00", align 1
@.str.240 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(11)\00", align 1
@.str.241 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(11)\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"DEPCMD(11)\00", align 1
@.str.243 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(12)\00", align 1
@.str.244 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(12)\00", align 1
@.str.245 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(12)\00", align 1
@.str.246 = private unnamed_addr constant [11 x i8] c"DEPCMD(12)\00", align 1
@.str.247 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(13)\00", align 1
@.str.248 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(13)\00", align 1
@.str.249 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(13)\00", align 1
@.str.250 = private unnamed_addr constant [11 x i8] c"DEPCMD(13)\00", align 1
@.str.251 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(14)\00", align 1
@.str.252 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(14)\00", align 1
@.str.253 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(14)\00", align 1
@.str.254 = private unnamed_addr constant [11 x i8] c"DEPCMD(14)\00", align 1
@.str.255 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(15)\00", align 1
@.str.256 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(15)\00", align 1
@.str.257 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(15)\00", align 1
@.str.258 = private unnamed_addr constant [11 x i8] c"DEPCMD(15)\00", align 1
@.str.259 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(16)\00", align 1
@.str.260 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(16)\00", align 1
@.str.261 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(16)\00", align 1
@.str.262 = private unnamed_addr constant [11 x i8] c"DEPCMD(16)\00", align 1
@.str.263 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(17)\00", align 1
@.str.264 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(17)\00", align 1
@.str.265 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(17)\00", align 1
@.str.266 = private unnamed_addr constant [11 x i8] c"DEPCMD(17)\00", align 1
@.str.267 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(18)\00", align 1
@.str.268 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(18)\00", align 1
@.str.269 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(18)\00", align 1
@.str.270 = private unnamed_addr constant [11 x i8] c"DEPCMD(18)\00", align 1
@.str.271 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(19)\00", align 1
@.str.272 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(19)\00", align 1
@.str.273 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(19)\00", align 1
@.str.274 = private unnamed_addr constant [11 x i8] c"DEPCMD(19)\00", align 1
@.str.275 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(20)\00", align 1
@.str.276 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(20)\00", align 1
@.str.277 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(20)\00", align 1
@.str.278 = private unnamed_addr constant [11 x i8] c"DEPCMD(20)\00", align 1
@.str.279 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(21)\00", align 1
@.str.280 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(21)\00", align 1
@.str.281 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(21)\00", align 1
@.str.282 = private unnamed_addr constant [11 x i8] c"DEPCMD(21)\00", align 1
@.str.283 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(22)\00", align 1
@.str.284 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(22)\00", align 1
@.str.285 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(22)\00", align 1
@.str.286 = private unnamed_addr constant [11 x i8] c"DEPCMD(22)\00", align 1
@.str.287 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(23)\00", align 1
@.str.288 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(23)\00", align 1
@.str.289 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(23)\00", align 1
@.str.290 = private unnamed_addr constant [11 x i8] c"DEPCMD(23)\00", align 1
@.str.291 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(24)\00", align 1
@.str.292 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(24)\00", align 1
@.str.293 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(24)\00", align 1
@.str.294 = private unnamed_addr constant [11 x i8] c"DEPCMD(24)\00", align 1
@.str.295 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(25)\00", align 1
@.str.296 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(25)\00", align 1
@.str.297 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(25)\00", align 1
@.str.298 = private unnamed_addr constant [11 x i8] c"DEPCMD(25)\00", align 1
@.str.299 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(26)\00", align 1
@.str.300 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(26)\00", align 1
@.str.301 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(26)\00", align 1
@.str.302 = private unnamed_addr constant [11 x i8] c"DEPCMD(26)\00", align 1
@.str.303 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(27)\00", align 1
@.str.304 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(27)\00", align 1
@.str.305 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(27)\00", align 1
@.str.306 = private unnamed_addr constant [11 x i8] c"DEPCMD(27)\00", align 1
@.str.307 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(28)\00", align 1
@.str.308 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(28)\00", align 1
@.str.309 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(28)\00", align 1
@.str.310 = private unnamed_addr constant [11 x i8] c"DEPCMD(28)\00", align 1
@.str.311 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(29)\00", align 1
@.str.312 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(29)\00", align 1
@.str.313 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(29)\00", align 1
@.str.314 = private unnamed_addr constant [11 x i8] c"DEPCMD(29)\00", align 1
@.str.315 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(30)\00", align 1
@.str.316 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(30)\00", align 1
@.str.317 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(30)\00", align 1
@.str.318 = private unnamed_addr constant [11 x i8] c"DEPCMD(30)\00", align 1
@.str.319 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR2(31)\00", align 1
@.str.320 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR1(31)\00", align 1
@.str.321 = private unnamed_addr constant [15 x i8] c"DEPCMDPAR0(31)\00", align 1
@.str.322 = private unnamed_addr constant [11 x i8] c"DEPCMD(31)\00", align 1
@.str.323 = private unnamed_addr constant [5 x i8] c"OCFG\00", align 1
@.str.324 = private unnamed_addr constant [5 x i8] c"OCTL\00", align 1
@.str.325 = private unnamed_addr constant [5 x i8] c"OEVT\00", align 1
@.str.326 = private unnamed_addr constant [7 x i8] c"OEVTEN\00", align 1
@.str.327 = private unnamed_addr constant [5 x i8] c"OSTS\00", align 1
@.str.330 = private unnamed_addr constant [42 x i8] c"Mode is unknown, no LSP register printed\0A\00", align 1
@.str.331 = private unnamed_addr constant [39 x i8] c"Write LSP selection to print for host\0A\00", align 1
@.str.332 = private unnamed_addr constant [22 x i8] c"GDBGLSP[%d] = 0x%08x\0A\00", align 1
@.str.333 = private unnamed_addr constant [26 x i8] c"GDBGLSP_DBC[%d] = 0x%08x\0A\00", align 1
@.str.334 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.335 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.336 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@.str.337 = private unnamed_addr constant [6 x i8] c"host\0A\00", align 1
@.str.338 = private unnamed_addr constant [8 x i8] c"device\0A\00", align 1
@.str.339 = private unnamed_addr constant [5 x i8] c"otg\0A\00", align 1
@.str.340 = private unnamed_addr constant [14 x i8] c"UNKNOWN %08x\0A\00", align 1
@.str.341 = private unnamed_addr constant [7 x i8] c"test_j\00", align 1
@.str.342 = private unnamed_addr constant [7 x i8] c"test_k\00", align 1
@.str.343 = private unnamed_addr constant [13 x i8] c"test_se0_nak\00", align 1
@.str.344 = private unnamed_addr constant [12 x i8] c"test_packet\00", align 1
@.str.345 = private unnamed_addr constant [18 x i8] c"test_force_enable\00", align 1
@.str.346 = private unnamed_addr constant [9 x i8] c"no test\0A\00", align 1
@.str.347 = private unnamed_addr constant [8 x i8] c"test_j\0A\00", align 1
@.str.348 = private unnamed_addr constant [8 x i8] c"test_k\0A\00", align 1
@.str.349 = private unnamed_addr constant [14 x i8] c"test_se0_nak\0A\00", align 1
@.str.350 = private unnamed_addr constant [13 x i8] c"test_packet\0A\00", align 1
@.str.351 = private unnamed_addr constant [19 x i8] c"test_force_enable\0A\00", align 1
@.str.352 = private unnamed_addr constant [12 x i8] c"UNKNOWN %d\0A\00", align 1
@.str.353 = private unnamed_addr constant [12 x i8] c"SS.Disabled\00", align 1
@.str.354 = private unnamed_addr constant [10 x i8] c"Rx.Detect\00", align 1
@.str.355 = private unnamed_addr constant [12 x i8] c"SS.Inactive\00", align 1
@.str.356 = private unnamed_addr constant [9 x i8] c"Recovery\00", align 1
@.str.357 = private unnamed_addr constant [11 x i8] c"Compliance\00", align 1
@.str.358 = private unnamed_addr constant [9 x i8] c"Loopback\00", align 1
@.str.359 = private unnamed_addr constant [15 x i8] c"Not available\0A\00", align 1
@.str.360 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.361 = private unnamed_addr constant [3 x i8] c"U0\00", align 1
@.str.362 = private unnamed_addr constant [3 x i8] c"U1\00", align 1
@.str.363 = private unnamed_addr constant [3 x i8] c"U2\00", align 1
@.str.364 = private unnamed_addr constant [3 x i8] c"U3\00", align 1
@.str.365 = private unnamed_addr constant [10 x i8] c"RX.Detect\00", align 1
@.str.366 = private unnamed_addr constant [8 x i8] c"Polling\00", align 1
@.str.367 = private unnamed_addr constant [10 x i8] c"Hot Reset\00", align 1
@.str.368 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.369 = private unnamed_addr constant [7 x i8] c"Resume\00", align 1
@.str.370 = private unnamed_addr constant [19 x i8] c"UNKNOWN link state\00", align 1
@.str.371 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.372 = private unnamed_addr constant [6 x i8] c"Sleep\00", align 1
@.str.373 = private unnamed_addr constant [8 x i8] c"Suspend\00", align 1
@.str.374 = private unnamed_addr constant [13 x i8] c"Disconnected\00", align 1
@.str.375 = private unnamed_addr constant [14 x i8] c"Early Suspend\00", align 1
@switch.table.dwc3_transfer_type_show = private unnamed_addr constant [4 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@switch.table.dwc3_trb_ring_show = private unnamed_addr constant [8 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 4
@switch.table.dwc3_link_state_show = private unnamed_addr constant [16 x ptr] [ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.353, ptr @.str.365, ptr @.str.355, ptr @.str.366, ptr @.str.356, ptr @.str.367, ptr @.str.357, ptr @.str.358, ptr @.str.370, ptr @.str.370, ptr @.str.368, ptr @.str.369], align 4
@switch.table.dwc3_link_state_show.376 = private unnamed_addr constant [16 x ptr] [ptr @.str.371, ptr @.str.370, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.370, ptr @.str.370, ptr @.str.356, ptr @.str.370, ptr @.str.370, ptr @.str.370, ptr @.str.370, ptr @.str.370, ptr @.str.368, ptr @.str.369], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_debugfs_create_endpoint_dir(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %10, %9 ], [ %7, %1 ]
  %13 = load ptr, ptr @usb_debug_root, align 4
  %14 = tail call ptr @debugfs_lookup(ptr noundef %12, ptr noundef %13) #8
  %15 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 17
  %16 = tail call ptr @debugfs_create_dir(ptr noundef %15, ptr noundef %14) #8
  %17 = tail call ptr @debugfs_create_file(ptr noundef nonnull @dwc3_ep_file_map, i16 noundef zeroext 292, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @dwc3_tx_fifo_size_fops) #8
  %18 = tail call ptr @debugfs_create_file(ptr noundef getelementptr inbounds ([10 x %struct.dwc3_ep_file_map], ptr @dwc3_ep_file_map, i32 0, i32 1), i16 noundef zeroext 292, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @dwc3_rx_fifo_size_fops) #8
  %19 = tail call ptr @debugfs_create_file(ptr noundef getelementptr inbounds ([10 x %struct.dwc3_ep_file_map], ptr @dwc3_ep_file_map, i32 0, i32 2), i16 noundef zeroext 292, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @dwc3_tx_request_queue_fops) #8
  %20 = tail call ptr @debugfs_create_file(ptr noundef getelementptr inbounds ([10 x %struct.dwc3_ep_file_map], ptr @dwc3_ep_file_map, i32 0, i32 3), i16 noundef zeroext 292, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @dwc3_rx_request_queue_fops) #8
  %21 = tail call ptr @debugfs_create_file(ptr noundef getelementptr inbounds ([10 x %struct.dwc3_ep_file_map], ptr @dwc3_ep_file_map, i32 0, i32 4), i16 noundef zeroext 292, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @dwc3_rx_info_queue_fops) #8
  %22 = tail call ptr @debugfs_create_file(ptr noundef getelementptr inbounds ([10 x %struct.dwc3_ep_file_map], ptr @dwc3_ep_file_map, i32 0, i32 5), i16 noundef zeroext 292, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @dwc3_descriptor_fetch_queue_fops) #8
  %23 = tail call ptr @debugfs_create_file(ptr noundef getelementptr inbounds ([10 x %struct.dwc3_ep_file_map], ptr @dwc3_ep_file_map, i32 0, i32 6), i16 noundef zeroext 292, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @dwc3_event_queue_fops) #8
  %24 = tail call ptr @debugfs_create_file(ptr noundef getelementptr inbounds ([10 x %struct.dwc3_ep_file_map], ptr @dwc3_ep_file_map, i32 0, i32 7), i16 noundef zeroext 292, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @dwc3_transfer_type_fops) #8
  %25 = tail call ptr @debugfs_create_file(ptr noundef getelementptr inbounds ([10 x %struct.dwc3_ep_file_map], ptr @dwc3_ep_file_map, i32 0, i32 8), i16 noundef zeroext 292, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @dwc3_trb_ring_fops) #8
  %26 = tail call ptr @debugfs_create_file(ptr noundef getelementptr inbounds ([10 x %struct.dwc3_ep_file_map], ptr @dwc3_ep_file_map, i32 0, i32 9), i16 noundef zeroext 292, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @dwc3_ep_info_register_fops) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_debugfs_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #9
  %4 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 67
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 68
  store i32 1048575, ptr %7, align 4
  store ptr @dwc3_regs, ptr %3, align 8
  %8 = getelementptr inbounds %struct.debugfs_regset32, ptr %3, i32 0, i32 1
  store i32 304, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -49408
  %12 = getelementptr inbounds %struct.debugfs_regset32, ptr %3, i32 0, i32 2
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load ptr, ptr %14, align 4
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi ptr [ %19, %18 ], [ %16, %6 ]
  %22 = load ptr, ptr @usb_debug_root, align 4
  %23 = tail call ptr @debugfs_create_dir(ptr noundef %21, ptr noundef %22) #8
  %24 = load ptr, ptr %4, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %23, ptr noundef %24) #8
  %25 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 420, ptr noundef %23, ptr noundef %0, ptr noundef nonnull @dwc3_lsp_fops) #8
  %26 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 420, ptr noundef %23, ptr noundef %0, ptr noundef nonnull @dwc3_mode_fops) #8
  %27 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 420, ptr noundef %23, ptr noundef %0, ptr noundef nonnull @dwc3_testmode_fops) #8
  %28 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef %23, ptr noundef %0, ptr noundef nonnull @dwc3_link_state_fops) #8
  br label %29

29:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_debugfs_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %11 = load ptr, ptr @usb_debug_root, align 4
  %12 = tail call ptr @debugfs_lookup(ptr noundef %10, ptr noundef %11) #8
  tail call void @debugfs_remove(ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 67
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %14) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_tx_fifo_size_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_tx_fifo_size_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_tx_fifo_size_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 10
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = tail call i32 @dwc3_core_fifo_space(ptr noundef %4, i8 noundef zeroext 0) #8
  %10 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 66
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 8
  %13 = and i32 %12, 255
  %14 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 54
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 13106
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 66, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 768
  %21 = or i32 %20, %13
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i32 [ %21, %17 ], [ %13, %2 ]
  %24 = mul i32 %23, %9
  %25 = lshr i32 %24, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %25) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_core_fifo_space(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_rx_fifo_size_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_rx_fifo_size_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_rx_fifo_size_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 10
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = tail call i32 @dwc3_core_fifo_space(ptr noundef %4, i8 noundef zeroext 1) #8
  %10 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 66
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 8
  %13 = and i32 %12, 255
  %14 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 54
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 13106
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 66, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 768
  %21 = or i32 %20, %13
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i32 [ %21, %17 ], [ %13, %2 ]
  %24 = mul i32 %23, %9
  %25 = lshr i32 %24, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %25) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_tx_request_queue_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_tx_request_queue_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_tx_request_queue_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 10
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = tail call i32 @dwc3_core_fifo_space(ptr noundef %4, i8 noundef zeroext 2) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %9) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_rx_request_queue_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_rx_request_queue_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_rx_request_queue_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 10
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = tail call i32 @dwc3_core_fifo_space(ptr noundef %4, i8 noundef zeroext 3) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %9) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_rx_info_queue_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_rx_info_queue_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_rx_info_queue_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 10
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = tail call i32 @dwc3_core_fifo_space(ptr noundef %4, i8 noundef zeroext 4) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %9) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_descriptor_fetch_queue_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_descriptor_fetch_queue_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_descriptor_fetch_queue_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 10
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = tail call i32 @dwc3_core_fifo_space(ptr noundef %4, i8 noundef zeroext 6) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %9) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_event_queue_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_event_queue_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_event_queue_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 10
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = tail call i32 @dwc3_core_fifo_space(ptr noundef %4, i8 noundef zeroext 7) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %9) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_transfer_type_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_transfer_type_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_transfer_type_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 10
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.usb_ep, ptr %4, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 3
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds [4 x ptr], ptr @switch.table.dwc3_transfer_type_show, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %17, %13, %2
  %25 = phi ptr [ @.str.6, %13 ], [ @.str.6, %2 ], [ %23, %17 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %25) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_trb_ring_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_trb_ring_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_trb_ring_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 10
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 12
  %10 = load i8, ptr %9, align 2
  %11 = icmp ult i8 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.6) #8
  br label %58

13:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.11) #8
  %14 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 5
  %15 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 10
  %16 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 11
  br label %17

17:                                               ; preds = %35, %13
  %18 = phi i32 [ 0, %13 ], [ %56, %35 ]
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr %struct.dwc3_trb, ptr %19, i32 %18
  %21 = getelementptr %struct.dwc3_trb, ptr %19, i32 %18, i32 3
  %22 = load i32, ptr %21, align 1
  %23 = and i32 %22, 1008
  %24 = getelementptr %struct.dwc3_trb, ptr %19, i32 %18, i32 1
  %25 = load i32, ptr %24, align 1
  %26 = load i32, ptr %20, align 1
  %27 = getelementptr %struct.dwc3_trb, ptr %19, i32 %18, i32 2
  %28 = load i32, ptr %27, align 1
  %29 = add nsw i32 %23, -16
  %30 = icmp ult i32 %29, 128
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  %32 = lshr exact i32 %29, 4
  %33 = getelementptr inbounds [8 x ptr], ptr @switch.table.dwc3_trb_ring_show, i32 0, i32 %32
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %31, %17
  %36 = phi ptr [ %34, %31 ], [ @.str.21, %17 ]
  %37 = lshr i32 %22, 11
  %38 = and i32 %37, 1
  %39 = lshr i32 %22, 10
  %40 = and i32 %39, 1
  %41 = lshr i32 %22, 3
  %42 = and i32 %41, 1
  %43 = lshr i32 %22, 2
  %44 = and i32 %43, 1
  %45 = lshr i32 %22, 1
  %46 = and i32 %45, 1
  %47 = and i32 %22, 1
  %48 = load i8, ptr %15, align 4
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %18, %49
  %51 = select i1 %50, i32 69, i32 32
  %52 = load i8, ptr %16, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %18, %53
  %55 = select i1 %54, i32 68, i32 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %25, i32 noundef %26, i32 noundef %28, ptr noundef nonnull %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %47, i32 noundef %51, i32 noundef %55) #8
  %56 = add nuw nsw i32 %18, 1
  %57 = icmp eq i32 %56, 256
  br i1 %57, label %58, label %17

58:                                               ; preds = %35, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_ep_info_register_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_ep_info_register_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_ep_info_register_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 10
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 12
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 15
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 30
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %15 = getelementptr i8, ptr %14, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #8, !srcloc !9
  %16 = getelementptr i8, ptr %14, i32 -49408
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = tail call ptr @llvm.thread.pointer() #8
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %31 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %16, i32 noundef 49520, i32 noundef %12) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %32

32:                                               ; preds = %30, %19, %2
  %33 = load ptr, ptr %13, align 4
  %34 = getelementptr i8, ptr %33, i32 120
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %36 = getelementptr i8, ptr %33, i32 -49408
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = tail call ptr @llvm.thread.pointer() #8
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %51 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %36, i32 noundef 49528, i32 noundef %35) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %52

52:                                               ; preds = %50, %39, %32
  %53 = load ptr, ptr %13, align 4
  %54 = getelementptr i8, ptr %53, i32 124
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %56 = getelementptr i8, ptr %53, i32 -49408
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %52
  %60 = tail call ptr @llvm.thread.pointer() #8
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %71 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %56, i32 noundef 49532, i32 noundef %55) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %72

72:                                               ; preds = %70, %59, %52
  %73 = zext i32 %55 to i64
  %74 = shl nuw i64 %73, 32
  %75 = zext i32 %35 to i64
  %76 = or i64 %74, %75
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i64 noundef %76) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_lsp_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [32 x i8], align 1
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.seq_file, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !16
  %11 = tail call i32 @llvm.umin.i32(i32 %2, i32 31)
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %11, i32 -1090519040) #10, !srcloc !17
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22, !prof !18

15:                                               ; preds = %4
  %16 = tail call ptr @llvm.thread.pointer() #8
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #11, !srcloc !19
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #8, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  %21 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %11) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #8, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  br label %22

22:                                               ; preds = %15, %4
  %23 = phi i32 [ %21, %15 ], [ %11, %4 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25, !prof !18

25:                                               ; preds = %22
  %26 = sub i32 %11, %23
  %27 = getelementptr i8, ptr %5, i32 %26
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %23, i1 false) #8
  br label %36

28:                                               ; preds = %22
  %29 = call i32 @kstrtouint(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %6) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.dwc3, ptr %10, i32 0, i32 10
  %33 = call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #8
  %34 = load i32, ptr %6, align 4
  %35 = getelementptr inbounds %struct.dwc3, ptr %10, i32 0, i32 68
  store i32 %34, ptr %35, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %33) #8
  br label %36

36:                                               ; preds = %31, %28, %25
  %37 = phi i32 [ %2, %31 ], [ %29, %28 ], [ -14, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_lsp_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_lsp_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_lsp_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 10
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %11 = getelementptr i8, ptr %8, i32 -49408
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = tail call ptr @llvm.thread.pointer() #8
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %26 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %11, i32 noundef 49432, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %27

27:                                               ; preds = %25, %14, %2
  %28 = and i32 %10, 3
  switch i32 %28, label %170 [
    i32 1, label %29
    i32 0, label %123
  ]

29:                                               ; preds = %27
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.dwc3, ptr %30, i32 0, i32 68
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 1048575
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.331) #8
  br label %171

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.dwc3, ptr %30, i32 0, i32 66, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp slt i32 %37, 0
  %39 = and i32 %32, 16383
  %40 = getelementptr inbounds %struct.dwc3, ptr %30, i32 0, i32 30
  %41 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %42 = getelementptr i8, ptr %41, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %39) #8, !srcloc !9
  %43 = getelementptr i8, ptr %41, i32 -49408
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %35
  %47 = tail call ptr @llvm.thread.pointer() #8
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %58 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %43, i32 noundef 49520, i32 noundef %39) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %59

59:                                               ; preds = %57, %46, %35
  %60 = load ptr, ptr %40, align 4
  %61 = getelementptr i8, ptr %60, i32 116
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %63 = getelementptr i8, ptr %60, i32 -49408
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = tail call ptr @llvm.thread.pointer() #8
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %78 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %63, i32 noundef 49524, i32 noundef %62) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %79

79:                                               ; preds = %77, %66, %59
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.332, i32 noundef %32, i32 noundef %62) #8
  %80 = icmp ult i32 %32, 256
  %81 = select i1 %38, i1 %80, i1 false
  br i1 %81, label %82, label %171

82:                                               ; preds = %79
  %83 = or i32 %39, 32768
  %84 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %85 = getelementptr i8, ptr %84, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #8, !srcloc !9
  %86 = getelementptr i8, ptr %84, i32 -49408
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = tail call ptr @llvm.thread.pointer() #8
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 5
  %94 = getelementptr i32, ptr @__cpu_online_mask, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %92, 31
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %89
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %101 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %86, i32 noundef 49520, i32 noundef %83) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %102

102:                                              ; preds = %100, %89, %82
  %103 = load ptr, ptr %40, align 4
  %104 = getelementptr i8, ptr %103, i32 116
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %106 = getelementptr i8, ptr %103, i32 -49408
  %107 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %102
  %110 = tail call ptr @llvm.thread.pointer() #8
  %111 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %112 = load i32, ptr %111, align 8
  %113 = lshr i32 %112, 5
  %114 = getelementptr i32, ptr @__cpu_online_mask, i32 %113
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %112, 31
  %117 = shl nuw i32 1, %116
  %118 = and i32 %117, %115
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %109
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %121 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %106, i32 noundef 49524, i32 noundef %105) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %122

122:                                              ; preds = %120, %109, %102
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.333, i32 noundef %32, i32 noundef %105) #8
  br label %171

123:                                              ; preds = %27
  %124 = load ptr, ptr %3, align 8
  %125 = getelementptr inbounds %struct.dwc3, ptr %124, i32 0, i32 30
  br label %126

126:                                              ; preds = %167, %123
  %127 = phi i32 [ 0, %123 ], [ %168, %167 ]
  %128 = shl i32 %127, 4
  %129 = load ptr, ptr %125, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %130 = getelementptr i8, ptr %129, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #8, !srcloc !9
  %131 = getelementptr i8, ptr %129, i32 -49408
  %132 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %126
  %135 = tail call ptr @llvm.thread.pointer() #8
  %136 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %137 = load i32, ptr %136, align 8
  %138 = lshr i32 %137, 5
  %139 = getelementptr i32, ptr @__cpu_online_mask, i32 %138
  %140 = load volatile i32, ptr %139, align 4
  %141 = and i32 %137, 31
  %142 = shl nuw i32 1, %141
  %143 = and i32 %142, %140
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %134
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %146 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %131, i32 noundef 49520, i32 noundef %128) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %147

147:                                              ; preds = %145, %134, %126
  %148 = load ptr, ptr %125, align 4
  %149 = getelementptr i8, ptr %148, i32 116
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %151 = getelementptr i8, ptr %148, i32 -49408
  %152 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %147
  %155 = tail call ptr @llvm.thread.pointer() #8
  %156 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 2
  %157 = load i32, ptr %156, align 8
  %158 = lshr i32 %157, 5
  %159 = getelementptr i32, ptr @__cpu_online_mask, i32 %158
  %160 = load volatile i32, ptr %159, align 4
  %161 = and i32 %157, 31
  %162 = shl nuw i32 1, %161
  %163 = and i32 %162, %160
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %154
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %166 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %151, i32 noundef 49524, i32 noundef %150) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %167

167:                                              ; preds = %165, %154, %147
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.332, i32 noundef %127, i32 noundef %150) #8
  %168 = add nuw nsw i32 %127, 1
  %169 = icmp eq i32 %168, 16
  br i1 %169, label %171, label %126

170:                                              ; preds = %27
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.330) #8
  br label %171

171:                                              ; preds = %170, %167, %122, %79, %34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_mode_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [32 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !16
  %10 = tail call i32 @llvm.umin.i32(i32 %2, i32 31)
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %10, i32 -1090519040) #10, !srcloc !17
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21, !prof !18

14:                                               ; preds = %4
  %15 = tail call ptr @llvm.thread.pointer() #8
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #11, !srcloc !19
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #8, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  %20 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %10) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #8, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  br label %21

21:                                               ; preds = %14, %4
  %22 = phi i32 [ %20, %14 ], [ %10, %4 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !18

24:                                               ; preds = %21
  %25 = sub i32 %10, %22
  %26 = getelementptr i8, ptr %5, i32 %25
  call void @llvm.memset.p0.i32(ptr align 1 %26, i8 0, i32 %22, i1 false) #8
  br label %41

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.dwc3, ptr %9, i32 0, i32 32
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.334, i32 4)
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %5, ptr noundef nonnull dereferenceable(6) @.str.335, i32 6)
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 2, i32 %34
  %38 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %5, ptr noundef nonnull dereferenceable(3) @.str.336, i32 3)
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 3, i32 %37
  call void @dwc3_set_mode(ptr noundef %9, i32 noundef %40) #8
  br label %41

41:                                               ; preds = %31, %27, %24
  %42 = phi i32 [ %2, %31 ], [ %2, %27 ], [ -14, %24 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_mode_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_mode_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_mode_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 10
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %11 = getelementptr i8, ptr %8, i32 -49408
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = tail call ptr @llvm.thread.pointer() #8
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %26 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %11, i32 noundef 49424, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %27

27:                                               ; preds = %25, %14, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  %28 = lshr i32 %10, 12
  %29 = and i32 %28, 3
  switch i32 %29, label %33 [
    i32 1, label %30
    i32 2, label %31
    i32 3, label %32
  ]

30:                                               ; preds = %27
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.337) #8
  br label %34

31:                                               ; preds = %27
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.338) #8
  br label %34

32:                                               ; preds = %27
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.339) #8
  br label %34

33:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.340, i32 noundef %29) #8
  br label %34

34:                                               ; preds = %33, %32, %31, %30
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_testmode_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [32 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !16
  %10 = tail call i32 @llvm.umin.i32(i32 %2, i32 31)
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %10, i32 -1090519040) #10, !srcloc !17
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21, !prof !18

14:                                               ; preds = %4
  %15 = tail call ptr @llvm.thread.pointer() #8
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #11, !srcloc !19
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #8, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  %20 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %10) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #8, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  br label %21

21:                                               ; preds = %14, %4
  %22 = phi i32 [ %20, %14 ], [ %10, %4 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !18

24:                                               ; preds = %21
  %25 = sub i32 %10, %22
  %26 = getelementptr i8, ptr %5, i32 %25
  call void @llvm.memset.p0.i32(ptr align 1 %26, i8 0, i32 %22, i1 false) #8
  br label %48

27:                                               ; preds = %21
  %28 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %5, ptr noundef nonnull dereferenceable(6) @.str.341, i32 6)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %5, ptr noundef nonnull dereferenceable(6) @.str.342, i32 6)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %5, ptr noundef nonnull dereferenceable(12) @.str.343, i32 12)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %5, ptr noundef nonnull dereferenceable(11) @.str.344, i32 11)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %5, ptr noundef nonnull dereferenceable(17) @.str.345, i32 17)
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 5, i32 0
  br label %43

43:                                               ; preds = %39, %36, %33, %30, %27
  %44 = phi i32 [ 1, %27 ], [ 2, %30 ], [ 3, %33 ], [ 4, %36 ], [ %42, %39 ]
  %45 = getelementptr inbounds %struct.dwc3, ptr %9, i32 0, i32 10
  %46 = call i32 @_raw_spin_lock_irqsave(ptr noundef %45) #8
  %47 = call i32 @dwc3_gadget_set_test_mode(ptr noundef %9, i32 noundef %44) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %45, i32 noundef %46) #8
  br label %48

48:                                               ; preds = %43, %24
  %49 = phi i32 [ %2, %43 ], [ -14, %24 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_testmode_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_testmode_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_set_test_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_testmode_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 10
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1540
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %11 = getelementptr i8, ptr %8, i32 -49408
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = tail call ptr @llvm.thread.pointer() #8
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %26 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %11, i32 noundef 50948, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %27

27:                                               ; preds = %25, %14, %2
  %28 = lshr i32 %10, 1
  %29 = and i32 %28, 15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  switch i32 %29, label %36 [
    i32 0, label %30
    i32 1, label %31
    i32 2, label %32
    i32 3, label %33
    i32 4, label %34
    i32 5, label %35
  ]

30:                                               ; preds = %27
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.346) #8
  br label %37

31:                                               ; preds = %27
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.347) #8
  br label %37

32:                                               ; preds = %27
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.348) #8
  br label %37

33:                                               ; preds = %27
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.349) #8
  br label %37

34:                                               ; preds = %27
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.350) #8
  br label %37

35:                                               ; preds = %27
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.351) #8
  br label %37

36:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.352, i32 noundef %29) #8
  br label %37

37:                                               ; preds = %36, %35, %34, %33, %32, %31, %30
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_link_state_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [32 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !16
  %10 = tail call i32 @llvm.umin.i32(i32 %2, i32 31)
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %10, i32 -1090519040) #10, !srcloc !17
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21, !prof !18

14:                                               ; preds = %4
  %15 = tail call ptr @llvm.thread.pointer() #8
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #11, !srcloc !19
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #8, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  %20 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %10) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #8, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  br label %21

21:                                               ; preds = %14, %4
  %22 = phi i32 [ %20, %14 ], [ %10, %4 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !18

24:                                               ; preds = %21
  %25 = sub i32 %10, %22
  %26 = getelementptr i8, ptr %5, i32 %25
  call void @llvm.memset.p0.i32(ptr align 1 %26, i8 0, i32 %22, i1 false) #8
  br label %101

27:                                               ; preds = %21
  %28 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %5, ptr noundef nonnull dereferenceable(11) @.str.353, i32 11)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %27
  %31 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %5, ptr noundef nonnull dereferenceable(9) @.str.354, i32 9)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %5, ptr noundef nonnull dereferenceable(11) @.str.355, i32 11)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %5, ptr noundef nonnull dereferenceable(8) @.str.356, i32 8)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %5, ptr noundef nonnull dereferenceable(10) @.str.357, i32 10)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %5, ptr noundef nonnull dereferenceable(8) @.str.358, i32 8)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %101

45:                                               ; preds = %42, %39, %36, %33, %30, %27
  %46 = phi i1 [ true, %27 ], [ true, %30 ], [ true, %33 ], [ false, %36 ], [ true, %39 ], [ true, %42 ]
  %47 = phi i32 [ 4, %27 ], [ 5, %30 ], [ 6, %33 ], [ 8, %36 ], [ 10, %39 ], [ 11, %42 ]
  %48 = getelementptr inbounds %struct.dwc3, ptr %9, i32 0, i32 10
  %49 = call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #8
  %50 = getelementptr inbounds %struct.dwc3, ptr %9, i32 0, i32 30
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 24
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %54 = getelementptr i8, ptr %51, i32 -49408
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %45
  %58 = tail call ptr @llvm.thread.pointer() #8
  %59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr @__cpu_online_mask, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %69 = call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %54, i32 noundef 49432, i32 noundef %53) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %70

70:                                               ; preds = %68, %57, %45
  %71 = and i32 %53, 3
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %49) #8
  br label %101

74:                                               ; preds = %70
  %75 = load ptr, ptr %50, align 4
  %76 = getelementptr i8, ptr %75, i32 1548
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #8, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %78 = getelementptr i8, ptr %75, i32 -49408
  %79 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = tail call ptr @llvm.thread.pointer() #8
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 5
  %86 = getelementptr i32, ptr @__cpu_online_mask, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %84, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, %87
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %81
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %93 = call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %78, i32 noundef 50956, i32 noundef %77) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %94

94:                                               ; preds = %92, %81, %74
  %95 = and i32 %77, 4
  %96 = icmp eq i32 %95, 0
  %97 = and i1 %46, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %49) #8
  br label %101

99:                                               ; preds = %94
  %100 = call i32 @dwc3_gadget_set_link_state(ptr noundef %9, i32 noundef %47) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %49) #8
  br label %101

101:                                              ; preds = %99, %98, %73, %42, %24
  %102 = phi i32 [ -22, %73 ], [ -22, %98 ], [ %2, %99 ], [ -22, %42 ], [ -14, %24 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_link_state_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dwc3_link_state_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_set_link_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_link_state_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 10
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %11 = getelementptr i8, ptr %8, i32 -49408
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = tail call ptr @llvm.thread.pointer() #8
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %26 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %11, i32 noundef 49432, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %27

27:                                               ; preds = %25, %14, %2
  %28 = and i32 %10, 3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.359) #8
  br label %59

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr i8, ptr %32, i32 1548
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %35 = getelementptr i8, ptr %32, i32 -49408
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = tail call ptr @llvm.thread.pointer() #8
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %50 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %35, i32 noundef 50956, i32 noundef %34) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %51

51:                                               ; preds = %49, %38, %31
  %52 = and i32 %34, 4
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, ptr @switch.table.dwc3_link_state_show.376, ptr @switch.table.dwc3_link_state_show
  %55 = lshr i32 %34, 18
  %56 = and i32 %55, 15
  %57 = getelementptr inbounds [16 x ptr], ptr %54, i32 0, i32 %56
  %58 = load ptr, ptr %57, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.360, ptr noundef nonnull %58) #8
  br label %59

59:                                               ; preds = %51, %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
!8 = !{i64 2154342911}
!9 = !{i64 5201011}
!10 = !{i64 2154100673}
!11 = !{i64 2154100845}
!12 = !{i64 5201429}
!13 = !{i64 2154342536}
!14 = !{i64 2154084707}
!15 = !{i64 2154084877}
!16 = !{!"auto-init"}
!17 = !{i64 2150741996, i64 2150742021}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 3238108}
!20 = !{i64 3238305}
!21 = !{i64 2150723584}
