; ModuleID = '/llk/IR/drivers/usb/dwc2/debugfs.c_pt.bc'
source_filename = "../drivers/usb/dwc2/debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.dwc2_hsotg_ep = type { %struct.usb_ep, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i8, i32, i8, i32, ptr, i8, i32, i32, [10 x i8] }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.69 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [7 x i8] c"params\00", align 1
@params_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @params_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"hw_params\00", align 1
@hw_params_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @hw_params_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@dr_mode_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dr_mode_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dwc2_regs = internal constant [318 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.111, i32 0 }, %struct.debugfs_reg32 { ptr @.str.112, i32 4 }, %struct.debugfs_reg32 { ptr @.str.113, i32 8 }, %struct.debugfs_reg32 { ptr @.str.114, i32 12 }, %struct.debugfs_reg32 { ptr @.str.115, i32 16 }, %struct.debugfs_reg32 { ptr @.str.116, i32 20 }, %struct.debugfs_reg32 { ptr @.str.117, i32 24 }, %struct.debugfs_reg32 { ptr @.str.118, i32 28 }, %struct.debugfs_reg32 { ptr @.str.119, i32 36 }, %struct.debugfs_reg32 { ptr @.str.120, i32 40 }, %struct.debugfs_reg32 { ptr @.str.121, i32 44 }, %struct.debugfs_reg32 { ptr @.str.122, i32 48 }, %struct.debugfs_reg32 { ptr @.str.123, i32 52 }, %struct.debugfs_reg32 { ptr @.str.124, i32 56 }, %struct.debugfs_reg32 { ptr @.str.125, i32 60 }, %struct.debugfs_reg32 { ptr @.str.126, i32 64 }, %struct.debugfs_reg32 { ptr @.str.127, i32 68 }, %struct.debugfs_reg32 { ptr @.str.128, i32 72 }, %struct.debugfs_reg32 { ptr @.str.129, i32 76 }, %struct.debugfs_reg32 { ptr @.str.130, i32 80 }, %struct.debugfs_reg32 { ptr @.str.131, i32 84 }, %struct.debugfs_reg32 { ptr @.str.132, i32 88 }, %struct.debugfs_reg32 { ptr @.str.133, i32 92 }, %struct.debugfs_reg32 { ptr @.str.134, i32 96 }, %struct.debugfs_reg32 { ptr @.str.135, i32 256 }, %struct.debugfs_reg32 { ptr @.str.136, i32 260 }, %struct.debugfs_reg32 { ptr @.str.137, i32 264 }, %struct.debugfs_reg32 { ptr @.str.138, i32 268 }, %struct.debugfs_reg32 { ptr @.str.139, i32 272 }, %struct.debugfs_reg32 { ptr @.str.140, i32 276 }, %struct.debugfs_reg32 { ptr @.str.141, i32 280 }, %struct.debugfs_reg32 { ptr @.str.142, i32 284 }, %struct.debugfs_reg32 { ptr @.str.143, i32 288 }, %struct.debugfs_reg32 { ptr @.str.144, i32 292 }, %struct.debugfs_reg32 { ptr @.str.145, i32 296 }, %struct.debugfs_reg32 { ptr @.str.146, i32 300 }, %struct.debugfs_reg32 { ptr @.str.147, i32 304 }, %struct.debugfs_reg32 { ptr @.str.148, i32 308 }, %struct.debugfs_reg32 { ptr @.str.149, i32 312 }, %struct.debugfs_reg32 { ptr @.str.150, i32 316 }, %struct.debugfs_reg32 { ptr @.str.151, i32 2048 }, %struct.debugfs_reg32 { ptr @.str.152, i32 2052 }, %struct.debugfs_reg32 { ptr @.str.153, i32 2056 }, %struct.debugfs_reg32 { ptr @.str.154, i32 2064 }, %struct.debugfs_reg32 { ptr @.str.155, i32 2068 }, %struct.debugfs_reg32 { ptr @.str.156, i32 2072 }, %struct.debugfs_reg32 { ptr @.str.157, i32 2076 }, %struct.debugfs_reg32 { ptr @.str.158, i32 2080 }, %struct.debugfs_reg32 { ptr @.str.159, i32 2084 }, %struct.debugfs_reg32 { ptr @.str.160, i32 2096 }, %struct.debugfs_reg32 { ptr @.str.161, i32 2100 }, %struct.debugfs_reg32 { ptr @.str.162, i32 2088 }, %struct.debugfs_reg32 { ptr @.str.163, i32 2092 }, %struct.debugfs_reg32 { ptr @.str.164, i32 2304 }, %struct.debugfs_reg32 { ptr @.str.165, i32 2336 }, %struct.debugfs_reg32 { ptr @.str.166, i32 2368 }, %struct.debugfs_reg32 { ptr @.str.167, i32 2400 }, %struct.debugfs_reg32 { ptr @.str.168, i32 2432 }, %struct.debugfs_reg32 { ptr @.str.169, i32 2464 }, %struct.debugfs_reg32 { ptr @.str.170, i32 2496 }, %struct.debugfs_reg32 { ptr @.str.171, i32 2528 }, %struct.debugfs_reg32 { ptr @.str.172, i32 2560 }, %struct.debugfs_reg32 { ptr @.str.173, i32 2592 }, %struct.debugfs_reg32 { ptr @.str.174, i32 2624 }, %struct.debugfs_reg32 { ptr @.str.175, i32 2656 }, %struct.debugfs_reg32 { ptr @.str.176, i32 2688 }, %struct.debugfs_reg32 { ptr @.str.177, i32 2720 }, %struct.debugfs_reg32 { ptr @.str.178, i32 2752 }, %struct.debugfs_reg32 { ptr @.str.179, i32 2784 }, %struct.debugfs_reg32 { ptr @.str.180, i32 2816 }, %struct.debugfs_reg32 { ptr @.str.181, i32 2848 }, %struct.debugfs_reg32 { ptr @.str.182, i32 2880 }, %struct.debugfs_reg32 { ptr @.str.183, i32 2912 }, %struct.debugfs_reg32 { ptr @.str.184, i32 2944 }, %struct.debugfs_reg32 { ptr @.str.185, i32 2976 }, %struct.debugfs_reg32 { ptr @.str.186, i32 3008 }, %struct.debugfs_reg32 { ptr @.str.187, i32 3040 }, %struct.debugfs_reg32 { ptr @.str.188, i32 3072 }, %struct.debugfs_reg32 { ptr @.str.189, i32 3104 }, %struct.debugfs_reg32 { ptr @.str.190, i32 3136 }, %struct.debugfs_reg32 { ptr @.str.191, i32 3168 }, %struct.debugfs_reg32 { ptr @.str.192, i32 3200 }, %struct.debugfs_reg32 { ptr @.str.193, i32 3232 }, %struct.debugfs_reg32 { ptr @.str.194, i32 3264 }, %struct.debugfs_reg32 { ptr @.str.195, i32 3296 }, %struct.debugfs_reg32 { ptr @.str.196, i32 2312 }, %struct.debugfs_reg32 { ptr @.str.197, i32 2344 }, %struct.debugfs_reg32 { ptr @.str.198, i32 2376 }, %struct.debugfs_reg32 { ptr @.str.199, i32 2408 }, %struct.debugfs_reg32 { ptr @.str.200, i32 2440 }, %struct.debugfs_reg32 { ptr @.str.201, i32 2472 }, %struct.debugfs_reg32 { ptr @.str.202, i32 2504 }, %struct.debugfs_reg32 { ptr @.str.203, i32 2536 }, %struct.debugfs_reg32 { ptr @.str.204, i32 2568 }, %struct.debugfs_reg32 { ptr @.str.205, i32 2600 }, %struct.debugfs_reg32 { ptr @.str.206, i32 2632 }, %struct.debugfs_reg32 { ptr @.str.207, i32 2664 }, %struct.debugfs_reg32 { ptr @.str.208, i32 2696 }, %struct.debugfs_reg32 { ptr @.str.209, i32 2728 }, %struct.debugfs_reg32 { ptr @.str.210, i32 2760 }, %struct.debugfs_reg32 { ptr @.str.211, i32 2792 }, %struct.debugfs_reg32 { ptr @.str.212, i32 2824 }, %struct.debugfs_reg32 { ptr @.str.213, i32 2856 }, %struct.debugfs_reg32 { ptr @.str.214, i32 2888 }, %struct.debugfs_reg32 { ptr @.str.215, i32 2920 }, %struct.debugfs_reg32 { ptr @.str.216, i32 2952 }, %struct.debugfs_reg32 { ptr @.str.217, i32 2984 }, %struct.debugfs_reg32 { ptr @.str.218, i32 3016 }, %struct.debugfs_reg32 { ptr @.str.219, i32 3048 }, %struct.debugfs_reg32 { ptr @.str.220, i32 3080 }, %struct.debugfs_reg32 { ptr @.str.221, i32 3112 }, %struct.debugfs_reg32 { ptr @.str.222, i32 3144 }, %struct.debugfs_reg32 { ptr @.str.223, i32 3176 }, %struct.debugfs_reg32 { ptr @.str.224, i32 3208 }, %struct.debugfs_reg32 { ptr @.str.225, i32 3240 }, %struct.debugfs_reg32 { ptr @.str.226, i32 3272 }, %struct.debugfs_reg32 { ptr @.str.227, i32 3304 }, %struct.debugfs_reg32 { ptr @.str.228, i32 2320 }, %struct.debugfs_reg32 { ptr @.str.229, i32 2352 }, %struct.debugfs_reg32 { ptr @.str.230, i32 2384 }, %struct.debugfs_reg32 { ptr @.str.231, i32 2416 }, %struct.debugfs_reg32 { ptr @.str.232, i32 2448 }, %struct.debugfs_reg32 { ptr @.str.233, i32 2480 }, %struct.debugfs_reg32 { ptr @.str.234, i32 2512 }, %struct.debugfs_reg32 { ptr @.str.235, i32 2544 }, %struct.debugfs_reg32 { ptr @.str.236, i32 2576 }, %struct.debugfs_reg32 { ptr @.str.237, i32 2608 }, %struct.debugfs_reg32 { ptr @.str.238, i32 2640 }, %struct.debugfs_reg32 { ptr @.str.239, i32 2672 }, %struct.debugfs_reg32 { ptr @.str.240, i32 2704 }, %struct.debugfs_reg32 { ptr @.str.241, i32 2736 }, %struct.debugfs_reg32 { ptr @.str.242, i32 2768 }, %struct.debugfs_reg32 { ptr @.str.243, i32 2800 }, %struct.debugfs_reg32 { ptr @.str.244, i32 2832 }, %struct.debugfs_reg32 { ptr @.str.245, i32 2864 }, %struct.debugfs_reg32 { ptr @.str.246, i32 2896 }, %struct.debugfs_reg32 { ptr @.str.247, i32 2928 }, %struct.debugfs_reg32 { ptr @.str.248, i32 2960 }, %struct.debugfs_reg32 { ptr @.str.249, i32 2992 }, %struct.debugfs_reg32 { ptr @.str.250, i32 3024 }, %struct.debugfs_reg32 { ptr @.str.251, i32 3056 }, %struct.debugfs_reg32 { ptr @.str.252, i32 3088 }, %struct.debugfs_reg32 { ptr @.str.253, i32 3120 }, %struct.debugfs_reg32 { ptr @.str.254, i32 3152 }, %struct.debugfs_reg32 { ptr @.str.255, i32 3184 }, %struct.debugfs_reg32 { ptr @.str.256, i32 3216 }, %struct.debugfs_reg32 { ptr @.str.257, i32 3248 }, %struct.debugfs_reg32 { ptr @.str.258, i32 3280 }, %struct.debugfs_reg32 { ptr @.str.259, i32 3312 }, %struct.debugfs_reg32 { ptr @.str.260, i32 2324 }, %struct.debugfs_reg32 { ptr @.str.261, i32 2356 }, %struct.debugfs_reg32 { ptr @.str.262, i32 2388 }, %struct.debugfs_reg32 { ptr @.str.263, i32 2420 }, %struct.debugfs_reg32 { ptr @.str.264, i32 2452 }, %struct.debugfs_reg32 { ptr @.str.265, i32 2484 }, %struct.debugfs_reg32 { ptr @.str.266, i32 2516 }, %struct.debugfs_reg32 { ptr @.str.267, i32 2548 }, %struct.debugfs_reg32 { ptr @.str.268, i32 2580 }, %struct.debugfs_reg32 { ptr @.str.269, i32 2612 }, %struct.debugfs_reg32 { ptr @.str.270, i32 2644 }, %struct.debugfs_reg32 { ptr @.str.271, i32 2676 }, %struct.debugfs_reg32 { ptr @.str.272, i32 2708 }, %struct.debugfs_reg32 { ptr @.str.273, i32 2740 }, %struct.debugfs_reg32 { ptr @.str.274, i32 2772 }, %struct.debugfs_reg32 { ptr @.str.275, i32 2804 }, %struct.debugfs_reg32 { ptr @.str.276, i32 2836 }, %struct.debugfs_reg32 { ptr @.str.277, i32 2868 }, %struct.debugfs_reg32 { ptr @.str.278, i32 2900 }, %struct.debugfs_reg32 { ptr @.str.279, i32 2932 }, %struct.debugfs_reg32 { ptr @.str.280, i32 2964 }, %struct.debugfs_reg32 { ptr @.str.281, i32 2996 }, %struct.debugfs_reg32 { ptr @.str.282, i32 3028 }, %struct.debugfs_reg32 { ptr @.str.283, i32 3060 }, %struct.debugfs_reg32 { ptr @.str.284, i32 3092 }, %struct.debugfs_reg32 { ptr @.str.285, i32 3124 }, %struct.debugfs_reg32 { ptr @.str.286, i32 3156 }, %struct.debugfs_reg32 { ptr @.str.287, i32 3188 }, %struct.debugfs_reg32 { ptr @.str.288, i32 3220 }, %struct.debugfs_reg32 { ptr @.str.289, i32 3252 }, %struct.debugfs_reg32 { ptr @.str.290, i32 3284 }, %struct.debugfs_reg32 { ptr @.str.291, i32 3316 }, %struct.debugfs_reg32 { ptr @.str.292, i32 2328 }, %struct.debugfs_reg32 { ptr @.str.293, i32 2360 }, %struct.debugfs_reg32 { ptr @.str.294, i32 2392 }, %struct.debugfs_reg32 { ptr @.str.295, i32 2424 }, %struct.debugfs_reg32 { ptr @.str.296, i32 2456 }, %struct.debugfs_reg32 { ptr @.str.297, i32 2488 }, %struct.debugfs_reg32 { ptr @.str.298, i32 2520 }, %struct.debugfs_reg32 { ptr @.str.299, i32 2552 }, %struct.debugfs_reg32 { ptr @.str.300, i32 2584 }, %struct.debugfs_reg32 { ptr @.str.301, i32 2616 }, %struct.debugfs_reg32 { ptr @.str.302, i32 2648 }, %struct.debugfs_reg32 { ptr @.str.303, i32 2680 }, %struct.debugfs_reg32 { ptr @.str.304, i32 2712 }, %struct.debugfs_reg32 { ptr @.str.305, i32 2744 }, %struct.debugfs_reg32 { ptr @.str.306, i32 2776 }, %struct.debugfs_reg32 { ptr @.str.307, i32 2808 }, %struct.debugfs_reg32 { ptr @.str.308, i32 3584 }, %struct.debugfs_reg32 { ptr @.str.309, i32 1024 }, %struct.debugfs_reg32 { ptr @.str.310, i32 1028 }, %struct.debugfs_reg32 { ptr @.str.311, i32 1032 }, %struct.debugfs_reg32 { ptr @.str.312, i32 1040 }, %struct.debugfs_reg32 { ptr @.str.313, i32 1044 }, %struct.debugfs_reg32 { ptr @.str.314, i32 1048 }, %struct.debugfs_reg32 { ptr @.str.315, i32 1052 }, %struct.debugfs_reg32 { ptr @.str.316, i32 1088 }, %struct.debugfs_reg32 { ptr @.str.317, i32 1280 }, %struct.debugfs_reg32 { ptr @.str.318, i32 1312 }, %struct.debugfs_reg32 { ptr @.str.319, i32 1344 }, %struct.debugfs_reg32 { ptr @.str.320, i32 1376 }, %struct.debugfs_reg32 { ptr @.str.321, i32 1408 }, %struct.debugfs_reg32 { ptr @.str.322, i32 1440 }, %struct.debugfs_reg32 { ptr @.str.323, i32 1472 }, %struct.debugfs_reg32 { ptr @.str.324, i32 1504 }, %struct.debugfs_reg32 { ptr @.str.325, i32 1536 }, %struct.debugfs_reg32 { ptr @.str.326, i32 1568 }, %struct.debugfs_reg32 { ptr @.str.327, i32 1600 }, %struct.debugfs_reg32 { ptr @.str.328, i32 1632 }, %struct.debugfs_reg32 { ptr @.str.329, i32 1664 }, %struct.debugfs_reg32 { ptr @.str.330, i32 1696 }, %struct.debugfs_reg32 { ptr @.str.331, i32 1728 }, %struct.debugfs_reg32 { ptr @.str.332, i32 1760 }, %struct.debugfs_reg32 { ptr @.str.333, i32 1284 }, %struct.debugfs_reg32 { ptr @.str.334, i32 1316 }, %struct.debugfs_reg32 { ptr @.str.335, i32 1348 }, %struct.debugfs_reg32 { ptr @.str.336, i32 1380 }, %struct.debugfs_reg32 { ptr @.str.337, i32 1412 }, %struct.debugfs_reg32 { ptr @.str.338, i32 1444 }, %struct.debugfs_reg32 { ptr @.str.339, i32 1476 }, %struct.debugfs_reg32 { ptr @.str.340, i32 1508 }, %struct.debugfs_reg32 { ptr @.str.341, i32 1540 }, %struct.debugfs_reg32 { ptr @.str.342, i32 1572 }, %struct.debugfs_reg32 { ptr @.str.343, i32 1604 }, %struct.debugfs_reg32 { ptr @.str.344, i32 1636 }, %struct.debugfs_reg32 { ptr @.str.345, i32 1668 }, %struct.debugfs_reg32 { ptr @.str.346, i32 1700 }, %struct.debugfs_reg32 { ptr @.str.347, i32 1732 }, %struct.debugfs_reg32 { ptr @.str.348, i32 1764 }, %struct.debugfs_reg32 { ptr @.str.349, i32 1288 }, %struct.debugfs_reg32 { ptr @.str.350, i32 1320 }, %struct.debugfs_reg32 { ptr @.str.351, i32 1352 }, %struct.debugfs_reg32 { ptr @.str.352, i32 1384 }, %struct.debugfs_reg32 { ptr @.str.353, i32 1416 }, %struct.debugfs_reg32 { ptr @.str.354, i32 1448 }, %struct.debugfs_reg32 { ptr @.str.355, i32 1480 }, %struct.debugfs_reg32 { ptr @.str.356, i32 1512 }, %struct.debugfs_reg32 { ptr @.str.357, i32 1544 }, %struct.debugfs_reg32 { ptr @.str.358, i32 1576 }, %struct.debugfs_reg32 { ptr @.str.359, i32 1608 }, %struct.debugfs_reg32 { ptr @.str.360, i32 1640 }, %struct.debugfs_reg32 { ptr @.str.361, i32 1672 }, %struct.debugfs_reg32 { ptr @.str.362, i32 1704 }, %struct.debugfs_reg32 { ptr @.str.363, i32 1736 }, %struct.debugfs_reg32 { ptr @.str.364, i32 1768 }, %struct.debugfs_reg32 { ptr @.str.365, i32 1292 }, %struct.debugfs_reg32 { ptr @.str.366, i32 1324 }, %struct.debugfs_reg32 { ptr @.str.367, i32 1356 }, %struct.debugfs_reg32 { ptr @.str.368, i32 1388 }, %struct.debugfs_reg32 { ptr @.str.369, i32 1420 }, %struct.debugfs_reg32 { ptr @.str.370, i32 1452 }, %struct.debugfs_reg32 { ptr @.str.371, i32 1484 }, %struct.debugfs_reg32 { ptr @.str.372, i32 1516 }, %struct.debugfs_reg32 { ptr @.str.373, i32 1548 }, %struct.debugfs_reg32 { ptr @.str.374, i32 1580 }, %struct.debugfs_reg32 { ptr @.str.375, i32 1612 }, %struct.debugfs_reg32 { ptr @.str.376, i32 1644 }, %struct.debugfs_reg32 { ptr @.str.377, i32 1676 }, %struct.debugfs_reg32 { ptr @.str.378, i32 1708 }, %struct.debugfs_reg32 { ptr @.str.379, i32 1740 }, %struct.debugfs_reg32 { ptr @.str.380, i32 1772 }, %struct.debugfs_reg32 { ptr @.str.381, i32 1296 }, %struct.debugfs_reg32 { ptr @.str.382, i32 1328 }, %struct.debugfs_reg32 { ptr @.str.383, i32 1360 }, %struct.debugfs_reg32 { ptr @.str.384, i32 1392 }, %struct.debugfs_reg32 { ptr @.str.385, i32 1424 }, %struct.debugfs_reg32 { ptr @.str.386, i32 1456 }, %struct.debugfs_reg32 { ptr @.str.387, i32 1488 }, %struct.debugfs_reg32 { ptr @.str.388, i32 1520 }, %struct.debugfs_reg32 { ptr @.str.389, i32 1552 }, %struct.debugfs_reg32 { ptr @.str.390, i32 1584 }, %struct.debugfs_reg32 { ptr @.str.391, i32 1616 }, %struct.debugfs_reg32 { ptr @.str.392, i32 1648 }, %struct.debugfs_reg32 { ptr @.str.393, i32 1680 }, %struct.debugfs_reg32 { ptr @.str.394, i32 1712 }, %struct.debugfs_reg32 { ptr @.str.395, i32 1744 }, %struct.debugfs_reg32 { ptr @.str.396, i32 1776 }, %struct.debugfs_reg32 { ptr @.str.397, i32 1300 }, %struct.debugfs_reg32 { ptr @.str.398, i32 1332 }, %struct.debugfs_reg32 { ptr @.str.399, i32 1364 }, %struct.debugfs_reg32 { ptr @.str.400, i32 1396 }, %struct.debugfs_reg32 { ptr @.str.401, i32 1428 }, %struct.debugfs_reg32 { ptr @.str.402, i32 1460 }, %struct.debugfs_reg32 { ptr @.str.403, i32 1492 }, %struct.debugfs_reg32 { ptr @.str.404, i32 1524 }, %struct.debugfs_reg32 { ptr @.str.405, i32 1556 }, %struct.debugfs_reg32 { ptr @.str.406, i32 1588 }, %struct.debugfs_reg32 { ptr @.str.407, i32 1620 }, %struct.debugfs_reg32 { ptr @.str.408, i32 1652 }, %struct.debugfs_reg32 { ptr @.str.409, i32 1684 }, %struct.debugfs_reg32 { ptr @.str.410, i32 1716 }, %struct.debugfs_reg32 { ptr @.str.411, i32 1748 }, %struct.debugfs_reg32 { ptr @.str.412, i32 1780 }, %struct.debugfs_reg32 { ptr @.str.413, i32 1308 }, %struct.debugfs_reg32 { ptr @.str.414, i32 1340 }, %struct.debugfs_reg32 { ptr @.str.415, i32 1372 }, %struct.debugfs_reg32 { ptr @.str.416, i32 1404 }, %struct.debugfs_reg32 { ptr @.str.417, i32 1436 }, %struct.debugfs_reg32 { ptr @.str.418, i32 1468 }, %struct.debugfs_reg32 { ptr @.str.419, i32 1500 }, %struct.debugfs_reg32 { ptr @.str.420, i32 1532 }, %struct.debugfs_reg32 { ptr @.str.421, i32 1564 }, %struct.debugfs_reg32 { ptr @.str.422, i32 1596 }, %struct.debugfs_reg32 { ptr @.str.423, i32 1628 }, %struct.debugfs_reg32 { ptr @.str.424, i32 1660 }, %struct.debugfs_reg32 { ptr @.str.425, i32 1692 }, %struct.debugfs_reg32 { ptr @.str.426, i32 1724 }, %struct.debugfs_reg32 { ptr @.str.427, i32 1756 }, %struct.debugfs_reg32 { ptr @.str.428, i32 1788 }], align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"regdump\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%-30s: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"otg_caps.hnp_support\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"otg_caps.srp_support\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"otg_caps.otg_rev\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"dma_desc_enable\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"dma_desc_fs_enable\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"enable_dynamic_fifo\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"en_multiple_tx_fifo\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"host_rx_fifo_size\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"host_nperio_tx_fifo_size\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"host_perio_tx_fifo_size\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"max_transfer_size\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"max_packet_count\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"host_channels\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"phy_type\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"phy_utmi_width\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"phy_ulpi_ddr\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"phy_ulpi_ext_vbus\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"i2c_enable\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"ipg_isoc_en\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"ulpi_fs_ls\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"host_support_fs_ls_low_power\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"host_ls_low_power_phy_clk\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"activate_stm_fs_transceiver\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"activate_stm_id_vb_detection\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"ts_dline\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"reload_ctl\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"%-30s: 0x%x\0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"ahbcfg\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"uframe_sched\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"external_id_pin_ctl\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"power_down\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"lpm\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"lpm_clock_gating\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"besl\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"hird_threshold_en\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"hird_threshold\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"service_interval\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"host_dma\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"g_dma\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"g_dma_desc\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"g_rx_fifo_size\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"g_np_tx_fifo_size\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"g_tx_fifo_size[%d]\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"op_mode\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"rx_fifo_size\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"dev_nperio_tx_fifo_size\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"nperio_tx_q_depth\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"host_perio_tx_q_depth\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"dev_token_q_depth\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"hs_phy_type\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"fs_phy_type\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"num_dev_ep\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"num_dev_perio_in_ep\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"total_fifo_size\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"power_optimized\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"utmi_phy_data_width\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"snpsid\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"dev_ep_dirs\00", align 1
@.str.65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@state_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @state_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.68 = private unnamed_addr constant [9 x i8] c"testmode\00", align 1
@testmode_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @testmode_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @testmode_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.69 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@fifo_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fifo_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ep_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ep_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.70 = private unnamed_addr constant [39 x i8] c"DCFG=0x%08x, DCTL=0x%08x, DSTS=0x%08x\0A\00", align 1
@.str.71 = private unnamed_addr constant [33 x i8] c"DIEPMSK=0x%08x, DOEPMASK=0x%08x\0A\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"GINTMSK=0x%08x, GINTSTS=0x%08x\0A\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"DAINTMSK=0x%08x, DAINT=0x%08x\0A\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"GNPTXSTS=0x%08x, GRXSTSR=%08x\0A\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"\0AEndpoint status:\0A\00", align 1
@.str.76 = private unnamed_addr constant [37 x i8] c"ep%d: DIEPCTL=0x%08x, DOEPCTL=0x%08x\00", align 1
@.str.77 = private unnamed_addr constant [35 x i8] c", DIEPTSIZ=0x%08x, DOEPTSIZ=0x%08x\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"test_j\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"test_k\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"test_se0_nak\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"test_packet\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"test_force_enable\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"no test\0A\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"test_j\0A\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"test_k\0A\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"test_se0_nak\0A\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"test_packet\0A\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"test_force_enable\0A\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"UNKNOWN %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [21 x i8] c"Non-periodic FIFOs:\0A\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"RXFIFO: Size %d\0A\00", align 1
@.str.95 = private unnamed_addr constant [33 x i8] c"NPTXFIFO: Size %d, Start 0x%08x\0A\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"\0APeriodic TXFIFOs:\0A\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"\09DPTXFIFO%2d: Size %d, Start 0x%08x\0A\00", align 1
@.str.98 = private unnamed_addr constant [39 x i8] c"Endpoint index %d, named %s,  dir %s:\0A\00", align 1
@.str.99 = private unnamed_addr constant [33 x i8] c"\09DIEPCTL=0x%08x, DOEPCTL=0x%08x\0A\00", align 1
@.str.100 = private unnamed_addr constant [33 x i8] c"\09DIEPDMA=0x%08x, DOEPDMA=0x%08x\0A\00", align 1
@.str.101 = private unnamed_addr constant [33 x i8] c"\09DIEPINT=0x%08x, DOEPINT=0x%08x\0A\00", align 1
@.str.102 = private unnamed_addr constant [35 x i8] c"\09DIEPTSIZ=0x%08x, DOEPTSIZ=0x%08x\0A\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"mps %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"total_data=%ld\0A\00", align 1
@.str.105 = private unnamed_addr constant [23 x i8] c"request list (%p,%p):\0A\00", align 1
@.str.106 = private unnamed_addr constant [30 x i8] c"not showing more requests...\0A\00", align 1
@.str.107 = private unnamed_addr constant [26 x i8] c"%c req %p: %d bytes @%p, \00", align 1
@.str.108 = private unnamed_addr constant [17 x i8] c"%d done, res %d\0A\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"GOTGCTL\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"GOTGINT\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"GAHBCFG\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"GUSBCFG\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"GRSTCTL\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"GINTSTS\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"GINTMSK\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"GRXSTSR\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"GRXFSIZ\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"GNPTXFSIZ\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"GNPTXSTS\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"GI2CCTL\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"GPVNDCTL\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"GGPIO\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"GUID\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"GSNPSID\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"GHWCFG1\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"GHWCFG2\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"GHWCFG3\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"GHWCFG4\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"GLPMCFG\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"GPWRDN\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"GDFIFOCFG\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"ADPCTL\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"HPTXFSIZ\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"DPTXFSIZN(1)\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"DPTXFSIZN(2)\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"DPTXFSIZN(3)\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"DPTXFSIZN(4)\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"DPTXFSIZN(5)\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"DPTXFSIZN(6)\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"DPTXFSIZN(7)\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"DPTXFSIZN(8)\00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"DPTXFSIZN(9)\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"DPTXFSIZN(10)\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"DPTXFSIZN(11)\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"DPTXFSIZN(12)\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c"DPTXFSIZN(13)\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"DPTXFSIZN(14)\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"DPTXFSIZN(15)\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"DCFG\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"DCTL\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"DSTS\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"DIEPMSK\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"DOEPMSK\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"DAINT\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"DAINTMSK\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"DTKNQR1\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"DTKNQR2\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"DTKNQR3\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"DTKNQR4\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"DVBUSDIS\00", align 1
@.str.163 = private unnamed_addr constant [11 x i8] c"DVBUSPULSE\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"DIEPCTL(0)\00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c"DIEPCTL(1)\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"DIEPCTL(2)\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"DIEPCTL(3)\00", align 1
@.str.168 = private unnamed_addr constant [11 x i8] c"DIEPCTL(4)\00", align 1
@.str.169 = private unnamed_addr constant [11 x i8] c"DIEPCTL(5)\00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"DIEPCTL(6)\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"DIEPCTL(7)\00", align 1
@.str.172 = private unnamed_addr constant [11 x i8] c"DIEPCTL(8)\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"DIEPCTL(9)\00", align 1
@.str.174 = private unnamed_addr constant [12 x i8] c"DIEPCTL(10)\00", align 1
@.str.175 = private unnamed_addr constant [12 x i8] c"DIEPCTL(11)\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"DIEPCTL(12)\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"DIEPCTL(13)\00", align 1
@.str.178 = private unnamed_addr constant [12 x i8] c"DIEPCTL(14)\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"DIEPCTL(15)\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"DOEPCTL(0)\00", align 1
@.str.181 = private unnamed_addr constant [11 x i8] c"DOEPCTL(1)\00", align 1
@.str.182 = private unnamed_addr constant [11 x i8] c"DOEPCTL(2)\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"DOEPCTL(3)\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"DOEPCTL(4)\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"DOEPCTL(5)\00", align 1
@.str.186 = private unnamed_addr constant [11 x i8] c"DOEPCTL(6)\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"DOEPCTL(7)\00", align 1
@.str.188 = private unnamed_addr constant [11 x i8] c"DOEPCTL(8)\00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c"DOEPCTL(9)\00", align 1
@.str.190 = private unnamed_addr constant [12 x i8] c"DOEPCTL(10)\00", align 1
@.str.191 = private unnamed_addr constant [12 x i8] c"DOEPCTL(11)\00", align 1
@.str.192 = private unnamed_addr constant [12 x i8] c"DOEPCTL(12)\00", align 1
@.str.193 = private unnamed_addr constant [12 x i8] c"DOEPCTL(13)\00", align 1
@.str.194 = private unnamed_addr constant [12 x i8] c"DOEPCTL(14)\00", align 1
@.str.195 = private unnamed_addr constant [12 x i8] c"DOEPCTL(15)\00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"DIEPINT(0)\00", align 1
@.str.197 = private unnamed_addr constant [11 x i8] c"DIEPINT(1)\00", align 1
@.str.198 = private unnamed_addr constant [11 x i8] c"DIEPINT(2)\00", align 1
@.str.199 = private unnamed_addr constant [11 x i8] c"DIEPINT(3)\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"DIEPINT(4)\00", align 1
@.str.201 = private unnamed_addr constant [11 x i8] c"DIEPINT(5)\00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"DIEPINT(6)\00", align 1
@.str.203 = private unnamed_addr constant [11 x i8] c"DIEPINT(7)\00", align 1
@.str.204 = private unnamed_addr constant [11 x i8] c"DIEPINT(8)\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"DIEPINT(9)\00", align 1
@.str.206 = private unnamed_addr constant [12 x i8] c"DIEPINT(10)\00", align 1
@.str.207 = private unnamed_addr constant [12 x i8] c"DIEPINT(11)\00", align 1
@.str.208 = private unnamed_addr constant [12 x i8] c"DIEPINT(12)\00", align 1
@.str.209 = private unnamed_addr constant [12 x i8] c"DIEPINT(13)\00", align 1
@.str.210 = private unnamed_addr constant [12 x i8] c"DIEPINT(14)\00", align 1
@.str.211 = private unnamed_addr constant [12 x i8] c"DIEPINT(15)\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"DOEPINT(0)\00", align 1
@.str.213 = private unnamed_addr constant [11 x i8] c"DOEPINT(1)\00", align 1
@.str.214 = private unnamed_addr constant [11 x i8] c"DOEPINT(2)\00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c"DOEPINT(3)\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"DOEPINT(4)\00", align 1
@.str.217 = private unnamed_addr constant [11 x i8] c"DOEPINT(5)\00", align 1
@.str.218 = private unnamed_addr constant [11 x i8] c"DOEPINT(6)\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"DOEPINT(7)\00", align 1
@.str.220 = private unnamed_addr constant [11 x i8] c"DOEPINT(8)\00", align 1
@.str.221 = private unnamed_addr constant [11 x i8] c"DOEPINT(9)\00", align 1
@.str.222 = private unnamed_addr constant [12 x i8] c"DOEPINT(10)\00", align 1
@.str.223 = private unnamed_addr constant [12 x i8] c"DOEPINT(11)\00", align 1
@.str.224 = private unnamed_addr constant [12 x i8] c"DOEPINT(12)\00", align 1
@.str.225 = private unnamed_addr constant [12 x i8] c"DOEPINT(13)\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"DOEPINT(14)\00", align 1
@.str.227 = private unnamed_addr constant [12 x i8] c"DOEPINT(15)\00", align 1
@.str.228 = private unnamed_addr constant [12 x i8] c"DIEPTSIZ(0)\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"DIEPTSIZ(1)\00", align 1
@.str.230 = private unnamed_addr constant [12 x i8] c"DIEPTSIZ(2)\00", align 1
@.str.231 = private unnamed_addr constant [12 x i8] c"DIEPTSIZ(3)\00", align 1
@.str.232 = private unnamed_addr constant [12 x i8] c"DIEPTSIZ(4)\00", align 1
@.str.233 = private unnamed_addr constant [12 x i8] c"DIEPTSIZ(5)\00", align 1
@.str.234 = private unnamed_addr constant [12 x i8] c"DIEPTSIZ(6)\00", align 1
@.str.235 = private unnamed_addr constant [12 x i8] c"DIEPTSIZ(7)\00", align 1
@.str.236 = private unnamed_addr constant [12 x i8] c"DIEPTSIZ(8)\00", align 1
@.str.237 = private unnamed_addr constant [12 x i8] c"DIEPTSIZ(9)\00", align 1
@.str.238 = private unnamed_addr constant [13 x i8] c"DIEPTSIZ(10)\00", align 1
@.str.239 = private unnamed_addr constant [13 x i8] c"DIEPTSIZ(11)\00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"DIEPTSIZ(12)\00", align 1
@.str.241 = private unnamed_addr constant [13 x i8] c"DIEPTSIZ(13)\00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"DIEPTSIZ(14)\00", align 1
@.str.243 = private unnamed_addr constant [13 x i8] c"DIEPTSIZ(15)\00", align 1
@.str.244 = private unnamed_addr constant [12 x i8] c"DOEPTSIZ(0)\00", align 1
@.str.245 = private unnamed_addr constant [12 x i8] c"DOEPTSIZ(1)\00", align 1
@.str.246 = private unnamed_addr constant [12 x i8] c"DOEPTSIZ(2)\00", align 1
@.str.247 = private unnamed_addr constant [12 x i8] c"DOEPTSIZ(3)\00", align 1
@.str.248 = private unnamed_addr constant [12 x i8] c"DOEPTSIZ(4)\00", align 1
@.str.249 = private unnamed_addr constant [12 x i8] c"DOEPTSIZ(5)\00", align 1
@.str.250 = private unnamed_addr constant [12 x i8] c"DOEPTSIZ(6)\00", align 1
@.str.251 = private unnamed_addr constant [12 x i8] c"DOEPTSIZ(7)\00", align 1
@.str.252 = private unnamed_addr constant [12 x i8] c"DOEPTSIZ(8)\00", align 1
@.str.253 = private unnamed_addr constant [12 x i8] c"DOEPTSIZ(9)\00", align 1
@.str.254 = private unnamed_addr constant [13 x i8] c"DOEPTSIZ(10)\00", align 1
@.str.255 = private unnamed_addr constant [13 x i8] c"DOEPTSIZ(11)\00", align 1
@.str.256 = private unnamed_addr constant [13 x i8] c"DOEPTSIZ(12)\00", align 1
@.str.257 = private unnamed_addr constant [13 x i8] c"DOEPTSIZ(13)\00", align 1
@.str.258 = private unnamed_addr constant [13 x i8] c"DOEPTSIZ(14)\00", align 1
@.str.259 = private unnamed_addr constant [13 x i8] c"DOEPTSIZ(15)\00", align 1
@.str.260 = private unnamed_addr constant [11 x i8] c"DIEPDMA(0)\00", align 1
@.str.261 = private unnamed_addr constant [11 x i8] c"DIEPDMA(1)\00", align 1
@.str.262 = private unnamed_addr constant [11 x i8] c"DIEPDMA(2)\00", align 1
@.str.263 = private unnamed_addr constant [11 x i8] c"DIEPDMA(3)\00", align 1
@.str.264 = private unnamed_addr constant [11 x i8] c"DIEPDMA(4)\00", align 1
@.str.265 = private unnamed_addr constant [11 x i8] c"DIEPDMA(5)\00", align 1
@.str.266 = private unnamed_addr constant [11 x i8] c"DIEPDMA(6)\00", align 1
@.str.267 = private unnamed_addr constant [11 x i8] c"DIEPDMA(7)\00", align 1
@.str.268 = private unnamed_addr constant [11 x i8] c"DIEPDMA(8)\00", align 1
@.str.269 = private unnamed_addr constant [11 x i8] c"DIEPDMA(9)\00", align 1
@.str.270 = private unnamed_addr constant [12 x i8] c"DIEPDMA(10)\00", align 1
@.str.271 = private unnamed_addr constant [12 x i8] c"DIEPDMA(11)\00", align 1
@.str.272 = private unnamed_addr constant [12 x i8] c"DIEPDMA(12)\00", align 1
@.str.273 = private unnamed_addr constant [12 x i8] c"DIEPDMA(13)\00", align 1
@.str.274 = private unnamed_addr constant [12 x i8] c"DIEPDMA(14)\00", align 1
@.str.275 = private unnamed_addr constant [12 x i8] c"DIEPDMA(15)\00", align 1
@.str.276 = private unnamed_addr constant [11 x i8] c"DOEPDMA(0)\00", align 1
@.str.277 = private unnamed_addr constant [11 x i8] c"DOEPDMA(1)\00", align 1
@.str.278 = private unnamed_addr constant [11 x i8] c"DOEPDMA(2)\00", align 1
@.str.279 = private unnamed_addr constant [11 x i8] c"DOEPDMA(3)\00", align 1
@.str.280 = private unnamed_addr constant [11 x i8] c"DOEPDMA(4)\00", align 1
@.str.281 = private unnamed_addr constant [11 x i8] c"DOEPDMA(5)\00", align 1
@.str.282 = private unnamed_addr constant [11 x i8] c"DOEPDMA(6)\00", align 1
@.str.283 = private unnamed_addr constant [11 x i8] c"DOEPDMA(7)\00", align 1
@.str.284 = private unnamed_addr constant [11 x i8] c"DOEPDMA(8)\00", align 1
@.str.285 = private unnamed_addr constant [11 x i8] c"DOEPDMA(9)\00", align 1
@.str.286 = private unnamed_addr constant [12 x i8] c"DOEPDMA(10)\00", align 1
@.str.287 = private unnamed_addr constant [12 x i8] c"DOEPDMA(11)\00", align 1
@.str.288 = private unnamed_addr constant [12 x i8] c"DOEPDMA(12)\00", align 1
@.str.289 = private unnamed_addr constant [12 x i8] c"DOEPDMA(13)\00", align 1
@.str.290 = private unnamed_addr constant [12 x i8] c"DOEPDMA(14)\00", align 1
@.str.291 = private unnamed_addr constant [12 x i8] c"DOEPDMA(15)\00", align 1
@.str.292 = private unnamed_addr constant [11 x i8] c"DTXFSTS(0)\00", align 1
@.str.293 = private unnamed_addr constant [11 x i8] c"DTXFSTS(1)\00", align 1
@.str.294 = private unnamed_addr constant [11 x i8] c"DTXFSTS(2)\00", align 1
@.str.295 = private unnamed_addr constant [11 x i8] c"DTXFSTS(3)\00", align 1
@.str.296 = private unnamed_addr constant [11 x i8] c"DTXFSTS(4)\00", align 1
@.str.297 = private unnamed_addr constant [11 x i8] c"DTXFSTS(5)\00", align 1
@.str.298 = private unnamed_addr constant [11 x i8] c"DTXFSTS(6)\00", align 1
@.str.299 = private unnamed_addr constant [11 x i8] c"DTXFSTS(7)\00", align 1
@.str.300 = private unnamed_addr constant [11 x i8] c"DTXFSTS(8)\00", align 1
@.str.301 = private unnamed_addr constant [11 x i8] c"DTXFSTS(9)\00", align 1
@.str.302 = private unnamed_addr constant [12 x i8] c"DTXFSTS(10)\00", align 1
@.str.303 = private unnamed_addr constant [12 x i8] c"DTXFSTS(11)\00", align 1
@.str.304 = private unnamed_addr constant [12 x i8] c"DTXFSTS(12)\00", align 1
@.str.305 = private unnamed_addr constant [12 x i8] c"DTXFSTS(13)\00", align 1
@.str.306 = private unnamed_addr constant [12 x i8] c"DTXFSTS(14)\00", align 1
@.str.307 = private unnamed_addr constant [12 x i8] c"DTXFSTS(15)\00", align 1
@.str.308 = private unnamed_addr constant [7 x i8] c"PCGCTL\00", align 1
@.str.309 = private unnamed_addr constant [5 x i8] c"HCFG\00", align 1
@.str.310 = private unnamed_addr constant [5 x i8] c"HFIR\00", align 1
@.str.311 = private unnamed_addr constant [6 x i8] c"HFNUM\00", align 1
@.str.312 = private unnamed_addr constant [8 x i8] c"HPTXSTS\00", align 1
@.str.313 = private unnamed_addr constant [6 x i8] c"HAINT\00", align 1
@.str.314 = private unnamed_addr constant [9 x i8] c"HAINTMSK\00", align 1
@.str.315 = private unnamed_addr constant [9 x i8] c"HFLBADDR\00", align 1
@.str.316 = private unnamed_addr constant [6 x i8] c"HPRT0\00", align 1
@.str.317 = private unnamed_addr constant [10 x i8] c"HCCHAR(0)\00", align 1
@.str.318 = private unnamed_addr constant [10 x i8] c"HCCHAR(1)\00", align 1
@.str.319 = private unnamed_addr constant [10 x i8] c"HCCHAR(2)\00", align 1
@.str.320 = private unnamed_addr constant [10 x i8] c"HCCHAR(3)\00", align 1
@.str.321 = private unnamed_addr constant [10 x i8] c"HCCHAR(4)\00", align 1
@.str.322 = private unnamed_addr constant [10 x i8] c"HCCHAR(5)\00", align 1
@.str.323 = private unnamed_addr constant [10 x i8] c"HCCHAR(6)\00", align 1
@.str.324 = private unnamed_addr constant [10 x i8] c"HCCHAR(7)\00", align 1
@.str.325 = private unnamed_addr constant [10 x i8] c"HCCHAR(8)\00", align 1
@.str.326 = private unnamed_addr constant [10 x i8] c"HCCHAR(9)\00", align 1
@.str.327 = private unnamed_addr constant [11 x i8] c"HCCHAR(10)\00", align 1
@.str.328 = private unnamed_addr constant [11 x i8] c"HCCHAR(11)\00", align 1
@.str.329 = private unnamed_addr constant [11 x i8] c"HCCHAR(12)\00", align 1
@.str.330 = private unnamed_addr constant [11 x i8] c"HCCHAR(13)\00", align 1
@.str.331 = private unnamed_addr constant [11 x i8] c"HCCHAR(14)\00", align 1
@.str.332 = private unnamed_addr constant [11 x i8] c"HCCHAR(15)\00", align 1
@.str.333 = private unnamed_addr constant [10 x i8] c"HCSPLT(0)\00", align 1
@.str.334 = private unnamed_addr constant [10 x i8] c"HCSPLT(1)\00", align 1
@.str.335 = private unnamed_addr constant [10 x i8] c"HCSPLT(2)\00", align 1
@.str.336 = private unnamed_addr constant [10 x i8] c"HCSPLT(3)\00", align 1
@.str.337 = private unnamed_addr constant [10 x i8] c"HCSPLT(4)\00", align 1
@.str.338 = private unnamed_addr constant [10 x i8] c"HCSPLT(5)\00", align 1
@.str.339 = private unnamed_addr constant [10 x i8] c"HCSPLT(6)\00", align 1
@.str.340 = private unnamed_addr constant [10 x i8] c"HCSPLT(7)\00", align 1
@.str.341 = private unnamed_addr constant [10 x i8] c"HCSPLT(8)\00", align 1
@.str.342 = private unnamed_addr constant [10 x i8] c"HCSPLT(9)\00", align 1
@.str.343 = private unnamed_addr constant [11 x i8] c"HCSPLT(10)\00", align 1
@.str.344 = private unnamed_addr constant [11 x i8] c"HCSPLT(11)\00", align 1
@.str.345 = private unnamed_addr constant [11 x i8] c"HCSPLT(12)\00", align 1
@.str.346 = private unnamed_addr constant [11 x i8] c"HCSPLT(13)\00", align 1
@.str.347 = private unnamed_addr constant [11 x i8] c"HCSPLT(14)\00", align 1
@.str.348 = private unnamed_addr constant [11 x i8] c"HCSPLT(15)\00", align 1
@.str.349 = private unnamed_addr constant [9 x i8] c"HCINT(0)\00", align 1
@.str.350 = private unnamed_addr constant [9 x i8] c"HCINT(1)\00", align 1
@.str.351 = private unnamed_addr constant [9 x i8] c"HCINT(2)\00", align 1
@.str.352 = private unnamed_addr constant [9 x i8] c"HCINT(3)\00", align 1
@.str.353 = private unnamed_addr constant [9 x i8] c"HCINT(4)\00", align 1
@.str.354 = private unnamed_addr constant [9 x i8] c"HCINT(5)\00", align 1
@.str.355 = private unnamed_addr constant [9 x i8] c"HCINT(6)\00", align 1
@.str.356 = private unnamed_addr constant [9 x i8] c"HCINT(7)\00", align 1
@.str.357 = private unnamed_addr constant [9 x i8] c"HCINT(8)\00", align 1
@.str.358 = private unnamed_addr constant [9 x i8] c"HCINT(9)\00", align 1
@.str.359 = private unnamed_addr constant [10 x i8] c"HCINT(10)\00", align 1
@.str.360 = private unnamed_addr constant [10 x i8] c"HCINT(11)\00", align 1
@.str.361 = private unnamed_addr constant [10 x i8] c"HCINT(12)\00", align 1
@.str.362 = private unnamed_addr constant [10 x i8] c"HCINT(13)\00", align 1
@.str.363 = private unnamed_addr constant [10 x i8] c"HCINT(14)\00", align 1
@.str.364 = private unnamed_addr constant [10 x i8] c"HCINT(15)\00", align 1
@.str.365 = private unnamed_addr constant [12 x i8] c"HCINTMSK(0)\00", align 1
@.str.366 = private unnamed_addr constant [12 x i8] c"HCINTMSK(1)\00", align 1
@.str.367 = private unnamed_addr constant [12 x i8] c"HCINTMSK(2)\00", align 1
@.str.368 = private unnamed_addr constant [12 x i8] c"HCINTMSK(3)\00", align 1
@.str.369 = private unnamed_addr constant [12 x i8] c"HCINTMSK(4)\00", align 1
@.str.370 = private unnamed_addr constant [12 x i8] c"HCINTMSK(5)\00", align 1
@.str.371 = private unnamed_addr constant [12 x i8] c"HCINTMSK(6)\00", align 1
@.str.372 = private unnamed_addr constant [12 x i8] c"HCINTMSK(7)\00", align 1
@.str.373 = private unnamed_addr constant [12 x i8] c"HCINTMSK(8)\00", align 1
@.str.374 = private unnamed_addr constant [12 x i8] c"HCINTMSK(9)\00", align 1
@.str.375 = private unnamed_addr constant [13 x i8] c"HCINTMSK(10)\00", align 1
@.str.376 = private unnamed_addr constant [13 x i8] c"HCINTMSK(11)\00", align 1
@.str.377 = private unnamed_addr constant [13 x i8] c"HCINTMSK(12)\00", align 1
@.str.378 = private unnamed_addr constant [13 x i8] c"HCINTMSK(13)\00", align 1
@.str.379 = private unnamed_addr constant [13 x i8] c"HCINTMSK(14)\00", align 1
@.str.380 = private unnamed_addr constant [13 x i8] c"HCINTMSK(15)\00", align 1
@.str.381 = private unnamed_addr constant [10 x i8] c"HCTSIZ(0)\00", align 1
@.str.382 = private unnamed_addr constant [10 x i8] c"HCTSIZ(1)\00", align 1
@.str.383 = private unnamed_addr constant [10 x i8] c"HCTSIZ(2)\00", align 1
@.str.384 = private unnamed_addr constant [10 x i8] c"HCTSIZ(3)\00", align 1
@.str.385 = private unnamed_addr constant [10 x i8] c"HCTSIZ(4)\00", align 1
@.str.386 = private unnamed_addr constant [10 x i8] c"HCTSIZ(5)\00", align 1
@.str.387 = private unnamed_addr constant [10 x i8] c"HCTSIZ(6)\00", align 1
@.str.388 = private unnamed_addr constant [10 x i8] c"HCTSIZ(7)\00", align 1
@.str.389 = private unnamed_addr constant [10 x i8] c"HCTSIZ(8)\00", align 1
@.str.390 = private unnamed_addr constant [10 x i8] c"HCTSIZ(9)\00", align 1
@.str.391 = private unnamed_addr constant [11 x i8] c"HCTSIZ(10)\00", align 1
@.str.392 = private unnamed_addr constant [11 x i8] c"HCTSIZ(11)\00", align 1
@.str.393 = private unnamed_addr constant [11 x i8] c"HCTSIZ(12)\00", align 1
@.str.394 = private unnamed_addr constant [11 x i8] c"HCTSIZ(13)\00", align 1
@.str.395 = private unnamed_addr constant [11 x i8] c"HCTSIZ(14)\00", align 1
@.str.396 = private unnamed_addr constant [11 x i8] c"HCTSIZ(15)\00", align 1
@.str.397 = private unnamed_addr constant [9 x i8] c"HCDMA(0)\00", align 1
@.str.398 = private unnamed_addr constant [9 x i8] c"HCDMA(1)\00", align 1
@.str.399 = private unnamed_addr constant [9 x i8] c"HCDMA(2)\00", align 1
@.str.400 = private unnamed_addr constant [9 x i8] c"HCDMA(3)\00", align 1
@.str.401 = private unnamed_addr constant [9 x i8] c"HCDMA(4)\00", align 1
@.str.402 = private unnamed_addr constant [9 x i8] c"HCDMA(5)\00", align 1
@.str.403 = private unnamed_addr constant [9 x i8] c"HCDMA(6)\00", align 1
@.str.404 = private unnamed_addr constant [9 x i8] c"HCDMA(7)\00", align 1
@.str.405 = private unnamed_addr constant [9 x i8] c"HCDMA(8)\00", align 1
@.str.406 = private unnamed_addr constant [9 x i8] c"HCDMA(9)\00", align 1
@.str.407 = private unnamed_addr constant [10 x i8] c"HCDMA(10)\00", align 1
@.str.408 = private unnamed_addr constant [10 x i8] c"HCDMA(11)\00", align 1
@.str.409 = private unnamed_addr constant [10 x i8] c"HCDMA(12)\00", align 1
@.str.410 = private unnamed_addr constant [10 x i8] c"HCDMA(13)\00", align 1
@.str.411 = private unnamed_addr constant [10 x i8] c"HCDMA(14)\00", align 1
@.str.412 = private unnamed_addr constant [10 x i8] c"HCDMA(15)\00", align 1
@.str.413 = private unnamed_addr constant [10 x i8] c"HCDMAB(0)\00", align 1
@.str.414 = private unnamed_addr constant [10 x i8] c"HCDMAB(1)\00", align 1
@.str.415 = private unnamed_addr constant [10 x i8] c"HCDMAB(2)\00", align 1
@.str.416 = private unnamed_addr constant [10 x i8] c"HCDMAB(3)\00", align 1
@.str.417 = private unnamed_addr constant [10 x i8] c"HCDMAB(4)\00", align 1
@.str.418 = private unnamed_addr constant [10 x i8] c"HCDMAB(5)\00", align 1
@.str.419 = private unnamed_addr constant [10 x i8] c"HCDMAB(6)\00", align 1
@.str.420 = private unnamed_addr constant [10 x i8] c"HCDMAB(7)\00", align 1
@.str.421 = private unnamed_addr constant [10 x i8] c"HCDMAB(8)\00", align 1
@.str.422 = private unnamed_addr constant [10 x i8] c"HCDMAB(9)\00", align 1
@.str.423 = private unnamed_addr constant [11 x i8] c"HCDMAB(10)\00", align 1
@.str.424 = private unnamed_addr constant [11 x i8] c"HCDMAB(11)\00", align 1
@.str.425 = private unnamed_addr constant [11 x i8] c"HCDMAB(12)\00", align 1
@.str.426 = private unnamed_addr constant [11 x i8] c"HCDMAB(13)\00", align 1
@.str.427 = private unnamed_addr constant [11 x i8] c"HCDMAB(14)\00", align 1
@.str.428 = private unnamed_addr constant [11 x i8] c"HCDMAB(15)\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_debugfs_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %10 = load ptr, ptr @usb_debug_root, align 4
  %11 = tail call ptr @debugfs_create_dir(ptr noundef %9, ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 32
  store ptr %11, ptr %12, align 8
  %13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %0, ptr noundef nonnull @params_fops) #8
  %14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %0, ptr noundef nonnull @hw_params_fops) #8
  %15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %0, ptr noundef nonnull @dr_mode_fops) #8
  %16 = load ptr, ptr %12, align 8
  %17 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.67, i16 noundef zeroext 292, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @state_fops) #8
  %18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.68, i16 noundef zeroext 420, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @testmode_fops) #8
  %19 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.69, i16 noundef zeroext 292, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @fifo_fops) #8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 70
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %55, label %25

23:                                               ; preds = %35
  %24 = icmp ugt i8 %36, 1
  br i1 %24, label %40, label %55

25:                                               ; preds = %35, %8
  %26 = phi i8 [ %36, %35 ], [ %21, %8 ]
  %27 = phi i32 [ %37, %35 ], [ 0, %8 ]
  %28 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 88, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %29, i32 0, i32 24
  %33 = tail call ptr @debugfs_create_file(ptr noundef %32, i16 noundef zeroext 292, ptr noundef %16, ptr noundef nonnull %29, ptr noundef nonnull @ep_fops) #8
  %34 = load i8, ptr %20, align 1
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i8 [ %34, %31 ], [ %26, %25 ]
  %37 = add nuw nsw i32 %27, 1
  %38 = zext i8 %36 to i32
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %25, label %23

40:                                               ; preds = %50, %23
  %41 = phi i8 [ %51, %50 ], [ %36, %23 ]
  %42 = phi i32 [ %52, %50 ], [ 1, %23 ]
  %43 = getelementptr %struct.dwc2_hsotg, ptr %0, i32 0, i32 87, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %44, i32 0, i32 24
  %48 = tail call ptr @debugfs_create_file(ptr noundef %47, i16 noundef zeroext 292, ptr noundef %16, ptr noundef nonnull %44, ptr noundef nonnull @ep_fops) #8
  %49 = load i8, ptr %20, align 1
  br label %50

50:                                               ; preds = %46, %40
  %51 = phi i8 [ %49, %46 ], [ %41, %40 ]
  %52 = add nuw nsw i32 %42, 1
  %53 = zext i8 %51 to i32
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %40, label %55

55:                                               ; preds = %50, %23, %8
  %56 = load ptr, ptr %0, align 8
  %57 = tail call noalias ptr @devm_kmalloc(ptr noundef %56, i32 noundef 16, i32 noundef 3520) #8
  %58 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 33
  store ptr %57, ptr %58, align 4
  %59 = icmp eq ptr %57, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load ptr, ptr %12, align 8
  tail call void @debugfs_remove(ptr noundef %61) #8
  br label %67

62:                                               ; preds = %55
  store ptr @dwc2_regs, ptr %57, align 4
  %63 = getelementptr inbounds %struct.debugfs_regset32, ptr %57, i32 0, i32 1
  store i32 318, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.debugfs_regset32, ptr %57, i32 0, i32 2
  store ptr %65, ptr %66, align 4
  tail call void @debugfs_create_regset32(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %11, ptr noundef nonnull %57) #8
  br label %67

67:                                               ; preds = %62, %60
  %68 = phi i32 [ 0, %62 ], [ -12, %60 ]
  ret i32 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_debugfs_exit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 8
  tail call void @debugfs_remove(ptr noundef %3) #8
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @params_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @params_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @params_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [32 x i8], align 1
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 0, i32 1
  %8 = load i8, ptr %7, align 2, !range !8
  %9 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %9) #8
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 0, i32 2
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %12) #8
  %13 = load i16, ptr %6, align 4
  %14 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef %14) #8
  %15 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 32
  %16 = load i8, ptr %15, align 1, !range !8
  %17 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, i32 noundef %17) #8
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 33
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %20) #8
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10, i32 noundef %23) #8
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 6
  %25 = load i8, ptr %24, align 1, !range !8
  %26 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef %26) #8
  %27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 7
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef %29) #8
  %30 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 38
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13, i32 noundef %32) #8
  %33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 39
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, i32 noundef %35) #8
  %36 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 40
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15, i32 noundef %38) #8
  %39 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 27
  %40 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef %40) #8
  %41 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 26
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17, i32 noundef %43) #8
  %44 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 37
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.18, i32 noundef %46) #8
  %47 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 1
  %48 = load i8, ptr %47, align 2
  %49 = zext i8 %48 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, i32 noundef %49) #8
  %50 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 3
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, i32 noundef %52) #8
  %53 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 4
  %54 = load i8, ptr %53, align 1, !range !8
  %55 = zext i8 %54 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21, i32 noundef %55) #8
  %56 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 5
  %57 = load i8, ptr %56, align 2, !range !8
  %58 = zext i8 %57 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, i32 noundef %58) #8
  %59 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 8
  %60 = load i8, ptr %59, align 1, !range !8
  %61 = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.23, i32 noundef %61) #8
  %62 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 25
  %63 = load i8, ptr %62, align 1, !range !8
  %64 = zext i8 %63 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.24, i32 noundef %64) #8
  %65 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 10
  %66 = load i8, ptr %65, align 1, !range !8
  %67 = zext i8 %66 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25, i32 noundef %67) #8
  %68 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 34
  %69 = load i8, ptr %68, align 1, !range !8
  %70 = zext i8 %69 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.26, i32 noundef %70) #8
  %71 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 35
  %72 = load i8, ptr %71, align 2, !range !8
  %73 = zext i8 %72 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.27, i32 noundef %73) #8
  %74 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 23
  %75 = load i8, ptr %74, align 1, !range !8
  %76 = zext i8 %75 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.28, i32 noundef %76) #8
  %77 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 24
  %78 = load i8, ptr %77, align 4, !range !8
  %79 = zext i8 %78 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.29, i32 noundef %79) #8
  %80 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 11
  %81 = load i8, ptr %80, align 4, !range !8
  %82 = zext i8 %81 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.30, i32 noundef %82) #8
  %83 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 12
  %84 = load i8, ptr %83, align 1, !range !8
  %85 = zext i8 %84 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.31, i32 noundef %85) #8
  %86 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 28
  %87 = load i32, ptr %86, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %87) #8
  %88 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 13
  %89 = load i8, ptr %88, align 2, !range !8
  %90 = zext i8 %89 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, i32 noundef %90) #8
  %91 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 14
  %92 = load i8, ptr %91, align 1, !range !8
  %93 = zext i8 %92 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.35, i32 noundef %93) #8
  %94 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 15
  %95 = load i32, ptr %94, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.36, i32 noundef %95) #8
  %96 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 17
  %97 = load i8, ptr %96, align 1, !range !8
  %98 = zext i8 %97 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37, i32 noundef %98) #8
  %99 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 18
  %100 = load i8, ptr %99, align 2, !range !8
  %101 = zext i8 %100 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.38, i32 noundef %101) #8
  %102 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 19
  %103 = load i8, ptr %102, align 1, !range !8
  %104 = zext i8 %103 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.39, i32 noundef %104) #8
  %105 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 20
  %106 = load i8, ptr %105, align 4, !range !8
  %107 = zext i8 %106 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.40, i32 noundef %107) #8
  %108 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 22
  %109 = load i8, ptr %108, align 2
  %110 = zext i8 %109 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.41, i32 noundef %110) #8
  %111 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 21
  %112 = load i8, ptr %111, align 1, !range !8
  %113 = zext i8 %112 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.42, i32 noundef %113) #8
  %114 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 31
  %115 = load i8, ptr %114, align 2, !range !8
  %116 = zext i8 %115 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.43, i32 noundef %116) #8
  %117 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 41
  %118 = load i8, ptr %117, align 4, !range !8
  %119 = zext i8 %118 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.44, i32 noundef %119) #8
  %120 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 42
  %121 = load i8, ptr %120, align 1, !range !8
  %122 = zext i8 %121 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.45, i32 noundef %122) #8
  %123 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 43
  %124 = load i32, ptr %123, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.46, i32 noundef %124) #8
  %125 = getelementptr inbounds %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 44
  %126 = load i32, ptr %125, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.47, i32 noundef %126) #8
  br label %127

127:                                              ; preds = %127, %2
  %128 = phi i32 [ 0, %2 ], [ %132, %127 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !9
  %129 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.48, i32 noundef %128)
  %130 = getelementptr %struct.dwc2_hsotg, ptr %5, i32 0, i32 3, i32 45, i32 %128
  %131 = load i32, ptr %130, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef %131) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  %132 = add nuw nsw i32 %128, 1
  %133 = icmp eq i32 %132, 16
  br i1 %133, label %134, label %127

134:                                              ; preds = %127
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_params_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @hw_params_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_params_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef %7) #8
  %8 = load i32, ptr %5, align 4
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.50, i32 noundef %10) #8
  %11 = load i32, ptr %5, align 4
  %12 = lshr i32 %11, 5
  %13 = and i32 %12, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, i32 noundef %13) #8
  %14 = load i32, ptr %5, align 4
  %15 = lshr i32 %14, 6
  %16 = and i32 %15, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef %16) #8
  %17 = load i32, ptr %5, align 4
  %18 = lshr i32 %17, 7
  %19 = and i32 %18, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef %19) #8
  %20 = load i32, ptr %5, align 4
  %21 = lshr i32 %20, 8
  %22 = and i32 %21, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.51, i32 noundef %22) #8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 2, i32 1
  %24 = load i64, ptr %23, align 4
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, i32 noundef %26) #8
  %27 = load i64, ptr %23, align 4
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %28, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef %29) #8
  %30 = load i64, ptr %23, align 4
  %31 = lshr i64 %30, 32
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15, i32 noundef %33) #8
  %34 = load i64, ptr %23, align 4
  %35 = lshr i64 %34, 48
  %36 = trunc i64 %35 to i32
  %37 = and i32 %36, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.53, i32 noundef %37) #8
  %38 = load i64, ptr %23, align 4
  %39 = lshr i64 %38, 51
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.54, i32 noundef %41) #8
  %42 = load i64, ptr %23, align 4
  %43 = lshr i64 %42, 54
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.55, i32 noundef %45) #8
  %46 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 2, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 67108863
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef %48) #8
  %49 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 2, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 2047
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17, i32 noundef %51) #8
  %52 = load i32, ptr %49, align 4
  %53 = lshr i32 %52, 11
  %54 = and i32 %53, 31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.18, i32 noundef %54) #8
  %55 = load i32, ptr %49, align 4
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.56, i32 noundef %57) #8
  %58 = load i32, ptr %49, align 4
  %59 = lshr i32 %58, 18
  %60 = and i32 %59, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.57, i32 noundef %60) #8
  %61 = load i32, ptr %49, align 4
  %62 = lshr i32 %61, 20
  %63 = and i32 %62, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.23, i32 noundef %63) #8
  %64 = load i32, ptr %49, align 4
  %65 = lshr i32 %64, 22
  %66 = and i32 %65, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.58, i32 noundef %66) #8
  %67 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 2, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.59, i32 noundef %69) #8
  %70 = load i32, ptr %67, align 4
  %71 = lshr i32 %70, 4
  %72 = and i32 %71, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.60, i32 noundef %72) #8
  %73 = load i32, ptr %67, align 4
  %74 = lshr i32 %73, 20
  %75 = and i32 %74, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.61, i32 noundef %75) #8
  %76 = load i32, ptr %67, align 4
  %77 = lshr i32 %76, 22
  %78 = and i32 %77, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.62, i32 noundef %78) #8
  %79 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 2, i32 5
  %80 = load i32, ptr %79, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.63, i32 noundef %80) #8
  %81 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 2, i32 6
  %82 = load i32, ptr %81, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.64, i32 noundef %82) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dr_mode_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dr_mode_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dr_mode_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr @.str.65, ptr %3, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @device_property_read_string(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #8
  %8 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.66, ptr noundef %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @state_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @state_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @state_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 2048
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 34
  %10 = load i8, ptr %9, align 8, !range !8
  %11 = icmp eq i8 %10, 0
  %12 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %13 = select i1 %11, i32 %8, i32 %12
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 2052
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %17 = load i8, ptr %9, align 8, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %20 = select i1 %18, i32 %16, i32 %19
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 2056
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %24 = load i8, ptr %9, align 8, !range !8
  %25 = icmp eq i8 %24, 0
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  %27 = select i1 %25, i32 %23, i32 %26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.70, i32 noundef %13, i32 noundef %20, i32 noundef %27) #8
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr i8, ptr %28, i32 2064
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %31 = load i8, ptr %9, align 8, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %34 = select i1 %32, i32 %30, i32 %33
  %35 = load ptr, ptr %5, align 4
  %36 = getelementptr i8, ptr %35, i32 2068
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %38 = load i8, ptr %9, align 8, !range !8
  %39 = icmp eq i8 %38, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  %41 = select i1 %39, i32 %37, i32 %40
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.71, i32 noundef %34, i32 noundef %41) #8
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr i8, ptr %42, i32 24
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %45 = load i8, ptr %9, align 8, !range !8
  %46 = icmp eq i8 %45, 0
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  %48 = select i1 %46, i32 %44, i32 %47
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr i8, ptr %49, i32 20
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %52 = load i8, ptr %9, align 8, !range !8
  %53 = icmp eq i8 %52, 0
  %54 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  %55 = select i1 %53, i32 %51, i32 %54
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.72, i32 noundef %48, i32 noundef %55) #8
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr i8, ptr %56, i32 2076
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %59 = load i8, ptr %9, align 8, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  %62 = select i1 %60, i32 %58, i32 %61
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr i8, ptr %63, i32 2072
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %66 = load i8, ptr %9, align 8, !range !8
  %67 = icmp eq i8 %66, 0
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #8
  %69 = select i1 %67, i32 %65, i32 %68
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.73, i32 noundef %62, i32 noundef %69) #8
  %70 = load ptr, ptr %5, align 4
  %71 = getelementptr i8, ptr %70, i32 44
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %73 = load i8, ptr %9, align 8, !range !8
  %74 = icmp eq i8 %73, 0
  %75 = tail call i32 @llvm.bswap.i32(i32 %72) #8
  %76 = select i1 %74, i32 %72, i32 %75
  %77 = load ptr, ptr %5, align 4
  %78 = getelementptr i8, ptr %77, i32 28
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %80 = load i8, ptr %9, align 8, !range !8
  %81 = icmp eq i8 %80, 0
  %82 = tail call i32 @llvm.bswap.i32(i32 %79) #8
  %83 = select i1 %81, i32 %79, i32 %82
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, i32 noundef %76, i32 noundef %83) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.75) #8
  %84 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 70
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %126, label %87

87:                                               ; preds = %87, %2
  %88 = phi i32 [ %122, %87 ], [ 0, %2 ]
  %89 = shl i32 %88, 5
  %90 = add nuw nsw i32 %89, 2304
  %91 = load ptr, ptr %5, align 4
  %92 = getelementptr i8, ptr %91, i32 %90
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %94 = load i8, ptr %9, align 8, !range !8
  %95 = icmp eq i8 %94, 0
  %96 = tail call i32 @llvm.bswap.i32(i32 %93) #8
  %97 = select i1 %95, i32 %93, i32 %96
  %98 = add nuw nsw i32 %89, 2816
  %99 = load ptr, ptr %5, align 4
  %100 = getelementptr i8, ptr %99, i32 %98
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %102 = load i8, ptr %9, align 8, !range !8
  %103 = icmp eq i8 %102, 0
  %104 = tail call i32 @llvm.bswap.i32(i32 %101) #8
  %105 = select i1 %103, i32 %101, i32 %104
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.76, i32 noundef %88, i32 noundef %97, i32 noundef %105) #8
  %106 = add nuw nsw i32 %89, 2320
  %107 = load ptr, ptr %5, align 4
  %108 = getelementptr i8, ptr %107, i32 %106
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %110 = load i8, ptr %9, align 8, !range !8
  %111 = icmp eq i8 %110, 0
  %112 = tail call i32 @llvm.bswap.i32(i32 %109) #8
  %113 = select i1 %111, i32 %109, i32 %112
  %114 = add nuw nsw i32 %89, 2832
  %115 = load ptr, ptr %5, align 4
  %116 = getelementptr i8, ptr %115, i32 %114
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %118 = load i8, ptr %9, align 8, !range !8
  %119 = icmp eq i8 %118, 0
  %120 = tail call i32 @llvm.bswap.i32(i32 %117) #8
  %121 = select i1 %119, i32 %117, i32 %120
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef %113, i32 noundef %121) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.78) #8
  %122 = add nuw nsw i32 %88, 1
  %123 = load i8, ptr %84, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ult i32 %122, %124
  br i1 %125, label %87, label %126

126:                                              ; preds = %87, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @testmode_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [32 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !9
  %10 = tail call i32 @llvm.umin.i32(i32 %2, i32 31)
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %10, i32 -1090519040) #9, !srcloc !12
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21, !prof !13

14:                                               ; preds = %4
  %15 = tail call ptr @llvm.thread.pointer() #8
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #10, !srcloc !14
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #8, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !16
  %20 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %10) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #8, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !16
  br label %21

21:                                               ; preds = %14, %4
  %22 = phi i32 [ %20, %14 ], [ %10, %4 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !13

24:                                               ; preds = %21
  %25 = sub i32 %10, %22
  %26 = getelementptr i8, ptr %5, i32 %25
  call void @llvm.memset.p0.i32(ptr align 1 %26, i8 0, i32 %22, i1 false) #8
  br label %48

27:                                               ; preds = %21
  %28 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %5, ptr noundef nonnull dereferenceable(6) @.str.79, i32 6)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %5, ptr noundef nonnull dereferenceable(6) @.str.80, i32 6)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %5, ptr noundef nonnull dereferenceable(12) @.str.81, i32 12)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %5, ptr noundef nonnull dereferenceable(11) @.str.82, i32 11)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %5, ptr noundef nonnull dereferenceable(17) @.str.83, i32 17)
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 5, i32 0
  br label %43

43:                                               ; preds = %39, %36, %33, %30, %27
  %44 = phi i32 [ 1, %27 ], [ 2, %30 ], [ 3, %33 ], [ 4, %36 ], [ %42, %39 ]
  %45 = getelementptr inbounds %struct.dwc2_hsotg, ptr %9, i32 0, i32 18
  %46 = call i32 @_raw_spin_lock_irqsave(ptr noundef %45) #8
  %47 = call i32 @dwc2_hsotg_set_test_mode(ptr noundef %9, i32 noundef %44) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %45, i32 noundef %46) #8
  br label %48

48:                                               ; preds = %43, %24
  %49 = phi i32 [ %2, %43 ], [ -14, %24 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @testmode_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @testmode_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_set_test_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @testmode_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 18
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 2052
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 34
  %12 = load i8, ptr %11, align 8, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = lshr i32 %10, 24
  %15 = select i1 %13, i32 %10, i32 %14
  %16 = lshr i32 %15, 4
  %17 = and i32 %16, 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  switch i32 %17, label %24 [
    i32 0, label %18
    i32 1, label %19
    i32 2, label %20
    i32 3, label %21
    i32 4, label %22
    i32 5, label %23
  ]

18:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.86) #8
  br label %25

19:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.87) #8
  br label %25

20:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.88) #8
  br label %25

21:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.89) #8
  br label %25

22:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.90) #8
  br label %25

23:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.91) #8
  br label %25

24:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.92, i32 noundef %17) #8
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fifo_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @fifo_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fifo_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @dwc2_hsotg_tx_fifo_count(ptr noundef %4) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.93) #8
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 34
  %11 = load i8, ptr %10, align 8, !range !8
  %12 = icmp eq i8 %11, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %14 = select i1 %12, i32 %9, i32 %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.94, i32 noundef %14) #8
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %18 = load i8, ptr %10, align 8, !range !8
  %19 = icmp eq i8 %18, 0
  %20 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %21 = select i1 %19, i32 %17, i32 %20
  %22 = lshr i32 %21, 16
  %23 = and i32 %21, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, i32 noundef %22, i32 noundef %23) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.96) #8
  %24 = icmp slt i32 %5, 1
  br i1 %24, label %40, label %25

25:                                               ; preds = %25, %2
  %26 = phi i32 [ %38, %25 ], [ 1, %2 ]
  %27 = shl i32 %26, 2
  %28 = add i32 %27, 256
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr i8, ptr %29, i32 %28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %32 = load i8, ptr %10, align 8, !range !8
  %33 = icmp eq i8 %32, 0
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %35 = select i1 %33, i32 %31, i32 %34
  %36 = lshr i32 %35, 16
  %37 = and i32 %35, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.97, i32 noundef %26, i32 noundef %36, i32 noundef %37) #8
  %38 = add i32 %26, 1
  %39 = icmp sgt i32 %38, %5
  br i1 %39, label %40, label %25

40:                                               ; preds = %25, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_tx_fifo_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ep_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @ep_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ep_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %4, i32 0, i32 13
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.usb_ep, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %4, i32 0, i32 11
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, ptr @.str.110, ptr @.str.109
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.98, i32 noundef %9, ptr noundef %11, ptr noundef nonnull %15) #8
  %16 = shl nuw nsw i32 %9, 5
  %17 = add nuw nsw i32 %16, 2304
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %6, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %17
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %22 = getelementptr inbounds %struct.dwc2_hsotg, ptr %6, i32 0, i32 34
  %23 = load i8, ptr %22, align 8, !range !8
  %24 = icmp eq i8 %23, 0
  %25 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %26 = select i1 %24, i32 %21, i32 %25
  %27 = add nuw nsw i32 %16, 2816
  %28 = load ptr, ptr %18, align 4
  %29 = getelementptr i8, ptr %28, i32 %27
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %31 = load i8, ptr %22, align 8, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %34 = select i1 %32, i32 %30, i32 %33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.99, i32 noundef %26, i32 noundef %34) #8
  %35 = add nuw nsw i32 %16, 2324
  %36 = load ptr, ptr %18, align 4
  %37 = getelementptr i8, ptr %36, i32 %35
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %39 = load i8, ptr %22, align 8, !range !8
  %40 = icmp eq i8 %39, 0
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  %42 = select i1 %40, i32 %38, i32 %41
  %43 = add nuw nsw i32 %16, 2836
  %44 = load ptr, ptr %18, align 4
  %45 = getelementptr i8, ptr %44, i32 %43
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %47 = load i8, ptr %22, align 8, !range !8
  %48 = icmp eq i8 %47, 0
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %50 = select i1 %48, i32 %46, i32 %49
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.100, i32 noundef %42, i32 noundef %50) #8
  %51 = add nuw nsw i32 %16, 2312
  %52 = load ptr, ptr %18, align 4
  %53 = getelementptr i8, ptr %52, i32 %51
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %55 = load i8, ptr %22, align 8, !range !8
  %56 = icmp eq i8 %55, 0
  %57 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  %58 = select i1 %56, i32 %54, i32 %57
  %59 = add nuw nsw i32 %16, 2824
  %60 = load ptr, ptr %18, align 4
  %61 = getelementptr i8, ptr %60, i32 %59
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %63 = load i8, ptr %22, align 8, !range !8
  %64 = icmp eq i8 %63, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  %66 = select i1 %64, i32 %62, i32 %65
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.101, i32 noundef %58, i32 noundef %66) #8
  %67 = add nuw nsw i32 %16, 2320
  %68 = load ptr, ptr %18, align 4
  %69 = getelementptr i8, ptr %68, i32 %67
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %71 = load i8, ptr %22, align 8, !range !8
  %72 = icmp eq i8 %71, 0
  %73 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  %74 = select i1 %72, i32 %70, i32 %73
  %75 = add nuw nsw i32 %16, 2832
  %76 = load ptr, ptr %18, align 4
  %77 = getelementptr i8, ptr %76, i32 %75
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %79 = load i8, ptr %22, align 8, !range !8
  %80 = icmp eq i8 %79, 0
  %81 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  %82 = select i1 %80, i32 %78, i32 %81
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.102, i32 noundef %74, i32 noundef %82) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.78) #8
  %83 = getelementptr inbounds %struct.usb_ep, ptr %4, i32 0, i32 7
  %84 = load i56, ptr %83, align 2
  %85 = trunc i56 %84 to i32
  %86 = and i32 %85, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.103, i32 noundef %86) #8
  %87 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %4, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.104, i32 noundef %88) #8
  %89 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %4, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %4, i32 0, i32 1, i32 1
  %92 = load ptr, ptr %91, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.105, ptr noundef %90, ptr noundef %92) #8
  %93 = getelementptr inbounds %struct.dwc2_hsotg, ptr %6, i32 0, i32 18
  %94 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %93) #8
  %95 = load ptr, ptr %89, align 4
  %96 = icmp eq ptr %95, %89
  br i1 %96, label %119, label %97

97:                                               ; preds = %2
  %98 = getelementptr inbounds %struct.dwc2_hsotg_ep, ptr %4, i32 0, i32 3
  br label %99

99:                                               ; preds = %104, %97
  %100 = phi ptr [ %95, %97 ], [ %117, %104 ]
  %101 = phi i32 [ 15, %97 ], [ %105, %104 ]
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.106) #8
  br label %119

104:                                              ; preds = %99
  %105 = add nsw i32 %101, -1
  %106 = getelementptr i8, ptr %100, i32 -56
  %107 = load ptr, ptr %98, align 4
  %108 = icmp eq ptr %106, %107
  %109 = select i1 %108, i32 42, i32 32
  %110 = getelementptr i8, ptr %100, i32 -52
  %111 = load i32, ptr %110, align 4
  %112 = load ptr, ptr %106, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.107, i32 noundef %109, ptr noundef %106, i32 noundef %111, ptr noundef %112) #8
  %113 = getelementptr i8, ptr %100, i32 -4
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr i8, ptr %100, i32 -8
  %116 = load i32, ptr %115, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.108, i32 noundef %114, i32 noundef %116) #8
  %117 = load ptr, ptr %100, align 4
  %118 = icmp eq ptr %117, %89
  br i1 %118, label %119, label %99

119:                                              ; preds = %104, %103, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %93, i32 noundef %94) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

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
!10 = !{i64 5445811}
!11 = !{i64 2154397352}
!12 = !{i64 2150993049, i64 2150993074}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 3489161}
!15 = !{i64 3489358}
!16 = !{i64 2150974637}
