; ModuleID = '/llk/IR/drivers/platform/chrome/cros_ec_proto.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_proto.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_prepare_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_prepare_tx\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_prepare_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_check_result:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_check_result\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_check_result:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_query_all:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_query_all\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_query_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_cmd_xfer_status:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_cmd_xfer_status\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_cmd_xfer_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_get_next_event:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_get_next_event\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_get_next_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_get_host_event:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_get_host_event\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_get_host_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_check_features:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_check_features\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_check_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_get_sensor_count:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_get_sensor_count\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_get_sensor_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_command:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_command\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_host_request = type { i8, i8, i16, i8, i8, i16 }
%struct.ec_response_get_protocol_info = type { i32, i16, i16, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.64 = type <{ %struct.cros_ec_command, %struct.ec_response_get_next_event_v1 }>
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.anon.18 = type { i8, i8, [0 x %struct.ec_response_motion_sensor_data] }
%struct.ec_response_motion_sensor_data = type { i8, i8, %union.anon.19 }
%union.anon.19 = type { [3 x i16] }

@__kstrtab_cros_ec_prepare_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_prepare_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_prepare_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_prepare_tx to i32), ptr @__kstrtab_cros_ec_prepare_tx, ptr @__kstrtabns_cros_ec_prepare_tx }, section "___ksymtab+cros_ec_prepare_tx", align 4
@__kstrtab_cros_ec_check_result = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_check_result = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_check_result = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_check_result to i32), ptr @__kstrtab_cros_ec_check_result, ptr @__kstrtabns_cros_ec_check_result }, section "___ksymtab+cros_ec_check_result", align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to retrieve wake mask: %d\0A\00", align 1
@__kstrtab_cros_ec_query_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_query_all = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_query_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_query_all to i32), ptr @__kstrtab_cros_ec_query_all, ptr @__kstrtabns_cros_ec_query_all }, section "___ksymtab+cros_ec_query_all", align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"EC version unknown and query failed; aborting command\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"request of size %u is too big (max: %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"passthru rq of size %u is too big (max: %u)\0A\00", align 1
@__kstrtab_cros_ec_cmd_xfer_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_cmd_xfer_status = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_cmd_xfer_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_cmd_xfer_status to i32), ptr @__kstrtab_cros_ec_cmd_xfer_status, ptr @__kstrtabns_cros_ec_cmd_xfer_status }, section "___ksymtab+cros_ec_cmd_xfer_status", align 4
@__kstrtab_cros_ec_get_next_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_get_next_event = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_get_next_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_get_next_event to i32), ptr @__kstrtab_cros_ec_get_next_event, ptr @__kstrtabns_cros_ec_get_next_event }, section "___ksymtab+cros_ec_get_next_event", align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid host event size\0A\00", align 1
@__kstrtab_cros_ec_get_host_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_get_host_event = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_get_host_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_get_host_event to i32), ptr @__kstrtab_cros_ec_get_host_event, ptr @__kstrtabns_cros_ec_get_host_event }, section "___ksymtab+cros_ec_get_host_event", align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"cannot get EC features: %d\0A\00", align 1
@__kstrtab_cros_ec_check_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_check_features = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_check_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_check_features to i32), ptr @__kstrtab_cros_ec_check_features, ptr @__kstrtabns_cros_ec_check_features }, section "___ksymtab_gpl+cros_ec_check_features", align 4
@__kstrtab_cros_ec_get_sensor_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_get_sensor_count = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_get_sensor_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_get_sensor_count to i32), ptr @__kstrtab_cros_ec_get_sensor_count, ptr @__kstrtabns_cros_ec_get_sensor_count }, section "___ksymtab_gpl+cros_ec_get_sensor_count", align 4
@__kstrtab_cros_ec_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_command = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_command to i32), ptr @__kstrtab_cros_ec_command, ptr @__kstrtabns_cros_ec_command }, section "___ksymtab_gpl+cros_ec_command", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"EC responded to v2 hello with error: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"EC responded to v2 hello with bad result: %u\0A\00", align 1
@send_command.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"missing EC transfer API, cannot send command\0A\00", align 1
@__tracepoint_cros_ec_request_start = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_cros_ec_request_done = external dso_local global %struct.tracepoint, align 4
@cros_ec_error_map = internal unnamed_addr constant [21 x i32] [i32 0, i32 -95, i32 -5, i32 -22, i32 -13, i32 -71, i32 -92, i32 -74, i32 -115, i32 -61, i32 -110, i32 -75, i32 -53, i32 -53, i32 -27, i32 -14, i32 -16, i32 -74, i32 -74, i32 -74, i32 -61], align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_cros_ec_check_features, ptr @__ksymtab_cros_ec_check_result, ptr @__ksymtab_cros_ec_cmd_xfer_status, ptr @__ksymtab_cros_ec_command, ptr @__ksymtab_cros_ec_get_host_event, ptr @__ksymtab_cros_ec_get_next_event, ptr @__ksymtab_cros_ec_get_sensor_count, ptr @__ksymtab_cros_ec_prepare_tx, ptr @__ksymtab_cros_ec_query_all], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_prepare_tx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 8
  %4 = load i16, ptr %3, align 2
  %5 = icmp ugt i16 %4, 2
  br i1 %5, label %6, label %59

6:                                                ; preds = %2
  %7 = icmp eq i16 %4, 3
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_proto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 63, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 8
  %13 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 14
  %14 = load i32, ptr %13, align 8
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_proto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 64, 0\0A.popsection", ""() #11, !srcloc !11
  unreachable

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 12
  %19 = load ptr, ptr %18, align 8
  store i8 3, ptr %19, align 1
  %20 = getelementptr %struct.ec_host_request, ptr %19, i32 0, i32 1
  store i8 0, ptr %20, align 1
  %21 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i16
  %24 = getelementptr %struct.ec_host_request, ptr %19, i32 0, i32 2
  store i16 %23, ptr %24, align 1
  %25 = load i32, ptr %1, align 4
  %26 = trunc i32 %25 to i8
  %27 = getelementptr %struct.ec_host_request, ptr %19, i32 0, i32 3
  store i8 %26, ptr %27, align 1
  %28 = getelementptr %struct.ec_host_request, ptr %19, i32 0, i32 4
  store i8 0, ptr %28, align 1
  %29 = load i32, ptr %10, align 4
  %30 = trunc i32 %29 to i16
  %31 = getelementptr %struct.ec_host_request, ptr %19, i32 0, i32 5
  store i16 %30, ptr %31, align 1
  %32 = trunc i32 %22 to i8
  %33 = add i8 %32, 3
  %34 = lshr i32 %22, 8
  %35 = trunc i32 %34 to i8
  %36 = add i8 %33, %35
  %37 = add i8 %36, %26
  %38 = trunc i32 %29 to i8
  %39 = add i8 %37, %38
  %40 = lshr i32 %29, 8
  %41 = trunc i32 %40 to i8
  %42 = add i8 %39, %41
  %43 = getelementptr i8, ptr %19, i32 8
  %44 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 5
  %45 = load i32, ptr %10, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %43, ptr align 4 %44, i32 %45, i1 false) #11
  %46 = load i32, ptr %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %48, %17
  %49 = phi i8 [ %53, %48 ], [ %42, %17 ]
  %50 = phi i32 [ %54, %48 ], [ 0, %17 ]
  %51 = getelementptr %struct.cros_ec_command, ptr %1, i32 0, i32 5, i32 %50
  %52 = load i8, ptr %51, align 1
  %53 = add i8 %52, %49
  %54 = add nuw i32 %50, 1
  %55 = icmp eq i32 %54, %46
  br i1 %55, label %56, label %48

56:                                               ; preds = %48, %17
  %57 = phi i8 [ %42, %17 ], [ %53, %48 ]
  %58 = sub i8 0, %57
  store i8 %58, ptr %20, align 1
  br label %103

59:                                               ; preds = %2
  %60 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, 252
  br i1 %62, label %63, label %64, !prof !10

63:                                               ; preds = %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_proto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #11, !srcloc !12
  unreachable

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 12
  %66 = load ptr, ptr %65, align 8
  %67 = load i32, ptr %1, align 4
  %68 = trunc i32 %67 to i8
  %69 = add i8 %68, -36
  store i8 %69, ptr %66, align 1
  %70 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = trunc i32 %71 to i8
  %73 = getelementptr i8, ptr %66, i32 1
  store i8 %72, ptr %73, align 1
  %74 = load i32, ptr %60, align 4
  %75 = trunc i32 %74 to i8
  %76 = getelementptr i8, ptr %66, i32 2
  store i8 %75, ptr %76, align 1
  %77 = zext i8 %69 to i32
  %78 = and i32 %71, 255
  %79 = add nuw nsw i32 %78, %77
  %80 = add i32 %79, %74
  %81 = load i32, ptr %60, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %83, %64
  %84 = phi i32 [ %93, %83 ], [ 0, %64 ]
  %85 = phi i32 [ %92, %83 ], [ %80, %64 ]
  %86 = getelementptr %struct.cros_ec_command, ptr %1, i32 0, i32 5, i32 %84
  %87 = load i8, ptr %86, align 1
  %88 = add i32 %84, 3
  %89 = getelementptr i8, ptr %66, i32 %88
  store i8 %87, ptr %89, align 1
  %90 = zext i8 %87 to i32
  %91 = and i32 %85, 255
  %92 = add nuw nsw i32 %91, %90
  %93 = add nuw i32 %84, 1
  %94 = load i32, ptr %60, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %83, label %96

96:                                               ; preds = %83
  %97 = add i32 %94, 3
  br label %98

98:                                               ; preds = %96, %64
  %99 = phi i32 [ %80, %64 ], [ %92, %96 ]
  %100 = phi i32 [ 3, %64 ], [ %97, %96 ]
  %101 = trunc i32 %99 to i8
  %102 = getelementptr i8, ptr %66, i32 %100
  store i8 %101, ptr %102, align 1
  br label %103

103:                                              ; preds = %98, %56
  %104 = phi ptr [ %60, %98 ], [ %10, %56 ]
  %105 = phi i32 [ 4, %98 ], [ 8, %56 ]
  %106 = load i32, ptr %104, align 4
  %107 = add i32 %106, %105
  ret i32 %107
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cros_ec_check_result(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 8
  %6 = select i1 %5, i32 -11, i32 0
  %7 = icmp eq i32 %4, 0
  %8 = select i1 %7, i32 0, i32 %6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_query_all(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 32) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %191, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 8
  store i16 3, ptr %8, align 2
  %9 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %68, label %12

12:                                               ; preds = %7
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(20) %5, i8 0, i32 20, i1 false) #11
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 1
  store i32 11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 3
  store i32 12, ptr %14, align 4
  %15 = tail call fastcc i32 @send_command(ptr noundef %0, ptr noundef nonnull %5) #11
  %16 = icmp eq i32 %15, -110
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @send_command(ptr noundef %0, ptr noundef nonnull %5) #11
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %18, %17 ], [ %15, %12 ]
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %68, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 5
  %28 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 1, i32 1
  %29 = load i16, ptr %28, align 8
  %30 = add i16 %29, -8
  %31 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 5
  store i16 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ec_response_get_protocol_info, ptr %27, i32 0, i32 2
  %33 = load i16, ptr %32, align 2
  %34 = add i16 %33, -8
  %35 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 6
  store i16 %34, ptr %35, align 2
  %36 = load i32, ptr %27, align 4
  %37 = icmp eq i32 %36, 0
  %38 = tail call i32 @llvm.ctlz.i32(i32 %36, i1 false) #11, !range !13
  %39 = sub nsw i32 31, %38
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 3)
  %41 = trunc i32 %40 to i16
  %42 = select i1 %37, i16 -1, i16 %41
  store i16 %42, ptr %8, align 2
  %43 = zext i16 %34 to i32
  %44 = add nuw nsw i32 %43, 40
  %45 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 13
  store i32 %44, ptr %45, align 4
  %46 = zext i16 %30 to i32
  %47 = add nuw nsw i32 %46, 9
  %48 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 14
  store i32 %47, ptr %48, align 8
  %49 = load ptr, ptr %9, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %26
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(20) %5, i8 0, i32 20, i1 false) #11
  store i32 16395, ptr %13, align 4
  store i32 12, ptr %14, align 4
  %52 = tail call fastcc i32 @send_command(ptr noundef %0, ptr noundef nonnull %5) #11
  %53 = icmp eq i32 %52, -110
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = tail call fastcc i32 @send_command(ptr noundef %0, ptr noundef nonnull %5) #11
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i32 [ %55, %54 ], [ %52, %51 ]
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %23, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59, %56, %26
  %63 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 7
  store i16 0, ptr %63, align 8
  br label %103

64:                                               ; preds = %59
  %65 = load i16, ptr %28, align 8
  %66 = add i16 %65, -8
  %67 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 7
  store i16 %66, ptr %67, align 8
  br label %103

68:                                               ; preds = %22, %19, %7
  store i16 2, ptr %8, align 2
  %69 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %70 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3264, i32 noundef 24) #12
  %71 = icmp eq ptr %70, null
  br i1 %71, label %101, label %72

72:                                               ; preds = %68
  store i32 0, ptr %70, align 8
  %73 = getelementptr inbounds %struct.cros_ec_command, ptr %70, i32 0, i32 1
  store i32 1, ptr %73, align 4
  %74 = getelementptr inbounds %struct.cros_ec_command, ptr %70, i32 0, i32 5
  %75 = getelementptr inbounds %struct.cros_ec_command, ptr %70, i32 0, i32 2
  store i32 4, ptr %75, align 8
  %76 = getelementptr inbounds %struct.cros_ec_command, ptr %70, i32 0, i32 3
  store i32 4, ptr %76, align 4
  store i32 -1599029040, ptr %74, align 4
  %77 = tail call fastcc i32 @send_command(ptr noundef %0, ptr noundef nonnull %70) #11
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.cros_ec_command, ptr %70, i32 0, i32 4
  %81 = load i32, ptr %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32, ptr %74, align 4
  %85 = icmp eq i32 %84, -1582119980
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  tail call void @kfree(ptr noundef nonnull %70) #11
  br label %95

87:                                               ; preds = %83
  %88 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.7, i32 noundef %84) #13
  br label %89

89:                                               ; preds = %87, %72
  %90 = phi i32 [ -74, %87 ], [ %77, %72 ]
  tail call void @kfree(ptr noundef nonnull %70) #11
  br label %101

91:                                               ; preds = %79
  %92 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.6, i32 noundef %81) #13
  %93 = load i32, ptr %80, align 8
  tail call void @kfree(ptr noundef nonnull %70) #11
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91, %86
  %96 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 5
  store i16 252, ptr %96, align 4
  %97 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 6
  store i16 252, ptr %97, align 2
  %98 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 7
  store i16 0, ptr %98, align 8
  store ptr null, ptr %9, align 4
  %99 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 13
  store i32 256, ptr %99, align 4
  %100 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 14
  store i32 256, ptr %100, align 8
  br label %103

101:                                              ; preds = %91, %89, %68
  %102 = phi i32 [ %93, %91 ], [ %90, %89 ], [ -12, %68 ]
  store i16 0, ptr %8, align 2
  br label %189

103:                                              ; preds = %95, %64, %62
  %104 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 11
  %105 = load ptr, ptr %104, align 4
  tail call void @devm_kfree(ptr noundef %3, ptr noundef %105) #11
  %106 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 12
  %107 = load ptr, ptr %106, align 8
  tail call void @devm_kfree(ptr noundef %3, ptr noundef %107) #11
  %108 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 13
  %109 = load i32, ptr %108, align 4
  %110 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %109, i32 noundef 3520) #11
  store ptr %110, ptr %104, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %189, label %112

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 14
  %114 = load i32, ptr %113, align 8
  %115 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %114, i32 noundef 3520) #11
  store ptr %115, ptr %106, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load ptr, ptr %104, align 4
  tail call void @devm_kfree(ptr noundef %3, ptr noundef %118) #11
  br label %189

119:                                              ; preds = %112
  %120 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %121 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %120, i32 noundef 3264, i32 noundef 24) #12
  %122 = icmp eq ptr %121, null
  br i1 %122, label %141, label %123

123:                                              ; preds = %119
  store i32 0, ptr %121, align 8
  %124 = getelementptr inbounds %struct.cros_ec_command, ptr %121, i32 0, i32 1
  store i32 8, ptr %124, align 4
  %125 = getelementptr inbounds %struct.cros_ec_command, ptr %121, i32 0, i32 3
  store i32 4, ptr %125, align 4
  %126 = getelementptr inbounds %struct.cros_ec_command, ptr %121, i32 0, i32 2
  store i32 1, ptr %126, align 8
  %127 = getelementptr inbounds %struct.cros_ec_command, ptr %121, i32 0, i32 5
  store i8 103, ptr %127, align 4
  %128 = tail call fastcc i32 @send_command(ptr noundef %0, ptr noundef nonnull %121) #11
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, ptr %127, align 4
  br label %132

132:                                              ; preds = %130, %123
  %133 = phi i32 [ %131, %130 ], [ 0, %123 ]
  tail call void @kfree(ptr noundef nonnull %121) #11
  %134 = icmp slt i32 %128, 0
  %135 = icmp eq i32 %133, 0
  %136 = select i1 %134, i1 true, i1 %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %132
  %138 = tail call i32 @llvm.ctlz.i32(i32 %133, i1 false) #11, !range !13
  %139 = trunc i32 %138 to i8
  %140 = sub nuw nsw i8 32, %139
  br label %141

141:                                              ; preds = %137, %132, %119
  %142 = phi i8 [ %140, %137 ], [ 0, %119 ], [ 0, %132 ]
  %143 = phi i32 [ %133, %137 ], [ 0, %119 ], [ %133, %132 ]
  %144 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 20
  store i8 %142, ptr %144, align 4
  %145 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %146 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %145, i32 noundef 3264, i32 noundef 24) #12
  %147 = icmp eq ptr %146, null
  br i1 %147, label %160, label %148

148:                                              ; preds = %141
  store i32 0, ptr %146, align 8
  %149 = getelementptr inbounds %struct.cros_ec_command, ptr %146, i32 0, i32 1
  store i32 8, ptr %149, align 4
  %150 = getelementptr inbounds %struct.cros_ec_command, ptr %146, i32 0, i32 3
  store i32 4, ptr %150, align 4
  %151 = getelementptr inbounds %struct.cros_ec_command, ptr %146, i32 0, i32 2
  store i32 1, ptr %151, align 8
  %152 = getelementptr inbounds %struct.cros_ec_command, ptr %146, i32 0, i32 5
  store i8 -87, ptr %152, align 4
  %153 = tail call fastcc i32 @send_command(ptr noundef %0, ptr noundef nonnull %146) #11
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, ptr %152, align 4
  br label %157

157:                                              ; preds = %155, %148
  %158 = phi i32 [ %156, %155 ], [ %143, %148 ]
  tail call void @kfree(ptr noundef nonnull %146) #11
  %159 = icmp sgt i32 %153, -1
  br label %160

160:                                              ; preds = %157, %141
  %161 = phi i32 [ %143, %141 ], [ %158, %157 ]
  %162 = phi i1 [ false, %141 ], [ %159, %157 ]
  %163 = and i32 %161, 2
  %164 = icmp ne i32 %163, 0
  %165 = select i1 %162, i1 %164, i1 false
  %166 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 21
  %167 = zext i1 %165 to i8
  store i8 %167, ptr %166, align 1
  %168 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 25
  %169 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 1
  store i32 141, ptr %169, align 4
  store i32 0, ptr %5, align 8
  %170 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 2
  store i32 0, ptr %170, align 8
  %171 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 3
  store i32 4, ptr %171, align 4
  %172 = tail call fastcc i32 @send_command(ptr noundef %0, ptr noundef nonnull %5) #11
  %173 = icmp sgt i32 %172, -1
  br i1 %173, label %174, label %184

174:                                              ; preds = %160
  %175 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 4
  %176 = load i32, ptr %175, align 8
  switch i32 %176, label %178 [
    i32 1, label %177
    i32 0, label %179
  ]

177:                                              ; preds = %174
  store i32 -6291698, ptr %168, align 4
  br label %189

178:                                              ; preds = %174
  store i32 -6291698, ptr %168, align 4
  br label %186

179:                                              ; preds = %174
  %180 = icmp eq i32 %172, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 5
  %183 = load i32, ptr %182, align 4
  store i32 %183, ptr %168, align 4
  br label %189

184:                                              ; preds = %160
  store i32 -6291698, ptr %168, align 4
  %185 = icmp eq i32 %172, -95
  br i1 %185, label %189, label %186

186:                                              ; preds = %184, %178
  %187 = phi i32 [ -71, %178 ], [ %172, %184 ]
  %188 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str, i32 noundef %187) #13
  br label %189

189:                                              ; preds = %186, %184, %181, %179, %177, %117, %103, %101
  %190 = phi i32 [ -12, %117 ], [ %102, %101 ], [ -12, %103 ], [ 0, %184 ], [ 0, %186 ], [ 0, %179 ], [ 0, %181 ], [ 0, %177 ]
  tail call void @kfree(ptr noundef nonnull %5) #11
  br label %191

191:                                              ; preds = %189, %1
  %192 = phi i32 [ %190, %189 ], [ -12, %1 ]
  ret i32 %192
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 8
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = tail call i32 @cros_ec_query_all(ptr noundef %0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1) #13
  tail call void @mutex_unlock(ptr noundef %3) #11
  br label %56

13:                                               ; preds = %7, %2
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 6
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp ugt i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 %18, ptr %14, align 4
  br label %21

21:                                               ; preds = %20, %13
  %22 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, 16384
  %25 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  br i1 %24, label %27, label %35

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 5
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = icmp ugt i32 %26, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.2, i32 noundef %26, i32 noundef %30) #13
  tail call void @mutex_unlock(ptr noundef %3) #11
  br label %56

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 7
  %37 = load i16, ptr %36, align 8
  %38 = zext i16 %37 to i32
  %39 = icmp ugt i32 %26, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.3, i32 noundef %26, i32 noundef %38) #13
  tail call void @mutex_unlock(ptr noundef %3) #11
  br label %56

43:                                               ; preds = %35, %27
  %44 = tail call fastcc i32 @send_command(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %3) #11
  %45 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = icmp ugt i32 %46, 20
  %50 = and i32 %46, 1073741823
  %51 = icmp eq i32 %50, 0
  %52 = or i1 %49, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = getelementptr [21 x i32], ptr @cros_ec_error_map, i32 0, i32 %46
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %53, %48, %43, %40, %32, %10
  %57 = phi i32 [ %8, %10 ], [ -90, %32 ], [ -90, %40 ], [ %55, %53 ], [ -71, %48 ], [ %44, %43 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @send_command(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 8
  %4 = load i16, ptr %3, align 2
  %5 = icmp ugt i16 %4, 2
  %6 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 18
  %7 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 17
  %8 = select i1 %5, ptr %6, ptr %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i1, ptr @send_command.__print_once, align 1
  br i1 %12, label %115, label %13

13:                                               ; preds = %11
  store i1 true, ptr @send_command.__print_once, align 1
  %14 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.8) #13
  br label %115

16:                                               ; preds = %2
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_request_start, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = tail call ptr @llvm.thread.pointer() #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %31 = tail call i32 @__traceiter_cros_ec_request_start(ptr noundef null, ptr noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %32

32:                                               ; preds = %30, %19, %16
  %33 = tail call i32 %9(ptr noundef %0, ptr noundef %1) #11
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_request_done, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = tail call ptr @llvm.thread.pointer() #11
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %48 = tail call i32 @__traceiter_cros_ec_request_done(ptr noundef null, ptr noundef %1, i32 noundef %33) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %49

49:                                               ; preds = %47, %36, %32
  %50 = getelementptr inbounds %struct.cros_ec_command, ptr %1, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %115

53:                                               ; preds = %49
  %54 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3264, i32 noundef 24) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %115, label %57

57:                                               ; preds = %53
  store i32 0, ptr %55, align 8
  %58 = getelementptr inbounds %struct.cros_ec_command, ptr %55, i32 0, i32 1
  store i32 9, ptr %58, align 4
  %59 = getelementptr inbounds %struct.cros_ec_command, ptr %55, i32 0, i32 3
  store i32 4, ptr %59, align 4
  %60 = getelementptr inbounds %struct.cros_ec_command, ptr %55, i32 0, i32 2
  store i32 0, ptr %60, align 8
  %61 = getelementptr inbounds %struct.cros_ec_command, ptr %55, i32 0, i32 4
  %62 = getelementptr inbounds %struct.cros_ec_command, ptr %55, i32 0, i32 5
  br label %63

63:                                               ; preds = %112, %57
  %64 = phi i32 [ 0, %57 ], [ %113, %112 ]
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_request_start, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = tail call ptr @llvm.thread.pointer() #11
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %79 = tail call i32 @__traceiter_cros_ec_request_start(ptr noundef null, ptr noundef nonnull %55) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %80

80:                                               ; preds = %78, %67, %63
  %81 = tail call i32 %9(ptr noundef %0, ptr noundef nonnull %55) #11
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_request_done, i32 0, i32 1), align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = tail call ptr @llvm.thread.pointer() #11
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 8
  %88 = lshr i32 %87, 5
  %89 = getelementptr i32, ptr @__cpu_online_mask, i32 %88
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %87, 31
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %90
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %84
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %96 = tail call i32 @__traceiter_cros_ec_request_done(ptr noundef null, ptr noundef nonnull %55, i32 noundef %81) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %97

97:                                               ; preds = %95, %84, %80
  %98 = icmp eq i32 %81, -11
  br i1 %98, label %110, label %99

99:                                               ; preds = %97
  %100 = icmp slt i32 %81, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %99
  %102 = load i32, ptr %61, align 8
  store i32 %102, ptr %50, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load i32, ptr %62, align 4
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  %108 = icmp ult i32 %64, 49
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %112, label %114

110:                                              ; preds = %97
  %111 = icmp ult i32 %64, 49
  br i1 %111, label %112, label %114

112:                                              ; preds = %110, %104
  %113 = add nuw nsw i32 %64, 1
  br label %63

114:                                              ; preds = %110, %104, %101, %99
  tail call void @kfree(ptr noundef nonnull %55) #11
  br label %115

115:                                              ; preds = %114, %53, %49, %13, %11
  %116 = phi i32 [ -5, %13 ], [ -5, %11 ], [ -12, %53 ], [ %81, %114 ], [ %33, %49 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_get_next_event(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) #0 {
  %4 = alloca %struct.anon.64, align 4
  %5 = alloca [36 x i8], align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  store i8 1, ptr %1, align 1
  br label %8

8:                                                ; preds = %7, %3
  %9 = icmp eq ptr %2, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  store i8 0, ptr %2, align 1
  br label %11

11:                                               ; preds = %10, %8
  %12 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 20
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #11
  %16 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i64 36, i1 false) #11
  store i32 96, ptr %16, align 4
  %17 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 3
  store i32 16, ptr %17, align 4
  %18 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %0, ptr noundef nonnull %5) #11
  %19 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 24
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 23
  store i8 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 23, i32 1
  %22 = getelementptr inbounds %struct.cros_ec_command, ptr %5, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %21, ptr noundef align 4 dereferenceable(16) %22, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #11
  br label %82

23:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %4) #11
  %24 = getelementptr inbounds i8, ptr %4, i32 20
  %25 = zext i8 %13 to i32
  %26 = add nsw i32 %25, -1
  %27 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(37) %4, i8 0, i64 37, i1 false)
  %28 = load i8, ptr %27, align 1, !range !18
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = icmp eq i32 %26, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 1
  store i32 103, ptr %33, align 4
  %34 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 3
  store i32 14, ptr %34, align 4
  %35 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %0, ptr noundef nonnull %4) #11
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %44, label %42

37:                                               ; preds = %30
  store i32 %26, ptr %4, align 4
  %38 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 1
  store i32 103, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cros_ec_command, ptr %4, i32 0, i32 3
  store i32 17, ptr %39, align 4
  %40 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %0, ptr noundef nonnull %4) #11
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %32, %23
  %43 = phi i32 [ %40, %37 ], [ %35, %32 ], [ -112, %23 ]
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %4) #11
  br label %82

44:                                               ; preds = %37, %32
  %45 = phi i32 [ %35, %32 ], [ %40, %37 ]
  %46 = add nsw i32 %45, -1
  %47 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 24
  store i32 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(17) %48, ptr noundef align 4 dereferenceable(17) %24, i32 17, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %4) #11
  br i1 %9, label %52, label %49

49:                                               ; preds = %44
  %50 = load i8, ptr %48, align 4
  %51 = lshr i8 %50, 7
  store i8 %51, ptr %2, align 1
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i8, ptr %48, align 4
  %54 = and i8 %53, 127
  store i8 %54, ptr %48, align 4
  br i1 %6, label %82, label %55

55:                                               ; preds = %52
  %56 = load i8, ptr %12, align 4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59, !prof !10

58:                                               ; preds = %55
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_proto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 786, 0\0A.popsection", ""() #11, !srcloc !19
  unreachable

59:                                               ; preds = %55
  %60 = trunc i8 %53 to i7
  switch i7 %60, label %82 [
    i7 1, label %61
    i7 2, label %67
  ]

61:                                               ; preds = %59
  %62 = load i32, ptr %47, align 8
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %66, ptr noundef nonnull @.str.4) #13
  br label %82

67:                                               ; preds = %59
  store i8 0, ptr %1, align 1
  br label %82

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 23, i32 1
  %70 = load i32, ptr %69, align 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %68
  %73 = and i32 %70, 33554432
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i8 0, ptr %1, align 1
  br label %76

76:                                               ; preds = %75, %72
  %77 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 25
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, %70
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i8 0, ptr %1, align 1
  br label %82

82:                                               ; preds = %81, %76, %68, %67, %64, %59, %52, %42, %15
  %83 = phi i32 [ %18, %15 ], [ %45, %67 ], [ %45, %76 ], [ %45, %81 ], [ %45, %68 ], [ %45, %52 ], [ %43, %42 ], [ %45, %64 ], [ %45, %59 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_get_host_event(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 20
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_proto.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 786, 0\0A.popsection", ""() #11, !srcloc !19
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 23
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 24
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.4) #13
  br label %20

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.cros_ec_device, ptr %0, i32 0, i32 23, i32 1
  %19 = load i32, ptr %18, align 1
  br label %20

20:                                               ; preds = %17, %14, %6
  %21 = phi i32 [ 0, %14 ], [ %19, %17 ], [ 0, %6 ]
  ret i32 %21
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cros_ec_check_features(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 1
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %34

6:                                                ; preds = %2
  %7 = getelementptr %struct.cros_ec_dev, ptr %0, i32 0, i32 6, i32 0, i32 1
  %8 = load i32, ptr %7, align 1
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %14 = load i16, ptr %13, align 2
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 28) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %10
  %19 = zext i16 %14 to i32
  %20 = add nuw nsw i32 %19, 13
  store i32 0, ptr %16, align 8
  %21 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 2
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 3
  store i32 8, ptr %23, align 4
  %24 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %12, ptr noundef nonnull %16) #11
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  tail call void @kfree(ptr noundef nonnull %16) #11
  br label %30

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 5
  %29 = load i64, ptr %28, align 4
  store i64 %29, ptr %3, align 1
  tail call void @kfree(ptr noundef nonnull %16) #11
  br label %34

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %24, %26 ], [ -12, %10 ]
  %32 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.5, i32 noundef %31) #13
  store i64 0, ptr %3, align 1
  br label %34

34:                                               ; preds = %30, %27, %6, %2
  %35 = sdiv i32 %1, 32
  %36 = getelementptr [2 x i32], ptr %3, i32 0, i32 %35
  %37 = load i32, ptr %36, align 1
  %38 = and i32 %1, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  ret i1 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_command(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5, i32 noundef %6) #0 {
  %8 = tail call i32 @llvm.smax.i32(i32 %6, i32 %4)
  %9 = add i32 %8, 20
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  store i32 %1, ptr %10, align 64
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 1
  store i32 %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 2
  store i32 %4, ptr %14, align 8
  %15 = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 3
  store i32 %6, ptr %15, align 4
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %18, ptr align 1 %3, i32 %4, i1 false)
  br label %19

19:                                               ; preds = %17, %12
  %20 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %0, ptr noundef nonnull %10)
  %21 = icmp sgt i32 %20, -1
  %22 = icmp ne i32 %6, 0
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %5, ptr align 4 %25, i32 %6, i1 false)
  br label %26

26:                                               ; preds = %24, %19
  tail call void @kfree(ptr noundef nonnull %10) #11
  br label %27

27:                                               ; preds = %26, %7
  %28 = phi i32 [ %20, %26 ], [ -12, %7 ]
  ret i32 %28
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cros_ec_get_sensor_count(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1, !annotation !20
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 36) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  store i32 1, ptr %6, align 8
  %9 = getelementptr inbounds %struct.cros_ec_dev, ptr %0, i32 0, i32 5
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = add nuw nsw i32 %11, 43
  %13 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 2
  store i32 13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 3
  store i32 16, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cros_ec_command, ptr %6, i32 0, i32 5
  store i8 0, ptr %16, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %17, ptr noundef nonnull %6)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #11
  %21 = load i16, ptr %9, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %38

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.anon.18, ptr %16, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  tail call void @kfree(ptr noundef nonnull %6) #11
  br label %38

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.cros_ec_device, ptr %4, i32 0, i32 4
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = call i32 %29(ptr noundef %4, i32 noundef 144, i32 noundef 1, ptr noundef nonnull %2) #11
  %33 = icmp slt i32 %32, 0
  %34 = load i8, ptr %2, align 1
  %35 = icmp sgt i8 %34, -1
  %36 = select i1 %33, i1 true, i1 %35
  %37 = select i1 %36, i32 0, i32 2
  br label %38

38:                                               ; preds = %31, %27, %23, %20, %1
  %39 = phi i32 [ -12, %1 ], [ %18, %27 ], [ %18, %20 ], [ %26, %23 ], [ %37, %31 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret i32 %39
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cros_ec_request_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cros_ec_request_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!9 = !{i64 2151623518, i64 2151624021, i64 2151623555, i64 2151623611, i64 2151623645, i64 2151623669, i64 2151623710, i64 2151623731, i64 2151623759, i64 2151623793}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2151624669, i64 2151625172, i64 2151624706, i64 2151624762, i64 2151624796, i64 2151624820, i64 2151624861, i64 2151624882, i64 2151624910, i64 2151624944}
!12 = !{i64 2151627114, i64 2151627618, i64 2151627151, i64 2151627207, i64 2151627241, i64 2151627265, i64 2151627306, i64 2151627327, i64 2151627355, i64 2151627389}
!13 = !{i32 0, i32 33}
!14 = !{i64 2151527247}
!15 = !{i64 2151527407}
!16 = !{i64 2151547984}
!17 = !{i64 2151548158}
!18 = !{i8 0, i8 2}
!19 = !{i64 2151654820, i64 2151655324, i64 2151654857, i64 2151654913, i64 2151654947, i64 2151654971, i64 2151655012, i64 2151655033, i64 2151655061, i64 2151655095}
!20 = !{!"auto-init"}
