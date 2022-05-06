; ModuleID = '/llk/IR/drivers/scsi/hosts.c_pt.bc'
source_filename = "../drivers/scsi/hosts.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_remove_host:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_remove_host\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_remove_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_add_host_with_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_add_host_with_dma\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_add_host_with_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_host_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_host_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_host_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_host_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_host_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_host_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_host_get:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_host_get\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_host_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_host_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_host_busy\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_host_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_host_put:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_host_put\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_host_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_is_host_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_is_host_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_is_host_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_queue_work\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_flush_work:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_flush_work\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_flush_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_host_complete_all_commands:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_host_complete_all_commands\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_host_complete_all_commands:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_host_busy_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_host_busy_iter\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_host_busy_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.73 }
%union.anon.73 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.lock_class_key = type {}
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.35, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.36, %union.anon.37, %union.anon.38, %union.anon.43, ptr, ptr }
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.anon.37 = type { %struct.rb_node }
%union.anon.38 = type { %struct.anon.42 }
%struct.anon.42 = type { i32, %struct.list_head, ptr }
%union.anon.43 = type { i64, [8 x i8] }
%struct.scsi_host_busy_iter_data = type { ptr, ptr }

@__param_str_eh_deadline = internal constant [21 x i8] c"scsi_mod.eh_deadline\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@shost_eh_deadline = internal global i32 -1, align 4
@__param_eh_deadline = internal constant %struct.kernel_param { ptr @__param_str_eh_deadline, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.73 { ptr @shost_eh_deadline } }, section "__param", align 4
@__UNIQUE_ID_eh_deadlinetype274 = internal constant [34 x i8] c"scsi_mod.parmtype=eh_deadline:int\00", section ".modinfo", align 1
@__UNIQUE_ID_eh_deadline275 = internal constant [86 x i8] c"scsi_mod.parm=eh_deadline:SCSI EH timeout in seconds (should be between 0 and 2^31-1)\00", section ".modinfo", align 1
@__kstrtab_scsi_remove_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_remove_host = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_remove_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_remove_host to i32), ptr @__kstrtab_scsi_remove_host, ptr @__kstrtabns_scsi_remove_host }, section "___ksymtab+scsi_remove_host", align 4
@.str = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"can_queue = 0 no longer supported\0A\00", align 1
@platform_bus = external dso_local global %struct.device, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"scsi_wq_%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_scsi_add_host_with_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_add_host_with_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_add_host_with_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_add_host_with_dma to i32), ptr @__kstrtab_scsi_add_host_with_dma, ptr @__kstrtabns_scsi_add_host_with_dma }, section "___ksymtab+scsi_add_host_with_dma", align 4
@scsi_host_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"&shost->host_wait\00", align 1
@scsi_host_alloc.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"&shost->scan_mutex\00", align 1
@host_index_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@blank_transport_template = external dso_local global %struct.scsi_transport_template, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"eh_deadline %u too large, setting to %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"host%d\00", align 1
@scsi_bus_type = external dso_local global %struct.bus_type, align 4
@scsi_host_type = internal global %struct.device_type { ptr @.str.18, ptr null, ptr null, ptr null, ptr @scsi_host_dev_release, ptr null }, align 4
@shost_class = internal global %struct.class { ptr @.str.18, ptr null, ptr null, ptr @scsi_shost_groups, ptr null, ptr null, ptr null, ptr null, ptr @scsi_host_cls_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"scsi_eh_%d\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"error handler thread failed to spawn, error = %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"scsi_tmf_%d\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"failed to create tmf workq\0A\00", align 1
@__kstrtab_scsi_host_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_host_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_host_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_host_alloc to i32), ptr @__kstrtab_scsi_host_alloc, ptr @__kstrtabns_scsi_host_alloc }, section "___ksymtab+scsi_host_alloc", align 4
@__kstrtab_scsi_host_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_host_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_host_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_host_lookup to i32), ptr @__kstrtab_scsi_host_lookup, ptr @__kstrtabns_scsi_host_lookup }, section "___ksymtab+scsi_host_lookup", align 4
@__kstrtab_scsi_host_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_host_get = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_host_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_host_get to i32), ptr @__kstrtab_scsi_host_get, ptr @__kstrtabns_scsi_host_get }, section "___ksymtab+scsi_host_get", align 4
@__kstrtab_scsi_host_busy = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_host_busy = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_host_busy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_host_busy to i32), ptr @__kstrtab_scsi_host_busy, ptr @__kstrtabns_scsi_host_busy }, section "___ksymtab+scsi_host_busy", align 4
@__kstrtab_scsi_host_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_host_put = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_host_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_host_put to i32), ptr @__kstrtab_scsi_host_put, ptr @__kstrtabns_scsi_host_put }, section "___ksymtab+scsi_host_put", align 4
@scsi_init_hosts.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@__kstrtab_scsi_is_host_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_is_host_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_is_host_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_is_host_device to i32), ptr @__kstrtab_scsi_is_host_device, ptr @__kstrtabns_scsi_is_host_device }, section "___ksymtab+scsi_is_host_device", align 4
@.str.16 = private unnamed_addr constant [80 x i8] c"ERROR: Scsi host '%s' attempted to queue scsi-work, when no workqueue created.\0A\00", align 1
@__kstrtab_scsi_queue_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_queue_work = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_queue_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_queue_work to i32), ptr @__kstrtab_scsi_queue_work, ptr @__kstrtabns_scsi_queue_work }, section "___ksymtab_gpl+scsi_queue_work", align 4
@.str.17 = private unnamed_addr constant [80 x i8] c"ERROR: Scsi host '%s' attempted to flush scsi-work, when no workqueue created.\0A\00", align 1
@__kstrtab_scsi_flush_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_flush_work = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_flush_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_flush_work to i32), ptr @__kstrtab_scsi_flush_work, ptr @__kstrtabns_scsi_flush_work }, section "___ksymtab_gpl+scsi_flush_work", align 4
@__kstrtab_scsi_host_complete_all_commands = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_host_complete_all_commands = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_host_complete_all_commands = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_host_complete_all_commands to i32), ptr @__kstrtab_scsi_host_complete_all_commands, ptr @__kstrtabns_scsi_host_complete_all_commands }, section "___ksymtab_gpl+scsi_host_complete_all_commands", align 4
@__kstrtab_scsi_host_busy_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_host_busy_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_host_busy_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_host_busy_iter to i32), ptr @__kstrtab_scsi_host_busy_iter, ptr @__kstrtabns_scsi_host_busy_iter }, section "___ksymtab_gpl+scsi_host_busy_iter", align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"scsi_host\00", align 1
@scsi_shost_groups = external dso_local global [0 x ptr], align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_eh_deadline275, ptr @__UNIQUE_ID_eh_deadlinetype274, ptr @__ksymtab_scsi_add_host_with_dma, ptr @__ksymtab_scsi_flush_work, ptr @__ksymtab_scsi_host_alloc, ptr @__ksymtab_scsi_host_busy, ptr @__ksymtab_scsi_host_busy_iter, ptr @__ksymtab_scsi_host_complete_all_commands, ptr @__ksymtab_scsi_host_get, ptr @__ksymtab_scsi_host_lookup, ptr @__ksymtab_scsi_host_put, ptr @__ksymtab_scsi_is_host_device, ptr @__ksymtab_scsi_queue_work, ptr @__ksymtab_scsi_remove_host, ptr @__param_eh_deadline], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @scsi_host_set_state(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 48
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  switch i32 %1, label %15 [
    i32 1, label %16
    i32 2, label %7
    i32 5, label %8
    i32 3, label %10
    i32 4, label %11
    i32 6, label %12
    i32 7, label %13
  ]

7:                                                ; preds = %6
  switch i32 %4, label %16 [
    i32 1, label %15
    i32 5, label %15
  ]

8:                                                ; preds = %6
  %9 = icmp eq i32 %4, 2
  br i1 %9, label %15, label %16

10:                                               ; preds = %6
  switch i32 %4, label %16 [
    i32 1, label %15
    i32 2, label %15
    i32 6, label %15
  ]

11:                                               ; preds = %6
  switch i32 %4, label %16 [
    i32 3, label %15
    i32 7, label %15
  ]

12:                                               ; preds = %6
  switch i32 %4, label %16 [
    i32 3, label %15
    i32 5, label %15
  ]

13:                                               ; preds = %6
  %14 = icmp eq i32 %4, 6
  br i1 %14, label %15, label %16

15:                                               ; preds = %13, %12, %12, %11, %11, %10, %10, %10, %8, %7, %7, %6
  store i32 %1, ptr %3, align 4
  br label %16

16:                                               ; preds = %15, %13, %12, %11, %10, %8, %7, %6, %2
  %17 = phi i32 [ 0, %15 ], [ 0, %2 ], [ -22, %6 ], [ -22, %7 ], [ -22, %8 ], [ -22, %10 ], [ -22, %11 ], [ -22, %12 ], [ -22, %13 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_remove_host(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 48
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %9 [
    i32 3, label %13
    i32 1, label %11
    i32 2, label %11
    i32 6, label %11
    i32 5, label %8
  ]

8:                                                ; preds = %1
  br label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %5) #10
  tail call void @mutex_unlock(ptr noundef %2) #10
  br label %29

11:                                               ; preds = %8, %1, %1, %1
  %12 = phi i32 [ 6, %8 ], [ 3, %1 ], [ 3, %1 ], [ 3, %1 ]
  store i32 %12, ptr %6, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %5) #10
  %15 = tail call i32 @scsi_autopm_get_host(ptr noundef %0) #10
  %16 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 39
  %17 = load ptr, ptr %16, align 4
  tail call void @flush_workqueue(ptr noundef %17) #10
  tail call void @scsi_forget_host(ptr noundef %0) #10
  tail call void @mutex_unlock(ptr noundef %2) #10
  tail call void @scsi_proc_host_rm(ptr noundef %0) #10
  %18 = load ptr, ptr %3, align 4
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #10
  %20 = load i32, ptr %6, align 4
  switch i32 %20, label %22 [
    i32 4, label %25
    i32 3, label %23
    i32 7, label %23
    i32 6, label %21
  ]

21:                                               ; preds = %13
  br label %23

22:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/hosts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #10, !srcloc !8
  unreachable

23:                                               ; preds = %21, %13, %13
  %24 = phi i32 [ 7, %21 ], [ 4, %13 ], [ 4, %13 ]
  store i32 %24, ptr %6, align 4
  br label %25

25:                                               ; preds = %23, %13
  %26 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %19) #10
  %27 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  tail call void @transport_remove_device(ptr noundef %27) #10
  tail call void @transport_destroy_device(ptr noundef %27) #10
  %28 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 50
  tail call void @device_unregister(ptr noundef %28) #10
  tail call void @device_del(ptr noundef %27) #10
  br label %29

29:                                               ; preds = %25, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_autopm_get_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_forget_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_proc_host_rm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_add_host_with_dma(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  %7 = getelementptr inbounds %struct.scsi_host_template, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call ptr %8(ptr noundef %0) #10
  br label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.scsi_host_template, ptr %5, i32 0, i32 4
  %14 = load ptr, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ %11, %10 ], [ %14, %12 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str, ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef %16) #11
  %17 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 26
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %6, ptr noundef nonnull @.str.3) #11
  br label %121

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 27
  %23 = load i16, ptr %22, align 8
  %24 = sext i16 %23 to i32
  %25 = tail call i32 @llvm.smin.i32(i32 %18, i32 %24)
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr %22, align 8
  %27 = tail call i32 @scsi_init_sense_cache(ptr noundef %0) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %121

29:                                               ; preds = %21
  %30 = tail call i32 @scsi_mq_setup_tags(ptr noundef %0) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %121

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = icmp eq ptr %1, null
  %38 = select i1 %37, ptr @platform_bus, ptr %1
  store ptr %38, ptr %33, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi ptr [ %38, %36 ], [ %34, %32 ]
  %41 = icmp eq ptr %2, null
  %42 = select i1 %41, ptr %40, ptr %2
  %43 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 52
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #10, !srcloc !9
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #10, !srcloc !10
  %46 = tail call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 0) #10
  tail call void @pm_runtime_enable(ptr noundef %6) #10
  %47 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49, i32 11, i32 1
  %48 = load i16, ptr %47, align 4
  %49 = and i16 %48, 8
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = or i16 %48, 2
  store i16 %52, ptr %47, align 4
  br label %53

53:                                               ; preds = %51, %39
  %54 = tail call i32 @device_add(ptr noundef %6) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %108

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 48
  %58 = load i32, ptr %57, align 4
  switch i32 %58, label %60 [
    i32 5, label %59
    i32 1, label %59
  ]

59:                                               ; preds = %56, %56
  store i32 2, ptr %57, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load ptr, ptr %33, align 4
  %62 = tail call ptr @get_device(ptr noundef %61) #10
  %63 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 50
  %64 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 50, i32 11, i32 1
  %65 = load i16, ptr %64, align 4
  %66 = and i16 %65, 8
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = or i16 %65, 2
  store i16 %69, ptr %64, align 4
  br label %70

70:                                               ; preds = %68, %60
  %71 = tail call ptr @get_device(ptr noundef %6) #10
  %72 = tail call i32 @device_add(ptr noundef %63) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %106

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 12
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.scsi_transport_template, ptr %76, i32 0, i32 8
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %78, i32 noundef 3520) #12
  %82 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 51
  store ptr %81, ptr %82, align 8
  %83 = icmp eq ptr %81, null
  br i1 %83, label %104, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %75, align 4
  br label %86

86:                                               ; preds = %84, %74
  %87 = phi ptr [ %85, %84 ], [ %76, %74 ]
  %88 = getelementptr inbounds %struct.scsi_transport_template, ptr %87, i32 0, i32 9
  %89 = load i8, ptr %88, align 4
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 37
  %94 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 17
  %95 = load i32, ptr %94, align 4
  %96 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %93, i32 noundef 20, ptr noundef nonnull @.str.4, i32 noundef %95)
  %97 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.5, i32 noundef 262218, i32 noundef 1, ptr noundef %93) #10
  %98 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 38
  store ptr %97, ptr %98, align 8
  %99 = icmp eq ptr %97, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %92, %86
  %101 = tail call i32 @scsi_sysfs_add_host(ptr noundef %0) #10
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  tail call void @scsi_proc_host_add(ptr noundef %0) #10
  tail call void @scsi_autopm_put_host(ptr noundef %0) #10
  br label %121

104:                                              ; preds = %100, %92, %80
  %105 = phi i32 [ %101, %100 ], [ -12, %80 ], [ -22, %92 ]
  tail call void @device_del(ptr noundef %63) #10
  br label %106

106:                                              ; preds = %104, %70
  %107 = phi i32 [ %72, %70 ], [ %105, %104 ]
  tail call void @put_device(ptr noundef %63) #10
  tail call void @device_del(ptr noundef %6) #10
  br label %108

108:                                              ; preds = %106, %53
  %109 = phi i32 [ %54, %53 ], [ %107, %106 ]
  %110 = load i16, ptr %47, align 4
  %111 = and i16 %110, 8
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = and i16 %110, -3
  store i16 %114, ptr %47, align 4
  br label %115

115:                                              ; preds = %113, %108
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #10
  %116 = tail call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 2) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #10, !srcloc !9
  %117 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 0, i32 -1, ptr elementtype(i32) %44) #10, !srcloc !12
  %118 = extractvalue { i32, i32, i32 } %117, 0
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  br label %121

121:                                              ; preds = %120, %115, %103, %29, %21, %20
  %122 = phi i32 [ 0, %103 ], [ %27, %21 ], [ %30, %29 ], [ -22, %20 ], [ %109, %115 ], [ %109, %120 ]
  ret i32 %122
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_init_sense_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_mq_setup_tags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_sysfs_add_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_proc_host_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scsi_host_alloc(ptr noundef %0, i32 noundef %1) #2 {
  %3 = add i32 %1, 1312
  %4 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %144, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 4
  store ptr %7, ptr %8, align 4
  store i32 0, ptr %7, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 48
  store i32 1, ptr %9, align 4
  store volatile ptr %4, ptr %4, align 64
  %10 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 1
  store volatile ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 6
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 6, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 7
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 7, i32 1
  store ptr %15, ptr %16, align 64
  %17 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 2
  store volatile ptr %17, ptr %17, align 16
  %18 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 2, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef nonnull @scsi_host_alloc.__key) #10
  %20 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.8, ptr noundef nonnull @scsi_host_alloc.__key.7) #10
  %21 = tail call i32 @ida_alloc_range(ptr noundef nonnull @host_index_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #10
  br label %144

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 17
  store i32 %21, ptr %25, align 4
  %26 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 46
  store i8 -1, ptr %26, align 1
  %27 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 20
  store i32 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 21
  store i32 8, ptr %28, align 4
  %29 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 22
  store i64 8, ptr %29, align 16
  %30 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 12
  store ptr @blank_transport_template, ptr %30, align 4
  %31 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 24
  store i16 12, ptr %31, align 4
  %32 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 11
  store ptr %0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 35
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 25
  store i32 %34, ptr %35, align 64
  %36 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 34
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 26
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 36
  %40 = load i16, ptr %39, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 28
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 37
  %43 = load i16, ptr %42, align 2
  %44 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 29
  store i16 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 42
  %46 = load i16, ptr %45, align 4
  %47 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 27
  store i16 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 45
  %49 = load i8, ptr %48, align 4
  %50 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 36
  %51 = load i16, ptr %50, align 8
  %52 = shl i8 %49, 2
  %53 = and i8 %52, -128
  %54 = zext i8 %53 to i16
  %55 = and i16 %51, -129
  %56 = or i16 %55, %54
  store i16 %56, ptr %50, align 8
  %57 = load i8, ptr %48, align 4
  %58 = lshr i8 %57, 6
  %59 = and i8 %58, 1
  %60 = zext i8 %59 to i16
  %61 = shl nuw nsw i16 %60, 8
  %62 = and i16 %56, -257
  %63 = or i16 %61, %62
  store i16 %63, ptr %50, align 8
  %64 = load i32, ptr @shost_eh_deadline, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %75, label %66

66:                                               ; preds = %24
  %67 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 13
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = mul i32 %64, 100
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %74, ptr noundef nonnull @.str.10, i32 noundef %64, i32 noundef 21474836) #11
  br label %75

75:                                               ; preds = %73, %70, %66, %24
  %76 = phi i32 [ 2147483647, %73 ], [ -1, %66 ], [ -1, %24 ], [ %71, %70 ]
  %77 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 18
  store i32 %76, ptr %77, align 32
  %78 = load i8, ptr %48, align 4
  %79 = and i8 %78, 6
  %80 = icmp eq i8 %79, 0
  %81 = lshr i8 %78, 1
  %82 = and i8 %81, 3
  %83 = select i1 %80, i8 1, i8 %82
  %84 = zext i8 %83 to i16
  %85 = load i16, ptr %50, align 8
  %86 = and i16 %85, -4
  %87 = or i16 %86, %84
  store i16 %87, ptr %50, align 8
  %88 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 46
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 7, i32 %89
  %92 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 40
  store i32 %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 38
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 1024, i32 %94
  %97 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 30
  store i32 %96, ptr %97, align 16
  %98 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 39
  %99 = load i32, ptr %98, align 8
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 65536, i32 %99
  %102 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 31
  store i32 %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 40
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, i32 -1, i32 %104
  %107 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 32
  store i32 %106, ptr %107, align 8
  %108 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 41
  %109 = load i32, ptr %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %75
  %112 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 33
  store i32 %109, ptr %112, align 4
  br label %113

113:                                              ; preds = %111, %75
  %114 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 49
  tail call void @device_initialize(ptr noundef %114) #10
  %115 = load i32, ptr %25, align 4
  %116 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %114, ptr noundef nonnull @.str.11, i32 noundef %115) #10
  %117 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 49, i32 5
  store ptr @scsi_bus_type, ptr %117, align 4
  %118 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 49, i32 4
  store ptr @scsi_host_type, ptr %118, align 8
  tail call void @scsi_enable_async_suspend(ptr noundef %114) #10
  %119 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 50
  tail call void @device_initialize(ptr noundef %119) #10
  %120 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 50, i32 1
  store ptr %114, ptr %120, align 4
  %121 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 50, i32 31
  store ptr @shost_class, ptr %121, align 4
  %122 = load i32, ptr %25, align 4
  %123 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %119, ptr noundef nonnull @.str.11, i32 noundef %122) #10
  %124 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 47
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 50, i32 32
  store ptr %125, ptr %126, align 64
  %127 = load i32, ptr %25, align 4
  %128 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @scsi_error_handler, ptr noundef nonnull %4, i32 noundef -1, ptr noundef nonnull @.str.12, i32 noundef %127) #10
  %129 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %130, label %133

130:                                              ; preds = %113
  %131 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 8
  store ptr %128, ptr %131, align 4
  %132 = ptrtoint ptr %128 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %114, ptr noundef nonnull @.str.13, i32 noundef %132) #11
  store ptr null, ptr %131, align 4
  br label %143

133:                                              ; preds = %113
  %134 = tail call i32 @wake_up_process(ptr noundef %128) #10
  %135 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 8
  store ptr %128, ptr %135, align 4
  %136 = load i32, ptr %25, align 4
  %137 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.14, i32 noundef 74, i32 noundef 1, i32 noundef %136) #10
  %138 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 39
  store ptr %137, ptr %138, align 4
  %139 = icmp eq ptr %137, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %114, ptr noundef nonnull @.str.15) #11
  br label %143

141:                                              ; preds = %133
  %142 = load ptr, ptr %32, align 8
  tail call void @scsi_proc_hostdir_add(ptr noundef %142) #10
  br label %144

143:                                              ; preds = %140, %130
  tail call void @put_device(ptr noundef %114) #10
  br label %144

144:                                              ; preds = %143, %141, %23, %2
  %145 = phi ptr [ null, %23 ], [ null, %143 ], [ %4, %141 ], [ null, %2 ]
  ret ptr %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_enable_async_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_error_handler(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_proc_hostdir_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scsi_host_lookup(i16 noundef zeroext %0) #2 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2
  %3 = call ptr @class_find_device(ptr noundef nonnull @shost_class, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull @__scsi_host_match) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 -476
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %3, i32 -832
  %11 = getelementptr i8, ptr %3, i32 -472
  %12 = call ptr @get_device(ptr noundef %11) #10
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr null, ptr %10
  br label %15

15:                                               ; preds = %9, %5
  %16 = phi ptr [ null, %5 ], [ %14, %9 ]
  call void @put_device(ptr noundef nonnull %3) #10
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ null, %1 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @__scsi_host_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 -612
  %4 = load i32, ptr %3, align 4
  %5 = load i16, ptr %1, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp eq i32 %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scsi_host_get(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 48
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  %7 = tail call ptr @get_device(ptr noundef %6) #10
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr null, ptr %0
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi ptr [ null, %1 ], [ %9, %5 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_host_busy(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13
  call void @blk_mq_tagset_busy_iter(ptr noundef %3, ptr noundef nonnull @scsi_host_check_in_flight, ptr noundef nonnull %2) #10
  %4 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tagset_busy_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @scsi_host_check_in_flight(ptr noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) #7 {
  %4 = getelementptr %struct.request, ptr %0, i32 2, i32 12, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %1, align 4
  br label %11

11:                                               ; preds = %8, %3
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_host_put(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  tail call void @put_device(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_init_hosts() local_unnamed_addr #2 {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @shost_class, ptr noundef nonnull @scsi_init_hosts.__key) #10
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_exit_hosts() local_unnamed_addr #2 {
  tail call void @class_unregister(ptr noundef nonnull @shost_class) #10
  tail call void @ida_destroy(ptr noundef nonnull @host_index_ida) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @scsi_is_host_device(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @scsi_host_type
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_queue_work(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12, !prof !14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  %8 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.scsi_host_template, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %7, ptr noundef nonnull @.str.16, ptr noundef %11) #11
  tail call void @dump_stack() #11
  br label %15

12:                                               ; preds = %2
  %13 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef nonnull %4, ptr noundef %1) #10
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi i32 [ -22, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_flush_work(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 49
  %7 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.scsi_host_template, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %6, ptr noundef nonnull @.str.17, ptr noundef %10) #11
  tail call void @dump_stack() #11
  br label %12

11:                                               ; preds = %1
  tail call void @flush_workqueue(ptr noundef nonnull %3) #10
  br label %12

12:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_host_complete_all_commands(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13
  call void @blk_mq_tagset_busy_iter(ptr noundef %4, ptr noundef nonnull @complete_all_cmds_iter, ptr noundef nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @complete_all_cmds_iter(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #2 {
  %4 = getelementptr %struct.request, ptr %0, i32 1
  %5 = load i32, ptr %1, align 4
  tail call void @scsi_dma_unmap(ptr noundef %4) #10
  %6 = getelementptr %struct.request, ptr %0, i32 2, i32 11
  %7 = shl i32 %5, 16
  %8 = and i32 %7, 16711680
  store i32 %8, ptr %6, align 4
  tail call void @scsi_done(ptr noundef %4) #10
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_host_busy_iter(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.scsi_host_busy_iter_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.scsi_host_busy_iter_data, ptr %4, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 13
  call void @blk_mq_tagset_busy_iter(ptr noundef %6, ptr noundef nonnull @__scsi_host_busy_iter_fn, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @__scsi_host_busy_iter_fn(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #2 {
  %4 = getelementptr %struct.request, ptr %0, i32 1
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.scsi_host_busy_iter_data, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 %5(ptr noundef %4, ptr noundef %7, i1 noundef zeroext %2) #10
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_remove_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_destroy_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_host_dev_release(ptr noundef %0) #2 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %0, %1 ], [ %9, %7 ]
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @scsi_host_type
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %2

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %3, i32 -360
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ null, %7 ]
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 11
  %18 = load ptr, ptr %17, align 8
  tail call void @scsi_proc_hostdir_rm(ptr noundef %18) #10
  tail call void @rcu_barrier() #10
  %19 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 39
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  tail call void @destroy_workqueue(ptr noundef nonnull %20) #10
  br label %23

23:                                               ; preds = %22, %13
  %24 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @kthread_stop(ptr noundef nonnull %25) #10
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 38
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @destroy_workqueue(ptr noundef nonnull %31) #10
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 48
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 50, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 50
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi ptr [ %44, %42 ], [ %40, %38 ]
  tail call void @kfree(ptr noundef %46) #10
  br label %47

47:                                               ; preds = %45, %34
  %48 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 13, i32 11
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void @scsi_mq_destroy_tags(ptr noundef %14) #10
  br label %52

52:                                               ; preds = %51, %47
  %53 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 51
  %54 = load ptr, ptr %53, align 8
  tail call void @kfree(ptr noundef %54) #10
  %55 = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 17
  %56 = load i32, ptr %55, align 4
  tail call void @ida_free(ptr noundef nonnull @host_index_ida, i32 noundef %56) #10
  %57 = load i32, ptr %35, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  tail call void @put_device(ptr noundef %16) #10
  br label %60

60:                                               ; preds = %59, %52
  tail call void @kfree(ptr noundef %14) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_proc_hostdir_rm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_mq_destroy_tags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_host_cls_release(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -472
  tail call void @put_device(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!8 = !{i64 2153344547, i64 2153345032, i64 2153344584, i64 2153344640, i64 2153344674, i64 2153344698, i64 2153344739, i64 2153344760, i64 2153344788, i64 2153344822}
!9 = !{i64 558433, i64 2148048404, i64 2148048430, i64 2148048477, i64 2148048499, i64 2148048527, i64 2148048547}
!10 = !{i64 2148059819, i64 2148059845, i64 2148059874, i64 2148059908, i64 2148059939, i64 2148059962}
!11 = !{i64 2148059326}
!12 = !{i64 545002, i64 545027, i64 545049, i64 545065, i64 545077, i64 545097, i64 545121, i64 545137, i64 545149}
!13 = !{i64 2148059452}
!14 = !{!"branch_weights", i32 1, i32 2000}
