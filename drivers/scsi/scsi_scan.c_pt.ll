; ModuleID = '/llk/IR/drivers/scsi/scsi_scan.c_pt.bc'
source_filename = "../drivers/scsi/scsi_scan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_is_target_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_is_target_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_is_target_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_sanitize_inquiry_string:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_sanitize_inquiry_string\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_sanitize_inquiry_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_add_device\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_rescan_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_rescan_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_rescan_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_scan_target:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_scan_target\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_scan_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_scan_host:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_scan_host\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_scan_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.73 }
%union.anon.73 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.async_scan_data = type { %struct.list_head, ptr, %struct.completion }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_device_handler = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_lun = type { [8 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}

@__param_str_max_luns = internal constant [18 x i8] c"scsi_mod.max_luns\00", align 1
@param_ops_ullong = external dso_local constant %struct.kernel_param_ops, align 4
@max_scsi_luns = internal global i64 512, align 8
@__param_max_luns = internal constant %struct.kernel_param { ptr @__param_str_max_luns, ptr null, ptr @param_ops_ullong, i16 420, i8 -1, i8 0, %union.anon.73 { ptr @max_scsi_luns } }, section "__param", align 4
@__UNIQUE_ID_max_lunstype273 = internal constant [34 x i8] c"scsi_mod.parmtype=max_luns:ullong\00", section ".modinfo", align 1
@__UNIQUE_ID_max_luns274 = internal constant [70 x i8] c"scsi_mod.parm=max_luns:last scsi LUN (should be between 1 and 2^64-1)\00", section ".modinfo", align 1
@__param_str_scan = internal constant [14 x i8] c"scsi_mod.scan\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_scan = internal constant %struct.kparam_string { i32 7, ptr @scsi_scan_type }, align 4
@__param_scan = internal constant %struct.kernel_param { ptr @__param_str_scan, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.73 { ptr @__param_string_scan } }, section "__param", align 4
@__UNIQUE_ID_scantype275 = internal constant [30 x i8] c"scsi_mod.parmtype=scan:string\00", section ".modinfo", align 1
@__UNIQUE_ID_scan276 = internal constant [164 x i8] c"scsi_mod.parm=scan:sync, async, manual, or none. Setting to 'manual' disables automatic scanning, but allows for manual device scan via the 'scan' sysfs attribute.\00", section ".modinfo", align 1
@__param_str_inq_timeout = internal constant [21 x i8] c"scsi_mod.inq_timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@scsi_inq_timeout = internal global i32 20, align 4
@__param_inq_timeout = internal constant %struct.kernel_param { ptr @__param_str_inq_timeout, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.73 { ptr @scsi_inq_timeout } }, section "__param", align 4
@__UNIQUE_ID_inq_timeouttype277 = internal constant [35 x i8] c"scsi_mod.parmtype=inq_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_inq_timeout278 = internal constant [145 x i8] c"scsi_mod.parm=inq_timeout:Timeout (in seconds) waiting for devices to answer INQUIRY. Default is 20. Some devices may need more; most need less.\00", section ".modinfo", align 1
@scsi_scan_type = internal global [7 x i8] c"sync\00\00\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"async\00", align 1
@scanning_hosts = internal global %struct.list_head { ptr @scanning_hosts, ptr @scanning_hosts }, align 4
@async_scan_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"\016scsi: waiting for bus probes to complete ...\0A\00", align 1
@scsi_target_type = internal global %struct.device_type { ptr @.str.5, ptr null, ptr null, ptr null, ptr @scsi_target_dev_release, ptr null }, align 4
@__kstrtab_scsi_is_target_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_is_target_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_is_target_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_is_target_device to i32), ptr @__kstrtab_scsi_is_target_device, ptr @__kstrtabns_scsi_is_target_device }, section "___ksymtab+scsi_is_target_device", align 4
@__kstrtab_scsi_sanitize_inquiry_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_sanitize_inquiry_string = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_sanitize_inquiry_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_sanitize_inquiry_string to i32), ptr @__kstrtab_scsi_sanitize_inquiry_string, ptr @__kstrtabns_scsi_sanitize_inquiry_string }, section "___ksymtab+scsi_sanitize_inquiry_string", align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@__kstrtab___scsi_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_add_device to i32), ptr @__kstrtab___scsi_add_device, ptr @__kstrtabns___scsi_add_device }, section "___ksymtab+__scsi_add_device", align 4
@__kstrtab_scsi_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_add_device to i32), ptr @__kstrtab_scsi_add_device, ptr @__kstrtabns_scsi_add_device }, section "___ksymtab+scsi_add_device", align 4
@__kstrtab_scsi_rescan_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_rescan_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_rescan_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_rescan_device to i32), ptr @__kstrtab_scsi_rescan_device, ptr @__kstrtabns_scsi_rescan_device }, section "___ksymtab+scsi_rescan_device", align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@__kstrtab_scsi_scan_target = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_scan_target = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_scan_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_scan_target to i32), ptr @__kstrtab_scsi_scan_target, ptr @__kstrtabns_scsi_scan_target }, section "___ksymtab+scsi_scan_target", align 4
@__kstrtab_scsi_scan_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_scan_host = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_scan_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_scan_host to i32), ptr @__kstrtab_scsi_scan_host, ptr @__kstrtabns_scsi_scan_host }, section "___ksymtab+scsi_scan_host", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"scsi_target\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\013%s: allocation failure\0A\00", align 1
@__func__.scsi_alloc_target = private unnamed_addr constant [18 x i8] c"scsi_alloc_target\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"target%d:%d:%d\00", align 1
@scsi_bus_type = external dso_local global %struct.bus_type, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"target allocation failed, error %d\0A\00", align 1
@scsi_alloc_sdev.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"&sdev->state_mutex\00", align 1
@scsi_alloc_sdev.__key.10 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"&sdev->inquiry_mutex\00", align 1
@scsi_alloc_sdev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"drivers/scsi/scsi_scan.c\00", align 1
@.str.13 = private unnamed_addr constant [90 x i8] c"\013%s: Allocation failure during SCSI scanning, some SCSI devices might not be configured\0A\00", align 1
@__func__.scsi_alloc_sdev = private unnamed_addr constant [16 x i8] c"scsi_alloc_sdev\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"nullnullnullnull\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.16 = private unnamed_addr constant [79 x i8] c"scsi scan: %d byte inquiry failed.  Consider BLIST_INQUIRY_36 for this device\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"scsi scan: INQUIRY result too short (%d), using 36\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"ATA     \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.20 = private unnamed_addr constant [73 x i8] c"%s: correcting incorrect peripheral device type 0x%x for W-LUN 0x%16xhN\0A\00", align 1
@__func__.scsi_add_lun = private unnamed_addr constant [13 x i8] c"scsi_add_lun\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\015\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"%s %.8s %.16s %.4s PQ: %d ANSI: %d%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" CCS\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"in wrong state %s to complete scan\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"failed to configure device\0A\00", align 1
@scsi_add_lun.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"unlocking floptical drive\0A\00", align 1
@__func__.scsi_report_lun_scan = private unnamed_addr constant [21 x i8] c"scsi_report_lun_scan\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"lun%llu has a LUN larger than allowed by the host adapter\0A\00", align 1
@.str.30 = private unnamed_addr constant [64 x i8] c"Unexpected response from lun %llu while scanning, scan aborted\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"%s called twice\0A\00", align 1
@__func__.scsi_prep_async_scan = private unnamed_addr constant [21 x i8] c"scsi_prep_async_scan\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__func__.scsi_finish_async_scan = private unnamed_addr constant [23 x i8] c"scsi_finish_async_scan\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_inq_timeout278, ptr @__UNIQUE_ID_inq_timeouttype277, ptr @__UNIQUE_ID_max_luns274, ptr @__UNIQUE_ID_max_lunstype273, ptr @__UNIQUE_ID_scan276, ptr @__UNIQUE_ID_scantype275, ptr @__ksymtab___scsi_add_device, ptr @__ksymtab_scsi_add_device, ptr @__ksymtab_scsi_is_target_device, ptr @__ksymtab_scsi_rescan_device, ptr @__ksymtab_scsi_sanitize_inquiry_string, ptr @__ksymtab_scsi_scan_host, ptr @__ksymtab_scsi_scan_target, ptr @__param_inq_timeout, ptr @__param_max_luns, ptr @__param_scan], section "llvm.metadata"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @scsi_enable_async_suspend(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @scsi_scan_type, ptr noundef nonnull dereferenceable(5) @.str, i32 5)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = or i16 %6, 2
  store i16 %10, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %4, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_complete_async_scans() local_unnamed_addr #2 {
  %1 = load volatile ptr, ptr @scanning_hosts, align 4
  %2 = icmp eq ptr %1, @scanning_hosts
  br i1 %2, label %32, label %3

3:                                                ; preds = %7, %0
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 28) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  tail call void @msleep(i32 noundef 1) #15
  %8 = load volatile ptr, ptr @scanning_hosts, align 4
  %9 = icmp eq ptr %8, @scanning_hosts
  br i1 %9, label %32, label %3

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.async_scan_data, ptr %5, i32 0, i32 1
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.async_scan_data, ptr %5, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.async_scan_data, ptr %5, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @async_scan_lock) #15
  %14 = load volatile ptr, ptr @scanning_hosts, align 4
  %15 = icmp eq ptr %14, @scanning_hosts
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @scanning_hosts, i32 0, i32 1), align 4
  store ptr %5, ptr getelementptr inbounds (%struct.list_head, ptr @scanning_hosts, i32 0, i32 1), align 4
  store ptr @scanning_hosts, ptr %5, align 8
  %18 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %5, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %19 = load i16, ptr @async_scan_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @async_scan_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #16
  tail call void @wait_for_completion(ptr noundef %12) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @async_scan_lock) #15
  %22 = load ptr, ptr %18, align 4
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  %25 = load volatile ptr, ptr @scanning_hosts, align 4
  %26 = icmp eq ptr %25, @scanning_hosts
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.async_scan_data, ptr %25, i32 0, i32 2
  tail call void @complete(ptr noundef %28) #15
  br label %29

29:                                               ; preds = %27, %16, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %30 = load i16, ptr @async_scan_lock, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr @async_scan_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  tail call void @kfree(ptr noundef nonnull %5) #15
  br label %32

32:                                               ; preds = %29, %7, %0
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @scsi_is_target_device(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @scsi_target_type
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_target_reap(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %5, label %6, !prof !12

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_scan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 592, 0\0A.popsection", ""() #15, !srcloc !13
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #15, !srcloc !15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #15, !srcloc !16
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %19, label %13, !prof !17

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #15
  br label %19

14:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !18
  %15 = load i32, ptr %2, align 4
  switch i32 %15, label %16 [
    i32 1, label %18
    i32 4, label %18
  ]

16:                                               ; preds = %14
  %17 = getelementptr %struct.scsi_target, ptr %0, i32 0, i32 3
  tail call void @transport_remove_device(ptr noundef %17) #15
  tail call void @device_del(ptr noundef %17) #15
  br label %18

18:                                               ; preds = %16, %14, %14
  tail call fastcc void @scsi_target_destroy(ptr noundef %0) #15
  br label %19

19:                                               ; preds = %18, %13, %11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_sanitize_inquiry_string(ptr nocapture noundef %0, i32 noundef %1) #7 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %16, %2
  %5 = phi i32 [ %10, %16 ], [ 0, %2 ]
  %6 = phi i32 [ %17, %16 ], [ %1, %2 ]
  %7 = phi ptr [ %18, %16 ], [ %0, %2 ]
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 1, i32 %5
  %11 = icmp ne i32 %10, 0
  %12 = add i8 %8, -127
  %13 = icmp ult i8 %12, -95
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i8 32, ptr %7, align 1
  br label %16

16:                                               ; preds = %15, %4
  %17 = add nsw i32 %6, -1
  %18 = getelementptr i8, ptr %7, i32 1
  %19 = icmp sgt i32 %6, 1
  br i1 %19, label %4, label %20

20:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__scsi_add_device(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4) #2 {
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store ptr inttoptr (i32 -19 to ptr), ptr %6, align 4
  %7 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @scsi_scan_type, ptr noundef nonnull dereferenceable(4) @.str.2, i32 4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  %11 = tail call fastcc ptr @scsi_alloc_target(ptr noundef %10, i32 noundef %1, i32 noundef %2)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  tail call void @scsi_autopm_get_target(ptr noundef nonnull %11) #15
  %14 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %14) #15
  %15 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 36
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call i32 @scsi_complete_async_scans()
  br label %21

21:                                               ; preds = %19, %13
  %22 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 48
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %29 [
    i32 5, label %24
    i32 2, label %24
  ]

24:                                               ; preds = %21, %21
  %25 = tail call i32 @scsi_autopm_get_host(ptr noundef %0) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call fastcc i32 @scsi_probe_and_add_lun(ptr noundef nonnull %11, i64 noundef %3, ptr noundef null, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %4)
  call void @scsi_autopm_put_host(ptr noundef %0) #15
  br label %29

29:                                               ; preds = %27, %24, %21
  call void @mutex_unlock(ptr noundef %14) #15
  call void @scsi_autopm_put_target(ptr noundef nonnull %11) #15
  call void @scsi_target_reap(ptr noundef nonnull %11)
  %30 = getelementptr inbounds %struct.scsi_target, ptr %11, i32 0, i32 3
  call void @put_device(ptr noundef %30) #15
  %31 = load ptr, ptr %6, align 4
  br label %32

32:                                               ; preds = %29, %9, %5
  %33 = phi ptr [ %31, %29 ], [ inttoptr (i32 -19 to ptr), %5 ], [ inttoptr (i32 -12 to ptr), %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @scsi_alloc_target(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %0, %3 ], [ %10, %8 ]
  %6 = tail call i32 @scsi_is_host_device(ptr noundef %5) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %4

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %5, i32 -360
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  %16 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.scsi_transport_template, ptr %17, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 544
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.scsi_alloc_target) #16
  br label %134

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 3
  tail call void @device_initialize(ptr noundef %26) #15
  %27 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 4
  store volatile i32 1, ptr %27, align 16
  %28 = tail call ptr @get_device(ptr noundef %0) #15
  %29 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 3, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %26, ptr noundef nonnull @.str.7, i32 noundef %31, i32 noundef %1, i32 noundef %2) #15
  %33 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 3, i32 5
  store ptr @scsi_bus_type, ptr %33, align 4
  %34 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 3, i32 4
  store ptr @scsi_target_type, ptr %34, align 8
  %35 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @scsi_scan_type, ptr noundef nonnull dereferenceable(5) @.str, i32 5) #15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 3, i32 11, i32 1
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, 8
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = or i16 %39, 2
  store i16 %43, ptr %38, align 4
  br label %44

44:                                               ; preds = %42, %37, %25
  %45 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 6
  store i32 %2, ptr %45, align 8
  %46 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 5
  store i32 %1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 10
  store i32 0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 1
  store volatile ptr %48, ptr %48, align 4
  %49 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 1, i32 1
  store ptr %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 2
  store volatile ptr %50, ptr %50, align 4
  %51 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 2, i32 1
  store ptr %50, ptr %51, align 16
  %52 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 13
  store i32 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 12
  store i8 3, ptr %53, align 16
  %54 = getelementptr inbounds %struct.scsi_target, ptr %21, i32 0, i32 11
  store i32 3, ptr %54, align 4
  %55 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 4
  br label %56

56:                                               ; preds = %133, %44
  %57 = load ptr, ptr %55, align 4
  %58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %57) #15
  br label %59

59:                                               ; preds = %63, %56
  %60 = phi ptr [ %0, %56 ], [ %65, %63 ]
  %61 = tail call i32 @scsi_is_host_device(ptr noundef %60) #15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %59

67:                                               ; preds = %59
  %68 = getelementptr i8, ptr %60, i32 -360
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi ptr [ %68, %67 ], [ null, %63 ]
  %71 = getelementptr inbounds %struct.Scsi_Host, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %89, label %74

74:                                               ; preds = %83, %69
  %75 = phi ptr [ %84, %83 ], [ %72, %69 ]
  %76 = getelementptr i8, ptr %75, i32 500
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, %2
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = getelementptr i8, ptr %75, i32 496
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, %1
  br i1 %82, label %86, label %83

83:                                               ; preds = %79, %74
  %84 = load ptr, ptr %75, align 4
  %85 = icmp eq ptr %84, %71
  br i1 %85, label %89, label %74

86:                                               ; preds = %79
  %87 = getelementptr i8, ptr %75, i32 -4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %105

89:                                               ; preds = %86, %83, %69
  %90 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 1
  %91 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 1, i32 1
  %92 = load ptr, ptr %91, align 4
  store ptr %48, ptr %91, align 4
  store ptr %90, ptr %48, align 4
  store ptr %92, ptr %49, align 8
  store volatile ptr %48, ptr %92, align 4
  %93 = load ptr, ptr %55, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %93, i32 noundef %58) #15
  tail call void @transport_setup_device(ptr noundef %26) #15
  %94 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 11
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.scsi_host_template, ptr %95, i32 0, i32 17
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %89
  %100 = tail call i32 %97(ptr noundef nonnull %21) #15
  switch i32 %100, label %101 [
    i32 0, label %103
    i32 -6, label %102
  ]

101:                                              ; preds = %99
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.8, i32 noundef %100) #16
  br label %102

102:                                              ; preds = %101, %99
  tail call fastcc void @scsi_target_destroy(ptr noundef nonnull %21)
  br label %134

103:                                              ; preds = %99, %89
  %104 = tail call ptr @get_device(ptr noundef %26) #15
  br label %134

105:                                              ; preds = %86
  %106 = getelementptr i8, ptr %75, i32 20
  %107 = tail call ptr @get_device(ptr noundef %106) #15
  %108 = getelementptr i8, ptr %75, i32 492
  %109 = load volatile i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %121, %105
  %112 = phi i32 [ %119, %121 ], [ %109, %105 ]
  %113 = add i32 %112, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %108) #15, !srcloc !15
  br label %114

114:                                              ; preds = %114, %111
  %115 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %108, ptr %108, i32 %112, i32 %113, ptr elementtype(i32) %108) #15, !srcloc !19
  %116 = extractvalue { i32, i32 } %115, 0
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %114

118:                                              ; preds = %114
  %119 = extractvalue { i32, i32 } %115, 1
  %120 = icmp eq i32 %119, %112
  br i1 %120, label %123, label %121, !prof !17

121:                                              ; preds = %118
  %122 = icmp eq i32 %119, 0
  br i1 %122, label %123, label %111

123:                                              ; preds = %121, %118, %105
  %124 = phi i32 [ 0, %105 ], [ %112, %118 ], [ 0, %121 ]
  %125 = add i32 %124, 1
  %126 = or i32 %125, %124
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %129, label %128, !prof !17

128:                                              ; preds = %123
  tail call void @refcount_warn_saturate(ptr noundef %108, i32 noundef 0) #15
  br label %129

129:                                              ; preds = %128, %123
  %130 = icmp eq i32 %124, 0
  %131 = load ptr, ptr %55, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %131, i32 noundef %58) #15
  br i1 %130, label %133, label %132

132:                                              ; preds = %129
  tail call void @put_device(ptr noundef %26) #15
  br label %134

133:                                              ; preds = %129
  tail call void @put_device(ptr noundef %106) #15
  tail call void @msleep(i32 noundef 1) #15
  br label %56

134:                                              ; preds = %132, %103, %102, %23
  %135 = phi ptr [ %87, %132 ], [ null, %102 ], [ %21, %103 ], [ null, %23 ]
  ret ptr %135
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_get_target(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_autopm_get_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scsi_probe_and_add_lun(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 {
  %7 = alloca [16 x i8], align 1
  %8 = alloca %struct.scsi_sense_hdr, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %16, %6
  %13 = phi ptr [ %11, %6 ], [ %18, %16 ]
  %14 = tail call i32 @scsi_is_host_device(ptr noundef %13) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %12

20:                                               ; preds = %12
  %21 = getelementptr i8, ptr %13, i32 -360
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ null, %16 ]
  %24 = tail call ptr @scsi_device_lookup_by_target(ptr noundef %0, i64 noundef %1) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 68
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -9
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %45, label %33

33:                                               ; preds = %28, %26
  %34 = icmp eq ptr %3, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  store ptr %24, ptr %3, align 4
  br label %37

36:                                               ; preds = %33
  tail call void @scsi_device_put(ptr noundef nonnull %24) #15
  br label %37

37:                                               ; preds = %36, %35
  %38 = icmp eq ptr %2, null
  br i1 %38, label %675, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 30
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 31
  %43 = load ptr, ptr %42, align 8
  %44 = tail call i64 @scsi_get_device_flags(ptr noundef nonnull %24, ptr noundef %41, ptr noundef %43) #15
  store i64 %44, ptr %2, align 8
  br label %675

45:                                               ; preds = %28
  tail call void @scsi_device_put(ptr noundef nonnull %24) #15
  br label %49

46:                                               ; preds = %22
  %47 = tail call fastcc ptr @scsi_alloc_sdev(ptr noundef %0, i64 noundef %1, ptr noundef %5)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %675, label %49

49:                                               ; preds = %46, %45
  %50 = phi ptr [ %24, %45 ], [ %47, %46 ]
  %51 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %52 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3264, i32 noundef 256) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %673, label %54

54:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  %55 = getelementptr inbounds i8, ptr %7, i32 6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %55, i8 0, i32 10, i1 false) #15, !annotation !20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  store i64 0, ptr %8, align 8, !annotation !20
  %56 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 27
  %57 = load i8, ptr %56, align 4
  %58 = icmp eq i8 %57, 0
  %59 = select i1 %58, i8 36, i8 %57
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds [16 x i8], ptr %7, i32 0, i32 4
  %62 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %8, i32 0, i32 1
  %63 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %8, i32 0, i32 2
  %64 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %8, i32 0, i32 3
  %65 = getelementptr i8, ptr %52, i32 8
  %66 = getelementptr i8, ptr %52, i32 16
  %67 = getelementptr i8, ptr %52, i32 32
  %68 = getelementptr i8, ptr %52, i32 4
  %69 = getelementptr inbounds i8, ptr %7, i32 1
  %70 = getelementptr i8, ptr %52, i32 9
  %71 = getelementptr i8, ptr %52, i32 10
  %72 = getelementptr i8, ptr %52, i32 11
  %73 = getelementptr i8, ptr %52, i32 12
  %74 = getelementptr i8, ptr %52, i32 13
  %75 = getelementptr i8, ptr %52, i32 14
  %76 = getelementptr i8, ptr %52, i32 15
  %77 = getelementptr i8, ptr %52, i32 33
  %78 = getelementptr i8, ptr %52, i32 34
  %79 = getelementptr i8, ptr %52, i32 35
  br label %80

80:                                               ; preds = %303, %54
  %81 = phi i1 [ false, %54 ], [ %173, %303 ]
  %82 = phi i1 [ true, %54 ], [ false, %303 ]
  %83 = phi i32 [ %60, %54 ], [ %304, %303 ]
  %84 = trunc i32 %83 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !annotation !20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %69, i8 0, i32 5, i1 false) #15
  store i8 18, ptr %7, align 1
  store i8 %84, ptr %61, align 1
  call void @llvm.memset.p0.i32(ptr align 8 %52, i8 0, i32 %83, i1 false) #15
  %85 = load i32, ptr @scsi_inq_timeout, align 4
  %86 = mul i32 %85, 100
  %87 = add i32 %86, 50
  %88 = call i32 @__scsi_execute(ptr noundef %50, ptr noundef nonnull %7, i32 noundef 2, ptr noundef %52, i32 noundef %83, ptr noundef null, ptr noundef nonnull %8, i32 noundef %87, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef nonnull %9) #15
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %80
  %91 = and i32 %88, 254
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = load i8, ptr %8, align 8
  %95 = and i8 %94, 112
  %96 = icmp eq i8 %95, 112
  %97 = load i8, ptr %62, align 1
  %98 = icmp eq i8 %97, 6
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = load i8, ptr %63, align 2
  %102 = and i8 %101, -2
  %103 = icmp eq i8 %102, 40
  %104 = load i8, ptr %64, align 1
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %114, label %112

107:                                              ; preds = %80
  %108 = icmp eq i32 %88, 0
  %109 = load i32, ptr %9, align 4
  %110 = icmp eq i32 %109, %83
  %111 = select i1 %108, i1 %110, i1 false
  br i1 %111, label %114, label %112

112:                                              ; preds = %163, %156, %153, %148, %135, %128, %125, %120, %107, %100, %93, %90
  %113 = phi i32 [ %88, %100 ], [ %88, %93 ], [ %88, %90 ], [ %88, %107 ], [ %118, %120 ], [ %118, %125 ], [ %118, %128 ], [ %118, %135 ], [ %146, %148 ], [ %146, %153 ], [ %146, %156 ], [ %146, %163 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %171

114:                                              ; preds = %107, %100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !annotation !20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %69, i8 0, i32 5, i1 false) #15
  store i8 18, ptr %7, align 1
  store i8 %84, ptr %61, align 1
  call void @llvm.memset.p0.i32(ptr align 8 %52, i8 0, i32 %83, i1 false) #15
  %115 = load i32, ptr @scsi_inq_timeout, align 4
  %116 = mul i32 %115, 100
  %117 = add i32 %116, 50
  %118 = call i32 @__scsi_execute(ptr noundef %50, ptr noundef nonnull %7, i32 noundef 2, ptr noundef %52, i32 noundef %83, ptr noundef null, ptr noundef nonnull %8, i32 noundef %117, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef nonnull %9) #15
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %114
  %121 = icmp eq i32 %118, 0
  %122 = load i32, ptr %9, align 4
  %123 = icmp eq i32 %122, %83
  %124 = select i1 %121, i1 %123, i1 false
  br i1 %124, label %142, label %112

125:                                              ; preds = %114
  %126 = and i32 %118, 254
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %128, label %112

128:                                              ; preds = %125
  %129 = load i8, ptr %8, align 8
  %130 = and i8 %129, 112
  %131 = icmp eq i8 %130, 112
  %132 = load i8, ptr %62, align 1
  %133 = icmp eq i8 %132, 6
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %112

135:                                              ; preds = %128
  %136 = load i8, ptr %63, align 2
  %137 = and i8 %136, -2
  %138 = icmp eq i8 %137, 40
  %139 = load i8, ptr %64, align 1
  %140 = icmp eq i8 %139, 0
  %141 = select i1 %138, i1 %140, i1 false
  br i1 %141, label %142, label %112

142:                                              ; preds = %135, %120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !annotation !20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %69, i8 0, i32 5, i1 false) #15
  store i8 18, ptr %7, align 1
  store i8 %84, ptr %61, align 1
  call void @llvm.memset.p0.i32(ptr align 8 %52, i8 0, i32 %83, i1 false) #15
  %143 = load i32, ptr @scsi_inq_timeout, align 4
  %144 = mul i32 %143, 100
  %145 = add i32 %144, 50
  %146 = call i32 @__scsi_execute(ptr noundef %50, ptr noundef nonnull %7, i32 noundef 2, ptr noundef %52, i32 noundef %83, ptr noundef null, ptr noundef nonnull %8, i32 noundef %145, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef nonnull %9) #15
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %142
  %149 = icmp eq i32 %146, 0
  %150 = load i32, ptr %9, align 4
  %151 = icmp eq i32 %150, %83
  %152 = select i1 %149, i1 %151, i1 false
  br i1 %152, label %170, label %112

153:                                              ; preds = %142
  %154 = and i32 %146, 254
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %112

156:                                              ; preds = %153
  %157 = load i8, ptr %8, align 8
  %158 = and i8 %157, 112
  %159 = icmp eq i8 %158, 112
  %160 = load i8, ptr %62, align 1
  %161 = icmp eq i8 %160, 6
  %162 = select i1 %159, i1 %161, i1 false
  br i1 %162, label %163, label %112

163:                                              ; preds = %156
  %164 = load i8, ptr %63, align 2
  %165 = and i8 %164, -2
  %166 = icmp eq i8 %165, 40
  %167 = load i8, ptr %64, align 1
  %168 = icmp eq i8 %167, 0
  %169 = select i1 %166, i1 %168, i1 false
  br i1 %169, label %170, label %112

170:                                              ; preds = %163, %148
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %171

171:                                              ; preds = %170, %112
  %172 = phi i32 [ %146, %170 ], [ %113, %112 ]
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %301

174:                                              ; preds = %171
  %175 = load i8, ptr %65, align 8
  %176 = icmp eq i8 %175, 0
  %177 = add i8 %175, -127
  %178 = icmp ult i8 %177, -95
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  store i8 32, ptr %65, align 8
  br label %180

180:                                              ; preds = %179, %174
  %181 = load i8, ptr %70, align 1
  %182 = icmp eq i8 %181, 0
  %183 = select i1 %182, i1 true, i1 %176
  %184 = add i8 %181, -127
  %185 = icmp ult i8 %184, -95
  %186 = or i1 %183, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  store i8 32, ptr %70, align 1
  br label %188

188:                                              ; preds = %187, %180
  %189 = load i8, ptr %71, align 2
  %190 = icmp eq i8 %189, 0
  %191 = select i1 %190, i1 true, i1 %183
  %192 = add i8 %189, -127
  %193 = icmp ult i8 %192, -95
  %194 = or i1 %191, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  store i8 32, ptr %71, align 2
  br label %196

196:                                              ; preds = %195, %188
  %197 = load i8, ptr %72, align 1
  %198 = icmp eq i8 %197, 0
  %199 = select i1 %198, i1 true, i1 %191
  %200 = add i8 %197, -127
  %201 = icmp ult i8 %200, -95
  %202 = or i1 %199, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  store i8 32, ptr %72, align 1
  br label %204

204:                                              ; preds = %203, %196
  %205 = load i8, ptr %73, align 4
  %206 = icmp eq i8 %205, 0
  %207 = select i1 %206, i1 true, i1 %199
  %208 = add i8 %205, -127
  %209 = icmp ult i8 %208, -95
  %210 = or i1 %207, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %204
  store i8 32, ptr %73, align 4
  br label %212

212:                                              ; preds = %211, %204
  %213 = load i8, ptr %74, align 1
  %214 = icmp eq i8 %213, 0
  %215 = select i1 %214, i1 true, i1 %207
  %216 = add i8 %213, -127
  %217 = icmp ult i8 %216, -95
  %218 = or i1 %215, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %212
  store i8 32, ptr %74, align 1
  br label %220

220:                                              ; preds = %219, %212
  %221 = load i8, ptr %75, align 2
  %222 = icmp eq i8 %221, 0
  %223 = select i1 %222, i1 true, i1 %215
  %224 = add i8 %221, -127
  %225 = icmp ult i8 %224, -95
  %226 = or i1 %223, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %220
  store i8 32, ptr %75, align 2
  br label %228

228:                                              ; preds = %227, %220
  %229 = load i8, ptr %76, align 1
  %230 = icmp eq i8 %229, 0
  %231 = select i1 %230, i1 true, i1 %223
  %232 = add i8 %229, -127
  %233 = icmp ult i8 %232, -95
  %234 = or i1 %231, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %228
  store i8 32, ptr %76, align 1
  br label %236

236:                                              ; preds = %235, %228
  br label %237

237:                                              ; preds = %249, %236
  %238 = phi i32 [ %243, %249 ], [ 0, %236 ]
  %239 = phi i32 [ %250, %249 ], [ 16, %236 ]
  %240 = phi ptr [ %251, %249 ], [ %66, %236 ]
  %241 = load i8, ptr %240, align 1
  %242 = icmp eq i8 %241, 0
  %243 = select i1 %242, i32 1, i32 %238
  %244 = icmp ne i32 %243, 0
  %245 = add i8 %241, -127
  %246 = icmp ult i8 %245, -95
  %247 = select i1 %244, i1 true, i1 %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %237
  store i8 32, ptr %240, align 1
  br label %249

249:                                              ; preds = %248, %237
  %250 = add nsw i32 %239, -1
  %251 = getelementptr i8, ptr %240, i32 1
  %252 = icmp ugt i32 %239, 1
  br i1 %252, label %237, label %253

253:                                              ; preds = %249
  %254 = load i8, ptr %67, align 8
  %255 = icmp eq i8 %254, 0
  %256 = add i8 %254, -127
  %257 = icmp ult i8 %256, -95
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  store i8 32, ptr %67, align 8
  br label %259

259:                                              ; preds = %258, %253
  %260 = load i8, ptr %77, align 1
  %261 = icmp eq i8 %260, 0
  %262 = select i1 %261, i1 true, i1 %255
  %263 = add i8 %260, -127
  %264 = icmp ult i8 %263, -95
  %265 = or i1 %262, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  store i8 32, ptr %77, align 1
  br label %267

267:                                              ; preds = %266, %259
  %268 = load i8, ptr %78, align 2
  %269 = icmp eq i8 %268, 0
  %270 = select i1 %269, i1 true, i1 %262
  %271 = add i8 %268, -127
  %272 = icmp ult i8 %271, -95
  %273 = or i1 %270, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %267
  store i8 32, ptr %78, align 2
  br label %275

275:                                              ; preds = %274, %267
  %276 = load i8, ptr %79, align 1
  %277 = icmp eq i8 %276, 0
  %278 = select i1 %277, i1 true, i1 %270
  %279 = add i8 %276, -127
  %280 = icmp ult i8 %279, -95
  %281 = or i1 %278, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %275
  store i8 32, ptr %79, align 1
  br label %283

283:                                              ; preds = %282, %275
  %284 = load i8, ptr %68, align 4
  %285 = zext i8 %284 to i32
  %286 = add nuw nsw i32 %285, 5
  %287 = icmp ugt i8 %284, -6
  %288 = select i1 %287, i32 %60, i32 %286
  %289 = call i64 @scsi_get_device_flags(ptr noundef %50, ptr noundef %65, ptr noundef %66) #15
  br i1 %82, label %290, label %305

290:                                              ; preds = %283
  %291 = and i64 %289, 1024
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %290
  %294 = load i8, ptr %56, align 4
  %295 = icmp eq i8 %294, 0
  %296 = zext i8 %294 to i32
  %297 = select i1 %295, i32 %288, i32 %296
  br label %298

298:                                              ; preds = %293, %290
  %299 = phi i32 [ 36, %290 ], [ %297, %293 ]
  %300 = icmp ugt i32 %299, %83
  br i1 %300, label %303, label %305

301:                                              ; preds = %171
  br i1 %81, label %302, label %357

302:                                              ; preds = %301
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.15, ptr noundef %50, ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef %83) #15
  br label %303

303:                                              ; preds = %302, %298
  %304 = phi i32 [ %60, %302 ], [ %299, %298 ]
  br label %80

305:                                              ; preds = %298, %283
  %306 = call i32 @llvm.smin.i32(i32 %83, i32 %288) #15
  %307 = trunc i32 %306 to i8
  store i8 %307, ptr %56, align 4
  %308 = and i32 %306, 255
  %309 = icmp ult i32 %308, 36
  br i1 %309, label %310, label %323

310:                                              ; preds = %305
  %311 = load ptr, ptr %50, align 8
  %312 = getelementptr inbounds %struct.Scsi_Host, ptr %311, i32 0, i32 36
  %313 = load i16, ptr %312, align 8
  %314 = and i16 %313, 512
  %315 = icmp eq i16 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %310
  %317 = getelementptr inbounds %struct.Scsi_Host, ptr %311, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %317, ptr noundef nonnull @.str.17, i32 noundef %308) #16
  %318 = load ptr, ptr %50, align 8
  %319 = getelementptr inbounds %struct.Scsi_Host, ptr %318, i32 0, i32 36
  %320 = load i16, ptr %319, align 8
  %321 = or i16 %320, 512
  store i16 %321, ptr %319, align 8
  br label %322

322:                                              ; preds = %316, %310
  store i8 36, ptr %56, align 4
  br label %323

323:                                              ; preds = %322, %305
  %324 = getelementptr i8, ptr %52, i32 2
  %325 = load i8, ptr %324, align 2
  %326 = and i8 %325, 7
  %327 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 23
  store i8 %326, ptr %327, align 1
  %328 = icmp ugt i8 %326, 1
  br i1 %328, label %336, label %329

329:                                              ; preds = %323
  %330 = icmp eq i8 %326, 1
  br i1 %330, label %331, label %338

331:                                              ; preds = %329
  %332 = getelementptr i8, ptr %52, i32 3
  %333 = load i8, ptr %332, align 1
  %334 = and i8 %333, 15
  %335 = icmp eq i8 %334, 1
  br i1 %335, label %336, label %338

336:                                              ; preds = %331, %323
  %337 = add nuw nsw i8 %326, 1
  store i8 %337, ptr %327, align 1
  br label %338

338:                                              ; preds = %336, %331, %329
  %339 = phi i8 [ %337, %336 ], [ 1, %331 ], [ 0, %329 ]
  %340 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 37
  %341 = load ptr, ptr %340, align 8
  %342 = getelementptr inbounds %struct.scsi_target, ptr %341, i32 0, i32 12
  store i8 %339, ptr %342, align 8
  %343 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 41
  %344 = load i64, ptr %343, align 4
  %345 = and i64 %344, -17592186044417
  store i64 %345, ptr %343, align 4
  %346 = load i8, ptr %327, align 1
  %347 = add i8 %346, -4
  %348 = icmp ult i8 %347, -3
  br i1 %348, label %358, label %349

349:                                              ; preds = %338
  %350 = load ptr, ptr %50, align 8
  %351 = getelementptr inbounds %struct.Scsi_Host, ptr %350, i32 0, i32 36
  %352 = load i16, ptr %351, align 8
  %353 = and i16 %352, 1024
  %354 = icmp eq i16 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %349
  %356 = or i64 %344, 17592186044416
  store i64 %356, ptr %343, align 4
  br label %358

357:                                              ; preds = %301
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %664

358:                                              ; preds = %355, %349, %338
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  %359 = icmp eq ptr %2, null
  br i1 %359, label %361, label %360

360:                                              ; preds = %358
  store i64 %289, ptr %2, align 8
  br label %361

361:                                              ; preds = %360, %358
  %362 = load i8, ptr %52, align 8
  %363 = zext i8 %362 to i32
  %364 = lshr i32 %363, 5
  switch i32 %364, label %365 [
    i32 3, label %664
    i32 1, label %376
  ]

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 7
  %367 = load i8, ptr %366, align 4
  %368 = and i8 %367, 4
  %369 = icmp eq i8 %368, 0
  %370 = and i32 %363, 31
  %371 = icmp ne i32 %370, 31
  %372 = select i1 %369, i1 true, i1 %371
  %373 = and i64 %1, 65280
  %374 = icmp eq i64 %373, 49408
  %375 = or i1 %374, %372
  br i1 %375, label %379, label %664

376:                                              ; preds = %361
  %377 = and i64 %1, 65280
  %378 = icmp eq i64 %377, 49408
  br i1 %378, label %379, label %664

379:                                              ; preds = %376, %365
  %380 = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 36
  %381 = load i16, ptr %380, align 8
  %382 = load i8, ptr %56, align 4
  %383 = call i8 @llvm.umax.i8(i8 %382, i8 36) #15
  %384 = zext i8 %383 to i32
  %385 = call ptr @kmemdup(ptr noundef %52, i32 noundef %384, i32 noundef 3264) #15
  %386 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 29
  store ptr %385, ptr %386, align 8
  %387 = icmp eq ptr %385, null
  br i1 %387, label %664, label %388

388:                                              ; preds = %379
  %389 = getelementptr i8, ptr %385, i32 8
  %390 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 30
  store ptr %389, ptr %390, align 4
  %391 = getelementptr i8, ptr %385, i32 16
  %392 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 31
  store ptr %391, ptr %392, align 8
  %393 = getelementptr i8, ptr %385, i32 32
  %394 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 32
  store ptr %393, ptr %394, align 4
  %395 = call i32 @strncmp(ptr noundef %389, ptr noundef nonnull dereferenceable(9) @.str.18, i32 noundef 8) #15
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %400

397:                                              ; preds = %388
  %398 = load i64, ptr %343, align 4
  %399 = or i64 %398, 134217728
  store i64 %399, ptr %343, align 4
  br label %400

400:                                              ; preds = %397, %388
  %401 = and i64 %289, 256
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %407, label %403

403:                                              ; preds = %400
  %404 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 22
  store i8 5, ptr %404, align 4
  %405 = load i64, ptr %343, align 4
  %406 = or i64 %405, 1
  store i64 %406, ptr %343, align 4
  br label %430

407:                                              ; preds = %400
  %408 = load i8, ptr %52, align 8
  %409 = and i8 %408, 31
  %410 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 22
  store i8 %409, ptr %410, align 4
  %411 = getelementptr i8, ptr %52, i32 1
  %412 = load i8, ptr %411, align 1
  %413 = lshr i8 %412, 7
  %414 = zext i8 %413 to i64
  %415 = load i64, ptr %343, align 4
  %416 = and i64 %415, -2
  %417 = or i64 %416, %414
  store i64 %417, ptr %343, align 4
  %418 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 18
  %419 = load i64, ptr %418, align 8
  %420 = and i64 %419, 65280
  %421 = icmp ne i64 %420, 49408
  %422 = icmp eq i8 %409, 30
  %423 = select i1 %421, i1 true, i1 %422
  br i1 %423, label %428, label %424

424:                                              ; preds = %407
  %425 = zext i8 %409 to i32
  %426 = trunc i64 %419 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.19, ptr noundef %50, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.scsi_add_lun, i32 noundef %425, i32 noundef %426) #15
  store i8 30, ptr %410, align 4
  %427 = load i64, ptr %343, align 4
  br label %437

428:                                              ; preds = %407
  %429 = trunc i8 %408 to i5
  switch i5 %429, label %437 [
    i5 14, label %430
    i5 5, label %430
  ]

430:                                              ; preds = %428, %428, %403
  %431 = phi i64 [ %406, %403 ], [ %417, %428 ], [ %417, %428 ]
  %432 = phi ptr [ %404, %403 ], [ %410, %428 ], [ %410, %428 ]
  %433 = shl i64 %289, 1
  %434 = and i64 %433, 262144
  %435 = xor i64 %434, 262144
  %436 = or i64 %435, %289
  br label %437

437:                                              ; preds = %430, %428, %424
  %438 = phi i64 [ %417, %428 ], [ %427, %424 ], [ %431, %430 ]
  %439 = phi i64 [ %289, %428 ], [ %289, %424 ], [ %436, %430 ]
  %440 = phi ptr [ %410, %428 ], [ %410, %424 ], [ %432, %430 ]
  %441 = load i8, ptr %52, align 8
  %442 = lshr i8 %441, 5
  %443 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 24
  store i8 %442, ptr %443, align 2
  %444 = shl i64 %438, 3
  %445 = and i64 %444, 8
  %446 = and i64 %438, -9
  %447 = or i64 %445, %446
  store i64 %447, ptr %343, align 4
  %448 = getelementptr i8, ptr %52, i32 7
  %449 = load i8, ptr %448, align 1
  %450 = and i8 %449, 1
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %458, label %452

452:                                              ; preds = %437
  %453 = getelementptr i8, ptr %52, i32 3
  %454 = load i8, ptr %453, align 1
  %455 = and i8 %454, 7
  %456 = icmp eq i8 %455, 2
  %457 = select i1 %456, i64 128, i64 0
  br label %458

458:                                              ; preds = %452, %437
  %459 = phi i64 [ 0, %437 ], [ %457, %452 ]
  %460 = and i64 %447, -129
  %461 = or i64 %459, %460
  store i64 %461, ptr %343, align 4
  %462 = load i8, ptr %327, align 1
  %463 = icmp ugt i8 %462, 3
  br i1 %463, label %472, label %464

464:                                              ; preds = %458
  %465 = load i8, ptr %56, align 4
  %466 = icmp ugt i8 %465, 56
  br i1 %466, label %467, label %474

467:                                              ; preds = %464
  %468 = getelementptr i8, ptr %52, i32 56
  %469 = load i8, ptr %468, align 8
  %470 = and i8 %469, 4
  %471 = icmp eq i8 %470, 0
  br i1 %471, label %474, label %472

472:                                              ; preds = %467, %458
  %473 = or i64 %461, 1024
  store i64 %473, ptr %343, align 4
  br label %474

474:                                              ; preds = %472, %467, %464
  %475 = phi i64 [ %473, %472 ], [ %461, %467 ], [ %461, %464 ]
  %476 = load i8, ptr %448, align 1
  %477 = and i8 %476, 96
  %478 = icmp eq i8 %477, 0
  br i1 %478, label %482, label %479

479:                                              ; preds = %474
  %480 = or i64 %475, 512
  store i64 %480, ptr %343, align 4
  %481 = load i8, ptr %448, align 1
  br label %482

482:                                              ; preds = %479, %474
  %483 = phi i64 [ %480, %479 ], [ %475, %474 ]
  %484 = phi i8 [ %481, %479 ], [ %476, %474 ]
  %485 = and i8 %484, 16
  %486 = icmp eq i8 %485, 0
  br i1 %486, label %489, label %487

487:                                              ; preds = %482
  %488 = or i64 %483, 256
  store i64 %488, ptr %343, align 4
  br label %489

489:                                              ; preds = %487, %482
  %490 = load i8, ptr %440, align 4
  %491 = zext i8 %490 to i32
  %492 = call ptr @scsi_device_type(i32 noundef %491) #15
  %493 = load ptr, ptr %390, align 4
  %494 = load ptr, ptr %392, align 8
  %495 = load ptr, ptr %394, align 4
  %496 = load i8, ptr %443, align 2
  %497 = zext i8 %496 to i32
  %498 = load i8, ptr %324, align 2
  %499 = and i8 %498, 7
  %500 = zext i8 %499 to i32
  %501 = getelementptr i8, ptr %52, i32 3
  %502 = load i8, ptr %501, align 1
  %503 = and i8 %502, 15
  %504 = icmp eq i8 %503, 1
  %505 = select i1 %504, ptr @.str.23, ptr @.str.24
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.21, ptr noundef %50, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef %492, ptr noundef %493, ptr noundef %494, ptr noundef %495, i32 noundef %497, i32 noundef %500, ptr noundef nonnull %505) #15
  %506 = load i8, ptr %327, align 1
  %507 = icmp ugt i8 %506, 2
  br i1 %507, label %508, label %518

508:                                              ; preds = %489
  %509 = load i8, ptr %448, align 1
  %510 = and i8 %509, 2
  %511 = icmp ne i8 %510, 0
  %512 = and i64 %439, 32
  %513 = icmp eq i64 %512, 0
  %514 = select i1 %511, i1 %513, i1 false
  br i1 %514, label %515, label %518

515:                                              ; preds = %508
  %516 = load i64, ptr %343, align 4
  %517 = or i64 %516, 6144
  store i64 %517, ptr %343, align 4
  br label %518

518:                                              ; preds = %515, %508, %489
  %519 = and i64 %439, 4
  %520 = icmp eq i64 %519, 0
  br i1 %520, label %521, label %524

521:                                              ; preds = %518
  %522 = load i64, ptr %343, align 4
  %523 = and i64 %522, -33
  store i64 %523, ptr %343, align 4
  br label %524

524:                                              ; preds = %521, %518
  %525 = and i64 %439, 1048576
  %526 = icmp eq i64 %525, 0
  br i1 %526, label %530, label %527

527:                                              ; preds = %524
  %528 = load i64, ptr %343, align 4
  %529 = or i64 %528, 1073741824
  store i64 %529, ptr %343, align 4
  br label %530

530:                                              ; preds = %527, %524
  %531 = and i64 %439, 2097152
  %532 = icmp eq i64 %531, 0
  br i1 %532, label %536, label %533

533:                                              ; preds = %530
  %534 = load i64, ptr %343, align 4
  %535 = or i64 %534, 2147483648
  store i64 %535, ptr %343, align 4
  br label %536

536:                                              ; preds = %533, %530
  %537 = and i64 %439, 8388608
  %538 = icmp eq i64 %537, 0
  br i1 %538, label %539, label %542

539:                                              ; preds = %536
  %540 = and i64 %439, 1073741824
  %541 = icmp eq i64 %540, 0
  br i1 %541, label %546, label %542

542:                                              ; preds = %539, %536
  %543 = phi i32 [ 512, %536 ], [ 1024, %539 ]
  %544 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 1
  %545 = load ptr, ptr %544, align 4
  call void @blk_queue_max_hw_sectors(ptr noundef %545, i32 noundef %543) #15
  br label %546

546:                                              ; preds = %542, %539
  %547 = and i64 %439, 4096
  %548 = icmp eq i64 %547, 0
  br i1 %548, label %552, label %549

549:                                              ; preds = %546
  %550 = load i64, ptr %343, align 4
  %551 = or i64 %550, 67108864
  store i64 %551, ptr %343, align 4
  br label %552

552:                                              ; preds = %549, %546
  %553 = and i64 %439, 16
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %561, label %555

555:                                              ; preds = %552
  %556 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 54, i32 1
  %557 = load ptr, ptr %556, align 4
  %558 = getelementptr i8, ptr %557, i32 484
  %559 = load i8, ptr %558, align 4
  %560 = or i8 %559, 2
  store i8 %560, ptr %558, align 4
  br label %561

561:                                              ; preds = %555, %552
  %562 = load i64, ptr %343, align 4
  %563 = and i64 %439, 536870912
  %564 = icmp eq i64 %563, 0
  %565 = select i1 %564, i64 32768, i64 294912
  %566 = or i64 %562, %565
  store i64 %566, ptr %343, align 4
  %567 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 67
  call void @mutex_lock(ptr noundef %567) #15
  %568 = call i32 @scsi_device_set_state(ptr noundef %50, i32 noundef 2) #15
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %571

570:                                              ; preds = %561
  call void @mutex_unlock(ptr noundef %567) #15
  br label %578

571:                                              ; preds = %561
  %572 = call i32 @scsi_device_set_state(ptr noundef %50, i32 noundef 8) #15
  call void @mutex_unlock(ptr noundef %567) #15
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %578, label %574

574:                                              ; preds = %571
  %575 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 68
  %576 = load i32, ptr %575, align 4
  %577 = call ptr @scsi_device_state_name(i32 noundef %576) #15
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.25, ptr noundef %50, ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef %577) #15
  br label %664

578:                                              ; preds = %571, %570
  %579 = and i64 %439, 524288
  %580 = icmp eq i64 %579, 0
  br i1 %580, label %584, label %581

581:                                              ; preds = %578
  %582 = load i64, ptr %343, align 4
  %583 = and i64 %582, -9
  store i64 %583, ptr %343, align 4
  br label %584

584:                                              ; preds = %581, %578
  %585 = and i64 %439, 4194304
  %586 = icmp eq i64 %585, 0
  br i1 %586, label %590, label %587

587:                                              ; preds = %584
  %588 = load i64, ptr %343, align 4
  %589 = or i64 %588, 17179869184
  store i64 %589, ptr %343, align 4
  br label %590

590:                                              ; preds = %587, %584
  %591 = and i64 %439, 33554432
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %596, label %593

593:                                              ; preds = %590
  %594 = load i64, ptr %343, align 4
  %595 = or i64 %594, 4398046511104
  store i64 %595, ptr %343, align 4
  br label %596

596:                                              ; preds = %593, %590
  %597 = and i64 %439, 2147483648
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %602, label %599

599:                                              ; preds = %596
  %600 = load i64, ptr %343, align 4
  %601 = or i64 %600, 35184372088832
  store i64 %601, ptr %343, align 4
  br label %602

602:                                              ; preds = %599, %596
  %603 = and i64 %439, 2048
  %604 = icmp eq i64 %603, 0
  br i1 %604, label %608, label %605

605:                                              ; preds = %602
  %606 = load i64, ptr %343, align 4
  %607 = or i64 %606, 140737488355328
  store i64 %607, ptr %343, align 4
  br label %608

608:                                              ; preds = %605, %602
  %609 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 40
  store i32 1000, ptr %609, align 8
  %610 = and i64 %439, 268435456
  %611 = icmp eq i64 %610, 0
  br i1 %611, label %612, label %615

612:                                              ; preds = %608
  %613 = and i64 %439, 67108864
  %614 = icmp eq i64 %613, 0
  br i1 %614, label %619, label %615

615:                                              ; preds = %612, %608
  %616 = phi i64 [ 16777216, %608 ], [ 8388608, %612 ]
  %617 = load i64, ptr %343, align 4
  %618 = or i64 %617, %616
  store i64 %618, ptr %343, align 4
  br label %619

619:                                              ; preds = %615, %612
  %620 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 54
  call void @transport_configure_device(ptr noundef %620) #15
  %621 = load ptr, ptr %50, align 8
  %622 = getelementptr inbounds %struct.Scsi_Host, ptr %621, i32 0, i32 11
  %623 = load ptr, ptr %622, align 8
  %624 = getelementptr inbounds %struct.scsi_host_template, ptr %623, i32 0, i32 15
  %625 = load ptr, ptr %624, align 4
  %626 = icmp eq ptr %625, null
  br i1 %626, label %635, label %627

627:                                              ; preds = %619
  %628 = call i32 %625(ptr noundef %50) #15
  switch i32 %628, label %629 [
    i32 0, label %630
    i32 -6, label %664
  ]

629:                                              ; preds = %627
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.25, ptr noundef %50, ptr noundef null, ptr noundef nonnull @.str.27) #15
  br label %664

630:                                              ; preds = %627
  %631 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 9
  %632 = load i16, ptr %631, align 4
  %633 = zext i16 %632 to i32
  %634 = call fastcc i32 @scsi_realloc_sdev_budget_map(ptr noundef %50, i32 noundef %633) #15
  br label %635

635:                                              ; preds = %630, %619
  %636 = load i8, ptr %327, align 1
  %637 = icmp ugt i8 %636, 3
  br i1 %637, label %638, label %639

638:                                              ; preds = %635
  call void @scsi_attach_vpd(ptr noundef %50) #15
  br label %639

639:                                              ; preds = %638, %635
  %640 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 9
  %641 = load i16, ptr %640, align 4
  %642 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 10
  store i16 %641, ptr %642, align 2
  %643 = zext i16 %641 to i32
  %644 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 4
  %645 = load i32, ptr %644, align 8
  %646 = icmp ult i32 %645, %643
  %647 = load i1, ptr @scsi_add_lun.__already_done, align 1
  %648 = xor i1 %647, true
  %649 = select i1 %646, i1 %648, i1 false
  br i1 %649, label %650, label %651, !prof !12

650:                                              ; preds = %639
  store i1 true, ptr @scsi_add_lun.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1071, i32 noundef 9, ptr noundef null) #15
  br label %651

651:                                              ; preds = %650, %639
  %652 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 39
  store i64 %439, ptr %652, align 8
  %653 = and i16 %381, 32
  %654 = icmp eq i16 %653, 0
  br i1 %654, label %655, label %658

655:                                              ; preds = %651
  %656 = call i32 @scsi_sysfs_add_sdev(ptr noundef %50) #15
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %664

658:                                              ; preds = %655, %651
  %659 = and i64 %439, 8
  %660 = icmp eq i64 %659, 0
  br i1 %660, label %666, label %661

661:                                              ; preds = %658
  %662 = load i64, ptr %343, align 4
  %663 = and i64 %662, -9
  store i64 %663, ptr %343, align 4
  call fastcc void @scsi_unlock_floptical(ptr noundef nonnull %50, ptr noundef nonnull %52)
  br label %666

664:                                              ; preds = %655, %629, %627, %574, %379, %376, %365, %361, %357
  %665 = phi i32 [ 1, %376 ], [ 1, %361 ], [ 0, %357 ], [ 0, %574 ], [ 0, %379 ], [ 0, %627 ], [ 0, %629 ], [ 0, %655 ], [ 1, %365 ]
  call void @kfree(ptr noundef nonnull %52) #15
  br label %673

666:                                              ; preds = %661, %658
  call void @kfree(ptr noundef nonnull %52) #15
  %667 = icmp eq ptr %3, null
  br i1 %667, label %675, label %668

668:                                              ; preds = %666
  %669 = call i32 @scsi_device_get(ptr noundef nonnull %50) #15
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %671, label %672

671:                                              ; preds = %668
  store ptr %50, ptr %3, align 4
  br label %675

672:                                              ; preds = %668
  call void @__scsi_remove_device(ptr noundef nonnull %50) #15
  br label %675

673:                                              ; preds = %664, %49
  %674 = phi i32 [ %665, %664 ], [ 0, %49 ]
  call void @__scsi_remove_device(ptr noundef nonnull %50) #15
  br label %675

675:                                              ; preds = %673, %672, %671, %666, %46, %39, %37
  %676 = phi i32 [ 2, %39 ], [ 2, %37 ], [ 2, %671 ], [ 0, %672 ], [ 2, %666 ], [ %674, %673 ], [ 0, %46 ]
  ret i32 %676
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_target(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_add_device(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) #2 {
  %5 = tail call ptr @__scsi_add_device(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef null)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i32
  br label %10

9:                                                ; preds = %4
  tail call void @scsi_device_put(ptr noundef %5) #15
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_rescan_device(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -264
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #15
  tail call void @scsi_attach_vpd(ptr noundef %2) #15
  %4 = getelementptr i8, ptr %0, i32 976
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.scsi_device_handler, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %2) #15
  br label %12

12:                                               ; preds = %11, %7, %1
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.device_driver, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call zeroext i1 @try_module_get(ptr noundef %18) #15
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load ptr, ptr %13, align 8
  %22 = getelementptr inbounds %struct.scsi_driver, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  tail call void %23(ptr noundef %0) #15
  %26 = load ptr, ptr %13, align 8
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi ptr [ %26, %25 ], [ %21, %20 ]
  %29 = getelementptr inbounds %struct.device_driver, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void @module_put(ptr noundef %30) #15
  br label %31

31:                                               ; preds = %27, %16, %12
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_attach_vpd(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_scan_target(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) #2 {
  br label %6

6:                                                ; preds = %10, %5
  %7 = phi ptr [ %0, %5 ], [ %12, %10 ]
  %8 = tail call i32 @scsi_is_host_device(ptr noundef %7) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %6

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %7, i32 -360
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ null, %10 ]
  %18 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @scsi_scan_type, ptr noundef nonnull dereferenceable(4) @.str.2, i32 4)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %4, 2
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @scsi_scan_type, ptr noundef nonnull dereferenceable(6) @.str.3, i32 6)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %22, %20
  %26 = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %26) #15
  %27 = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 36
  %28 = load i16, ptr %27, align 8
  %29 = and i16 %28, 32
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = tail call i32 @scsi_complete_async_scans()
  br label %33

33:                                               ; preds = %31, %25
  %34 = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 48
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %40 [
    i32 5, label %36
    i32 2, label %36
  ]

36:                                               ; preds = %33, %33
  %37 = tail call i32 @scsi_autopm_get_host(ptr noundef %17) #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  tail call fastcc void @__scsi_scan_target(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4)
  tail call void @scsi_autopm_put_host(ptr noundef %17) #15
  br label %40

40:                                               ; preds = %39, %36, %33
  tail call void @mutex_unlock(ptr noundef %26) #15
  br label %41

41:                                               ; preds = %40, %22, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__scsi_scan_target(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca [16 x i8], align 1
  %7 = alloca %struct.scsi_sense_hdr, align 8
  %8 = alloca i64, align 8
  br label %9

9:                                                ; preds = %13, %5
  %10 = phi ptr [ %0, %5 ], [ %15, %13 ]
  %11 = tail call i32 @scsi_is_host_device(ptr noundef %10) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %9

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %10, i32 -360
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ null, %13 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  store i64 0, ptr %8, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 25
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %210, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc ptr @scsi_alloc_target(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %210, label %27

27:                                               ; preds = %24
  tail call void @scsi_autopm_get_target(ptr noundef nonnull %25) #15
  %28 = icmp eq i64 %3, -1
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = tail call fastcc i32 @scsi_probe_and_add_lun(ptr noundef nonnull %25, i64 noundef %3, ptr noundef null, ptr noundef null, i32 noundef %4, ptr noundef null)
  br label %208

31:                                               ; preds = %27
  %32 = call fastcc i32 @scsi_probe_and_add_lun(ptr noundef nonnull %25, i64 noundef 0, ptr noundef nonnull %8, ptr noundef null, i32 noundef %4, ptr noundef null)
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, 2
  br i1 %34, label %35, label %208

35:                                               ; preds = %31
  %36 = load i64, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false) #15, !annotation !20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store i64 0, ptr %7, align 8, !annotation !20
  %37 = getelementptr inbounds %struct.scsi_target, ptr %25, i32 0, i32 3
  br label %38

38:                                               ; preds = %42, %35
  %39 = phi ptr [ %37, %35 ], [ %44, %42 ]
  %40 = call i32 @scsi_is_host_device(ptr noundef %39) #15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %38

46:                                               ; preds = %38
  %47 = getelementptr i8, ptr %39, i32 -360
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi ptr [ %47, %46 ], [ null, %42 ]
  %50 = and i64 %36, 262144
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %156

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.scsi_target, ptr %25, i32 0, i32 12
  %54 = load i8, ptr %53, align 8
  %55 = add i8 %54, -3
  %56 = icmp ult i8 %55, -2
  br i1 %56, label %57, label %156

57:                                               ; preds = %52
  %58 = icmp ult i8 %54, 4
  br i1 %58, label %59, label %66

59:                                               ; preds = %57
  %60 = and i64 %36, 131072
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %156, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.Scsi_Host, ptr %49, i32 0, i32 22
  %64 = load i64, ptr %63, align 8
  %65 = icmp ult i64 %64, 9
  br i1 %65, label %156, label %66

66:                                               ; preds = %62, %57
  %67 = and i64 %36, 1
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %157

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.scsi_target, ptr %25, i32 0, i32 7
  %71 = load i8, ptr %70, align 4
  %72 = and i8 %71, 8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %156

74:                                               ; preds = %69
  %75 = call ptr @scsi_device_lookup_by_target(ptr noundef nonnull %25, i64 noundef 0) #15
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = call fastcc ptr @scsi_alloc_sdev(ptr noundef nonnull %25, i64 noundef 0, ptr noundef null) #15
  %79 = icmp eq ptr %78, null
  br i1 %79, label %157, label %80

80:                                               ; preds = %77
  %81 = call i32 @scsi_device_get(ptr noundef nonnull %78) #15
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  call void @__scsi_remove_device(ptr noundef nonnull %78) #15
  br label %157

84:                                               ; preds = %80, %74
  %85 = phi ptr [ %75, %74 ], [ %78, %80 ]
  %86 = getelementptr inbounds [16 x i8], ptr %6, i32 0, i32 1
  %87 = getelementptr inbounds [16 x i8], ptr %6, i32 0, i32 6
  %88 = getelementptr inbounds [16 x i8], ptr %6, i32 0, i32 10
  %89 = getelementptr inbounds [16 x i8], ptr %6, i32 0, i32 11
  %90 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %7, i32 0, i32 1
  br label %91

91:                                               ; preds = %126, %84
  %92 = phi i32 [ 4096, %84 ], [ %124, %126 ]
  %93 = call noalias align 64 ptr @__kmalloc(i32 noundef %92, i32 noundef 3264) #17
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.scsi_report_lun_scan) #16
  br label %149

97:                                               ; preds = %91
  store i8 -96, ptr %6, align 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %86, i8 0, i32 5, i1 false) #15
  %98 = call i32 @llvm.bswap.i32(i32 %92) #15
  store i32 %98, ptr %87, align 1
  store i8 0, ptr %88, align 1
  store i8 0, ptr %89, align 1
  %99 = call i32 @__scsi_execute(ptr noundef %85, ptr noundef nonnull %6, i32 noundef 2, ptr noundef nonnull %93, i32 noundef %92, ptr noundef null, ptr noundef nonnull %7, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #15
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %97
  %102 = load i8, ptr %7, align 8
  %103 = and i8 %102, 112
  %104 = icmp ne i8 %103, 112
  %105 = load i8, ptr %90, align 1
  %106 = icmp eq i8 %105, 6
  %107 = select i1 %104, i1 true, i1 %106
  br i1 %107, label %108, label %147

108:                                              ; preds = %101
  %109 = call i32 @__scsi_execute(ptr noundef %85, ptr noundef nonnull %6, i32 noundef 2, ptr noundef nonnull %93, i32 noundef %92, ptr noundef null, ptr noundef nonnull %7, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #15
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %108
  %112 = load i8, ptr %7, align 8
  %113 = and i8 %112, 112
  %114 = icmp ne i8 %113, 112
  %115 = load i8, ptr %90, align 1
  %116 = icmp eq i8 %115, 6
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %118, label %147

118:                                              ; preds = %111
  %119 = call i32 @__scsi_execute(ptr noundef %85, ptr noundef nonnull %6, i32 noundef 2, ptr noundef nonnull %93, i32 noundef %92, ptr noundef null, ptr noundef nonnull %7, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #15
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %147

121:                                              ; preds = %118, %108, %97
  %122 = load i32, ptr %93, align 64
  %123 = call i32 @llvm.bswap.i32(i32 %122) #15
  %124 = add i32 %123, 8
  %125 = icmp ugt i32 %124, %92
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  call void @kfree(ptr noundef nonnull %93) #15
  br label %91

127:                                              ; preds = %121
  %128 = lshr i32 %123, 3
  %129 = getelementptr %struct.scsi_lun, ptr %93, i32 %128
  %130 = getelementptr %struct.scsi_lun, ptr %93, i32 1
  %131 = icmp ugt ptr %130, %129
  br i1 %131, label %147, label %132

132:                                              ; preds = %144, %127
  %133 = phi ptr [ %145, %144 ], [ %130, %127 ]
  %134 = call i64 @scsilun_to_int(ptr noundef %133) #15
  %135 = load ptr, ptr %85, align 8
  %136 = getelementptr inbounds %struct.Scsi_Host, ptr %135, i32 0, i32 22
  %137 = load i64, ptr %136, align 8
  %138 = icmp ugt i64 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.19, ptr noundef %85, ptr noundef null, ptr noundef nonnull @.str.29, i64 noundef %134) #15
  br label %144

140:                                              ; preds = %132
  %141 = call fastcc i32 @scsi_probe_and_add_lun(ptr noundef nonnull %25, i64 noundef %134, ptr noundef null, ptr noundef null, i32 noundef %4, ptr noundef null) #15
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.25, ptr noundef %85, ptr noundef null, ptr noundef nonnull @.str.30, i64 noundef %134) #15
  br label %147

144:                                              ; preds = %140, %139
  %145 = getelementptr %struct.scsi_lun, ptr %133, i32 1
  %146 = icmp ugt ptr %145, %129
  br i1 %146, label %147, label %132

147:                                              ; preds = %144, %143, %127, %118, %111, %101
  %148 = phi i32 [ 0, %143 ], [ 0, %127 ], [ 0, %144 ], [ 1, %111 ], [ 1, %101 ], [ 1, %118 ]
  call void @kfree(ptr noundef nonnull %93) #15
  br label %149

149:                                              ; preds = %147, %95
  %150 = phi i32 [ %148, %147 ], [ 0, %95 ]
  %151 = getelementptr inbounds %struct.scsi_device, ptr %85, i32 0, i32 68
  %152 = load i32, ptr %151, align 4
  %153 = and i32 %152, -9
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  call void @__scsi_remove_device(ptr noundef %85) #15
  br label %158

156:                                              ; preds = %69, %62, %59, %52, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %160

157:                                              ; preds = %83, %77, %66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %208

158:                                              ; preds = %155, %149
  call void @scsi_device_put(ptr noundef %85) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  %159 = icmp eq i32 %150, 0
  br i1 %159, label %208, label %160

160:                                              ; preds = %158, %156
  %161 = load i64, ptr %8, align 8
  %162 = getelementptr inbounds %struct.scsi_target, ptr %25, i32 0, i32 12
  %163 = load i8, ptr %162, align 8
  %164 = getelementptr inbounds %struct.scsi_target, ptr %25, i32 0, i32 3, i32 1
  %165 = load ptr, ptr %164, align 4
  br label %166

166:                                              ; preds = %170, %160
  %167 = phi ptr [ %165, %160 ], [ %172, %170 ]
  %168 = call i32 @scsi_is_host_device(ptr noundef %167) #15
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.device, ptr %167, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %166

174:                                              ; preds = %166
  %175 = getelementptr i8, ptr %167, i32 -360
  br label %176

176:                                              ; preds = %174, %170
  %177 = phi ptr [ %175, %174 ], [ null, %170 ]
  %178 = getelementptr inbounds %struct.Scsi_Host, ptr %177, i32 0, i32 22
  %179 = load i64, ptr %178, align 8
  %180 = and i64 %161, 64
  %181 = icmp ne i64 %180, 0
  %182 = load i64, ptr @max_scsi_luns, align 8
  %183 = call i64 @llvm.umin.i64(i64 %182, i64 %179) #15
  %184 = and i64 %161, 66
  %185 = icmp eq i64 %184, 0
  %186 = select i1 %185, i64 %183, i64 %179
  %187 = trunc i64 %186 to i32
  %188 = and i64 %161, 128
  %189 = icmp eq i64 %188, 0
  %190 = call i32 @llvm.umin.i32(i32 %187, i32 5) #15
  %191 = select i1 %189, i32 %187, i32 %190
  %192 = icmp ult i8 %163, 4
  %193 = and i64 %161, 512
  %194 = icmp eq i64 %193, 0
  %195 = and i1 %192, %194
  %196 = select i1 %195, i32 8, i32 256
  %197 = call i32 @llvm.umin.i32(i32 %196, i32 %191) #15
  %198 = zext i32 %197 to i64
  %199 = icmp ugt i32 %197, 1
  br i1 %199, label %200, label %208

200:                                              ; preds = %200, %176
  %201 = phi i64 [ %205, %200 ], [ 1, %176 ]
  %202 = call fastcc i32 @scsi_probe_and_add_lun(ptr noundef nonnull %25, i64 noundef %201, ptr noundef null, ptr noundef null, i32 noundef %4, ptr noundef null) #15
  %203 = icmp eq i32 %202, 2
  %204 = or i1 %181, %203
  %205 = add nuw nsw i64 %201, 1
  %206 = icmp ult i64 %205, %198
  %207 = select i1 %204, i1 %206, i1 false
  br i1 %207, label %200, label %208

208:                                              ; preds = %200, %176, %158, %157, %31, %29
  call void @scsi_autopm_put_target(ptr noundef nonnull %25) #15
  call void @scsi_target_reap(ptr noundef nonnull %25)
  %209 = getelementptr inbounds %struct.scsi_target, ptr %25, i32 0, i32 3
  call void @put_device(ptr noundef %209) #15
  br label %210

210:                                              ; preds = %208, %24, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_scan_host_selected(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq i32 %1, -1
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = icmp ult i32 %9, %1
  br i1 %10, label %87, label %11

11:                                               ; preds = %7, %5
  %12 = icmp eq i32 %2, -1
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 21
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %2
  br i1 %16, label %17, label %87

17:                                               ; preds = %13, %11
  %18 = icmp eq i64 %3, -1
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 22
  %21 = load i64, ptr %20, align 8
  %22 = icmp ugt i64 %21, %3
  br i1 %22, label %23, label %87

23:                                               ; preds = %19, %17
  %24 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %24) #15
  %25 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 36
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, 32
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call i32 @scsi_complete_async_scans()
  br label %31

31:                                               ; preds = %29, %23
  %32 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 48
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %86 [
    i32 5, label %34
    i32 2, label %34
  ]

34:                                               ; preds = %31, %31
  %35 = tail call i32 @scsi_autopm_get_host(ptr noundef %0) #15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %86

37:                                               ; preds = %34
  br i1 %6, label %38, label %64

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 20
  %40 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  %41 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 21
  br label %42

42:                                               ; preds = %60, %38
  %43 = phi i32 [ 0, %38 ], [ %61, %60 ]
  br i1 %12, label %44, label %59

44:                                               ; preds = %42
  %45 = load i32, ptr %41, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %47, %44
  %48 = phi i32 [ %57, %47 ], [ %45, %44 ]
  %49 = phi i32 [ %56, %47 ], [ 0, %44 ]
  %50 = load i16, ptr %25, align 8
  %51 = and i16 %50, 8
  %52 = icmp eq i16 %51, 0
  %53 = xor i32 %49, -1
  %54 = add i32 %48, %53
  %55 = select i1 %52, i32 %49, i32 %54
  tail call fastcc void @__scsi_scan_target(ptr noundef %40, i32 noundef %43, i32 noundef %55, i64 noundef %3, i32 noundef %4) #15
  %56 = add nuw i32 %49, 1
  %57 = load i32, ptr %41, align 4
  %58 = icmp ugt i32 %57, %56
  br i1 %58, label %47, label %60

59:                                               ; preds = %42
  tail call fastcc void @__scsi_scan_target(ptr noundef %40, i32 noundef %43, i32 noundef %2, i64 noundef %3, i32 noundef %4) #15
  br label %60

60:                                               ; preds = %59, %47, %44
  %61 = add i32 %43, 1
  %62 = load i32, ptr %39, align 8
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %85, label %42

64:                                               ; preds = %37
  br i1 %12, label %65, label %83

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 21
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi i32 [ %67, %69 ], [ %81, %71 ]
  %73 = phi i32 [ 0, %69 ], [ %80, %71 ]
  %74 = load i16, ptr %25, align 8
  %75 = and i16 %74, 8
  %76 = icmp eq i16 %75, 0
  %77 = xor i32 %73, -1
  %78 = add i32 %72, %77
  %79 = select i1 %76, i32 %73, i32 %78
  tail call fastcc void @__scsi_scan_target(ptr noundef %70, i32 noundef %1, i32 noundef %79, i64 noundef %3, i32 noundef %4) #15
  %80 = add nuw i32 %73, 1
  %81 = load i32, ptr %66, align 4
  %82 = icmp ugt i32 %81, %80
  br i1 %82, label %71, label %85

83:                                               ; preds = %64
  %84 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  tail call fastcc void @__scsi_scan_target(ptr noundef %84, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) #15
  br label %85

85:                                               ; preds = %83, %71, %65, %60
  tail call void @scsi_autopm_put_host(ptr noundef %0) #15
  br label %86

86:                                               ; preds = %85, %34, %31
  tail call void @mutex_unlock(ptr noundef %24) #15
  br label %87

87:                                               ; preds = %86, %19, %13, %7
  %88 = phi i32 [ 0, %86 ], [ -22, %19 ], [ -22, %13 ], [ -22, %7 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_scan_host(ptr noundef %0) #2 {
  %2 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @scsi_scan_type, ptr noundef nonnull dereferenceable(4) @.str.2, i32 4)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %81, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @scsi_scan_type, ptr noundef nonnull dereferenceable(6) @.str.3, i32 6)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %81, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @scsi_autopm_get_host(ptr noundef %0) #15
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %81, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @scsi_scan_type, ptr noundef nonnull dereferenceable(4) @.str.31, i32 4) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %14) #15
  %15 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 36
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.32, ptr noundef %20, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.scsi_prep_async_scan) #16
  br label %41

21:                                               ; preds = %13
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 28) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @scsi_host_get(ptr noundef %0) #15
  %27 = getelementptr inbounds %struct.async_scan_data, ptr %23, i32 0, i32 1
  store ptr %26, ptr %27, align 8
  %28 = icmp eq ptr %26, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.async_scan_data, ptr %23, i32 0, i32 2
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.async_scan_data, ptr %23, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %31, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #15
  %32 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #15
  %35 = load i16, ptr %15, align 8
  %36 = or i16 %35, 32
  store i16 %36, ptr %15, align 8
  %37 = load ptr, ptr %32, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %34) #15
  tail call void @mutex_unlock(ptr noundef %14) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @async_scan_lock) #15
  %38 = load volatile ptr, ptr @scanning_hosts, align 4
  %39 = icmp eq ptr %38, @scanning_hosts
  br i1 %39, label %40, label %75

40:                                               ; preds = %29
  tail call void @complete(ptr noundef %30) #15
  br label %75

41:                                               ; preds = %25, %21, %19
  %42 = phi ptr [ null, %19 ], [ %23, %25 ], [ null, %21 ]
  tail call void @mutex_unlock(ptr noundef %14) #15
  tail call void @kfree(ptr noundef %42) #15
  br label %43

43:                                               ; preds = %41, %10
  %44 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 11
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.scsi_host_template, ptr %45, i32 0, i32 19
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %72, label %49

49:                                               ; preds = %43
  %50 = load volatile i32, ptr @jiffies, align 64
  %51 = getelementptr inbounds %struct.scsi_host_template, ptr %45, i32 0, i32 20
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  tail call void %52(ptr noundef %0) #15
  %55 = load ptr, ptr %44, align 8
  %56 = getelementptr inbounds %struct.scsi_host_template, ptr %55, i32 0, i32 19
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = phi ptr [ %57, %54 ], [ %47, %49 ]
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = sub i32 %60, %50
  %62 = tail call i32 %59(ptr noundef %0, i32 noundef %61) #15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %64, %58
  tail call void @msleep(i32 noundef 10) #15
  %65 = load ptr, ptr %44, align 8
  %66 = getelementptr inbounds %struct.scsi_host_template, ptr %65, i32 0, i32 19
  %67 = load ptr, ptr %66, align 4
  %68 = load volatile i32, ptr @jiffies, align 64
  %69 = sub i32 %68, %50
  %70 = tail call i32 %67(ptr noundef %0, i32 noundef %69) #15
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %64, label %74

72:                                               ; preds = %43
  %73 = tail call i32 @scsi_scan_host_selected(ptr noundef %0, i32 noundef -1, i32 noundef -1, i64 noundef -1, i32 noundef 0) #15
  br label %74

74:                                               ; preds = %72, %64, %58
  tail call void @scsi_autopm_put_host(ptr noundef %0) #15
  br label %81

75:                                               ; preds = %40, %29
  %76 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @scanning_hosts, i32 0, i32 1), align 4
  store ptr %23, ptr getelementptr inbounds (%struct.list_head, ptr @scanning_hosts, i32 0, i32 1), align 4
  store ptr @scanning_hosts, ptr %23, align 8
  %77 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %76, ptr %77, align 4
  store volatile ptr %23, ptr %76, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %78 = load i16, ptr @async_scan_lock, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr @async_scan_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %80 = tail call i64 @async_schedule_node(ptr noundef nonnull @do_scan_async, ptr noundef nonnull %23, i32 noundef -1) #15
  br label %81

81:                                               ; preds = %75, %74, %7, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @do_scan_async(ptr noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.async_scan_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.scsi_host_template, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %2
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = getelementptr inbounds %struct.scsi_host_template, ptr %6, i32 0, i32 20
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  tail call void %13(ptr noundef %4) #15
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.scsi_host_template, ptr %16, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi ptr [ %18, %15 ], [ %8, %10 ]
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = sub i32 %21, %11
  %23 = tail call i32 %20(ptr noundef %4, i32 noundef %22) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %25, %19
  tail call void @msleep(i32 noundef 10) #15
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.scsi_host_template, ptr %26, i32 0, i32 19
  %28 = load ptr, ptr %27, align 4
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = sub i32 %29, %11
  %31 = tail call i32 %28(ptr noundef %4, i32 noundef %30) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %25, label %35

33:                                               ; preds = %2
  %34 = tail call i32 @scsi_scan_host_selected(ptr noundef %4, i32 noundef -1, i32 noundef -1, i64 noundef -1, i32 noundef 0) #15
  br label %35

35:                                               ; preds = %33, %25, %19
  %36 = icmp eq ptr %0, null
  br i1 %36, label %89, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %39) #15
  %40 = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 36
  %41 = load i16, ptr %40, align 8
  %42 = and i16 %41, 32
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %45, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.scsi_finish_async_scan) #16
  tail call void @dump_stack() #16
  tail call void @mutex_unlock(ptr noundef %39) #15
  br label %89

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.async_scan_data, ptr %0, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %47) #15
  %48 = tail call ptr @__scsi_iterate_devices(ptr noundef %38, ptr noundef null) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %71, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 48
  br label %52

52:                                               ; preds = %68, %50
  %53 = phi ptr [ %48, %50 ], [ %69, %68 ]
  %54 = getelementptr inbounds %struct.scsi_device, ptr %53, i32 0, i32 68
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.scsi_device, ptr %53, i32 0, i32 41
  %59 = load i64, ptr %58, align 4
  %60 = and i64 %59, 1099511627776
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, ptr %51, align 4
  switch i32 %63, label %67 [
    i32 5, label %64
    i32 2, label %64
  ]

64:                                               ; preds = %62, %62
  %65 = tail call i32 @scsi_sysfs_add_sdev(ptr noundef nonnull %53) #15
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64, %62
  tail call void @__scsi_remove_device(ptr noundef nonnull %53) #15
  br label %68

68:                                               ; preds = %67, %64, %57, %52
  %69 = tail call ptr @__scsi_iterate_devices(ptr noundef %38, ptr noundef nonnull %53) #15
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %52

71:                                               ; preds = %68, %46
  %72 = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %73) #15
  %75 = load i16, ptr %40, align 8
  %76 = and i16 %75, -33
  store i16 %76, ptr %40, align 8
  %77 = load ptr, ptr %72, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %77, i32 noundef %74) #15
  tail call void @mutex_unlock(ptr noundef %39) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @async_scan_lock) #15
  %78 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %0, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %79, ptr %81, align 4
  store volatile ptr %80, ptr %79, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %78, align 4
  %82 = load volatile ptr, ptr @scanning_hosts, align 4
  %83 = icmp eq ptr %82, @scanning_hosts
  br i1 %83, label %86, label %84

84:                                               ; preds = %71
  %85 = getelementptr inbounds %struct.async_scan_data, ptr %82, i32 0, i32 2
  tail call void @complete(ptr noundef %85) #15
  br label %86

86:                                               ; preds = %84, %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %87 = load i16, ptr @async_scan_lock, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr @async_scan_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  tail call void @scsi_autopm_put_host(ptr noundef %38) #15
  tail call void @scsi_host_put(ptr noundef %38) #15
  tail call void @kfree(ptr noundef nonnull %0) #15
  br label %89

89:                                               ; preds = %86, %44, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_forget_host(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 4
  br label %3

3:                                                ; preds = %14, %1
  %4 = load ptr, ptr %2, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %0, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 1284
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %6, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %8, i32 -8
  %16 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %5) #15
  tail call void @__scsi_remove_device(ptr noundef %15) #15
  br label %3

17:                                               ; preds = %6
  %18 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__scsi_remove_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_target_dev_release(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -24
  tail call void @kfree(ptr noundef %4) #15
  tail call void @put_device(ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_remove_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scsi_target_destroy(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %9, %1
  %6 = phi ptr [ %4, %1 ], [ %11, %9 ]
  %7 = tail call i32 @scsi_is_host_device(ptr noundef %6) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %5

13:                                               ; preds = %5
  %14 = getelementptr i8, ptr %6, i32 -360
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ null, %9 ]
  %17 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 13
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %21, !prof !12

20:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_scan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 390, 0\0A.popsection", ""() #15, !srcloc !21
  unreachable

21:                                               ; preds = %15
  store i32 5, ptr %17, align 4
  tail call void @transport_destroy_device(ptr noundef %2) #15
  %22 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #15
  %25 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 11
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.scsi_host_template, ptr %26, i32 0, i32 18
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  tail call void %28(ptr noundef %0) #15
  br label %31

31:                                               ; preds = %30, %21
  %32 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 1
  %33 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store volatile ptr %32, ptr %32, align 4
  store ptr %32, ptr %33, align 4
  %37 = load ptr, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %24) #15
  tail call void @put_device(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_destroy_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_setup_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup_by_target(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @scsi_get_device_flags(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @scsi_alloc_sdev(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %13, %11 ]
  %9 = tail call i32 @scsi_is_host_device(ptr noundef %8) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %7

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %8, i32 -360
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ null, %11 ]
  %19 = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.scsi_transport_template, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1304
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %102, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 30
  store ptr @.str.14, ptr %27, align 4
  %28 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 31
  store ptr @.str.14, ptr %28, align 8
  %29 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 32
  store ptr @.str.14, ptr %29, align 4
  store ptr %18, ptr %24, align 64
  %30 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 14
  store i32 12000, ptr %30, align 16
  %31 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 16
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 18
  store i64 %1, ptr %34, align 32
  %35 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 17
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 67
  tail call void @__mutex_init(ptr noundef %38, ptr noundef nonnull @.str.9, ptr noundef nonnull @scsi_alloc_sdev.__key) #15
  %39 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 68
  store i32 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 2
  store volatile ptr %40, ptr %40, align 8
  %41 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 2, i32 1
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 3
  store volatile ptr %42, ptr %42, align 16
  %43 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 3, i32 1
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 8
  store volatile ptr %44, ptr %44, align 4
  %45 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 8, i32 1
  store ptr %44, ptr %45, align 64
  %46 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 48
  store volatile ptr %46, ptr %46, align 32
  %47 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 48, i32 1
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 7
  store i32 0, ptr %48, align 8
  %49 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 26
  tail call void @__mutex_init(ptr noundef %49, ptr noundef nonnull @.str.11, ptr noundef nonnull @scsi_alloc_sdev.__key.10) #15
  %50 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 49
  store i32 -32, ptr %50, align 8
  %51 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 49, i32 1
  store volatile ptr %51, ptr %51, align 4
  %52 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 49, i32 1, i32 1
  store ptr %51, ptr %52, align 16
  %53 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 49, i32 2
  store ptr @scsi_evt_thread, ptr %53, align 4
  %54 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 57
  store i32 -32, ptr %54, align 8
  %55 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 57, i32 1
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 57, i32 1, i32 1
  store ptr %55, ptr %56, align 16
  %57 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 57, i32 2
  store ptr @scsi_requeue_run_queue, ptr %57, align 4
  %58 = tail call ptr @get_device(ptr noundef %4) #15
  %59 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 54, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 37
  store ptr %0, ptr %60, align 16
  %61 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 21
  store ptr %2, ptr %61, align 16
  %62 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 50
  store i32 3, ptr %62, align 8
  %63 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 22
  store i8 -1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 41
  %65 = load i64, ptr %64, align 4
  %66 = or i64 %65, 32
  store i64 %66, ptr %64, align 4
  %67 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 63
  store i32 2147483647, ptr %67, align 4
  %68 = load ptr, ptr %24, align 64
  %69 = getelementptr inbounds %struct.Scsi_Host, ptr %68, i32 0, i32 13
  %70 = tail call ptr @blk_mq_init_queue(ptr noundef %69) #15
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %73

72:                                               ; preds = %26
  tail call void @put_device(ptr noundef %4) #15
  tail call void @kfree(ptr noundef nonnull %24) #15
  br label %102

73:                                               ; preds = %26
  %74 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 1
  store ptr %70, ptr %74, align 4
  %75 = getelementptr inbounds %struct.request_queue, ptr %70, i32 0, i32 10
  store ptr %24, ptr %75, align 4
  %76 = load ptr, ptr %24, align 64
  tail call void @__scsi_init_queue(ptr noundef %76, ptr noundef %70) #15
  %77 = tail call zeroext i1 @blk_get_queue(ptr noundef %70) #15
  %78 = load i1, ptr @scsi_alloc_sdev.__already_done, align 1
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %81, label %80, !prof !17

80:                                               ; preds = %73
  store i1 true, ptr @scsi_alloc_sdev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 341, i32 noundef 9, ptr noundef null) #15
  br label %81

81:                                               ; preds = %80, %73
  %82 = load ptr, ptr %24, align 64
  %83 = getelementptr inbounds %struct.Scsi_Host, ptr %82, i32 0, i32 27
  %84 = load i16, ptr %83, align 8
  %85 = icmp eq i16 %84, 0
  %86 = select i1 %85, i16 1, i16 %84
  %87 = sext i16 %86 to i32
  %88 = tail call fastcc i32 @scsi_realloc_sdev_budget_map(ptr noundef nonnull %24, i32 noundef %87)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  tail call void @put_device(ptr noundef %4) #15
  tail call void @kfree(ptr noundef nonnull %24) #15
  br label %102

91:                                               ; preds = %81
  %92 = tail call i32 @scsi_change_queue_depth(ptr noundef nonnull %24, i32 noundef %87) #15
  tail call void @scsi_sysfs_device_initialize(ptr noundef nonnull %24) #15
  %93 = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 11
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.scsi_host_template, ptr %94, i32 0, i32 14
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %91
  %99 = tail call i32 %96(ptr noundef nonnull %24) #15
  switch i32 %99, label %101 [
    i32 0, label %104
    i32 -6, label %100
  ]

100:                                              ; preds = %98
  tail call void @__scsi_remove_device(ptr noundef nonnull %24) #15
  br label %104

101:                                              ; preds = %98
  tail call void @__scsi_remove_device(ptr noundef nonnull %24) #15
  br label %102

102:                                              ; preds = %101, %90, %72, %17
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.scsi_alloc_sdev) #16
  br label %104

104:                                              ; preds = %102, %100, %98, %91
  %105 = phi ptr [ %24, %98 ], [ %24, %91 ], [ null, %102 ], [ null, %100 ]
  ret ptr %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scsi_unlock_floptical(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = getelementptr inbounds i8, ptr %3, i32 6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 10, i1 false), !annotation !20
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.28) #15
  store i8 26, ptr %3, align 1
  %5 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 2
  store i8 46, ptr %6, align 1
  %7 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 4
  store i8 42, ptr %8, align 1
  %9 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 5
  store i8 0, ptr %9, align 1
  %10 = call i32 @__scsi_execute(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2, ptr noundef %1, i32 noundef 42, ptr noundef null, ptr noundef null, i32 noundef 200, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_evt_thread(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_requeue_run_queue(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_init_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__scsi_init_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_get_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scsi_realloc_sdev_budget_map(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca { i32, i32, i32, i8 }, align 4
  %4 = icmp ugt i32 %1, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %9, %5 ], [ 5, %2 ]
  %7 = shl i32 4, %6
  %8 = icmp ugt i32 %7, %1
  %9 = add i32 %6, -1
  br i1 %8, label %5, label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 5, %2 ], [ %6, %5 ]
  %12 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 4
  %13 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 4, i32 4
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false)
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 4, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %11, %18
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %22) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef align 8 dereferenceable(16) %12, i32 16, i1 false)
  %23 = load ptr, ptr %13, align 8
  %24 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 4, i32 5
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %20, %10
  %27 = phi ptr [ %23, %20 ], [ null, %10 ]
  %28 = phi ptr [ %25, %20 ], [ null, %10 ]
  %29 = tail call i32 @scsi_device_max_queue_depth(ptr noundef %0) #15
  %30 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 34
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @sbitmap_init_node(ptr noundef %12, i32 noundef %29, i32 noundef %11, i32 noundef 3264, i32 noundef %33, i1 noundef zeroext false, i1 noundef zeroext true) #15
  br i1 %15, label %42, label %35

35:                                               ; preds = %26
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 16, i1 false)
  store ptr %27, ptr %13, align 8
  %38 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 4, i32 5
  store ptr %28, ptr %38, align 4
  br label %40

39:                                               ; preds = %35
  tail call void @free_percpu(ptr noundef %28) #15
  tail call void @kfree(ptr noundef %27) #15
  br label %40

40:                                               ; preds = %39, %37
  %41 = load ptr, ptr %30, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %41) #15
  br label %42

42:                                               ; preds = %40, %26, %16
  %43 = phi i32 [ 0, %16 ], [ 0, %40 ], [ %34, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_sysfs_device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_init_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_max_queue_depth(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_type(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_set_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_state_name(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_configure_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_sysfs_add_sdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @scsilun_to_int(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @async_schedule_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

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
!8 = !{i64 2148980863}
!9 = !{i64 2148976687}
!10 = !{i64 2148976762, i64 2148976789, i64 2148976836, i64 2148976858, i64 2148976886, i64 2148976906}
!11 = !{i64 2149003866}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2153388710, i64 2153389199, i64 2153388747, i64 2153388803, i64 2153388837, i64 2153388861, i64 2153388902, i64 2153388923, i64 2153388951, i64 2153388985}
!14 = !{i64 2148199404}
!15 = !{i64 596338, i64 2148086309, i64 2148086335, i64 2148086382, i64 2148086404, i64 2148086432, i64 2148086452}
!16 = !{i64 2148101539, i64 2148101571, i64 2148101600, i64 2148101634, i64 2148101665, i64 2148101688}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2149048851}
!19 = !{i64 582401, i64 582425, i64 582446, i64 582463, i64 582480}
!20 = !{!"auto-init"}
!21 = !{i64 2153374378, i64 2153374867, i64 2153374415, i64 2153374471, i64 2153374505, i64 2153374529, i64 2153374570, i64 2153374591, i64 2153374619, i64 2153374653}
