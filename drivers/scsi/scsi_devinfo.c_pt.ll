; ModuleID = '/llk/IR/drivers/scsi/scsi_devinfo.c_pt.bc'
source_filename = "../drivers/scsi/scsi_devinfo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_dev_info_list_add_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_dev_info_list_add_keyed\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_dev_info_list_add_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_dev_info_list_del_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_dev_info_list_del_keyed\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_dev_info_list_del_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_get_device_flags_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_get_device_flags_keyed\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_get_device_flags_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_dev_info_add_list:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_dev_info_add_list\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_dev_info_add_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_dev_info_remove_list:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_dev_info_remove_list\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_dev_info_remove_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.70 }
%union.anon.70 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.79 = type { ptr, ptr, ptr, i64 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.scsi_dev_info_list_table = type { %struct.list_head, %struct.list_head, ptr, i32 }
%struct.scsi_dev_info_list = type { %struct.list_head, [8 x i8], [16 x i8], i64, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.double_list = type { ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"\013%s: no memory\0A\00", align 1
@__func__.scsi_dev_info_list_add_keyed = private unnamed_addr constant [29 x i8] c"scsi_dev_info_list_add_keyed\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"\013scsi_devinfo (%s:%s): unsupported flags 0x%llx\00", align 1
@__kstrtab_scsi_dev_info_list_add_keyed = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_dev_info_list_add_keyed = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_dev_info_list_add_keyed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_dev_info_list_add_keyed to i32), ptr @__kstrtab_scsi_dev_info_list_add_keyed, ptr @__kstrtabns_scsi_dev_info_list_add_keyed }, section "___ksymtab+scsi_dev_info_list_add_keyed", align 4
@__kstrtab_scsi_dev_info_list_del_keyed = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_dev_info_list_del_keyed = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_dev_info_list_del_keyed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_dev_info_list_del_keyed to i32), ptr @__kstrtab_scsi_dev_info_list_del_keyed, ptr @__kstrtabns_scsi_dev_info_list_del_keyed }, section "___ksymtab+scsi_dev_info_list_del_keyed", align 4
@scsi_default_dev_flags = internal global i64 0, align 8
@__kstrtab_scsi_get_device_flags_keyed = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_get_device_flags_keyed = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_get_device_flags_keyed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_get_device_flags_keyed to i32), ptr @__kstrtab_scsi_get_device_flags_keyed, ptr @__kstrtabns_scsi_get_device_flags_keyed }, section "___ksymtab+scsi_get_device_flags_keyed", align 4
@__param_str_dev_flags = internal constant [19 x i8] c"scsi_mod.dev_flags\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_dev_flags = internal constant %struct.kparam_string { i32 256, ptr @scsi_dev_flags }, align 4
@__param_dev_flags = internal constant %struct.kernel_param { ptr @__param_str_dev_flags, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.70 { ptr @__param_string_dev_flags } }, section "__param", align 4
@__UNIQUE_ID_dev_flagstype271 = internal constant [35 x i8] c"scsi_mod.parmtype=dev_flags:string\00", section ".modinfo", align 1
@__UNIQUE_ID_dev_flags272 = internal constant [182 x i8] c"scsi_mod.parm=dev_flags:Given scsi_dev_flags=vendor:model:flags[,v:m:f] add black/white list entries for vendor and model with an integer value of flags to the scsi device info list\00", section ".modinfo", align 1
@__param_str_default_dev_flags = internal constant [27 x i8] c"scsi_mod.default_dev_flags\00", align 1
@param_ops_ullong = external dso_local constant %struct.kernel_param_ops, align 4
@__param_default_dev_flags = internal constant %struct.kernel_param { ptr @__param_str_default_dev_flags, ptr null, ptr @param_ops_ullong, i16 420, i8 -1, i8 0, %union.anon.70 { ptr @scsi_default_dev_flags } }, section "__param", align 4
@__UNIQUE_ID_default_dev_flagstype273 = internal constant [43 x i8] c"scsi_mod.parmtype=default_dev_flags:ullong\00", section ".modinfo", align 1
@__UNIQUE_ID_default_dev_flags274 = internal constant [72 x i8] c"scsi_mod.parm=default_dev_flags:scsi default device flag uint64_t value\00", section ".modinfo", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"scsi/device_info\00", align 1
@scsi_dev_info_list = internal global %struct.list_head { ptr @scsi_dev_info_list, ptr @scsi_dev_info_list }, align 4
@__kstrtab_scsi_dev_info_add_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_dev_info_add_list = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_dev_info_add_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_dev_info_add_list to i32), ptr @__kstrtab_scsi_dev_info_add_list, ptr @__kstrtabns_scsi_dev_info_add_list }, section "___ksymtab+scsi_dev_info_add_list", align 4
@__kstrtab_scsi_dev_info_remove_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_dev_info_remove_list = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_dev_info_remove_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_dev_info_remove_list to i32), ptr @__kstrtab_scsi_dev_info_remove_list, ptr @__kstrtabns_scsi_dev_info_remove_list }, section "___ksymtab+scsi_dev_info_remove_list", align 4
@scsi_dev_flags = internal global [256 x i8] zeroinitializer, align 1
@scsi_static_device_list = internal unnamed_addr constant [181 x %struct.anon.79] [%struct.anon.79 { ptr @.str.10, ptr @.str.11, ptr @.str.12, i64 1 }, %struct.anon.79 { ptr @.str.13, ptr @.str.14, ptr @.str.15, i64 1 }, %struct.anon.79 { ptr @.str.13, ptr @.str.16, ptr @.str.17, i64 1 }, %struct.anon.79 { ptr @.str.18, ptr @.str.19, ptr @.str.20, i64 1 }, %struct.anon.79 { ptr @.str.21, ptr @.str.22, ptr @.str.23, i64 1 }, %struct.anon.79 { ptr @.str.21, ptr @.str.24, ptr @.str.25, i64 1 }, %struct.anon.79 { ptr @.str.26, ptr @.str.27, ptr null, i64 1 }, %struct.anon.79 { ptr @.str.26, ptr @.str.28, ptr null, i64 1 }, %struct.anon.79 { ptr @.str.29, ptr @.str.30, ptr @.str.31, i64 1 }, %struct.anon.79 { ptr @.str.32, ptr @.str.33, ptr @.str.34, i64 1 }, %struct.anon.79 { ptr @.str.32, ptr @.str.35, ptr @.str.36, i64 1 }, %struct.anon.79 { ptr @.str.32, ptr @.str.37, ptr @.str.38, i64 1 }, %struct.anon.79 { ptr @.str.32, ptr @.str.39, ptr @.str.40, i64 1 }, %struct.anon.79 { ptr @.str.32, ptr @.str.41, ptr @.str.42, i64 1 }, %struct.anon.79 { ptr @.str.43, ptr @.str.44, ptr @.str.45, i64 1 }, %struct.anon.79 { ptr @.str.46, ptr @.str.47, ptr @.str.48, i64 1 }, %struct.anon.79 { ptr @.str.49, ptr @.str.50, ptr @.str.51, i64 1 }, %struct.anon.79 { ptr @.str.52, ptr @.str.53, ptr @.str.54, i64 1 }, %struct.anon.79 { ptr @.str.55, ptr @.str.56, ptr @.str.57, i64 1 }, %struct.anon.79 { ptr @.str.58, ptr @.str.59, ptr null, i64 1 }, %struct.anon.79 { ptr @.str.60, ptr @.str.61, ptr @.str.62, i64 1 }, %struct.anon.79 { ptr @.str.63, ptr @.str.64, ptr @.str.65, i64 1 }, %struct.anon.79 { ptr @.str.63, ptr @.str.66, ptr @.str.67, i64 1 }, %struct.anon.79 { ptr @.str.63, ptr @.str.68, ptr @.str.69, i64 1 }, %struct.anon.79 { ptr @.str.70, ptr @.str.71, ptr @.str.72, i64 1 }, %struct.anon.79 { ptr @.str.70, ptr @.str.73, ptr @.str.74, i64 1 }, %struct.anon.79 { ptr @.str.70, ptr @.str.75, ptr @.str.76, i64 1 }, %struct.anon.79 { ptr @.str.70, ptr @.str.77, ptr null, i64 1 }, %struct.anon.79 { ptr @.str.70, ptr @.str.78, ptr @.str.79, i64 2097152 }, %struct.anon.79 { ptr @.str.80, ptr @.str.81, ptr @.str.82, i64 1 }, %struct.anon.79 { ptr @.str.83, ptr @.str.84, ptr @.str.85, i64 1 }, %struct.anon.79 { ptr @.str.83, ptr @.str.86, ptr @.str.87, i64 1 }, %struct.anon.79 { ptr @.str.83, ptr @.str.88, ptr @.str.89, i64 1 }, %struct.anon.79 { ptr @.str.90, ptr @.str.91, ptr @.str.92, i64 1 }, %struct.anon.79 { ptr @.str.90, ptr @.str.93, ptr null, i64 1 }, %struct.anon.79 { ptr @.str.90, ptr @.str.94, ptr null, i64 1 }, %struct.anon.79 { ptr @.str.43, ptr @.str.95, ptr @.str.96, i64 1 }, %struct.anon.79 { ptr @.str.46, ptr @.str.97, ptr @.str.98, i64 1 }, %struct.anon.79 { ptr @.str.99, ptr @.str.100, ptr @.str.101, i64 1 }, %struct.anon.79 { ptr @.str.49, ptr @.str.102, ptr @.str.103, i64 1 }, %struct.anon.79 { ptr @.str.104, ptr @.str.105, ptr @.str.106, i64 1 }, %struct.anon.79 { ptr @.str.104, ptr @.str.107, ptr @.str.106, i64 1 }, %struct.anon.79 { ptr @.str.104, ptr @.str.108, ptr @.str.109, i64 1 }, %struct.anon.79 { ptr @.str.110, ptr @.str.111, ptr null, i64 1 }, %struct.anon.79 { ptr @.str.112, ptr @.str.113, ptr @.str.114, i64 1 }, %struct.anon.79 { ptr @.str.115, ptr @.str.86, ptr @.str.87, i64 5 }, %struct.anon.79 { ptr @.str.116, ptr @.str.117, ptr @.str.118, i64 262144 }, %struct.anon.79 { ptr @.str.119, ptr @.str.120, ptr @.str.121, i64 1 }, %struct.anon.79 { ptr @.str.119, ptr @.str.122, ptr @.str.121, i64 1 }, %struct.anon.79 { ptr @.str.119, ptr @.str.123, ptr @.str.51, i64 1 }, %struct.anon.79 { ptr @.str.119, ptr @.str.124, ptr @.str.125, i64 1 }, %struct.anon.79 { ptr @.str.126, ptr @.str.127, ptr @.str.128, i64 1 }, %struct.anon.79 { ptr @.str.129, ptr @.str.130, ptr null, i64 131072 }, %struct.anon.79 { ptr @.str.131, ptr @.str.132, ptr null, i64 2 }, %struct.anon.79 { ptr @.str.131, ptr @.str.133, ptr null, i64 2 }, %struct.anon.79 { ptr @.str.134, ptr @.str.135, ptr null, i64 268435456 }, %struct.anon.79 { ptr @.str.136, ptr @.str.137, ptr @.str.138, i64 2 }, %struct.anon.79 { ptr @.str.139, ptr @.str.140, ptr @.str.141, i64 1026 }, %struct.anon.79 { ptr @.str.142, ptr @.str.143, ptr null, i64 262144 }, %struct.anon.79 { ptr @.str.142, ptr @.str.144, ptr null, i64 262144 }, %struct.anon.79 { ptr @.str.145, ptr @.str.146, ptr null, i64 64 }, %struct.anon.79 { ptr @.str.147, ptr @.str.148, ptr @.str.149, i64 1026 }, %struct.anon.79 { ptr @.str.150, ptr @.str.151, ptr null, i64 64 }, %struct.anon.79 { ptr @.str.152, ptr @.str.153, ptr null, i64 64 }, %struct.anon.79 { ptr @.str.154, ptr @.str.155, ptr null, i64 64 }, %struct.anon.79 { ptr @.str.156, ptr @.str.157, ptr null, i64 8520256 }, %struct.anon.79 { ptr @.str.156, ptr @.str.158, ptr null, i64 8388610 }, %struct.anon.79 { ptr @.str.156, ptr @.str.159, ptr null, i64 2 }, %struct.anon.79 { ptr @.str.156, ptr @.str.160, ptr null, i64 4160 }, %struct.anon.79 { ptr @.str.156, ptr @.str.161, ptr null, i64 4160 }, %struct.anon.79 { ptr @.str.156, ptr @.str.162, ptr null, i64 135168 }, %struct.anon.79 { ptr @.str.163, ptr @.str.164, ptr @.str.165, i64 64 }, %struct.anon.79 { ptr @.str.166, ptr @.str.167, ptr null, i64 135168 }, %struct.anon.79 { ptr @.str.168, ptr @.str.169, ptr null, i64 64 }, %struct.anon.79 { ptr @.str.168, ptr @.str.170, ptr null, i64 64 }, %struct.anon.79 { ptr @.str.168, ptr @.str.171, ptr null, i64 64 }, %struct.anon.79 { ptr @.str.168, ptr @.str.172, ptr null, i64 64 }, %struct.anon.79 { ptr @.str.168, ptr @.str.173, ptr null, i64 2 }, %struct.anon.79 { ptr @.str.174, ptr @.str.175, ptr null, i64 64 }, %struct.anon.79 { ptr @.str.174, ptr @.str.176, ptr null, i64 64 }, %struct.anon.79 { ptr @.str.177, ptr @.str.178, ptr @.str.165, i64 576 }, %struct.anon.79 { ptr @.str.177, ptr @.str.179, ptr null, i64 4295098944 }, %struct.anon.79 { ptr @.str.180, ptr @.str.181, ptr null, i64 16 }, %struct.anon.79 { ptr @.str.182, ptr @.str.183, ptr null, i64 262144 }, %struct.anon.79 { ptr @.str.182, ptr @.str.184, ptr null, i64 262144 }, %struct.anon.79 { ptr @.str.182, ptr @.str.185, ptr null, i64 262144 }, %struct.anon.79 { ptr @.str.186, ptr @.str.187, ptr @.str.165, i64 576 }, %struct.anon.79 { ptr @.str.188, ptr @.str.189, ptr @.str.165, i64 8589934592 }, %struct.anon.79 { ptr @.str.190, ptr @.str.191, ptr @.str.121, i64 1026 }, %struct.anon.79 { ptr @.str.190, ptr @.str.148, ptr null, i64 1026 }, %struct.anon.79 { ptr @.str.190, ptr @.str.192, ptr @.str.193, i64 3072 }, %struct.anon.79 { ptr @.str.21, ptr @.str.194, ptr @.str.165, i64 131072 }, %struct.anon.79 { ptr @.str.21, ptr @.str.195, ptr @.str.165, i64 131072 }, %struct.anon.79 { ptr @.str.21, ptr @.str.196, ptr @.str.165, i64 131072 }, %struct.anon.79 { ptr @.str.21, ptr @.str.197, ptr @.str.165, i64 33554432 }, %struct.anon.79 { ptr @.str.21, ptr @.str.198, ptr @.str.165, i64 268566528 }, %struct.anon.79 { ptr @.str.90, ptr @.str.199, ptr null, i64 576 }, %struct.anon.79 { ptr @.str.90, ptr @.str.198, ptr @.str.165, i64 268566528 }, %struct.anon.79 { ptr @.str.90, ptr @.str.200, ptr null, i64 2 }, %struct.anon.79 { ptr @.str.90, ptr @.str.201, ptr null, i64 135168 }, %struct.anon.79 { ptr @.str.90, ptr @.str.202, ptr null, i64 2 }, %struct.anon.79 { ptr @.str.90, ptr @.str.203, ptr @.str.204, i64 32 }, %struct.anon.79 { ptr @.str.90, ptr @.str.205, ptr null, i64 262144 }, %struct.anon.79 { ptr @.str.90, ptr @.str.196, ptr @.str.165, i64 131072 }, %struct.anon.79 { ptr @.str.206, ptr @.str.198, ptr @.str.165, i64 268566528 }, %struct.anon.79 { ptr @.str.26, ptr @.str.207, ptr null, i64 2 }, %struct.anon.79 { ptr @.str.26, ptr @.str.208, ptr @.str.165, i64 576 }, %struct.anon.79 { ptr @.str.26, ptr @.str.209, ptr null, i64 4194304 }, %struct.anon.79 { ptr @.str.210, ptr @.str.211, ptr @.str.212, i64 33 }, %struct.anon.79 { ptr @.str.213, ptr @.str.214, ptr null, i64 33 }, %struct.anon.79 { ptr @.str.213, ptr @.str.215, ptr null, i64 8 }, %struct.anon.79 { ptr @.str.216, ptr @.str.217, ptr null, i64 8 }, %struct.anon.79 { ptr @.str.216, ptr @.str.218, ptr null, i64 8 }, %struct.anon.79 { ptr @.str.219, ptr @.str.220, ptr null, i64 536870912 }, %struct.anon.79 { ptr @.str.221, ptr @.str.222, ptr null, i64 525312 }, %struct.anon.79 { ptr @.str.223, ptr @.str.224, ptr @.str.225, i64 144 }, %struct.anon.79 { ptr @.str.226, ptr @.str.227, ptr null, i64 67108864 }, %struct.anon.79 { ptr @.str.226, ptr @.str.228, ptr @.str.229, i64 67108864 }, %struct.anon.79 { ptr @.str.230, ptr @.str.231, ptr null, i64 18 }, %struct.anon.79 { ptr @.str.230, ptr @.str.232, ptr null, i64 525312 }, %struct.anon.79 { ptr @.str.230, ptr @.str.233, ptr null, i64 525312 }, %struct.anon.79 { ptr @.str.234, ptr @.str.235, ptr @.str.236, i64 2 }, %struct.anon.79 { ptr @.str.237, ptr @.str.238, ptr null, i64 2 }, %struct.anon.79 { ptr @.str.239, ptr @.str.240, ptr null, i64 32 }, %struct.anon.79 { ptr @.str.241, ptr @.str.242, ptr null, i64 1610612736 }, %struct.anon.79 { ptr @.str.243, ptr @.str.244, ptr @.str.165, i64 131072 }, %struct.anon.79 { ptr @.str.245, ptr @.str.246, ptr null, i64 2 }, %struct.anon.79 { ptr @.str.247, ptr @.str.248, ptr null, i64 18 }, %struct.anon.79 { ptr @.str.247, ptr @.str.249, ptr null, i64 18 }, %struct.anon.79 { ptr @.str.49, ptr @.str.250, ptr null, i64 18 }, %struct.anon.79 { ptr @.str.49, ptr @.str.251, ptr null, i64 131072 }, %struct.anon.79 { ptr @.str.252, ptr @.str.253, ptr null, i64 18 }, %struct.anon.79 { ptr @.str.252, ptr @.str.254, ptr null, i64 18 }, %struct.anon.79 { ptr @.str.255, ptr @.str.256, ptr null, i64 18 }, %struct.anon.79 { ptr @.str.255, ptr @.str.257, ptr null, i64 18 }, %struct.anon.79 { ptr @.str.255, ptr @.str.258, ptr null, i64 18 }, %struct.anon.79 { ptr @.str.255, ptr @.str.259, ptr null, i64 18 }, %struct.anon.79 { ptr @.str.260, ptr @.str.261, ptr null, i64 536870976 }, %struct.anon.79 { ptr @.str.260, ptr @.str.126, ptr null, i64 64 }, %struct.anon.79 { ptr @.str.262, ptr @.str.263, ptr null, i64 67108864 }, %struct.anon.79 { ptr @.str.264, ptr @.str.265, ptr null, i64 1073741824 }, %struct.anon.79 { ptr @.str.266, ptr @.str.265, ptr null, i64 1073741824 }, %struct.anon.79 { ptr @.str.104, ptr @.str.267, ptr @.str.268, i64 32 }, %struct.anon.79 { ptr @.str.269, ptr @.str.270, ptr null, i64 144 }, %struct.anon.79 { ptr @.str.271, ptr @.str.272, ptr null, i64 2 }, %struct.anon.79 { ptr @.str.63, ptr @.str.273, ptr @.str.274, i64 32 }, %struct.anon.79 { ptr @.str.63, ptr @.str.275, ptr @.str.276, i64 32 }, %struct.anon.79 { ptr @.str.63, ptr @.str.277, ptr null, i64 67108864 }, %struct.anon.79 { ptr @.str.278, ptr @.str.279, ptr @.str.165, i64 64 }, %struct.anon.79 { ptr @.str.278, ptr @.str.280, ptr @.str.165, i64 64 }, %struct.anon.79 { ptr @.str.278, ptr @.str.281, ptr @.str.165, i64 131072 }, %struct.anon.79 { ptr @.str.278, ptr @.str.282, ptr @.str.165, i64 1048576 }, %struct.anon.79 { ptr @.str.26, ptr @.str.282, ptr @.str.165, i64 1048576 }, %struct.anon.79 { ptr @.str.58, ptr @.str.282, ptr @.str.165, i64 1048576 }, %struct.anon.79 { ptr @.str.168, ptr @.str.282, ptr @.str.165, i64 1048576 }, %struct.anon.79 { ptr @.str.283, ptr @.str.282, ptr @.str.165, i64 1048576 }, %struct.anon.79 { ptr @.str.284, ptr @.str.282, ptr @.str.165, i64 1048576 }, %struct.anon.79 { ptr @.str.285, ptr @.str.282, ptr @.str.165, i64 1048576 }, %struct.anon.79 { ptr @.str.286, ptr @.str.282, ptr @.str.165, i64 1048576 }, %struct.anon.79 { ptr @.str.287, ptr @.str.282, ptr @.str.165, i64 1048576 }, %struct.anon.79 { ptr @.str.188, ptr @.str.282, ptr @.str.165, i64 1048576 }, %struct.anon.79 { ptr @.str.271, ptr @.str.288, ptr null, i64 268436480 }, %struct.anon.79 { ptr @.str.289, ptr @.str.140, ptr null, i64 1088 }, %struct.anon.79 { ptr @.str.70, ptr @.str.290, ptr null, i64 4 }, %struct.anon.79 { ptr @.str.70, ptr @.str.291, ptr null, i64 2 }, %struct.anon.79 { ptr @.str.292, ptr @.str.293, ptr null, i64 4194304 }, %struct.anon.79 { ptr @.str.58, ptr @.str.294, ptr @.str.165, i64 64 }, %struct.anon.79 { ptr @.str.58, ptr @.str.295, ptr @.str.165, i64 64 }, %struct.anon.79 { ptr @.str.296, ptr @.str.297, ptr @.str.165, i64 262144 }, %struct.anon.79 { ptr @.str.298, ptr @.str.299, ptr null, i64 256 }, %struct.anon.79 { ptr @.str.298, ptr @.str.86, ptr null, i64 256 }, %struct.anon.79 { ptr @.str.300, ptr @.str.301, ptr null, i64 1 }, %struct.anon.79 { ptr @.str.302, ptr @.str.303, ptr null, i64 1026 }, %struct.anon.79 { ptr @.str.304, ptr @.str.305, ptr @.str.306, i64 2097152 }, %struct.anon.79 { ptr @.str.304, ptr @.str.307, ptr @.str.308, i64 2097152 }, %struct.anon.79 { ptr @.str.304, ptr @.str.309, ptr @.str.310, i64 2097152 }, %struct.anon.79 { ptr @.str.311, ptr @.str.312, ptr null, i64 262144 }, %struct.anon.79 { ptr @.str.313, ptr @.str.314, ptr @.str.165, i64 576 }, %struct.anon.79 { ptr @.str.315, ptr @.str.316, ptr null, i64 64 }, %struct.anon.79 { ptr @.str.315, ptr @.str.317, ptr null, i64 64 }, %struct.anon.79 zeroinitializer], section ".init.data", align 8
@scsi_devinfo_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @proc_scsi_devinfo_open, ptr @seq_read, ptr null, ptr @proc_scsi_devinfo_write, ptr @seq_lseek, ptr @seq_release, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"\014%s: %s string '%s' is too long\0A\00", align 1
@__func__.scsi_strcpy_devinfo = private unnamed_addr constant [20 x i8] c"scsi_strcpy_devinfo\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c",\22\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\013%s: bad dev info string '%s' '%s' '%s'\0A\00", align 1
@__func__.scsi_dev_info_list_add_str = private unnamed_addr constant [27 x i8] c"scsi_dev_info_list_add_str\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Aashima\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"IMAGERY 2400SP\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"1.03\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"CHINON\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"CD-ROM CDS-431\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"H42\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"CD-ROM CDS-535\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"Q14\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"DENON\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"DRD-25X\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"HITACHI\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"DK312C\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"CM81\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"DK314C\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"CR21\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"IBM\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"2104-DU3\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"2104-TU3\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"IMS\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"CDD521/10\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"2.06\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"MAXTOR\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"XT-3280\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"PR02\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"XT-4380S\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"B3C\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"MXT-1240S\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"I1.2\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"XT-4170S\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"B5A\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"XT-8760S\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"B7B\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"MEDIAVIS\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"RENO CD-ROMX2A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"2.03\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"MICROTEK\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"ScanMakerIII\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"2.30\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"NEC\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"CD-ROM DRIVE:841\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"PHILIPS\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"PCA80SC\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"V4-2\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"RODIME\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"RO3000S\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"2.33\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"SUN\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"SENA\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"SANYO\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"CRD-250S\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"1.20\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"SEAGATE\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"ST157N\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"\04|j\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"ST296\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"921\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"ST1581\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"6538\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"SONY\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"CD-ROM CDU-541\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"4.3d\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"CD-ROM CDU-55S\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"1.0i\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"CD-ROM CDU-561\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"1.7x\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"CD-ROM CDU-8012\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"SDT-5000\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"3.17\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"TANDBERG\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"TDC 3600\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"U07\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"TEAC\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"CD-R55S\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"1.0H\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"CD-ROM\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"1.06\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"MT-2ST/45S2-27\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"RV M\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"HP\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"C1750A\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"3226\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"C1790A\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"C2500A\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"CDR-H93MV\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"1.31\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"ScanMaker II\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"5.61\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"MITSUMI\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"CD-R CR-2201CS\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"6119\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"D3856\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"0009\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"QUANTUM\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"LPS525S\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"3110\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"PD1225S\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"FIREBALL ST4.3S\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"0F0C\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"RELISYS\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"Scorpio\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"SANKYO\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"CP525\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"6.64\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"TEXEL\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"transtec\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"T5008\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"0001\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"YAMAHA\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"CDR100\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"1.00\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"CDR102\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"CRW8424S\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"CRW6416S\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"1.0c\00", align 1
@.str.126 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"Scanner\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"1.80\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"3PARdata\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"VV\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"ADAPTEC\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"AACRAID\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"Adaptec 5400S\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"AIX\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"VDASD\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"AFT PRO\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"-IX CF\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"0.0>\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"BELKIN\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"USB 2 HS-CF\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"1.95\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"BROWNIE\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"1200U3P\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"1600U3P\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"CANON\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"IPUBJD\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"CBOX3\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"USB Storage-SMC\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"300A\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"CMD\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"CRA-7280\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"CNSI\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"G7324\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"CNSi\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"G8324\00", align 1
@.str.156 = private unnamed_addr constant [7 x i8] c"COMPAQ\00", align 1
@.str.157 = private unnamed_addr constant [17 x i8] c"ARRAY CONTROLLER\00", align 1
@.str.158 = private unnamed_addr constant [15 x i8] c"LOGICAL VOLUME\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"CR3500\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"MSA1000\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"MSA1000 VOLUME\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"HSV110\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"DDN\00", align 1
@.str.164 = private unnamed_addr constant [17 x i8] c"SAN DataDirector\00", align 1
@.str.165 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"DEC\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"HSG80\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"DELL\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"PV660F\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"PV660F   PSEUDO\00", align 1
@.str.171 = private unnamed_addr constant [16 x i8] c"PSEUDO DEVICE .\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"PV530F\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"PERCRAID\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"DGC\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"RAID\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"DISK\00", align 1
@.str.177 = private unnamed_addr constant [4 x i8] c"EMC\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"Invista\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"SYMMETRIX\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"EMULEX\00", align 1
@.str.181 = private unnamed_addr constant [17 x i8] c"MD21/S2     ESDI\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"easyRAID\00", align 1
@.str.183 = private unnamed_addr constant [4 x i8] c"16P\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"X6P\00", align 1
@.str.185 = private unnamed_addr constant [3 x i8] c"F8\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"FSC\00", align 1
@.str.187 = private unnamed_addr constant [12 x i8] c"CentricStor\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"FUJITSU\00", align 1
@.str.189 = private unnamed_addr constant [12 x i8] c"ETERNUS_DXM\00", align 1
@.str.190 = private unnamed_addr constant [8 x i8] c"Generic\00", align 1
@.str.191 = private unnamed_addr constant [14 x i8] c"USB SD Reader\00", align 1
@.str.192 = private unnamed_addr constant [16 x i8] c"Ultra HS-SD/MMC\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"2.09\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"DF400\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"DF500\00", align 1
@.str.196 = private unnamed_addr constant [15 x i8] c"DISK-SUBSYSTEM\00", align 1
@.str.197 = private unnamed_addr constant [8 x i8] c"HUS1530\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"OPEN-\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"A6189A\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"NetRAID-4M\00", align 1
@.str.201 = private unnamed_addr constant [7 x i8] c"HSV100\00", align 1
@.str.202 = private unnamed_addr constant [7 x i8] c"C1557A\00", align 1
@.str.203 = private unnamed_addr constant [10 x i8] c"C3323-300\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"4269\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"C5713A\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"HPE\00", align 1
@.str.207 = private unnamed_addr constant [9 x i8] c"AuSaV1S2\00", align 1
@.str.208 = private unnamed_addr constant [15 x i8] c"ProFibre 4000R\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"2105\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"iomega\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"jaz 1GB\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"J.86\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c"IOMEGA\00", align 1
@.str.214 = private unnamed_addr constant [4 x i8] c"ZIP\00", align 1
@.str.215 = private unnamed_addr constant [17 x i8] c"Io20S         *F\00", align 1
@.str.216 = private unnamed_addr constant [7 x i8] c"INSITE\00", align 1
@.str.217 = private unnamed_addr constant [17 x i8] c"Floptical   F*8I\00", align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"I325VM\00", align 1
@.str.219 = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@.str.220 = private unnamed_addr constant [11 x i8] c"Multi-Flex\00", align 1
@.str.221 = private unnamed_addr constant [7 x i8] c"iRiver\00", align 1
@.str.222 = private unnamed_addr constant [16 x i8] c"iFP Mass Driver\00", align 1
@.str.223 = private unnamed_addr constant [8 x i8] c"LASOUND\00", align 1
@.str.224 = private unnamed_addr constant [8 x i8] c"CDX7405\00", align 1
@.str.225 = private unnamed_addr constant [5 x i8] c"3.10\00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c"Marvell\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c"Console\00", align 1
@.str.228 = private unnamed_addr constant [12 x i8] c"91xx Config\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"1.01\00", align 1
@.str.230 = private unnamed_addr constant [9 x i8] c"MATSHITA\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"PD-1\00", align 1
@.str.232 = private unnamed_addr constant [8 x i8] c"DMC-LC5\00", align 1
@.str.233 = private unnamed_addr constant [9 x i8] c"DMC-LC40\00", align 1
@.str.234 = private unnamed_addr constant [7 x i8] c"Medion\00", align 1
@.str.235 = private unnamed_addr constant [17 x i8] c"Flash XL  MMC/SD\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"2.6D\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"MegaRAID\00", align 1
@.str.238 = private unnamed_addr constant [3 x i8] c"LD\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"MICROP\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"4110\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"MSFT\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"Virtual HD\00", align 1
@.str.243 = private unnamed_addr constant [6 x i8] c"MYLEX\00", align 1
@.str.244 = private unnamed_addr constant [9 x i8] c"DACARMRB\00", align 1
@.str.245 = private unnamed_addr constant [8 x i8] c"nCipher\00", align 1
@.str.246 = private unnamed_addr constant [16 x i8] c"Fastness Crypto\00", align 1
@.str.247 = private unnamed_addr constant [9 x i8] c"NAKAMICH\00", align 1
@.str.248 = private unnamed_addr constant [8 x i8] c"MJ-4.8S\00", align 1
@.str.249 = private unnamed_addr constant [9 x i8] c"MJ-5.16S\00", align 1
@.str.250 = private unnamed_addr constant [13 x i8] c"PD-1 ODX654P\00", align 1
@.str.251 = private unnamed_addr constant [9 x i8] c"iStorage\00", align 1
@.str.252 = private unnamed_addr constant [4 x i8] c"NRC\00", align 1
@.str.253 = private unnamed_addr constant [6 x i8] c"MBR-7\00", align 1
@.str.254 = private unnamed_addr constant [8 x i8] c"MBR-7.4\00", align 1
@.str.255 = private unnamed_addr constant [8 x i8] c"PIONEER\00", align 1
@.str.256 = private unnamed_addr constant [15 x i8] c"CD-ROM DRM-600\00", align 1
@.str.257 = private unnamed_addr constant [16 x i8] c"CD-ROM DRM-602X\00", align 1
@.str.258 = private unnamed_addr constant [16 x i8] c"CD-ROM DRM-604X\00", align 1
@.str.259 = private unnamed_addr constant [16 x i8] c"CD-ROM DRM-624X\00", align 1
@.str.260 = private unnamed_addr constant [8 x i8] c"Promise\00", align 1
@.str.261 = private unnamed_addr constant [12 x i8] c"VTrak E610f\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"QEMU\00", align 1
@.str.263 = private unnamed_addr constant [12 x i8] c"QEMU CD-ROM\00", align 1
@.str.264 = private unnamed_addr constant [5 x i8] c"QNAP\00", align 1
@.str.265 = private unnamed_addr constant [14 x i8] c"iSCSI Storage\00", align 1
@.str.266 = private unnamed_addr constant [9 x i8] c"SYNOLOGY\00", align 1
@.str.267 = private unnamed_addr constant [8 x i8] c"XP34301\00", align 1
@.str.268 = private unnamed_addr constant [5 x i8] c"1071\00", align 1
@.str.269 = private unnamed_addr constant [6 x i8] c"REGAL\00", align 1
@.str.270 = private unnamed_addr constant [7 x i8] c"CDC-4X\00", align 1
@.str.271 = private unnamed_addr constant [8 x i8] c"SanDisk\00", align 1
@.str.272 = private unnamed_addr constant [17 x i8] c"ImageMate CF-SD1\00", align 1
@.str.273 = private unnamed_addr constant [9 x i8] c"ST34555N\00", align 1
@.str.274 = private unnamed_addr constant [5 x i8] c"0930\00", align 1
@.str.275 = private unnamed_addr constant [8 x i8] c"ST3390N\00", align 1
@.str.276 = private unnamed_addr constant [5 x i8] c"9546\00", align 1
@.str.277 = private unnamed_addr constant [12 x i8] c"ST900MM0006\00", align 1
@.str.278 = private unnamed_addr constant [4 x i8] c"SGI\00", align 1
@.str.279 = private unnamed_addr constant [6 x i8] c"RAID3\00", align 1
@.str.280 = private unnamed_addr constant [6 x i8] c"RAID5\00", align 1
@.str.281 = private unnamed_addr constant [7 x i8] c"TP9100\00", align 1
@.str.282 = private unnamed_addr constant [16 x i8] c"Universal Xport\00", align 1
@.str.283 = private unnamed_addr constant [4 x i8] c"STK\00", align 1
@.str.284 = private unnamed_addr constant [7 x i8] c"NETAPP\00", align 1
@.str.285 = private unnamed_addr constant [4 x i8] c"LSI\00", align 1
@.str.286 = private unnamed_addr constant [8 x i8] c"ENGENIO\00", align 1
@.str.287 = private unnamed_addr constant [7 x i8] c"LENOVO\00", align 1
@.str.288 = private unnamed_addr constant [13 x i8] c"Cruzer Blade\00", align 1
@.str.289 = private unnamed_addr constant [5 x i8] c"SMSC\00", align 1
@.str.290 = private unnamed_addr constant [16 x i8] c"CD-ROM CDU-8001\00", align 1
@.str.291 = private unnamed_addr constant [4 x i8] c"TSL\00", align 1
@.str.292 = private unnamed_addr constant [9 x i8] c"ST650211\00", align 1
@.str.293 = private unnamed_addr constant [3 x i8] c"CF\00", align 1
@.str.294 = private unnamed_addr constant [5 x i8] c"T300\00", align 1
@.str.295 = private unnamed_addr constant [3 x i8] c"T4\00", align 1
@.str.296 = private unnamed_addr constant [9 x i8] c"Tornado-\00", align 1
@.str.297 = private unnamed_addr constant [3 x i8] c"F4\00", align 1
@.str.298 = private unnamed_addr constant [8 x i8] c"TOSHIBA\00", align 1
@.str.299 = private unnamed_addr constant [6 x i8] c"CDROM\00", align 1
@.str.300 = private unnamed_addr constant [9 x i8] c"Traxdata\00", align 1
@.str.301 = private unnamed_addr constant [8 x i8] c"CDR4120\00", align 1
@.str.302 = private unnamed_addr constant [7 x i8] c"USB2.0\00", align 1
@.str.303 = private unnamed_addr constant [14 x i8] c"SMARTMEDIA/XD\00", align 1
@.str.304 = private unnamed_addr constant [8 x i8] c"WangDAT\00", align 1
@.str.305 = private unnamed_addr constant [11 x i8] c"Model 2600\00", align 1
@.str.306 = private unnamed_addr constant [5 x i8] c"01.7\00", align 1
@.str.307 = private unnamed_addr constant [11 x i8] c"Model 3200\00", align 1
@.str.308 = private unnamed_addr constant [5 x i8] c"02.2\00", align 1
@.str.309 = private unnamed_addr constant [11 x i8] c"Model 1300\00", align 1
@.str.310 = private unnamed_addr constant [5 x i8] c"02.4\00", align 1
@.str.311 = private unnamed_addr constant [9 x i8] c"WDC WD25\00", align 1
@.str.312 = private unnamed_addr constant [12 x i8] c"00JB-00FUA0\00", align 1
@.str.313 = private unnamed_addr constant [8 x i8] c"XYRATEX\00", align 1
@.str.314 = private unnamed_addr constant [3 x i8] c"RS\00", align 1
@.str.315 = private unnamed_addr constant [6 x i8] c"Zzyzx\00", align 1
@.str.316 = private unnamed_addr constant [16 x i8] c"RocketStor 500S\00", align 1
@.str.317 = private unnamed_addr constant [16 x i8] c"RocketStor 2000\00", align 1
@scsi_devinfo_seq_ops = internal constant %struct.seq_operations { ptr @devinfo_seq_start, ptr @devinfo_seq_stop, ptr @devinfo_seq_next, ptr @devinfo_seq_show }, align 4
@.str.318 = private unnamed_addr constant [7 x i8] c"[%s]:\0A\00", align 1
@.str.319 = private unnamed_addr constant [23 x i8] c"'%.8s' '%.16s' 0x%llx\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_default_dev_flags274, ptr @__UNIQUE_ID_default_dev_flagstype273, ptr @__UNIQUE_ID_dev_flags272, ptr @__UNIQUE_ID_dev_flagstype271, ptr @__ksymtab_scsi_dev_info_add_list, ptr @__ksymtab_scsi_dev_info_list_add_keyed, ptr @__ksymtab_scsi_dev_info_list_del_keyed, ptr @__ksymtab_scsi_dev_info_remove_list, ptr @__ksymtab_scsi_get_device_flags_keyed, ptr @__param_default_dev_flags, ptr @__param_dev_flags], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_dev_info_list_add_keyed(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i64, align 8
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ @scsi_dev_info_list, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @scsi_dev_info_list
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %10, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %5
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %21

18:                                               ; preds = %16, %8
  %19 = phi ptr [ %10, %16 ], [ inttoptr (i32 -22 to ptr), %8 ]
  %20 = ptrtoint ptr %19 to i32
  br label %81

21:                                               ; preds = %16
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 48) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.scsi_dev_info_list_add_keyed) #13
  br label %81

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %23, i32 0, i32 1
  %29 = tail call i32 @strlen(ptr noundef %1) #14
  %30 = tail call ptr @strncpy(ptr noundef %28, ptr noundef %1, i32 noundef 8) #14
  %31 = icmp ugt i32 %29, 7
  %32 = icmp ne i32 %0, 0
  %33 = or i1 %32, %31
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = getelementptr i8, ptr %28, i32 %29
  %36 = sub nuw nsw i32 8, %29
  tail call void @llvm.memset.p0.i32(ptr align 1 %35, i8 32, i32 %36, i1 false) #14
  br label %41

37:                                               ; preds = %27
  %38 = icmp ugt i32 %29, 8
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.scsi_strcpy_devinfo, ptr noundef nonnull @.str.1, ptr noundef %1) #13
  br label %41

41:                                               ; preds = %39, %37, %34
  %42 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %23, i32 0, i32 2
  %43 = tail call i32 @strlen(ptr noundef %2) #14
  %44 = tail call ptr @strncpy(ptr noundef %42, ptr noundef %2, i32 noundef 16) #14
  %45 = icmp ugt i32 %43, 15
  %46 = or i1 %32, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = getelementptr i8, ptr %42, i32 %43
  %49 = sub nuw nsw i32 16, %43
  tail call void @llvm.memset.p0.i32(ptr align 1 %48, i8 32, i32 %49, i1 false) #14
  br label %54

50:                                               ; preds = %41
  %51 = icmp ugt i32 %43, 16
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.scsi_strcpy_devinfo, ptr noundef nonnull @.str.2, ptr noundef %2) #13
  br label %54

54:                                               ; preds = %52, %50, %47
  %55 = icmp eq ptr %3, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store i64 0, ptr %7, align 8, !annotation !8
  %57 = call i32 @kstrtoull(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %7) #14
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %62

61:                                               ; preds = %56
  call void @kfree(ptr noundef nonnull %23) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %81

62:                                               ; preds = %59, %54
  %63 = phi i64 [ %4, %54 ], [ %60, %59 ]
  %64 = and i64 %63, -17028751360
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %2, i64 noundef %64) #13
  call void @kfree(ptr noundef nonnull %23) #14
  br label %81

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %23, i32 0, i32 3
  store i64 %63, ptr %69, align 8
  %70 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %23, i32 0, i32 4
  store i32 %0, ptr %70, align 8
  %71 = icmp eq i32 %0, 0
  %72 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %10, i32 0, i32 1
  br i1 %71, label %77, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %10, i32 0, i32 1, i32 1
  %75 = load ptr, ptr %74, align 4
  store ptr %23, ptr %74, align 4
  store ptr %72, ptr %23, align 8
  %76 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %75, ptr %76, align 4
  store volatile ptr %23, ptr %75, align 4
  br label %81

77:                                               ; preds = %68
  %78 = load ptr, ptr %72, align 4
  %79 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %23, ptr %79, align 4
  store ptr %78, ptr %23, align 8
  %80 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %72, ptr %80, align 4
  store volatile ptr %23, ptr %72, align 4
  br label %81

81:                                               ; preds = %77, %73, %66, %61, %25, %18
  %82 = phi i32 [ %20, %18 ], [ -22, %66 ], [ %57, %61 ], [ -12, %25 ], [ 0, %77 ], [ 0, %73 ]
  ret i32 %82
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_dev_info_list_del_keyed(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = tail call fastcc ptr @scsi_dev_info_list_find(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @kfree(ptr noundef %4) #14
  br label %13

13:                                               ; preds = %8, %6
  %14 = phi i32 [ %7, %6 ], [ 0, %8 ]
  ret i32 %14
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @scsi_dev_info_list_find(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ @scsi_dev_info_list, %3 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @scsi_dev_info_list
  br i1 %7, label %171, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %6, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %171, label %14

14:                                               ; preds = %12
  %15 = getelementptr i8, ptr %0, i32 8
  %16 = load i8, ptr %0, align 1
  %17 = icmp eq i8 %16, 32
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 32
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 32
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %0, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 32
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %0, i32 4
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %0, i32 5
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 32
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %0, i32 6
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 32
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %0, i32 7
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 32
  %46 = select i1 %45, ptr %15, ptr %43
  %47 = xor i1 %45, true
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %42, %38, %34, %30, %26, %22, %18, %14
  %50 = phi ptr [ %0, %14 ], [ %19, %18 ], [ %23, %22 ], [ %27, %26 ], [ %31, %30 ], [ %35, %34 ], [ %39, %38 ], [ %46, %42 ]
  %51 = phi i32 [ 8, %14 ], [ 7, %18 ], [ 6, %22 ], [ 5, %26 ], [ 4, %30 ], [ 3, %34 ], [ 2, %38 ], [ %48, %42 ]
  br label %52

52:                                               ; preds = %55, %49
  %53 = phi i32 [ %51, %49 ], [ %56, %55 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = add nsw i32 %53, -1
  %57 = getelementptr i8, ptr %50, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 32
  br i1 %59, label %52, label %60

60:                                               ; preds = %55, %52
  %61 = getelementptr i8, ptr %1, i32 16
  %62 = load i8, ptr %1, align 1
  %63 = icmp eq i8 %62, 32
  br i1 %63, label %64, label %127

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %1, i32 1
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 32
  br i1 %67, label %68, label %127

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %1, i32 2
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 32
  br i1 %71, label %72, label %127

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %1, i32 3
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, 32
  br i1 %75, label %76, label %127

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %1, i32 4
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, 32
  br i1 %79, label %80, label %127

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %1, i32 5
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, 32
  br i1 %83, label %84, label %127

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %1, i32 6
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %86, 32
  br i1 %87, label %88, label %127

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %1, i32 7
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %90, 32
  br i1 %91, label %92, label %127

92:                                               ; preds = %88
  %93 = getelementptr i8, ptr %1, i32 8
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 32
  br i1 %95, label %96, label %127

96:                                               ; preds = %92
  %97 = getelementptr i8, ptr %1, i32 9
  %98 = load i8, ptr %97, align 1
  %99 = icmp eq i8 %98, 32
  br i1 %99, label %100, label %127

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %1, i32 10
  %102 = load i8, ptr %101, align 1
  %103 = icmp eq i8 %102, 32
  br i1 %103, label %104, label %127

104:                                              ; preds = %100
  %105 = getelementptr i8, ptr %1, i32 11
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 32
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = getelementptr i8, ptr %1, i32 12
  %110 = load i8, ptr %109, align 1
  %111 = icmp eq i8 %110, 32
  br i1 %111, label %112, label %127

112:                                              ; preds = %108
  %113 = getelementptr i8, ptr %1, i32 13
  %114 = load i8, ptr %113, align 1
  %115 = icmp eq i8 %114, 32
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = getelementptr i8, ptr %1, i32 14
  %118 = load i8, ptr %117, align 1
  %119 = icmp eq i8 %118, 32
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = getelementptr i8, ptr %1, i32 15
  %122 = load i8, ptr %121, align 1
  %123 = icmp eq i8 %122, 32
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = select i1 %123, ptr %61, ptr %121
  br label %127

127:                                              ; preds = %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60
  %128 = phi i32 [ 16, %60 ], [ 15, %64 ], [ 14, %68 ], [ 13, %72 ], [ 12, %76 ], [ 11, %80 ], [ 10, %84 ], [ 9, %88 ], [ 8, %92 ], [ 7, %96 ], [ 6, %100 ], [ 5, %104 ], [ 4, %108 ], [ 3, %112 ], [ 2, %116 ], [ %125, %120 ]
  %129 = phi ptr [ %1, %60 ], [ %65, %64 ], [ %69, %68 ], [ %73, %72 ], [ %77, %76 ], [ %81, %80 ], [ %85, %84 ], [ %89, %88 ], [ %93, %92 ], [ %97, %96 ], [ %101, %100 ], [ %105, %104 ], [ %109, %108 ], [ %113, %112 ], [ %117, %116 ], [ %126, %120 ]
  br label %130

130:                                              ; preds = %133, %127
  %131 = phi i32 [ %128, %127 ], [ %134, %133 ]
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  %134 = add nsw i32 %131, -1
  %135 = getelementptr i8, ptr %129, i32 %134
  %136 = load i8, ptr %135, align 1
  %137 = icmp eq i8 %136, 32
  br i1 %137, label %130, label %138

138:                                              ; preds = %133, %130
  %139 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %6, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, %139
  br i1 %141, label %171, label %142

142:                                              ; preds = %168, %138
  %143 = phi ptr [ %169, %168 ], [ %140, %138 ]
  %144 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %143, i32 0, i32 4
  %145 = load i32, ptr %144, align 8
  %146 = icmp eq i32 %145, 0
  %147 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %143, i32 0, i32 1
  br i1 %146, label %161, label %148

148:                                              ; preds = %142
  %149 = tail call i32 @strnlen(ptr noundef %147, i32 noundef 8)
  %150 = icmp eq i32 %53, %149
  br i1 %150, label %151, label %168

151:                                              ; preds = %148
  %152 = tail call i32 @bcmp(ptr %147, ptr %50, i32 %53)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %143, i32 0, i32 2
  %156 = tail call i32 @strnlen(ptr noundef %155, i32 noundef 16)
  %157 = icmp ult i32 %131, %156
  br i1 %157, label %168, label %158

158:                                              ; preds = %154
  %159 = tail call i32 @bcmp(ptr %155, ptr %129, i32 %156)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %171, label %168

161:                                              ; preds = %142
  %162 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %147, ptr noundef dereferenceable(8) %0, i32 8)
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %143, i32 0, i32 2
  %166 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %165, ptr noundef dereferenceable(16) %1, i32 16)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %164, %161, %158, %154, %151, %148
  %169 = load ptr, ptr %143, align 4
  %170 = icmp eq ptr %169, %139
  br i1 %170, label %171, label %142

171:                                              ; preds = %168, %164, %158, %138, %12, %4
  %172 = phi ptr [ %6, %12 ], [ inttoptr (i32 -2 to ptr), %138 ], [ %143, %158 ], [ %143, %164 ], [ inttoptr (i32 -2 to ptr), %168 ], [ inttoptr (i32 -22 to ptr), %4 ]
  ret ptr %172
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i64 @scsi_get_device_flags(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = tail call fastcc ptr @scsi_dev_info_list_find(ptr noundef %1, ptr noundef %2, i32 noundef 0) #14
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %4, i32 0, i32 3
  %8 = load i64, ptr %7, align 8
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 39
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  %13 = load i64, ptr @scsi_default_dev_flags, align 8
  %14 = select i1 %12, i64 %13, i64 %11
  br label %15

15:                                               ; preds = %9, %6
  %16 = phi i64 [ %8, %6 ], [ %14, %9 ]
  ret i64 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i64 @scsi_get_device_flags_keyed(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #4 {
  %5 = tail call fastcc ptr @scsi_dev_info_list_find(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %5, i32 0, i32 3
  %9 = load i64, ptr %8, align 8
  br label %18

10:                                               ; preds = %4
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 39
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = load i64, ptr @scsi_default_dev_flags, align 8
  %17 = select i1 %15, i64 %16, i64 %14
  br label %18

18:                                               ; preds = %12, %10, %7
  %19 = phi i64 [ %9, %7 ], [ 0, %10 ], [ %17, %12 ]
  ret i64 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_exit_devinfo() local_unnamed_addr #0 {
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef null) #14
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi ptr [ @scsi_dev_info_list, %0 ], [ %3, %5 ]
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @scsi_dev_info_list
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %1

9:                                                ; preds = %5
  %10 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %24, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %16 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %23, label %19

19:                                               ; preds = %19, %11
  %20 = phi ptr [ %21, %19 ], [ %17, %11 ]
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %20) #14
  %22 = icmp eq ptr %21, %16
  br i1 %22, label %23, label %19

23:                                               ; preds = %19, %11
  tail call void @kfree(ptr noundef %3) #14
  br label %24

24:                                               ; preds = %23, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_dev_info_remove_list(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @scsi_dev_info_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @scsi_dev_info_list
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %25, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  %17 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %24, label %20

20:                                               ; preds = %20, %12
  %21 = phi ptr [ %22, %20 ], [ %18, %12 ]
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %21) #14
  %23 = icmp eq ptr %22, %17
  br i1 %23, label %24, label %20

24:                                               ; preds = %20, %12
  tail call void @kfree(ptr noundef %4) #14
  br label %25

25:                                               ; preds = %24, %10, %2
  %26 = phi i32 [ 0, %24 ], [ -22, %10 ], [ -22, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_dev_info_add_list(i32 noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @scsi_dev_info_list, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @scsi_dev_info_list
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %3

11:                                               ; preds = %7
  %12 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %24

13:                                               ; preds = %11, %3
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 24) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  store volatile ptr %15, ptr %15, align 8
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %19 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %15, i32 0, i32 1
  store volatile ptr %19, ptr %19, align 8
  %20 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %15, i32 0, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %15, i32 0, i32 2
  store ptr %1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %15, i32 0, i32 3
  store i32 %0, ptr %22, align 4
  %23 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @scsi_dev_info_list, i32 0, i32 1), align 4
  store ptr %15, ptr getelementptr inbounds (%struct.list_head, ptr @scsi_dev_info_list, i32 0, i32 1), align 4
  store ptr @scsi_dev_info_list, ptr %15, align 8
  store ptr %23, ptr %18, align 4
  store volatile ptr %15, ptr %23, align 4
  br label %24

24:                                               ; preds = %17, %13, %11
  %25 = phi i32 [ 0, %17 ], [ -17, %11 ], [ -12, %13 ]
  ret i32 %25
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @scsi_init_devinfo() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @scsi_dev_info_add_list(i32 noundef 0, ptr noundef null)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %25

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @scsi_dev_info_list_add_str(ptr noundef nonnull @scsi_dev_flags)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %23

6:                                                ; preds = %11
  %7 = add i32 %13, 1
  %8 = getelementptr [181 x %struct.anon.79], ptr @scsi_static_device_list, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %6, %3
  %12 = phi ptr [ %9, %6 ], [ @.str.10, %3 ]
  %13 = phi i32 [ %7, %6 ], [ 0, %3 ]
  %14 = getelementptr [181 x %struct.anon.79], ptr @scsi_static_device_list, i32 0, i32 %13, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr [181 x %struct.anon.79], ptr @scsi_static_device_list, i32 0, i32 %13, i32 3
  %17 = load i64, ptr %16, align 8
  %18 = tail call i32 @scsi_dev_info_list_add_keyed(i32 noundef 1, ptr noundef nonnull %12, ptr noundef %15, ptr noundef null, i64 noundef %17, i32 noundef 0) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %6, label %23

20:                                               ; preds = %6
  %21 = tail call ptr @proc_create(ptr noundef nonnull @.str.4, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @scsi_devinfo_proc_ops) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %11, %3
  %24 = phi i32 [ %4, %3 ], [ -12, %20 ], [ %18, %11 ]
  tail call void @scsi_exit_devinfo()
  br label %25

25:                                               ; preds = %23, %20, %0
  %26 = phi i32 [ %1, %0 ], [ %24, %23 ], [ 0, %20 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scsi_dev_info_list_add_str(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store ptr %0, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1
  %6 = icmp eq i8 %5, 34
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 1
  store ptr %8, ptr %2, align 4
  br label %9

9:                                                ; preds = %7, %4, %1
  %10 = phi ptr [ @.str.6, %7 ], [ @.str.7, %4 ], [ @.str.7, %1 ]
  %11 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.8) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %30, %9
  %14 = phi ptr [ %32, %30 ], [ %11, %9 ]
  %15 = phi i32 [ %31, %30 ], [ 0, %9 ]
  %16 = load i8, ptr %14, align 1
  %17 = icmp ne i8 %16, 0
  %18 = icmp eq i32 %15, 0
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.8) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull %10) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %20
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.scsi_dev_info_list_add_str, ptr noundef nonnull %14, ptr noundef %21, ptr noundef null) #13
  br label %30

28:                                               ; preds = %23
  %29 = call i32 @scsi_dev_info_list_add_keyed(i32 noundef 0, ptr noundef nonnull %14, ptr noundef nonnull %21, ptr noundef nonnull %24, i64 noundef 0, i32 noundef 0) #14
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %29, %28 ], [ -22, %26 ]
  %32 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.8) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %13

34:                                               ; preds = %30, %13, %9
  %35 = phi i32 [ 0, %9 ], [ %31, %30 ], [ %15, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_scsi_devinfo_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @scsi_devinfo_seq_ops) #14
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_scsi_devinfo_write(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = icmp eq ptr %1, null
  %6 = icmp ugt i32 %2, 4096
  %7 = or i1 %5, %6
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #14
  %10 = inttoptr i32 %9 to ptr
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %8
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 %2, i32 -1090519040) #15, !srcloc !9
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23, !prof !10

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #14
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #16, !srcloc !11
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  %22 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef nonnull %1, i32 noundef %2) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #14, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !13
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i32 [ %22, %16 ], [ %2, %12 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26, !prof !10

26:                                               ; preds = %23
  %27 = sub i32 %2, %24
  %28 = getelementptr i8, ptr %10, i32 %27
  tail call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %24, i1 false) #14
  br label %39

29:                                               ; preds = %23
  %30 = icmp ult i32 %2, 4096
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = getelementptr i8, ptr %10, i32 %2
  store i8 0, ptr %32, align 1
  br label %37

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %10, i32 4095
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %31
  %38 = tail call fastcc i32 @scsi_dev_info_list_add_str(ptr noundef nonnull %10)
  br label %39

39:                                               ; preds = %37, %33, %26
  %40 = phi i32 [ %2, %37 ], [ -22, %33 ], [ -14, %26 ]
  tail call void @free_pages(i32 noundef %9, i32 noundef 0) #14
  br label %41

41:                                               ; preds = %39, %8, %4
  %42 = phi i32 [ %40, %39 ], [ -22, %4 ], [ -12, %8 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @devinfo_seq_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 8) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %1, align 8
  %8 = load ptr, ptr @scsi_dev_info_list, align 4
  store ptr %8, ptr %4, align 8
  %9 = icmp eq ptr %8, @scsi_dev_info_list
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.double_list, ptr %4, i32 0, i32 1
  br label %15

12:                                               ; preds = %19
  %13 = load ptr, ptr %16, align 4
  store ptr %13, ptr %4, align 8
  %14 = icmp eq ptr %13, @scsi_dev_info_list
  br i1 %14, label %27, label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ %8, %10 ], [ %13, %12 ]
  %17 = phi i64 [ %7, %10 ], [ %21, %12 ]
  %18 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %16, i32 0, i32 1
  br label %19

19:                                               ; preds = %24, %15
  %20 = phi ptr [ %18, %15 ], [ %22, %24 ]
  %21 = phi i64 [ %17, %15 ], [ %25, %24 ]
  %22 = load ptr, ptr %20, align 4
  store ptr %22, ptr %11, align 4
  %23 = icmp eq ptr %22, %18
  br i1 %23, label %12, label %24

24:                                               ; preds = %19
  %25 = add i64 %21, -1
  %26 = icmp eq i64 %21, 0
  br i1 %26, label %28, label %19

27:                                               ; preds = %12, %6
  tail call void @kfree(ptr noundef nonnull %4) #14
  br label %28

28:                                               ; preds = %27, %24, %2
  %29 = phi ptr [ null, %27 ], [ null, %2 ], [ %4, %24 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devinfo_seq_stop(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @devinfo_seq_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = load i64, ptr %2, align 8
  %6 = add i64 %5, 1
  store i64 %6, ptr %2, align 8
  %7 = getelementptr inbounds %struct.double_list, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %4, i32 0, i32 1
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load ptr, ptr %1, align 4
  br label %18

14:                                               ; preds = %18
  %15 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %20, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %7, align 4
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %12
  %19 = phi ptr [ %13, %12 ], [ %20, %14 ]
  %20 = load ptr, ptr %19, align 4
  store ptr %20, ptr %1, align 4
  %21 = icmp eq ptr %20, @scsi_dev_info_list
  br i1 %21, label %22, label %14

22:                                               ; preds = %18
  tail call void @kfree(ptr noundef %1) #14
  br label %23

23:                                               ; preds = %22, %14, %3
  %24 = phi ptr [ null, %22 ], [ %1, %3 ], [ %1, %14 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devinfo_seq_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.double_list, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %5
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.318, ptr noundef nonnull %11) #14
  br label %14

14:                                               ; preds = %13, %9, %2
  %15 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %5, i32 0, i32 1
  %16 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %5, i32 0, i32 2
  %17 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %5, i32 0, i32 3
  %18 = load i64, ptr %17, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.319, ptr noundef %15, ptr noundef %16, i64 noundef %18) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
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
!8 = !{!"auto-init"}
!9 = !{i64 2151075764, i64 2151075789}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 3571876}
!12 = !{i64 3572073}
!13 = !{i64 2151057352}
