; ModuleID = '/llk/IR/drivers/ata/libata-eh.c_pt.bc'
source_filename = "../drivers/ata/libata-eh.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ata_ehi_push_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22__ata_ehi_push_desc\22\09\09\09\09\09"
module asm "__kstrtabns___ata_ehi_push_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_ehi_push_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_ehi_push_desc\22\09\09\09\09\09"
module asm "__kstrtabns_ata_ehi_push_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_ehi_clear_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_ehi_clear_desc\22\09\09\09\09\09"
module asm "__kstrtabns_ata_ehi_clear_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_port_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_port_desc\22\09\09\09\09\09"
module asm "__kstrtabns_ata_port_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_port_pbar_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_port_pbar_desc\22\09\09\09\09\09"
module asm "__kstrtabns_ata_port_pbar_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_scsi_cmd_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_scsi_cmd_error_handler\22\09\09\09\09\09"
module asm "__kstrtabns_ata_scsi_cmd_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_scsi_port_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_scsi_port_error_handler\22\09\09\09\09\09"
module asm "__kstrtabns_ata_scsi_port_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_port_wait_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_port_wait_eh\22\09\09\09\09\09"
module asm "__kstrtabns_ata_port_wait_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_std_sched_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_std_sched_eh\22\09\09\09\09\09"
module asm "__kstrtabns_ata_std_sched_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_std_end_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_std_end_eh\22\09\09\09\09\09"
module asm "__kstrtabns_ata_std_end_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_port_schedule_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_port_schedule_eh\22\09\09\09\09\09"
module asm "__kstrtabns_ata_port_schedule_eh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_link_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_link_abort\22\09\09\09\09\09"
module asm "__kstrtabns_ata_link_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_port_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_port_abort\22\09\09\09\09\09"
module asm "__kstrtabns_ata_port_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_port_freeze:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_port_freeze\22\09\09\09\09\09"
module asm "__kstrtabns_ata_port_freeze:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_eh_freeze_port:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_eh_freeze_port\22\09\09\09\09\09"
module asm "__kstrtabns_ata_eh_freeze_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_dev_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_dev_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ata_dev_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_get_cmd_name:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_get_cmd_name\22\09\09\09\09\09"
module asm "__kstrtabns_ata_get_cmd_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_std_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_std_error_handler\22\09\09\09\09\09"
module asm "__kstrtabns_ata_std_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ata_eh_cmd_timeout_ent = type { ptr, ptr }
%struct.anon.80 = type { i8, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.__va_list = type { ptr }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [24 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [16 x i8], [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [60 x i8], [2 x %struct.ata_device], i32, [60 x i8] }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [18 x i8], %union.anon.75, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.75 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pm_message = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.speed_down_verdict_arg = type { i64, i32, [8 x i32] }

@__kstrtab___ata_ehi_push_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns___ata_ehi_push_desc = external dso_local constant [0 x i8], align 1
@__ksymtab___ata_ehi_push_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ata_ehi_push_desc to i32), ptr @__kstrtab___ata_ehi_push_desc, ptr @__kstrtabns___ata_ehi_push_desc }, section "___ksymtab_gpl+__ata_ehi_push_desc", align 4
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@__kstrtab_ata_ehi_push_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_ehi_push_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_ehi_push_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_ehi_push_desc to i32), ptr @__kstrtab_ata_ehi_push_desc, ptr @__kstrtabns_ata_ehi_push_desc }, section "___ksymtab_gpl+ata_ehi_push_desc", align 4
@__kstrtab_ata_ehi_clear_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_ehi_clear_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_ehi_clear_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_ehi_clear_desc to i32), ptr @__kstrtab_ata_ehi_clear_desc, ptr @__kstrtabns_ata_ehi_clear_desc }, section "___ksymtab_gpl+ata_ehi_clear_desc", align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"drivers/ata/libata-eh.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__kstrtab_ata_port_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_port_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_port_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_port_desc to i32), ptr @__kstrtab_ata_port_desc, ptr @__kstrtabns_ata_port_desc }, section "___ksymtab_gpl+ata_port_desc", align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%s %s%llu@0x%llx\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s 0x%llx\00", align 1
@__kstrtab_ata_port_pbar_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_port_pbar_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_port_pbar_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_port_pbar_desc to i32), ptr @__kstrtab_ata_port_pbar_desc, ptr @__kstrtabns_ata_port_pbar_desc }, section "___ksymtab_gpl+ata_port_pbar_desc", align 4
@ata_eh_cmd_timeout_table = internal unnamed_addr constant [7 x %struct.ata_eh_cmd_timeout_ent] [%struct.ata_eh_cmd_timeout_ent { ptr @.compoundliteral, ptr @ata_eh_identify_timeouts }, %struct.ata_eh_cmd_timeout_ent { ptr @.compoundliteral.123, ptr @ata_eh_revalidate_timeouts }, %struct.ata_eh_cmd_timeout_ent { ptr @.compoundliteral.124, ptr @ata_eh_other_timeouts }, %struct.ata_eh_cmd_timeout_ent { ptr @.compoundliteral.125, ptr @ata_eh_other_timeouts }, %struct.ata_eh_cmd_timeout_ent { ptr @.compoundliteral.126, ptr @ata_eh_other_timeouts }, %struct.ata_eh_cmd_timeout_ent { ptr @.compoundliteral.127, ptr @ata_eh_other_timeouts }, %struct.ata_eh_cmd_timeout_ent { ptr @.compoundliteral.128, ptr @ata_eh_flush_timeouts }], align 4
@ata_eh_acquire.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ata_eh_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ata_scsi_cmd_error_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_scsi_cmd_error_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_scsi_cmd_error_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_scsi_cmd_error_handler to i32), ptr @__kstrtab_ata_scsi_cmd_error_handler, ptr @__kstrtabns_ata_scsi_cmd_error_handler }, section "___ksymtab+ata_scsi_cmd_error_handler", align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"\013ata%u: EH pending after %d tries, giving up\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"\016ata%u: EH complete\0A\00", align 1
@__kstrtab_ata_scsi_port_error_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_scsi_port_error_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_scsi_port_error_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_scsi_port_error_handler to i32), ptr @__kstrtab_ata_scsi_port_error_handler, ptr @__kstrtabns_ata_scsi_port_error_handler }, section "___ksymtab_gpl+ata_scsi_port_error_handler", align 4
@__kstrtab_ata_port_wait_eh = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_port_wait_eh = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_port_wait_eh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_port_wait_eh to i32), ptr @__kstrtab_ata_port_wait_eh, ptr @__kstrtabns_ata_port_wait_eh }, section "___ksymtab_gpl+ata_port_wait_eh", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_ata_std_sched_eh = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_std_sched_eh = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_std_sched_eh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_std_sched_eh to i32), ptr @__kstrtab_ata_std_sched_eh, ptr @__kstrtabns_ata_std_sched_eh }, section "___ksymtab_gpl+ata_std_sched_eh", align 4
@__kstrtab_ata_std_end_eh = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_std_end_eh = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_std_end_eh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_std_end_eh to i32), ptr @__kstrtab_ata_std_end_eh, ptr @__kstrtabns_ata_std_end_eh }, section "___ksymtab+ata_std_end_eh", align 4
@__kstrtab_ata_port_schedule_eh = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_port_schedule_eh = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_port_schedule_eh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_port_schedule_eh to i32), ptr @__kstrtab_ata_port_schedule_eh, ptr @__kstrtabns_ata_port_schedule_eh }, section "___ksymtab_gpl+ata_port_schedule_eh", align 4
@__kstrtab_ata_link_abort = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_link_abort = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_link_abort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_link_abort to i32), ptr @__kstrtab_ata_link_abort, ptr @__kstrtabns_ata_link_abort }, section "___ksymtab_gpl+ata_link_abort", align 4
@__kstrtab_ata_port_abort = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_port_abort = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_port_abort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_port_abort to i32), ptr @__kstrtab_ata_port_abort, ptr @__kstrtabns_ata_port_abort }, section "___ksymtab_gpl+ata_port_abort", align 4
@__kstrtab_ata_port_freeze = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_port_freeze = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_port_freeze = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_port_freeze to i32), ptr @__kstrtab_ata_port_freeze, ptr @__kstrtabns_ata_port_freeze }, section "___ksymtab_gpl+ata_port_freeze", align 4
@__kstrtab_ata_eh_freeze_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_eh_freeze_port = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_eh_freeze_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_eh_freeze_port to i32), ptr @__kstrtab_ata_eh_freeze_port, ptr @__kstrtabns_ata_eh_freeze_port }, section "___ksymtab_gpl+ata_eh_freeze_port", align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"\014ata%u.%02u: disable device\0A\00", align 1
@__kstrtab_ata_dev_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_dev_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_dev_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_dev_disable to i32), ptr @__kstrtab_ata_dev_disable, ptr @__kstrtabns_ata_dev_disable }, section "___ksymtab_gpl+ata_dev_disable", align 4
@__const.atapi_eh_request_sense.cdb = private unnamed_addr constant <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 0, i8 0, i8 0, i8 96, [11 x i8] zeroinitializer }>, align 1
@ata_get_cmd_name.cmd_descr = internal unnamed_addr constant [92 x %struct.anon.80] [%struct.anon.80 { i8 8, ptr @.str.11 }, %struct.anon.80 { i8 -27, ptr @.str.12 }, %struct.anon.80 { i8 -30, ptr @.str.13 }, %struct.anon.80 { i8 -29, ptr @.str.14 }, %struct.anon.80 { i8 -112, ptr @.str.15 }, %struct.anon.80 { i8 -110, ptr @.str.16 }, %struct.anon.80 { i8 -109, ptr @.str.17 }, %struct.anon.80 { i8 0, ptr @.str.18 }, %struct.anon.80 { i8 -25, ptr @.str.19 }, %struct.anon.80 { i8 -22, ptr @.str.20 }, %struct.anon.80 { i8 -20, ptr @.str.21 }, %struct.anon.80 { i8 -95, ptr @.str.22 }, %struct.anon.80 { i8 -94, ptr @.str.23 }, %struct.anon.80 { i8 -56, ptr @.str.24 }, %struct.anon.80 { i8 37, ptr @.str.25 }, %struct.anon.80 { i8 38, ptr @.str.26 }, %struct.anon.80 { i8 43, ptr @.str.27 }, %struct.anon.80 { i8 42, ptr @.str.28 }, %struct.anon.80 { i8 -54, ptr @.str.29 }, %struct.anon.80 { i8 53, ptr @.str.30 }, %struct.anon.80 { i8 54, ptr @.str.31 }, %struct.anon.80 { i8 59, ptr @.str.32 }, %struct.anon.80 { i8 58, ptr @.str.33 }, %struct.anon.80 { i8 61, ptr @.str.34 }, %struct.anon.80 { i8 62, ptr @.str.35 }, %struct.anon.80 { i8 96, ptr @.str.36 }, %struct.anon.80 { i8 97, ptr @.str.37 }, %struct.anon.80 { i8 100, ptr @.str.38 }, %struct.anon.80 { i8 101, ptr @.str.39 }, %struct.anon.80 { i8 32, ptr @.str.40 }, %struct.anon.80 { i8 36, ptr @.str.41 }, %struct.anon.80 { i8 48, ptr @.str.42 }, %struct.anon.80 { i8 52, ptr @.str.43 }, %struct.anon.80 { i8 -60, ptr @.str.44 }, %struct.anon.80 { i8 41, ptr @.str.45 }, %struct.anon.80 { i8 -59, ptr @.str.46 }, %struct.anon.80 { i8 57, ptr @.str.47 }, %struct.anon.80 { i8 -50, ptr @.str.48 }, %struct.anon.80 { i8 -17, ptr @.str.49 }, %struct.anon.80 { i8 -58, ptr @.str.50 }, %struct.anon.80 { i8 64, ptr @.str.51 }, %struct.anon.80 { i8 66, ptr @.str.52 }, %struct.anon.80 { i8 69, ptr @.str.53 }, %struct.anon.80 { i8 -32, ptr @.str.54 }, %struct.anon.80 { i8 -31, ptr @.str.55 }, %struct.anon.80 { i8 -26, ptr @.str.56 }, %struct.anon.80 { i8 -111, ptr @.str.57 }, %struct.anon.80 { i8 -8, ptr @.str.58 }, %struct.anon.80 { i8 39, ptr @.str.59 }, %struct.anon.80 { i8 -7, ptr @.str.60 }, %struct.anon.80 { i8 55, ptr @.str.61 }, %struct.anon.80 { i8 47, ptr @.str.62 }, %struct.anon.80 { i8 63, ptr @.str.63 }, %struct.anon.80 { i8 71, ptr @.str.64 }, %struct.anon.80 { i8 87, ptr @.str.65 }, %struct.anon.80 { i8 91, ptr @.str.66 }, %struct.anon.80 { i8 92, ptr @.str.67 }, %struct.anon.80 { i8 93, ptr @.str.68 }, %struct.anon.80 { i8 94, ptr @.str.69 }, %struct.anon.80 { i8 95, ptr @.str.70 }, %struct.anon.80 { i8 -28, ptr @.str.71 }, %struct.anon.80 { i8 -23, ptr @.str.72 }, %struct.anon.80 { i8 -24, ptr @.str.73 }, %struct.anon.80 { i8 -21, ptr @.str.74 }, %struct.anon.80 { i8 -79, ptr @.str.75 }, %struct.anon.80 { i8 -15, ptr @.str.76 }, %struct.anon.80 { i8 -14, ptr @.str.77 }, %struct.anon.80 { i8 -13, ptr @.str.78 }, %struct.anon.80 { i8 -12, ptr @.str.79 }, %struct.anon.80 { i8 -11, ptr @.str.80 }, %struct.anon.80 { i8 -10, ptr @.str.81 }, %struct.anon.80 { i8 81, ptr @.str.82 }, %struct.anon.80 { i8 -80, ptr @.str.83 }, %struct.anon.80 { i8 -34, ptr @.str.84 }, %struct.anon.80 { i8 -33, ptr @.str.85 }, %struct.anon.80 { i8 6, ptr @.str.86 }, %struct.anon.80 { i8 -47, ptr @.str.87 }, %struct.anon.80 { i8 3, ptr @.str.88 }, %struct.anon.80 { i8 56, ptr @.str.89 }, %struct.anon.80 { i8 -121, ptr @.str.90 }, %struct.anon.80 { i8 -64, ptr @.str.91 }, %struct.anon.80 { i8 -51, ptr @.str.92 }, %struct.anon.80 { i8 11, ptr @.str.93 }, %struct.anon.80 { i8 -76, ptr @.str.94 }, %struct.anon.80 { i8 74, ptr @.str.95 }, %struct.anon.80 { i8 -97, ptr @.str.96 }, %struct.anon.80 { i8 34, ptr @.str.97 }, %struct.anon.80 { i8 35, ptr @.str.98 }, %struct.anon.80 { i8 50, ptr @.str.99 }, %struct.anon.80 { i8 51, ptr @.str.100 }, %struct.anon.80 { i8 16, ptr @.str.101 }, %struct.anon.80 zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"DEVICE RESET\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"CHECK POWER MODE\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"STANDBY\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"EXECUTE DEVICE DIAGNOSTIC\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"DOWNLOAD MICROCODE\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"DOWNLOAD MICROCODE DMA\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"NOP\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"FLUSH CACHE\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"FLUSH CACHE EXT\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"IDENTIFY DEVICE\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"IDENTIFY PACKET DEVICE\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"SERVICE\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"READ DMA\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"READ DMA EXT\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"READ DMA QUEUED\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"READ STREAM EXT\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"READ STREAM DMA EXT\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"WRITE DMA\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"WRITE DMA EXT\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"WRITE DMA QUEUED EXT\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"WRITE STREAM EXT\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"WRITE STREAM DMA EXT\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"WRITE DMA FUA EXT\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"WRITE DMA QUEUED FUA EXT\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"READ FPDMA QUEUED\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"WRITE FPDMA QUEUED\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"SEND FPDMA QUEUED\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"RECEIVE FPDMA QUEUED\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"READ SECTOR(S)\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"READ SECTOR(S) EXT\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"WRITE SECTOR(S)\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"WRITE SECTOR(S) EXT\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"READ MULTIPLE\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"READ MULTIPLE EXT\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"WRITE MULTIPLE\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"WRITE MULTIPLE EXT\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"WRITE MULTIPLE FUA EXT\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"SET FEATURES\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"SET MULTIPLE MODE\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"READ VERIFY SECTOR(S)\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"READ VERIFY SECTOR(S) EXT\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"WRITE UNCORRECTABLE EXT\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"STANDBY IMMEDIATE\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"IDLE IMMEDIATE\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"SLEEP\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"INITIALIZE DEVICE PARAMETERS\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"READ NATIVE MAX ADDRESS\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"READ NATIVE MAX ADDRESS EXT\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"SET MAX ADDRESS\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"SET MAX ADDRESS EXT\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"READ LOG EXT\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"WRITE LOG EXT\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"READ LOG DMA EXT\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"WRITE LOG DMA EXT\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"TRUSTED NON-DATA\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"TRUSTED RECEIVE\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"TRUSTED RECEIVE DMA\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"TRUSTED SEND\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"TRUSTED SEND DMA\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"READ BUFFER\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"READ BUFFER DMA\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"WRITE BUFFER\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"WRITE BUFFER DMA\00", align 1
@.str.75 = private unnamed_addr constant [29 x i8] c"DEVICE CONFIGURATION OVERLAY\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"SECURITY SET PASSWORD\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"SECURITY UNLOCK\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"SECURITY ERASE PREPARE\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"SECURITY ERASE UNIT\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"SECURITY FREEZE LOCK\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"SECURITY DISABLE PASSWORD\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"CONFIGURE STREAM\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"SMART\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"DOOR LOCK\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"DOOR UNLOCK\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"DATA SET MANAGEMENT\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"CHECK MEDIA CARD TYPE\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"CFA REQUEST EXTENDED ERROR\00", align 1
@.str.89 = private unnamed_addr constant [32 x i8] c"CFA WRITE SECTORS WITHOUT ERASE\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"CFA TRANSLATE SECTOR\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"CFA ERASE SECTORS\00", align 1
@.str.92 = private unnamed_addr constant [33 x i8] c"CFA WRITE MULTIPLE WITHOUT ERASE\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"REQUEST SENSE DATA EXT\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"SANITIZE DEVICE\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"ZAC MANAGEMENT IN\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"ZAC MANAGEMENT OUT\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"READ LONG (with retries)\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"READ LONG (without retries)\00", align 1
@.str.99 = private unnamed_addr constant [26 x i8] c"WRITE LONG (with retries)\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"WRITE LONG (without retries)\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"RECALIBRATE\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@__kstrtab_ata_get_cmd_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_get_cmd_name = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_get_cmd_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_get_cmd_name to i32), ptr @__kstrtab_ata_get_cmd_name, ptr @__kstrtabns_ata_get_cmd_name }, section "___ksymtab_gpl+ata_get_cmd_name", align 4
@ata_eh_reset_timeouts = internal unnamed_addr constant [5 x i32] [i32 10000, i32 10000, i32 35000, i32 5000, i32 -1], align 4
@.str.103 = private unnamed_addr constant [42 x i8] c"\013ata%u.%02u: prereset failed (errno=%d)\0A\00", align 1
@.str.104 = private unnamed_addr constant [37 x i8] c"\013ata%u: prereset failed (errno=%d)\0A\00", align 1
@.str.105 = private unnamed_addr constant [33 x i8] c"\016ata%u.%02u: %s resetting link\0A\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.108 = private unnamed_addr constant [28 x i8] c"\016ata%u: %s resetting link\0A\00", align 1
@.str.109 = private unnamed_addr constant [35 x i8] c"\016ata%u.%02u: hard resetting link\0A\00", align 1
@.str.110 = private unnamed_addr constant [30 x i8] c"\016ata%u: hard resetting link\0A\00", align 1
@.str.111 = private unnamed_addr constant [71 x i8] c"\013ata%u.%02u: follow-up softreset required but no softreset available\0A\00", align 1
@.str.112 = private unnamed_addr constant [66 x i8] c"\013ata%u: follow-up softreset required but no softreset available\0A\00", align 1
@.str.113 = private unnamed_addr constant [57 x i8] c"\016ata%u.%02u: no reset method available, skipping reset\0A\00", align 1
@.str.114 = private unnamed_addr constant [52 x i8] c"\016ata%u: no reset method available, skipping reset\0A\00", align 1
@.str.115 = private unnamed_addr constant [66 x i8] c"\014ata%u.%02u: link online but %d devices misclassified, retrying\0A\00", align 1
@.str.116 = private unnamed_addr constant [61 x i8] c"\014ata%u: link online but %d devices misclassified, retrying\0A\00", align 1
@.str.117 = private unnamed_addr constant [85 x i8] c"\014ata%u.%02u: link online but %d devices misclassified, device detection might fail\0A\00", align 1
@.str.118 = private unnamed_addr constant [80 x i8] c"\014ata%u: link online but %d devices misclassified, device detection might fail\0A\00", align 1
@.str.119 = private unnamed_addr constant [60 x i8] c"\014ata%u.%02u: reset failed (errno=%d), retrying in %u secs\0A\00", align 1
@.str.120 = private unnamed_addr constant [55 x i8] c"\014ata%u: reset failed (errno=%d), retrying in %u secs\0A\00", align 1
@.str.121 = private unnamed_addr constant [39 x i8] c"\013ata%u.%02u: reset failed, giving up\0A\00", align 1
@.str.122 = private unnamed_addr constant [34 x i8] c"\013ata%u: reset failed, giving up\0A\00", align 1
@__kstrtab_ata_std_error_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_std_error_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_std_error_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_std_error_handler to i32), ptr @__kstrtab_ata_std_error_handler, ptr @__kstrtabns_ata_std_error_handler }, section "___ksymtab_gpl+ata_std_error_handler", align 4
@.compoundliteral = internal constant [3 x i8] c"\EC\A1\00", align 1
@ata_eh_identify_timeouts = internal constant [4 x i32] [i32 5000, i32 10000, i32 30000, i32 -1], align 4
@.compoundliteral.123 = internal constant [3 x i8] c"/G\00", align 1
@ata_eh_revalidate_timeouts = internal constant [3 x i32] [i32 15000, i32 15000, i32 -1], align 4
@.compoundliteral.124 = internal constant [3 x i8] c"\F8'\00", align 1
@ata_eh_other_timeouts = internal constant [3 x i32] [i32 5000, i32 10000, i32 -1], align 4
@.compoundliteral.125 = internal constant [3 x i8] c"\F97\00", align 1
@.compoundliteral.126 = internal constant [2 x i8] c"\EF\00", align 1
@.compoundliteral.127 = internal constant [2 x i8] c"\91\00", align 1
@.compoundliteral.128 = internal constant [3 x i8] c"\E7\EA\00", align 1
@ata_eh_flush_timeouts = internal constant [4 x i32] [i32 15000, i32 15000, i32 30000, i32 -1], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_ata_std_sched_eh = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_ata_port_freeze = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_port_thaw = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_eh_about_to_do = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_eh_done = external dso_local global %struct.tracepoint, align 4
@.str.130 = private unnamed_addr constant [52 x i8] c"\014ata%u.%02u: sense data available but port frozen\0A\00", align 1
@.str.131 = private unnamed_addr constant [45 x i8] c"\014ata%u.%02u: sense data reporting disabled\0A\00", align 1
@.str.132 = private unnamed_addr constant [55 x i8] c"\014ata%u.%02u: request sense failed stat %02x emask %x\0A\00", align 1
@__tracepoint_ata_eh_link_autopsy_qc = external dso_local global %struct.tracepoint, align 4
@.str.133 = private unnamed_addr constant [52 x i8] c"\014ata%u.%02u: NCQ disabled due to excessive errors\0A\00", align 1
@ata_eh_speed_down.dma_dnxfer_sel = internal unnamed_addr constant [2 x i32] [i32 1, i32 2], align 4
@ata_eh_speed_down.pio_dnxfer_sel = internal unnamed_addr constant [2 x i32] [i32 0, i32 4], align 4
@__tracepoint_ata_eh_link_autopsy = external dso_local global %struct.tracepoint, align 4
@.str.134 = private unnamed_addr constant [8 x i8] c" frozen\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c" t%d\00", align 1
@.str.136 = private unnamed_addr constant [72 x i8] c"\013ata%u.%02u: exception Emask 0x%x SAct 0x%x SErr 0x%x action 0x%x%s%s\0A\00", align 1
@.str.137 = private unnamed_addr constant [18 x i8] c"\013ata%u.%02u: %s\0A\00", align 1
@.str.138 = private unnamed_addr constant [67 x i8] c"\013ata%u: exception Emask 0x%x SAct 0x%x SErr 0x%x action 0x%x%s%s\0A\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"\013ata%u: %s\0A\00", align 1
@.str.140 = private unnamed_addr constant [61 x i8] c"\013ata%u.%02u: SError: { %s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s}\0A\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"RecovData \00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"RecovComm \00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"UnrecovData \00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"Persist \00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"Proto \00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"HostInt \00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"PHYRdyChg \00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"PHYInt \00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"CommWake \00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"10B8B \00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"Dispar \00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"BadCRC \00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"Handshk \00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"LinkSeq \00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"TrStaTrns \00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"UnrecFIS \00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"DevExch \00", align 1
@.str.158 = private unnamed_addr constant [56 x i8] c"\013ata%u: SError: { %s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s}\0A\00", align 1
@ata_eh_link_report.dma_str = internal unnamed_addr constant [3 x ptr] [ptr @.str.159, ptr @.str.160, ptr @.str.161], align 4
@.str.159 = private unnamed_addr constant [5 x i8] c"bidi\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"nodata\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"pio\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"ncq dma\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"ncq nodata\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c" %s %u %s\00", align 1
@.str.168 = private unnamed_addr constant [34 x i8] c"\013ata%u.%02u: failed command: %s\0A\00", align 1
@.str.169 = private unnamed_addr constant [181 x i8] c"\013ata%u.%02u: cmd %02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x tag %d%s\0A         %sres %02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x Emask 0x%x (%s)%s\0A\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c" <F>\00", align 1
@.str.171 = private unnamed_addr constant [32 x i8] c"\013ata%u.%02u: status: { Busy }\0A\00", align 1
@.str.172 = private unnamed_addr constant [37 x i8] c"\013ata%u.%02u: status: { %s%s%s%s%s}\0A\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"DRDY \00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"DF \00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"DRQ \00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"SENSE \00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"ERR \00", align 1
@.str.178 = private unnamed_addr constant [36 x i8] c"\013ata%u.%02u: error: { %s%s%s%s%s}\0A\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"ICRC \00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"UNC \00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"AMNF \00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"IDNF \00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"ABRT \00", align 1
@.str.184 = private unnamed_addr constant [15 x i8] c"host bus error\00", align 1
@.str.185 = private unnamed_addr constant [14 x i8] c"ATA bus error\00", align 1
@.str.186 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"HSM violation\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.189 = private unnamed_addr constant [12 x i8] c"media error\00", align 1
@.str.190 = private unnamed_addr constant [17 x i8] c"invalid argument\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"device error\00", align 1
@.str.192 = private unnamed_addr constant [10 x i8] c"NCQ error\00", align 1
@.str.193 = private unnamed_addr constant [24 x i8] c"Polling detection error\00", align 1
@.str.194 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@__tracepoint_ata_link_hardreset_begin = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_link_softreset_begin = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_link_hardreset_end = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_link_softreset_end = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_slave_hardreset_begin = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_slave_hardreset_end = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_link_postreset = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_slave_postreset = external dso_local global %struct.tracepoint, align 4
@.str.195 = private unnamed_addr constant [35 x i8] c"\013ata%u.%02u: head unload failed!\0A\00", align 1
@.str.196 = private unnamed_addr constant [54 x i8] c"\014ata%u.%02u: TEST_UNIT_READY failed (err_mask=0x%x)\0A\00", align 1
@.str.197 = private unnamed_addr constant [62 x i8] c"\014ata%u.%02u: failed to clear UNIT ATTENTION (err_mask=0x%x)\0A\00", align 1
@.str.198 = private unnamed_addr constant [54 x i8] c"\014ata%u.%02u: UNIT ATTENTION persists after %d tries\0A\00", align 1
@.str.199 = private unnamed_addr constant [46 x i8] c"\014ata%u.%02u: retrying FLUSH 0x%x Emask 0x%x\0A\00", align 1
@.str.200 = private unnamed_addr constant [39 x i8] c"\014ata%u.%02u: FLUSH failed Emask 0x%x\0A\00", align 1
@.str.201 = private unnamed_addr constant [50 x i8] c"\014ata%u.%02u: failed to disable DIPM, Emask 0x%x\0A\00", align 1
@.str.202 = private unnamed_addr constant [49 x i8] c"\014ata%u.%02u: failed to enable DIPM, Emask 0x%x\0A\00", align 1
@.str.203 = private unnamed_addr constant [41 x i8] c"\014ata%u.%02u: disabling LPM on the link\0A\00", align 1
@.str.204 = private unnamed_addr constant [36 x i8] c"\014ata%u: disabling LPM on the link\0A\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab___ata_ehi_push_desc, ptr @__ksymtab_ata_dev_disable, ptr @__ksymtab_ata_eh_freeze_port, ptr @__ksymtab_ata_ehi_clear_desc, ptr @__ksymtab_ata_ehi_push_desc, ptr @__ksymtab_ata_get_cmd_name, ptr @__ksymtab_ata_link_abort, ptr @__ksymtab_ata_port_abort, ptr @__ksymtab_ata_port_desc, ptr @__ksymtab_ata_port_freeze, ptr @__ksymtab_ata_port_pbar_desc, ptr @__ksymtab_ata_port_schedule_eh, ptr @__ksymtab_ata_port_wait_eh, ptr @__ksymtab_ata_scsi_cmd_error_handler, ptr @__ksymtab_ata_scsi_port_error_handler, ptr @__ksymtab_ata_std_end_eh, ptr @__ksymtab_ata_std_error_handler, ptr @__ksymtab_ata_std_sched_eh], section "llvm.metadata"
@switch.table.ata_eh_report = private unnamed_addr constant [12 x ptr] [ptr @.str.102, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr null, ptr @.str.166, ptr null, ptr @.str.165, ptr null, ptr @.str.162, ptr @.str.163, ptr @.str.164], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ata_ehi_push_desc(ptr noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = insertvalue [1 x i32] poison, i32 %4, 0
  %6 = getelementptr inbounds %struct.ata_eh_info, ptr %0, i32 0, i32 7
  %7 = getelementptr inbounds %struct.ata_eh_info, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = sub i32 80, %8
  %11 = call i32 @vscnprintf(ptr noundef %9, i32 noundef %10, ptr noundef %1, [1 x i32] %5) #15
  %12 = load i32, ptr %7, align 4
  %13 = add i32 %12, %11
  store i32 %13, ptr %7, align 4
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_ehi_push_desc(ptr noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.ata_eh_info, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @__ata_ehi_push_desc(ptr noundef %0, ptr noundef nonnull @.str)
  br label %8

8:                                                ; preds = %7, %2
  call void @llvm.va_start(ptr nonnull %3)
  %9 = load i32, ptr %3, align 4
  %10 = insertvalue [1 x i32] poison, i32 %9, 0
  %11 = getelementptr inbounds %struct.ata_eh_info, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %4, align 4
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = sub i32 80, %12
  %15 = call i32 @vscnprintf(ptr noundef %13, i32 noundef %14, ptr noundef %1, [1 x i32] %10) #15
  %16 = load i32, ptr %4, align 4
  %17 = add i32 %16, %15
  store i32 %17, ptr %4, align 4
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ata_ehi_clear_desc(ptr nocapture noundef writeonly %0) #4 {
  %2 = getelementptr inbounds %struct.ata_eh_info, ptr %0, i32 0, i32 7
  store i8 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ata_eh_info, ptr %0, i32 0, i32 8
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_port_desc(ptr noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 16
  %6 = and i32 %5, 128
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 250, i32 noundef 9, ptr noundef null) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 8
  %11 = load i32, ptr %10, align 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11
  tail call void (ptr, ptr, ...) @__ata_ehi_push_desc(ptr noundef %14, ptr noundef nonnull @.str.2)
  br label %15

15:                                               ; preds = %13, %9
  call void @llvm.va_start(ptr nonnull %3)
  %16 = load i32, ptr %3, align 4
  %17 = insertvalue [1 x i32] poison, i32 %16, 0
  %18 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 7
  %19 = load i32, ptr %10, align 4
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = sub i32 80, %19
  %22 = call i32 @vscnprintf(ptr noundef %20, i32 noundef %21, ptr noundef %1, [1 x i32] %17) #15
  %23 = load i32, ptr %10, align 4
  %24 = add i32 %23, %22
  store i32 %24, ptr %10, align 4
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_port_pbar_desc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_host, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 480
  %10 = getelementptr [11 x %struct.resource], ptr %9, i32 0, i32 %1
  %11 = load i32, ptr %10, align 8
  %12 = zext i32 %11 to i64
  %13 = icmp slt i32 %2, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = sub i32 1, %11
  %19 = add i32 %18, %16
  %20 = select i1 %17, i32 0, i32 %19
  %21 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %22, 256
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr @.str.3, ptr @.str.5
  %28 = select i1 %24, ptr %27, ptr @.str.4
  %29 = zext i32 %20 to i64
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %3, ptr noundef nonnull %28, i64 noundef %29, i64 noundef %12)
  br label %33

30:                                               ; preds = %4
  %31 = zext i32 %2 to i64
  %32 = add nuw nsw i64 %12, %31
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %3, i64 noundef %32)
  br label %33

33:                                               ; preds = %30, %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_internal_cmd_timeout(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 64
  switch i8 %1, label %24 [
    i8 -20, label %14
    i8 -95, label %14
    i8 47, label %4
    i8 71, label %5
    i8 -8, label %6
    i8 39, label %7
    i8 -7, label %8
    i8 55, label %9
    i8 -17, label %10
    i8 -111, label %11
    i8 -25, label %12
    i8 -22, label %13
  ]

4:                                                ; preds = %2
  br label %14

5:                                                ; preds = %2
  br label %14

6:                                                ; preds = %2
  br label %14

7:                                                ; preds = %2
  br label %14

8:                                                ; preds = %2
  br label %14

9:                                                ; preds = %2
  br label %14

10:                                               ; preds = %2
  br label %14

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %2, %2
  %15 = phi i32 [ 0, %2 ], [ 0, %2 ], [ 1, %4 ], [ 1, %5 ], [ 2, %6 ], [ 2, %7 ], [ 3, %8 ], [ 3, %9 ], [ 4, %10 ], [ 5, %11 ], [ 6, %12 ], [ 6, %13 ]
  %16 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.ata_link, ptr %3, i32 0, i32 12, i32 2, i32 %17, i32 %15
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr [7 x %struct.ata_eh_cmd_timeout_ent], ptr @ata_eh_cmd_timeout_table, i32 0, i32 %15, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i32, ptr %21, i32 %19
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %14, %2
  %25 = phi i32 [ %23, %14 ], [ 5000, %2 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ata_internal_cmd_timed_out(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
  %3 = load ptr, ptr %0, align 64
  switch i8 %1, label %27 [
    i8 -20, label %14
    i8 -95, label %14
    i8 47, label %4
    i8 71, label %5
    i8 -8, label %6
    i8 39, label %7
    i8 -7, label %8
    i8 55, label %9
    i8 -17, label %10
    i8 -111, label %11
    i8 -25, label %12
    i8 -22, label %13
  ]

4:                                                ; preds = %2
  br label %14

5:                                                ; preds = %2
  br label %14

6:                                                ; preds = %2
  br label %14

7:                                                ; preds = %2
  br label %14

8:                                                ; preds = %2
  br label %14

9:                                                ; preds = %2
  br label %14

10:                                               ; preds = %2
  br label %14

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %2, %2
  %15 = phi i32 [ 0, %2 ], [ 0, %2 ], [ 1, %4 ], [ 1, %5 ], [ 2, %6 ], [ 2, %7 ], [ 3, %8 ], [ 3, %9 ], [ 4, %10 ], [ 5, %11 ], [ 6, %12 ], [ 6, %13 ]
  %16 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.ata_link, ptr %3, i32 0, i32 12, i32 2, i32 %17, i32 %15
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr [7 x %struct.ata_eh_cmd_timeout_ent], ptr @ata_eh_cmd_timeout_table, i32 0, i32 %15, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = add i32 %19, 1
  %23 = getelementptr i32, ptr %21, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  store i32 %22, ptr %18, align 4
  br label %27

27:                                               ; preds = %26, %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_ering_map(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8
  br label %5

5:                                                ; preds = %14, %3
  %6 = phi i32 [ %4, %3 ], [ %16, %14 ]
  %7 = getelementptr %struct.ata_ering, ptr %0, i32 0, i32 1, i32 %6, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = getelementptr %struct.ata_ering, ptr %0, i32 0, i32 1, i32 %6
  %12 = tail call i32 %1(ptr noundef %11, ptr noundef %2) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = add i32 %6, 31
  %16 = srem i32 %15, 32
  %17 = load i32, ptr %0, align 8
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %5

19:                                               ; preds = %14, %10, %5
  %20 = phi i32 [ %12, %10 ], [ 0, %14 ], [ 0, %5 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_acquire(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, null
  %9 = load i1, ptr @ata_eh_acquire.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %14, !prof !9

12:                                               ; preds = %1
  store i1 true, ptr @ata_eh_acquire.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 472, i32 noundef 9, ptr noundef null) #15
  %13 = load ptr, ptr %2, align 4
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi ptr [ %13, %12 ], [ %5, %1 ]
  %16 = tail call ptr @llvm.thread.pointer() #15
  %17 = getelementptr inbounds %struct.ata_host, ptr %15, i32 0, i32 10
  store ptr %16, ptr %17, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_release(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @llvm.thread.pointer() #15
  %7 = icmp ne ptr %5, %6
  %8 = load i1, ptr @ata_eh_release.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %13, !prof !9

11:                                               ; preds = %1
  store i1 true, ptr @ata_eh_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 488, i32 noundef 9, ptr noundef null) #15
  %12 = load ptr, ptr %2, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi ptr [ %12, %11 ], [ %3, %1 ]
  %15 = getelementptr inbounds %struct.ata_host, ptr %14, i32 0, i32 10
  store ptr null, ptr %15, align 4
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.ata_host, ptr %16, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %17) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_scsi_error(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 53
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr %2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #15
  %9 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 7
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 7, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %2, ptr %16, align 4
  store ptr %10, ptr %2, align 8
  store ptr %13, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %9, ptr %9, align 4
  store ptr %9, ptr %14, align 4
  br label %18

18:                                               ; preds = %12, %1
  %19 = load ptr, ptr %6, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %8) #15
  call void @ata_scsi_cmd_error_handler(ptr undef, ptr noundef %4, ptr noundef nonnull %2)
  call void @ata_scsi_port_error_handler(ptr undef, ptr noundef %4)
  %20 = load volatile ptr, ptr %2, align 8
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %23, label %22, !prof !10

22:                                               ; preds = %18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 547, i32 noundef 9, ptr noundef null) #15
  br label %23

23:                                               ; preds = %22, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_scsi_cmd_error_handler(ptr nocapture readnone %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  tail call void @ata_sff_flush_pio_task(ptr noundef %1) #15
  %4 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #15
  %7 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %92, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef %1) #15
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %2, align 4
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %90, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 38
  br label %22

22:                                               ; preds = %53, %20
  %23 = phi ptr [ %18, %20 ], [ %26, %53 ]
  %24 = phi i32 [ 0, %20 ], [ %54, %53 ]
  %25 = getelementptr i8, ptr %23, i32 -48
  %26 = load ptr, ptr %23, align 4
  br label %27

27:                                               ; preds = %37, %22
  %28 = phi i32 [ 0, %22 ], [ %38, %37 ]
  %29 = getelementptr %struct.ata_port, ptr %1, i32 0, i32 19, i32 %28, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr %struct.ata_port, ptr %1, i32 0, i32 19, i32 %28, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %25
  br i1 %36, label %40, label %37

37:                                               ; preds = %33, %27
  %38 = add nuw nsw i32 %28, 1
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %49, label %27

40:                                               ; preds = %33
  %41 = and i32 %30, 65536
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = getelementptr %struct.ata_port, ptr %1, i32 0, i32 19, i32 %28, i32 20
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %45, 4
  store i32 %46, ptr %44, align 4
  %47 = or i32 %30, 65536
  store i32 %47, ptr %29, align 4
  %48 = add i32 %24, 1
  br label %53

49:                                               ; preds = %37
  %50 = getelementptr i8, ptr %23, i32 76
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %23, i32 72
  store i32 %51, ptr %52, align 4
  tail call void @scsi_eh_finish_cmd(ptr noundef %25, ptr noundef %21) #15
  br label %53

53:                                               ; preds = %49, %43, %40
  %54 = phi i32 [ %24, %40 ], [ %48, %43 ], [ %24, %49 ]
  %55 = icmp eq ptr %26, %2
  br i1 %55, label %56, label %22

56:                                               ; preds = %53
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %90, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr inbounds %struct.ata_port_operations, ptr %59, i32 0, i32 22
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65, !prof !9

63:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1063, i32 noundef 9, ptr noundef null) #15
  %64 = load ptr, ptr %7, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi ptr [ %64, %63 ], [ %59, %58 ]
  %67 = getelementptr inbounds %struct.ata_port_operations, ptr %66, i32 0, i32 12
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  tail call void %68(ptr noundef %1) #15
  br label %71

71:                                               ; preds = %70, %65
  %72 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 4
  %73 = load i32, ptr %72, align 16
  %74 = or i32 %73, 4
  store i32 %74, ptr %72, align 16
  %75 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_port_freeze, i32 0, i32 1), align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = tail call ptr @llvm.thread.pointer() #15
  %79 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 5
  %82 = getelementptr i32, ptr @__cpu_online_mask, i32 %81
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %80, 31
  %85 = shl nuw i32 1, %84
  %86 = and i32 %85, %83
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %89 = tail call i32 @__traceiter_ata_port_freeze(ptr noundef null, ptr noundef %1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %90

90:                                               ; preds = %88, %77, %71, %56, %17
  %91 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 40
  store i32 5, ptr %91, align 8
  br label %92

92:                                               ; preds = %90, %3
  %93 = load ptr, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %93, i32 noundef %6) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_scsi_port_error_handler(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_port_operations, ptr %4, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %299, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_host, ptr %10, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %11) #15
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.ata_host, ptr %12, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ne ptr %14, null
  %16 = load i1, ptr @ata_eh_acquire.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %21, !prof !9

19:                                               ; preds = %8
  store i1 true, ptr @ata_eh_acquire.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 472, i32 noundef 9, ptr noundef null) #15
  %20 = load ptr, ptr %9, align 4
  br label %21

21:                                               ; preds = %19, %8
  %22 = phi ptr [ %20, %19 ], [ %12, %8 ]
  %23 = tail call ptr @llvm.thread.pointer() #15
  %24 = getelementptr inbounds %struct.ata_host, ptr %22, i32 0, i32 10
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 44
  %26 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 2
  %27 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 4
  %28 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 42
  %29 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 29
  %30 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %31 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 40
  br label %32

32:                                               ; preds = %264, %21
  %33 = tail call i32 @del_timer_sync(ptr noundef %25) #15
  %34 = load ptr, ptr %26, align 8
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #15
  %36 = load i32, ptr %27, align 16
  %37 = and i32 %36, 262144
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %90, label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %28, align 4
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %90, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %26, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %44, i32 noundef %35) #15
  %45 = load i32, ptr %27, align 16
  %46 = and i32 %45, 131072
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49, !prof !9

48:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3956, i32 noundef 9, ptr noundef null) #15
  br label %49

49:                                               ; preds = %48, %43
  %50 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %1, i32 noundef 1) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %78, label %52

52:                                               ; preds = %75, %49
  %53 = phi ptr [ %76, %75 ], [ %50, %49 ]
  %54 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %53, i32 noundef 2) #15
  %55 = icmp eq ptr %54, null
  br i1 %55, label %75, label %56

56:                                               ; preds = %72, %52
  %57 = phi ptr [ %73, %72 ], [ %54, %52 ]
  %58 = getelementptr inbounds %struct.ata_device, ptr %57, i32 0, i32 35
  %59 = load i32, ptr %58, align 8
  br label %60

60:                                               ; preds = %65, %56
  %61 = phi i32 [ %59, %56 ], [ %70, %65 ]
  %62 = getelementptr %struct.ata_device, ptr %57, i32 0, i32 35, i32 1, i32 %61, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = getelementptr %struct.ata_device, ptr %57, i32 0, i32 35, i32 1, i32 %61
  %67 = load i32, ptr %66, align 8
  %68 = or i32 %67, -2147483648
  store i32 %68, ptr %66, align 8
  %69 = add i32 %61, 31
  %70 = srem i32 %69, 32
  %71 = icmp eq i32 %70, %59
  br i1 %71, label %72, label %60

72:                                               ; preds = %65, %60
  %73 = tail call ptr @ata_dev_next(ptr noundef nonnull %57, ptr noundef nonnull %53, i32 noundef 2) #15
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %56

75:                                               ; preds = %72, %52
  %76 = tail call ptr @ata_link_next(ptr noundef nonnull %53, ptr noundef %1, i32 noundef 1) #15
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %52

78:                                               ; preds = %75, %49
  %79 = load ptr, ptr %3, align 4
  %80 = getelementptr inbounds %struct.ata_port_operations, ptr %79, i32 0, i32 33
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = tail call i32 %81(ptr noundef %1) #15
  br label %85

85:                                               ; preds = %83, %78
  %86 = load ptr, ptr %26, align 8
  %87 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %86) #15
  %88 = load i32, ptr %27, align 16
  %89 = and i32 %88, -393217
  store i32 %89, ptr %27, align 16
  br label %90

90:                                               ; preds = %85, %39, %32
  %91 = phi i32 [ %87, %85 ], [ %35, %39 ], [ %35, %32 ]
  %92 = load ptr, ptr %26, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %92, i32 noundef %91) #15
  %93 = load ptr, ptr %26, align 8
  %94 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %93) #15
  %95 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %1, i32 noundef 1) #15
  %96 = icmp eq ptr %95, null
  br i1 %96, label %127, label %97

97:                                               ; preds = %124, %90
  %98 = phi ptr [ %125, %124 ], [ %95, %90 ]
  %99 = getelementptr inbounds %struct.ata_link, ptr %98, i32 0, i32 12
  %100 = getelementptr inbounds %struct.ata_link, ptr %98, i32 0, i32 11
  %101 = getelementptr %struct.ata_link, ptr %98, i32 0, i32 12, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(92) %101, i8 0, i32 92, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(116) %99, ptr noundef align 64 dereferenceable(116) %100, i32 116, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef align 64 dereferenceable(116) %100, i8 0, i32 116, i1 false)
  %102 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %98, i32 noundef 0) #15
  %103 = icmp eq ptr %102, null
  br i1 %103, label %124, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.ata_link, ptr %98, i32 0, i32 12, i32 6
  br label %106

106:                                              ; preds = %121, %104
  %107 = phi ptr [ %102, %104 ], [ %122, %121 ]
  %108 = getelementptr inbounds %struct.ata_device, ptr %107, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.ata_device, ptr %107, i32 0, i32 13
  %111 = load i8, ptr %110, align 2
  %112 = getelementptr %struct.ata_link, ptr %98, i32 0, i32 12, i32 7, i32 %109
  store i8 %111, ptr %112, align 1
  %113 = getelementptr inbounds %struct.ata_device, ptr %107, i32 0, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 12296
  %116 = icmp eq i32 %115, 8
  br i1 %116, label %117, label %121

117:                                              ; preds = %106
  %118 = shl nuw i32 1, %109
  %119 = load i32, ptr %105, align 4
  %120 = or i32 %119, %118
  store i32 %120, ptr %105, align 4
  br label %121

121:                                              ; preds = %117, %106
  %122 = tail call ptr @ata_dev_next(ptr noundef nonnull %107, ptr noundef nonnull %98, i32 noundef 0) #15
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %106

124:                                              ; preds = %121, %97
  %125 = tail call ptr @ata_link_next(ptr noundef nonnull %98, ptr noundef %1, i32 noundef 1) #15
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %97

127:                                              ; preds = %124, %90
  %128 = load i32, ptr %27, align 16
  %129 = and i32 %128, -4
  %130 = or i32 %129, 2
  store i32 %130, ptr %27, align 16
  store ptr null, ptr %29, align 4
  %131 = load ptr, ptr %26, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %131, i32 noundef %94) #15
  %132 = load i32, ptr %27, align 16
  %133 = and i32 %132, 131584
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load ptr, ptr %3, align 4
  %137 = getelementptr inbounds %struct.ata_port_operations, ptr %136, i32 0, i32 22
  %138 = load ptr, ptr %137, align 4
  tail call void %138(ptr noundef %1) #15
  br label %200

139:                                              ; preds = %127
  %140 = and i32 %132, 1536
  %141 = icmp eq i32 %140, 512
  br i1 %141, label %142, label %199

142:                                              ; preds = %139
  %143 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %1, i32 noundef 2) #15
  %144 = icmp eq ptr %143, null
  br i1 %144, label %191, label %145

145:                                              ; preds = %188, %142
  %146 = phi ptr [ %189, %188 ], [ %143, %142 ]
  %147 = getelementptr inbounds %struct.ata_link, ptr %146, i32 0, i32 6
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 4080
  %150 = tail call i32 @sata_scr_write(ptr noundef nonnull %146, i32 noundef 2, i32 noundef %149) #15
  %151 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %146, i32 noundef 2) #15
  %152 = icmp eq ptr %151, null
  br i1 %152, label %188, label %153

153:                                              ; preds = %185, %145
  %154 = phi ptr [ %186, %185 ], [ %151, %145 ]
  %155 = getelementptr inbounds %struct.ata_device, ptr %154, i32 0, i32 9
  %156 = load i32, ptr %155, align 64
  switch i32 %156, label %185 [
    i32 7, label %157
    i32 5, label %157
    i32 3, label %157
    i32 1, label %157
    i32 9, label %157
  ]

157:                                              ; preds = %153, %153, %153, %153, %153
  %158 = load ptr, ptr %154, align 64
  %159 = load ptr, ptr %158, align 64
  %160 = getelementptr inbounds %struct.ata_port, ptr %159, i32 0, i32 5
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.ata_link, ptr %158, i32 0, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.ata_device, ptr %154, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, %163
  %167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %161, i32 noundef %166) #16
  %168 = tail call i32 @ata_down_xfermask_limit(ptr noundef nonnull %154, i32 noundef -2147483644) #15
  %169 = load i32, ptr %155, align 64
  %170 = add i32 %169, 1
  store i32 %170, ptr %155, align 64
  %171 = getelementptr inbounds %struct.ata_device, ptr %154, i32 0, i32 35
  %172 = load i32, ptr %171, align 8
  br label %173

173:                                              ; preds = %178, %157
  %174 = phi i32 [ %172, %157 ], [ %183, %178 ]
  %175 = getelementptr %struct.ata_device, ptr %154, i32 0, i32 35, i32 1, i32 %174, i32 1
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %173
  %179 = getelementptr %struct.ata_device, ptr %154, i32 0, i32 35, i32 1, i32 %174
  %180 = load i32, ptr %179, align 8
  %181 = or i32 %180, -2147483648
  store i32 %181, ptr %179, align 8
  %182 = add i32 %174, 31
  %183 = srem i32 %182, 32
  %184 = icmp eq i32 %183, %172
  br i1 %184, label %185, label %173

185:                                              ; preds = %178, %173, %153
  %186 = tail call ptr @ata_dev_next(ptr noundef nonnull %154, ptr noundef nonnull %146, i32 noundef 2) #15
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %153

188:                                              ; preds = %185, %145
  %189 = tail call ptr @ata_link_next(ptr noundef nonnull %146, ptr noundef %1, i32 noundef 2) #15
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %145

191:                                              ; preds = %188, %142
  %192 = load ptr, ptr %26, align 8
  %193 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %192) #15
  %194 = tail call i32 @ata_port_freeze(ptr noundef %1) #15
  %195 = load i32, ptr %27, align 16
  %196 = and i32 %195, -1026
  %197 = or i32 %196, 1024
  store i32 %197, ptr %27, align 16
  %198 = load ptr, ptr %26, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %198, i32 noundef %193) #15
  br label %199

199:                                              ; preds = %191, %139
  tail call void @ata_eh_finish(ptr noundef %1)
  br label %200

200:                                              ; preds = %199, %135
  %201 = load ptr, ptr %26, align 8
  %202 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %201) #15
  %203 = load i32, ptr %27, align 16
  %204 = and i32 %203, 262144
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %252, label %206

206:                                              ; preds = %200
  %207 = load i32, ptr %28, align 4
  %208 = and i32 %207, 16
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %252

210:                                              ; preds = %206
  %211 = load ptr, ptr %26, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %211, i32 noundef %202) #15
  %212 = load i32, ptr %27, align 16
  %213 = and i32 %212, 131072
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %216, label %215, !prof !10

215:                                              ; preds = %210
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3891, i32 noundef 9, ptr noundef null) #15
  br label %216

216:                                              ; preds = %215, %210
  %217 = load i32, ptr %28, align 4
  %218 = and i32 %217, 1024
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %227, label %220

220:                                              ; preds = %216
  %221 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %30, i32 noundef 0) #15
  %222 = icmp eq ptr %221, null
  br i1 %222, label %227, label %223

223:                                              ; preds = %223, %220
  %224 = phi ptr [ %225, %223 ], [ %221, %220 ]
  %225 = tail call ptr @ata_dev_next(ptr noundef nonnull %224, ptr noundef %30, i32 noundef 0) #15
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %223

227:                                              ; preds = %223, %220, %216
  tail call void @ata_eh_freeze_port(ptr noundef %1) #15
  %228 = load ptr, ptr %3, align 4
  %229 = getelementptr inbounds %struct.ata_port_operations, ptr %228, i32 0, i32 32
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %237, label %232

232:                                              ; preds = %227
  %233 = load i32, ptr %28, align 4
  %234 = insertvalue [1 x i32] undef, i32 %233, 0
  %235 = tail call i32 %230(ptr noundef %1, [1 x i32] %234) #15
  %236 = icmp eq i32 %235, 0
  br label %237

237:                                              ; preds = %232, %227
  %238 = phi i1 [ %236, %232 ], [ true, %227 ]
  %239 = load ptr, ptr %26, align 8
  %240 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %239) #15
  %241 = load i32, ptr %27, align 16
  %242 = and i32 %241, -262145
  store i32 %242, ptr %27, align 16
  br i1 %238, label %243, label %245

243:                                              ; preds = %237
  %244 = or i32 %242, 131072
  store i32 %244, ptr %27, align 16
  br label %252

245:                                              ; preds = %237
  %246 = and i32 %241, 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr %3, align 4
  %250 = getelementptr inbounds %struct.ata_port_operations, ptr %249, i32 0, i32 25
  %251 = load ptr, ptr %250, align 4
  tail call void %251(ptr noundef %1) #15
  br label %252

252:                                              ; preds = %248, %245, %243, %206, %200
  %253 = phi i32 [ %202, %206 ], [ %202, %200 ], [ %240, %245 ], [ %240, %248 ], [ %240, %243 ]
  %254 = load ptr, ptr %26, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %254, i32 noundef %253) #15
  %255 = load ptr, ptr %26, align 8
  %256 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %255) #15
  %257 = load i32, ptr %27, align 16
  %258 = and i32 %257, 1
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %272, label %260

260:                                              ; preds = %252
  %261 = load i32, ptr %31, align 8
  %262 = add i32 %261, -1
  store i32 %262, ptr %31, align 8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %260
  %265 = load ptr, ptr %26, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %265, i32 noundef %256) #15
  br label %32

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %268 = load i32, ptr %267, align 4
  %269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %268, i32 noundef 5) #16
  %270 = load i32, ptr %27, align 16
  %271 = and i32 %270, -2
  store i32 %271, ptr %27, align 16
  br label %272

272:                                              ; preds = %266, %252
  %273 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %1, i32 noundef 1) #15
  %274 = icmp eq ptr %273, null
  br i1 %274, label %280, label %275

275:                                              ; preds = %275, %272
  %276 = phi ptr [ %278, %275 ], [ %273, %272 ]
  %277 = getelementptr inbounds %struct.ata_link, ptr %276, i32 0, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 64 dereferenceable(116) %277, i8 0, i32 116, i1 false)
  %278 = tail call ptr @ata_link_next(ptr noundef nonnull %276, ptr noundef %1, i32 noundef 1) #15
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %275

280:                                              ; preds = %275, %272
  %281 = load ptr, ptr %3, align 4
  %282 = getelementptr inbounds %struct.ata_port_operations, ptr %281, i32 0, i32 26
  %283 = load ptr, ptr %282, align 4
  tail call void %283(ptr noundef %1) #15
  %284 = load ptr, ptr %26, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %284, i32 noundef %256) #15
  %285 = load ptr, ptr %9, align 4
  %286 = getelementptr inbounds %struct.ata_host, ptr %285, i32 0, i32 10
  %287 = load ptr, ptr %286, align 4
  %288 = icmp ne ptr %287, %23
  %289 = load i1, ptr @ata_eh_release.__already_done, align 1
  %290 = xor i1 %289, true
  %291 = select i1 %288, i1 %290, i1 false
  br i1 %291, label %292, label %294, !prof !9

292:                                              ; preds = %280
  store i1 true, ptr @ata_eh_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 488, i32 noundef 9, ptr noundef null) #15
  %293 = load ptr, ptr %9, align 4
  br label %294

294:                                              ; preds = %292, %280
  %295 = phi ptr [ %293, %292 ], [ %285, %280 ]
  %296 = getelementptr inbounds %struct.ata_host, ptr %295, i32 0, i32 10
  store ptr null, ptr %296, align 4
  %297 = load ptr, ptr %9, align 4
  %298 = getelementptr inbounds %struct.ata_host, ptr %297, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %298) #15
  br label %312

299:                                              ; preds = %2
  %300 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25, i32 3
  %301 = load i32, ptr %300, align 32
  %302 = icmp ugt i32 %301, 32
  %303 = getelementptr %struct.ata_port, ptr %1, i32 0, i32 19, i32 %301
  %304 = icmp eq ptr %303, null
  %305 = or i1 %302, %304
  br i1 %305, label %306, label %308, !prof !9

306:                                              ; preds = %299
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 742, i32 noundef 9, ptr noundef null) #15
  %307 = load ptr, ptr %3, align 4
  br label %308

308:                                              ; preds = %306, %299
  %309 = phi ptr [ %4, %299 ], [ %307, %306 ]
  %310 = getelementptr inbounds %struct.ata_port_operations, ptr %309, i32 0, i32 59
  %311 = load ptr, ptr %310, align 4
  tail call void %311(ptr noundef %1) #15
  br label %312

312:                                              ; preds = %308, %294
  %313 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 38
  tail call void @scsi_eh_flush_done_q(ptr noundef %313) #15
  %314 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 2
  %315 = load ptr, ptr %314, align 8
  %316 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %315) #15
  %317 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 4
  %318 = load i32, ptr %317, align 16
  %319 = and i32 %318, 16
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %323, label %321

321:                                              ; preds = %312
  %322 = and i32 %318, -17
  store i32 %322, ptr %317, align 16
  br label %336

323:                                              ; preds = %312
  %324 = and i32 %318, 64
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %336, label %326

326:                                              ; preds = %323
  %327 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %328 = load i32, ptr %327, align 4
  %329 = and i32 %328, 16777216
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 35
  %333 = load ptr, ptr @system_wq, align 4
  %334 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %333, ptr noundef %332, i32 noundef 0) #15
  %335 = load i32, ptr %317, align 16
  br label %336

336:                                              ; preds = %331, %326, %323, %321
  %337 = phi i32 [ %318, %323 ], [ %318, %326 ], [ %335, %331 ], [ %322, %321 ]
  %338 = and i32 %337, 8
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %345, label %340

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %342 = load i32, ptr %341, align 4
  %343 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %342) #16
  %344 = load i32, ptr %317, align 16
  br label %345

345:                                              ; preds = %340, %336
  %346 = phi i32 [ %344, %340 ], [ %337, %336 ]
  %347 = and i32 %346, -75
  store i32 %347, ptr %317, align 16
  %348 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 39
  tail call void @__wake_up(ptr noundef %348, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  %349 = load ptr, ptr %314, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %349, i32 noundef %316) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_flush_pio_task(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_finish_cmd(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_link_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_finish(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %60, %1
  %3 = phi i32 [ 0, %1 ], [ %61, %60 ]
  %4 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3
  %5 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 65536
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %60, label %9

9:                                                ; preds = %2
  %10 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = and i32 %6, 128
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @ata_eh_qc_retry(ptr noundef %4)
  br label %60

17:                                               ; preds = %13
  %18 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.scsi_cmnd, ptr %19, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.scsi_cmnd, ptr %19, i32 0, i32 8
  store i32 %21, ptr %22, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr inbounds %struct.ata_port, ptr %23, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #15
  %28 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 3
  store ptr @ata_eh_scsidone, ptr %28, align 4
  tail call void @__ata_qc_complete(ptr noundef %4) #15
  %29 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, 33
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1164, i32 noundef 9, ptr noundef null) #15
  br label %33

33:                                               ; preds = %32, %17
  %34 = load ptr, ptr %25, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %27) #15
  %35 = getelementptr inbounds %struct.ata_port, ptr %23, i32 0, i32 38
  tail call void @scsi_eh_finish_cmd(ptr noundef %24, ptr noundef %35) #15
  br label %60

36:                                               ; preds = %9
  %37 = and i32 %6, 131072
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %36
  %40 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.scsi_cmnd, ptr %41, i32 0, i32 9
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.scsi_cmnd, ptr %41, i32 0, i32 8
  store i32 %43, ptr %44, align 4
  %45 = load ptr, ptr %4, align 4
  %46 = load ptr, ptr %40, align 4
  %47 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #15
  %50 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 3
  store ptr @ata_eh_scsidone, ptr %50, align 4
  tail call void @__ata_qc_complete(ptr noundef %4) #15
  %51 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %52, 33
  br i1 %53, label %54, label %55, !prof !9

54:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1164, i32 noundef 9, ptr noundef null) #15
  br label %55

55:                                               ; preds = %54, %39
  %56 = load ptr, ptr %47, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %49) #15
  %57 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 38
  tail call void @scsi_eh_finish_cmd(ptr noundef %46, ptr noundef %57) #15
  br label %60

58:                                               ; preds = %36
  %59 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 21
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %59, i8 0, i32 24, i1 false)
  tail call void @ata_eh_qc_retry(ptr noundef %4)
  br label %60

60:                                               ; preds = %58, %55, %33, %16, %2
  %61 = add nuw nsw i32 %3, 1
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %63, label %2

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 22
  %65 = load i32, ptr %64, align 32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67, !prof !10

67:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3806, i32 noundef 9, ptr noundef null) #15
  br label %68

68:                                               ; preds = %67, %63
  store i32 0, ptr %64, align 32
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_flush_done_q(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_port_wait_eh(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %4 = tail call ptr @llvm.thread.pointer() #15
  store i32 0, ptr %2, align 4
  store ptr %4, ptr %3, align 4
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %5, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  store ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %10 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 39
  br label %11

11:                                               ; preds = %38, %1
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #15
  %14 = load i32, ptr %9, align 16
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %17, %11
  %18 = phi i32 [ %21, %17 ], [ %13, %11 ]
  call void @prepare_to_wait(ptr noundef %10, ptr noundef nonnull %2, i32 noundef 2) #15
  %19 = load ptr, ptr %8, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %18) #15
  call void @schedule() #15
  %20 = load ptr, ptr %8, align 8
  %21 = call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #15
  %22 = load i32, ptr %9, align 16
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %17

25:                                               ; preds = %17, %11
  %26 = phi i32 [ %13, %11 ], [ %21, %17 ]
  call void @finish_wait(ptr noundef %10, ptr noundef nonnull %2) #15
  %27 = load ptr, ptr %8, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %26) #15
  %28 = load ptr, ptr %0, align 64
  %29 = getelementptr inbounds %struct.Scsi_Host, ptr %28, i32 0, i32 48
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -5
  %32 = icmp ult i32 %31, 3
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.Scsi_Host, ptr %28, i32 0, i32 36
  %35 = load i16, ptr %34, align 8
  %36 = and i16 %35, 16
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %25
  call void @ata_msleep(ptr noundef %0, i32 noundef 10) #15
  br label %11

39:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_fastdrain_timerfn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -10820
  %3 = getelementptr i8, ptr %0, i32 -10812
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr i8, ptr %0, i32 -10816
  br label %7

7:                                                ; preds = %23, %1
  %8 = phi i32 [ 0, %1 ], [ %27, %23 ]
  %9 = phi i32 [ 0, %1 ], [ %28, %23 ]
  %10 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12, !prof !9

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.ata_port_operations, ptr %13, i32 0, i32 22
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %9, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 65537
  %21 = icmp eq i32 %20, 1
  %22 = select i1 %21, ptr %10, ptr null
  br label %23

23:                                               ; preds = %17, %12, %7
  %24 = phi ptr [ %10, %12 ], [ null, %7 ], [ %22, %17 ]
  %25 = icmp ne ptr %24, null
  %26 = zext i1 %25 to i32
  %27 = add i32 %8, %26
  %28 = add nuw nsw i32 %9, 1
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %7

30:                                               ; preds = %23
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %63, label %32

32:                                               ; preds = %30
  %33 = getelementptr i8, ptr %0, i32 20
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %27, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %54, %32
  %37 = phi i32 [ %55, %54 ], [ 0, %32 ]
  %38 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %37
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %40, !prof !9

40:                                               ; preds = %36
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr inbounds %struct.ata_port_operations, ptr %41, i32 0, i32 22
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %37, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 65537
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %45, %40
  %51 = getelementptr inbounds %struct.ata_queued_cmd, ptr %38, i32 0, i32 20
  %52 = load i32, ptr %51, align 4
  %53 = or i32 %52, 4
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %50, %45, %36
  %55 = add nuw nsw i32 %37, 1
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %57, label %36

57:                                               ; preds = %54
  %58 = tail call i32 @ata_port_freeze(ptr noundef %2)
  br label %63

59:                                               ; preds = %32
  store i32 %27, ptr %33, align 8
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = add i32 %60, 300
  %62 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 1
  store i32 %61, ptr %62, align 4
  tail call void @add_timer(ptr noundef %0) #15
  br label %63

63:                                               ; preds = %59, %57, %30
  %64 = load ptr, ptr %3, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_port_freeze(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1091, i32 noundef 9, ptr noundef null) #15
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14, !prof !9

12:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1063, i32 noundef 9, ptr noundef null) #15
  %13 = load ptr, ptr %2, align 4
  br label %14

14:                                               ; preds = %12, %7, %1
  %15 = phi ptr [ %13, %12 ], [ %8, %7 ], [ %3, %1 ]
  %16 = getelementptr inbounds %struct.ata_port_operations, ptr %15, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void %17(ptr noundef %0) #15
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 16
  %23 = or i32 %22, 4
  store i32 %23, ptr %21, align 16
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_port_freeze, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = tail call ptr @llvm.thread.pointer() #15
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %38 = tail call i32 @__traceiter_ata_port_freeze(ptr noundef null, ptr noundef %0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %39

39:                                               ; preds = %37, %26, %20
  %40 = tail call fastcc i32 @ata_do_link_abort(ptr noundef %0, ptr noundef null) #15
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_qc_schedule_eh(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_port_operations, ptr %4, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 910, i32 noundef 9, ptr noundef null) #15
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 65536
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 4
  %14 = load i32, ptr %13, align 16
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %9
  %18 = or i32 %14, 1
  store i32 %18, ptr %13, align 16
  br label %19

19:                                               ; preds = %35, %17
  %20 = phi i32 [ 0, %17 ], [ %39, %35 ]
  %21 = phi i32 [ 0, %17 ], [ %40, %35 ]
  %22 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24, !prof !9

24:                                               ; preds = %19
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.ata_port_operations, ptr %25, i32 0, i32 22
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %21, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 65537
  %33 = icmp eq i32 %32, 1
  %34 = select i1 %33, ptr %22, ptr null
  br label %35

35:                                               ; preds = %29, %24, %19
  %36 = phi ptr [ %22, %24 ], [ null, %19 ], [ %34, %29 ]
  %37 = icmp ne ptr %36, null
  %38 = zext i1 %37 to i32
  %39 = add i32 %20, %38
  %40 = add nuw nsw i32 %21, 1
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %42, label %19

42:                                               ; preds = %35
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 45
  store i32 %39, ptr %45, align 8
  %46 = load volatile i32, ptr @jiffies, align 64
  %47 = add i32 %46, 300
  %48 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 44
  %49 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 44, i32 1
  store i32 %47, ptr %49, align 4
  tail call void @add_timer(ptr noundef %48) #15
  br label %50

50:                                               ; preds = %44, %42, %9
  %51 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 -168
  tail call void @blk_abort_request(ptr noundef %53) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_abort_request(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_std_sched_eh(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 932, i32 noundef 9, ptr noundef null) #15
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 16
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %8
  %14 = and i32 %10, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = or i32 %10, 1
  store i32 %17, ptr %9, align 16
  br label %18

18:                                               ; preds = %34, %16
  %19 = phi i32 [ 0, %16 ], [ %38, %34 ]
  %20 = phi i32 [ 0, %16 ], [ %39, %34 ]
  %21 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23, !prof !9

23:                                               ; preds = %18
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.ata_port_operations, ptr %24, i32 0, i32 22
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %20, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 65537
  %32 = icmp eq i32 %31, 1
  %33 = select i1 %32, ptr %21, ptr null
  br label %34

34:                                               ; preds = %28, %23, %18
  %35 = phi ptr [ %21, %23 ], [ null, %18 ], [ %33, %28 ]
  %36 = icmp ne ptr %35, null
  %37 = zext i1 %36 to i32
  %38 = add i32 %19, %37
  %39 = add nuw nsw i32 %20, 1
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %41, label %18

41:                                               ; preds = %34
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 45
  store i32 %38, ptr %44, align 8
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = add i32 %45, 300
  %47 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 44
  %48 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 44, i32 1
  store i32 %46, ptr %48, align 4
  tail call void @add_timer(ptr noundef %47) #15
  br label %49

49:                                               ; preds = %43, %41, %13
  %50 = load ptr, ptr %0, align 64
  tail call void @scsi_schedule_eh(ptr noundef %50) #15
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_std_sched_eh, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = tail call ptr @llvm.thread.pointer() #15
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 5
  %58 = getelementptr i32, ptr @__cpu_online_mask, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %56, 31
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  %65 = tail call i32 @__traceiter_ata_std_sched_eh(ptr noundef null, ptr noundef %0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  br label %66

66:                                               ; preds = %64, %53, %49, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_schedule_eh(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ata_std_end_eh(ptr nocapture noundef readonly %0) #7 {
  %2 = load ptr, ptr %0, align 64
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 16
  store i32 0, ptr %3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_port_schedule_eh(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_link_abort(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 64
  %3 = tail call fastcc i32 @ata_do_link_abort(ptr noundef %2, ptr noundef %0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ata_do_link_abort(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_port_operations, ptr %4, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 987, i32 noundef 9, ptr noundef null) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 16
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = or i32 %11, 1
  store i32 %15, ptr %10, align 16
  br label %16

16:                                               ; preds = %14, %9
  %17 = icmp eq ptr %1, null
  br label %18

18:                                               ; preds = %44, %16
  %19 = phi i32 [ 0, %16 ], [ %46, %44 ]
  %20 = phi i32 [ 0, %16 ], [ %45, %44 ]
  %21 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23, !prof !9

23:                                               ; preds = %18
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.ata_port_operations, ptr %24, i32 0, i32 22
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %19, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 65537
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %44

33:                                               ; preds = %28, %23
  br i1 %17, label %39, label %34

34:                                               ; preds = %33
  %35 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %19, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 64
  %38 = icmp eq ptr %37, %1
  br i1 %38, label %39, label %44

39:                                               ; preds = %34, %33
  %40 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %19, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, 65536
  store i32 %42, ptr %40, align 4
  tail call void @ata_qc_complete(ptr noundef nonnull %21) #15
  %43 = add i32 %20, 1
  br label %44

44:                                               ; preds = %39, %34, %28, %18
  %45 = phi i32 [ %43, %39 ], [ %20, %34 ], [ %20, %18 ], [ %20, %28 ]
  %46 = add nuw nsw i32 %19, 1
  %47 = icmp eq i32 %46, 33
  br i1 %47, label %48, label %18

48:                                               ; preds = %44
  %49 = icmp eq i32 %45, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr inbounds %struct.ata_port_operations, ptr %51, i32 0, i32 25
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %0) #15
  br label %54

54:                                               ; preds = %50, %48
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_port_abort(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @ata_do_link_abort(ptr noundef %0, ptr noundef null)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_freeze_port(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #15
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.ata_port_operations, ptr %11, i32 0, i32 22
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17, !prof !9

15:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1063, i32 noundef 9, ptr noundef null) #15
  %16 = load ptr, ptr %2, align 4
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi ptr [ %16, %15 ], [ %11, %7 ]
  %19 = getelementptr inbounds %struct.ata_port_operations, ptr %18, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void %20(ptr noundef %0) #15
  br label %23

23:                                               ; preds = %22, %17
  %24 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 16
  %26 = or i32 %25, 4
  store i32 %26, ptr %24, align 16
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_port_freeze, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = tail call ptr @llvm.thread.pointer() #15
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %41 = tail call i32 @__traceiter_ata_port_freeze(ptr noundef null, ptr noundef %0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %42

42:                                               ; preds = %40, %29, %23
  %43 = load ptr, ptr %8, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %10) #15
  br label %44

44:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_thaw_port(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #15
  %11 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 16
  %13 = and i32 %12, -5
  store i32 %13, ptr %11, align 16
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.ata_port_operations, ptr %14, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %7
  tail call void %16(ptr noundef %0) #15
  br label %19

19:                                               ; preds = %18, %7
  %20 = load ptr, ptr %8, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %10) #15
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_port_thaw, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = tail call ptr @llvm.thread.pointer() #15
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %35 = tail call i32 @__traceiter_ata_port_thaw(ptr noundef null, ptr noundef %0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br label %36

36:                                               ; preds = %34, %23, %19, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_qc_complete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 8
  store i32 %5, ptr %6, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #15
  %12 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 3
  store ptr @ata_eh_scsidone, ptr %12, align 4
  tail call void @__ata_qc_complete(ptr noundef %0) #15
  %13 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 33
  br i1 %15, label %16, label %17, !prof !9

16:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1164, i32 noundef 9, ptr noundef null) #15
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr %9, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %11) #15
  %19 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 38
  tail call void @scsi_eh_finish_cmd(ptr noundef %8, ptr noundef %19) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_qc_retry(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %5, %1
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #15
  %18 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 3
  store ptr @ata_eh_scsidone, ptr %18, align 4
  tail call void @__ata_qc_complete(ptr noundef %0) #15
  %19 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, 33
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1164, i32 noundef 9, ptr noundef null) #15
  br label %23

23:                                               ; preds = %22, %11
  %24 = load ptr, ptr %15, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %17) #15
  %25 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 38
  tail call void @scsi_eh_finish_cmd(ptr noundef %14, ptr noundef %25) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_dev_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 64
  switch i32 %3, label %32 [
    i32 7, label %4
    i32 5, label %4
    i32 3, label %4
    i32 1, label %4
    i32 9, label %4
  ]

4:                                                ; preds = %1, %1, %1, %1, %1
  %5 = load ptr, ptr %0, align 64
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_link, ptr %5, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %8, i32 noundef %13) #16
  %15 = tail call i32 @ata_down_xfermask_limit(ptr noundef %0, i32 noundef -2147483644) #15
  %16 = load i32, ptr %2, align 64
  %17 = add i32 %16, 1
  store i32 %17, ptr %2, align 64
  %18 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 35
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %25, %4
  %21 = phi i32 [ %19, %4 ], [ %30, %25 ]
  %22 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 35, i32 1, i32 %21, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 35, i32 1, i32 %21
  %27 = load i32, ptr %26, align 8
  %28 = or i32 %27, -2147483648
  store i32 %28, ptr %26, align 8
  %29 = add i32 %21, 31
  %30 = srem i32 %29, 32
  %31 = icmp eq i32 %30, %19
  br i1 %31, label %32, label %20

32:                                               ; preds = %25, %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_down_xfermask_limit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_detach_dev(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 64
  switch i32 %5, label %32 [
    i32 7, label %6
    i32 5, label %6
    i32 3, label %6
    i32 1, label %6
    i32 9, label %6
  ]

6:                                                ; preds = %1, %1, %1, %1, %1
  %7 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %8, i32 noundef %13) #16
  %15 = tail call i32 @ata_down_xfermask_limit(ptr noundef %0, i32 noundef -2147483644) #15
  %16 = load i32, ptr %4, align 64
  %17 = add i32 %16, 1
  store i32 %17, ptr %4, align 64
  %18 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 35
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %25, %6
  %21 = phi i32 [ %19, %6 ], [ %30, %25 ]
  %22 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 35, i32 1, i32 %21, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 35, i32 1, i32 %21
  %27 = load i32, ptr %26, align 8
  %28 = or i32 %27, -2147483648
  store i32 %28, ptr %26, align 8
  %29 = add i32 %21, 31
  %30 = srem i32 %29, 32
  %31 = icmp eq i32 %30, %19
  br i1 %31, label %32, label %20

32:                                               ; preds = %25, %20, %1
  %33 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #15
  %36 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -16777217
  store i32 %38, ptr %36, align 4
  %39 = tail call i32 @ata_scsi_offline_dev(ptr noundef %0) #15
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = load i32, ptr %36, align 4
  %43 = or i32 %42, 33554432
  store i32 %43, ptr %36, align 4
  %44 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 4
  %45 = load i32, ptr %44, align 16
  %46 = or i32 %45, 64
  store i32 %46, ptr %44, align 16
  br label %47

47:                                               ; preds = %41, %32
  %48 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 12
  %49 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 11
  tail call fastcc void @ata_eh_clear_action(ptr noundef %2, ptr noundef %0, ptr noundef %49, i32 noundef 33)
  tail call fastcc void @ata_eh_clear_action(ptr noundef %2, ptr noundef %0, ptr noundef %48, i32 noundef 33)
  %50 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.ata_link, ptr %2, i32 0, i32 12, i32 7, i32 %51
  store i8 0, ptr %52, align 1
  %53 = load i32, ptr %50, align 4
  %54 = shl nuw i32 1, %53
  %55 = xor i32 %54, -1
  %56 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 12, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, %55
  store i32 %58, ptr %56, align 4
  %59 = load ptr, ptr %33, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %35) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_offline_dev(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_eh_clear_action(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = xor i32 %3, -1
  %8 = getelementptr inbounds %struct.ata_eh_info, ptr %2, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  store i32 %10, ptr %8, align 4
  %11 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %58, label %13

13:                                               ; preds = %13, %6
  %14 = phi ptr [ %20, %13 ], [ %11, %6 ]
  %15 = getelementptr inbounds %struct.ata_device, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.ata_eh_info, ptr %2, i32 0, i32 4, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %7
  store i32 %19, ptr %17, align 4
  %20 = tail call ptr @ata_dev_next(ptr noundef nonnull %14, ptr noundef %0, i32 noundef 2) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %58, label %13

22:                                               ; preds = %4
  %23 = and i32 %3, 33
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26, !prof !9

25:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 443, i32 noundef 9, ptr noundef null) #15
  br label %26

26:                                               ; preds = %25, %22
  %27 = getelementptr inbounds %struct.ata_eh_info, ptr %2, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, %3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = xor i32 %3, -1
  br label %51

33:                                               ; preds = %26
  %34 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #15
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %36, %33
  %37 = phi ptr [ %45, %36 ], [ %34, %33 ]
  %38 = load i32, ptr %27, align 4
  %39 = and i32 %38, %3
  %40 = getelementptr inbounds %struct.ata_device, ptr %37, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.ata_eh_info, ptr %2, i32 0, i32 4, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, ptr %42, align 4
  %45 = tail call ptr @ata_dev_next(ptr noundef nonnull %37, ptr noundef %0, i32 noundef 2) #15
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %36

47:                                               ; preds = %36, %33
  %48 = xor i32 %3, -1
  %49 = load i32, ptr %27, align 4
  %50 = and i32 %49, %48
  store i32 %50, ptr %27, align 4
  br label %51

51:                                               ; preds = %47, %31
  %52 = phi i32 [ %32, %31 ], [ %48, %47 ]
  %53 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.ata_eh_info, ptr %2, i32 0, i32 4, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, %52
  store i32 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %51, %13, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_about_to_do(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 11
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ 0, %3 ]
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_about_to_do, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  %26 = tail call i32 @__traceiter_ata_eh_about_to_do(ptr noundef null, ptr noundef %0, i32 noundef %11, i32 noundef %2) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  br label %27

27:                                               ; preds = %25, %14, %10
  %28 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #15
  tail call fastcc void @ata_eh_clear_action(ptr noundef %0, ptr noundef %1, ptr noundef %5, i32 noundef %2)
  %31 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 26
  %37 = load ptr, ptr %36, align 64
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 4
  %41 = load i32, ptr %40, align 16
  %42 = or i32 %41, 8
  store i32 %42, ptr %40, align 16
  br label %43

43:                                               ; preds = %39, %35, %27
  %44 = load ptr, ptr %28, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %44, i32 noundef %30) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_done(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ %7, %5 ], [ 0, %3 ]
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_done, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #15
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %24 = tail call i32 @__traceiter_ata_eh_done(ptr noundef null, ptr noundef %0, i32 noundef %9, i32 noundef %2) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  br label %25

25:                                               ; preds = %23, %12, %8
  %26 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12
  tail call fastcc void @ata_eh_clear_action(ptr noundef %0, ptr noundef %1, ptr noundef %26, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atapi_eh_tur(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i8], align 1
  %4 = alloca %struct.ata_taskfile, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %6 = load ptr, ptr %0, align 64
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 9
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 2
  store i8 %9, ptr %10, align 1
  %11 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i8 -96, i8 -80
  %15 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 13
  store i8 %14, ptr %15, align 4
  store i32 6, ptr %4, align 4
  %16 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 14
  store i8 -96, ptr %16, align 1
  %17 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 1
  store i8 8, ptr %17, align 4
  %18 = call i32 @ata_exec_internal(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #15
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 8
  %22 = load i8, ptr %21, align 1
  %23 = lshr i8 %22, 4
  store i8 %23, ptr %1, align 1
  br label %24

24:                                               ; preds = %20, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_exec_internal(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atapi_eh_request_sense(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [16 x i8], align 1
  %5 = alloca %struct.ata_taskfile, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) @__const.atapi_eh_request_sense.cdb, i32 16, i1 false)
  %6 = load ptr, ptr %0, align 64
  %7 = load ptr, ptr %6, align 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %8 = getelementptr inbounds i8, ptr %1, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %8, i8 0, i32 95, i1 false)
  store i8 112, ptr %1, align 1
  %9 = getelementptr i8, ptr %1, i32 2
  store i8 %2, ptr %9, align 1
  %10 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 20, i1 false) #15
  %11 = load ptr, ptr %0, align 64
  %12 = load ptr, ptr %11, align 64
  %13 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 9
  %14 = load i8, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 2
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i8 -96, i8 -80
  %20 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 13
  store i8 %19, ptr %20, align 4
  store i32 6, ptr %5, align 4
  %21 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 14
  store i8 -96, ptr %21, align 1
  %22 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 8
  store i8 1, ptr %27, align 1
  br label %30

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 11
  store i8 96, ptr %29, align 2
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i8 [ 9, %28 ], [ 10, %26 ]
  %32 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 1
  store i8 %31, ptr %32, align 4
  %33 = call i32 @ata_exec_internal(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 2, ptr noundef %1, i32 noundef 96, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_autopsy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call fastcc void @ata_eh_link_autopsy(ptr noundef nonnull %5)
  %6 = tail call ptr @ata_link_next(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 0) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4

8:                                                ; preds = %4, %1
  %9 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 26
  %10 = load ptr, ptr %9, align 64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %66, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 12
  %16 = getelementptr inbounds %struct.ata_link, ptr %10, i32 0, i32 12, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %15
  store i32 %18, ptr %16, align 4
  %19 = load ptr, ptr %9, align 64
  tail call fastcc void @ata_eh_link_autopsy(ptr noundef %19)
  %20 = load ptr, ptr %9, align 64
  tail call void @ata_eh_about_to_do(ptr noundef %20, ptr noundef null, i32 noundef 15)
  %21 = getelementptr inbounds %struct.ata_link, ptr %10, i32 0, i32 12, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 12, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, ptr %23, align 4
  %26 = getelementptr %struct.ata_link, ptr %10, i32 0, i32 12, i32 0, i32 4, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 25, i32 12, i32 0, i32 4, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, ptr %28, align 4
  %31 = load i32, ptr %16, align 4
  %32 = load i32, ptr %13, align 4
  %33 = or i32 %32, %31
  store i32 %33, ptr %13, align 4
  %34 = load ptr, ptr %9, align 64
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_done, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %12
  %38 = tail call ptr @llvm.thread.pointer() #15
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %49 = tail call i32 @__traceiter_ata_eh_done(ptr noundef null, ptr noundef %34, i32 noundef 0, i32 noundef 15) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  br label %50

50:                                               ; preds = %48, %37, %12
  %51 = getelementptr inbounds %struct.ata_link, ptr %34, i32 0, i32 12
  %52 = getelementptr inbounds %struct.ata_link, ptr %34, i32 0, i32 12, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, -16
  store i32 %54, ptr %52, align 4
  %55 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %34, i32 noundef 2) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %57, %50
  %58 = phi ptr [ %64, %57 ], [ %55, %50 ]
  %59 = getelementptr inbounds %struct.ata_device, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.ata_eh_info, ptr %51, i32 0, i32 4, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, -16
  store i32 %63, ptr %61, align 4
  %64 = tail call ptr @ata_dev_next(ptr noundef nonnull %58, ptr noundef %34, i32 noundef 2) #15
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %57

66:                                               ; preds = %57, %50, %8
  %67 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 27
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  tail call fastcc void @ata_eh_link_autopsy(ptr noundef %71)
  br label %72

72:                                               ; preds = %70, %66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_eh_link_autopsy(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.speed_down_verdict_arg, align 8
  %3 = alloca [16 x i8], align 1
  %4 = alloca %struct.ata_taskfile, align 4
  %5 = alloca %struct.ata_taskfile, align 4
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 64
  %8 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %747

13:                                               ; preds = %1
  %14 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %6) #15
  switch i32 %14, label %77 [
    i32 0, label %15
    i32 -95, label %87
  ]

15:                                               ; preds = %13
  %16 = load i32, ptr %6, align 4
  %17 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %37, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %0, align 64
  %30 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 25
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 26
  %34 = load ptr, ptr %33, align 64
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %32, %23, %15
  %38 = phi i32 [ 0, %15 ], [ 67174400, %23 ], [ 67174400, %36 ], [ 65536, %32 ]
  %39 = and i32 %38, %19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  br label %58

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, 3
  store i32 %49, ptr %47, align 4
  %50 = load i32, ptr %9, align 4
  %51 = or i32 %50, 1
  store i32 %51, ptr %9, align 4
  %52 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %53, 14
  %55 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, 16
  br label %58

58:                                               ; preds = %46, %41
  %59 = phi i32 [ %45, %41 ], [ %54, %46 ]
  %60 = phi i32 [ %43, %41 ], [ %57, %46 ]
  %61 = and i32 %19, 3840
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 0, i32 6
  %64 = lshr i32 %19, 9
  %65 = and i32 %64, 2
  %66 = and i32 %19, 768
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 0, i32 16
  %69 = lshr i32 %19, 5
  %70 = and i32 %69, 64
  %71 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 2
  %72 = or i32 %70, %65
  %73 = or i32 %72, %68
  %74 = or i32 %73, %60
  store i32 %74, ptr %71, align 4
  %75 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 3
  %76 = or i32 %59, %63
  store i32 %76, ptr %75, align 4
  br label %87

77:                                               ; preds = %13
  %78 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = or i32 %79, 3
  store i32 %80, ptr %78, align 4
  %81 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = or i32 %82, 6
  store i32 %83, ptr %81, align 4
  %84 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = or i32 %85, 256
  store i32 %86, ptr %84, align 4
  br label %87

87:                                               ; preds = %77, %58, %13
  call void @ata_eh_analyze_ncq_error(ptr noundef %0) #15
  %88 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, -257
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  store i32 %90, ptr %88, align 4
  br label %93

93:                                               ; preds = %92, %87
  %94 = phi i32 [ %90, %92 ], [ %89, %87 ]
  %95 = getelementptr inbounds i8, ptr %4, i32 4
  %96 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 2
  %97 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 13
  %98 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 14
  %99 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 8
  %100 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 11
  %101 = getelementptr inbounds i8, ptr %5, i32 4
  %102 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 2
  %103 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 13
  %104 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 14
  %105 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 12
  %106 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 11
  %107 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 10
  %108 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 3
  br label %109

109:                                              ; preds = %381, %93
  %110 = phi i32 [ 0, %93 ], [ %385, %381 ]
  %111 = phi i32 [ 0, %93 ], [ %384, %381 ]
  %112 = phi i32 [ 0, %93 ], [ %386, %381 ]
  %113 = phi i32 [ 0, %93 ], [ %383, %381 ]
  %114 = phi i32 [ %94, %93 ], [ %382, %381 ]
  %115 = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %112
  %116 = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %112, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 65536
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %381, label %120

120:                                              ; preds = %109
  %121 = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %112, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = call ptr @ata_dev_phys_link(ptr noundef %122) #15
  %124 = icmp eq ptr %123, %0
  br i1 %124, label %125, label %381

125:                                              ; preds = %120
  %126 = load i32, ptr %88, align 4
  %127 = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %112, i32 20
  %128 = load i32, ptr %127, align 4
  %129 = or i32 %128, %126
  store i32 %129, ptr %127, align 4
  %130 = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %112, i32 21, i32 14
  %131 = load i8, ptr %130, align 1
  %132 = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %112, i32 21, i32 8
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %131 to i32
  %135 = and i32 %134, 200
  %136 = icmp eq i32 %135, 64
  br i1 %136, label %139, label %137

137:                                              ; preds = %125
  %138 = or i32 %129, 2
  store i32 %138, ptr %127, align 4
  br label %306

139:                                              ; preds = %125
  %140 = and i32 %134, 33
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %306, label %142

142:                                              ; preds = %139
  %143 = or i32 %129, 1
  store i32 %143, ptr %127, align 4
  %144 = load ptr, ptr %121, align 4
  %145 = getelementptr inbounds %struct.ata_device, ptr %144, i32 0, i32 9
  %146 = load i32, ptr %145, align 64
  switch i32 %146, label %286 [
    i32 9, label %147
    i32 1, label %229
    i32 3, label %245
  ]

147:                                              ; preds = %142
  %148 = and i32 %134, 32
  %149 = icmp ne i32 %148, 0
  %150 = and i8 %131, 2
  %151 = icmp eq i8 %150, 0
  %152 = select i1 %149, i1 true, i1 %151
  br i1 %152, label %229, label %153

153:                                              ; preds = %147
  %154 = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %112, i32 2
  %155 = load ptr, ptr %154, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %156 = load ptr, ptr %115, align 4
  %157 = getelementptr inbounds %struct.ata_port, ptr %156, i32 0, i32 4
  %158 = load i32, ptr %157, align 16
  %159 = and i32 %158, 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %172, label %161

161:                                              ; preds = %153
  %162 = load ptr, ptr %144, align 64
  %163 = load ptr, ptr %162, align 64
  %164 = getelementptr inbounds %struct.ata_port, ptr %163, i32 0, i32 5
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.ata_link, ptr %162, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds %struct.ata_device, ptr %144, i32 0, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = add i32 %169, %167
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %165, i32 noundef %170) #16
  br label %228

172:                                              ; preds = %153
  %173 = icmp eq ptr %155, null
  br i1 %173, label %228, label %174

174:                                              ; preds = %172
  %175 = load i32, ptr %116, align 4
  %176 = and i32 %175, 131072
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %228

178:                                              ; preds = %174
  %179 = getelementptr %struct.ata_device, ptr %144, i32 0, i32 25, i32 0, i32 43
  %180 = load i16, ptr %179, align 2
  %181 = icmp sgt i16 %180, -1
  br i1 %181, label %187, label %182

182:                                              ; preds = %178
  %183 = getelementptr %struct.ata_device, ptr %144, i32 0, i32 25, i32 0, i32 60
  %184 = load i16, ptr %183, align 2
  %185 = and i16 %184, 64
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %182, %178
  %188 = load ptr, ptr %144, align 64
  %189 = load ptr, ptr %188, align 64
  %190 = getelementptr inbounds %struct.ata_port, ptr %189, i32 0, i32 5
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr inbounds %struct.ata_link, ptr %188, i32 0, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds %struct.ata_device, ptr %144, i32 0, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = add i32 %195, %193
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %191, i32 noundef %196) #16
  br label %228

198:                                              ; preds = %182
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %101, i8 0, i32 20, i1 false) #15
  %199 = load ptr, ptr %144, align 64
  %200 = load ptr, ptr %199, align 64
  %201 = getelementptr inbounds %struct.ata_port, ptr %200, i32 0, i32 9
  %202 = load i8, ptr %201, align 4
  store i8 %202, ptr %102, align 1
  %203 = getelementptr inbounds %struct.ata_device, ptr %144, i32 0, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  %206 = select i1 %205, i8 -96, i8 -80
  store i8 %206, ptr %103, align 4
  store i32 23, ptr %5, align 4
  store i8 11, ptr %104, align 1
  %207 = call i32 @ata_exec_internal(ptr noundef %144, ptr noundef nonnull %5, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #15
  %208 = load i8, ptr %104, align 1
  %209 = zext i8 %208 to i32
  %210 = and i32 %209, 2
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %198
  %213 = load i8, ptr %105, align 1
  %214 = load i8, ptr %106, align 2
  %215 = load i8, ptr %107, align 1
  call void @ata_scsi_set_sense(ptr noundef %144, ptr noundef nonnull %155, i8 noundef zeroext %213, i8 noundef zeroext %214, i8 noundef zeroext %215) #15
  %216 = load i32, ptr %116, align 4
  %217 = or i32 %216, 131072
  store i32 %217, ptr %116, align 4
  br label %228

218:                                              ; preds = %198
  %219 = load ptr, ptr %144, align 64
  %220 = load ptr, ptr %219, align 64
  %221 = getelementptr inbounds %struct.ata_port, ptr %220, i32 0, i32 5
  %222 = load i32, ptr %221, align 4
  %223 = getelementptr inbounds %struct.ata_link, ptr %219, i32 0, i32 1
  %224 = load i32, ptr %223, align 4
  %225 = load i32, ptr %203, align 4
  %226 = add i32 %225, %224
  %227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %222, i32 noundef %226, i32 noundef %209, i32 noundef %207) #16
  br label %228

228:                                              ; preds = %218, %212, %187, %174, %172, %161
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %229

229:                                              ; preds = %228, %147, %142
  %230 = zext i8 %133 to i32
  %231 = and i32 %230, 128
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %229
  %234 = load i32, ptr %127, align 4
  %235 = or i32 %234, 16
  store i32 %235, ptr %127, align 4
  br label %236

236:                                              ; preds = %233, %229
  %237 = and i32 %230, 65
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %236
  %240 = load i32, ptr %127, align 4
  %241 = or i32 %240, 8
  store i32 %241, ptr %127, align 4
  br label %242

242:                                              ; preds = %239, %236
  %243 = and i32 %230, 16
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %286, label %281

245:                                              ; preds = %142
  %246 = load ptr, ptr %115, align 4
  %247 = getelementptr inbounds %struct.ata_port, ptr %246, i32 0, i32 4
  %248 = load i32, ptr %247, align 16
  %249 = and i32 %248, 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %286

251:                                              ; preds = %245
  %252 = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %112, i32 2
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr inbounds %struct.scsi_cmnd, ptr %253, i32 0, i32 21
  %255 = load ptr, ptr %254, align 4
  %256 = lshr i8 %133, 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) @__const.atapi_eh_request_sense.cdb, i32 16, i1 false) #15
  %257 = load ptr, ptr %144, align 64
  %258 = load ptr, ptr %257, align 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %259 = getelementptr inbounds i8, ptr %255, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %259, i8 0, i32 95, i1 false) #15
  store i8 112, ptr %255, align 1
  %260 = getelementptr i8, ptr %255, i32 2
  store i8 %256, ptr %260, align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %95, i8 0, i32 20, i1 false) #15
  %261 = load ptr, ptr %144, align 64
  %262 = load ptr, ptr %261, align 64
  %263 = getelementptr inbounds %struct.ata_port, ptr %262, i32 0, i32 9
  %264 = load i8, ptr %263, align 4
  store i8 %264, ptr %96, align 1
  %265 = getelementptr inbounds %struct.ata_device, ptr %144, i32 0, i32 1
  %266 = load i32, ptr %265, align 4
  %267 = icmp eq i32 %266, 0
  %268 = select i1 %267, i8 -96, i8 -80
  store i8 %268, ptr %97, align 4
  store i32 6, ptr %4, align 4
  store i8 -96, ptr %98, align 1
  %269 = getelementptr inbounds %struct.ata_port, ptr %258, i32 0, i32 3
  %270 = load i32, ptr %269, align 4
  %271 = and i32 %270, 128
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %251
  store i8 1, ptr %99, align 1
  br label %275

274:                                              ; preds = %251
  store i8 96, ptr %100, align 2
  br label %275

275:                                              ; preds = %274, %273
  %276 = phi i8 [ 9, %274 ], [ 10, %273 ]
  store i8 %276, ptr %95, align 4
  %277 = call i32 @ata_exec_internal(ptr noundef %144, ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 2, ptr noundef %255, i32 noundef 96, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  %278 = icmp eq i32 %277, 0
  %279 = select i1 %278, ptr %116, ptr %127
  %280 = select i1 %278, i32 131072, i32 %277
  br label %281

281:                                              ; preds = %275, %242
  %282 = phi ptr [ %127, %242 ], [ %279, %275 ]
  %283 = phi i32 [ 128, %242 ], [ %280, %275 ]
  %284 = load i32, ptr %282, align 4
  %285 = or i32 %284, %283
  store i32 %285, ptr %282, align 4
  br label %286

286:                                              ; preds = %281, %245, %242, %142
  %287 = load i32, ptr %116, align 4
  %288 = and i32 %287, 131072
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %301, label %290

290:                                              ; preds = %286
  %291 = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %112, i32 2
  %292 = load ptr, ptr %291, align 4
  %293 = call i32 @scsi_check_sense(ptr noundef %292) #15
  switch i32 %293, label %297 [
    i32 8198, label %294
    i32 8193, label %294
    i32 8194, label %301
  ]

294:                                              ; preds = %290, %290
  %295 = load i32, ptr %116, align 4
  %296 = or i32 %295, 128
  store i32 %296, ptr %116, align 4
  br label %297

297:                                              ; preds = %294, %290
  %298 = phi i32 [ 256, %294 ], [ 2, %290 ]
  %299 = load i32, ptr %127, align 4
  %300 = or i32 %299, %298
  store i32 %300, ptr %127, align 4
  br label %301

301:                                              ; preds = %297, %290, %286
  %302 = load i32, ptr %127, align 4
  %303 = and i32 %302, 22
  %304 = icmp eq i32 %303, 0
  %305 = select i1 %304, i32 0, i32 6
  br label %306

306:                                              ; preds = %301, %139, %137
  %307 = phi i32 [ 6, %137 ], [ %305, %301 ], [ 0, %139 ]
  %308 = load i32, ptr %108, align 4
  %309 = or i32 %308, %307
  store i32 %309, ptr %108, align 4
  %310 = load i32, ptr %127, align 4
  %311 = and i32 %310, 16
  %312 = icmp eq i32 %311, 0
  %313 = and i32 %310, -138
  %314 = select i1 %312, i32 %310, i32 %313
  %315 = and i32 %314, -257
  %316 = icmp eq i32 %315, 0
  %317 = select i1 %316, i32 %314, i32 %315
  %318 = or i32 %311, %315
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %306
  store i32 %317, ptr %127, align 4
  br label %321

321:                                              ; preds = %320, %306
  %322 = load i32, ptr %116, align 4
  %323 = and i32 %322, 131072
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %327, label %325

325:                                              ; preds = %321
  %326 = and i32 %317, -258
  store i32 %326, ptr %127, align 4
  br label %340

327:                                              ; preds = %321
  %328 = and i32 %317, 8
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %340

330:                                              ; preds = %327
  %331 = and i32 %322, 8
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %330
  %334 = and i32 %317, 128
  %335 = icmp ne i32 %334, 0
  %336 = icmp eq i32 %317, 1
  %337 = or i1 %336, %335
  br i1 %337, label %340, label %338

338:                                              ; preds = %333, %330
  %339 = or i32 %322, 128
  store i32 %339, ptr %116, align 4
  br label %340

340:                                              ; preds = %338, %333, %327, %325
  %341 = load ptr, ptr %121, align 4
  store ptr %341, ptr %8, align 4
  %342 = load i32, ptr %127, align 4
  %343 = or i32 %342, %114
  %344 = load i32, ptr %116, align 4
  %345 = lshr i32 %344, 3
  %346 = and i32 %345, 1
  %347 = or i32 %346, %113
  %348 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_link_autopsy_qc, i32 0, i32 1), align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %363

350:                                              ; preds = %340
  %351 = tail call ptr @llvm.thread.pointer() #15
  %352 = getelementptr inbounds %struct.thread_info, ptr %351, i32 0, i32 2
  %353 = load i32, ptr %352, align 8
  %354 = lshr i32 %353, 5
  %355 = getelementptr i32, ptr @__cpu_online_mask, i32 %354
  %356 = load volatile i32, ptr %355, align 4
  %357 = and i32 %353, 31
  %358 = shl nuw i32 1, %357
  %359 = and i32 %358, %356
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %350
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  %362 = call i32 @__traceiter_ata_eh_link_autopsy_qc(ptr noundef null, ptr noundef %115) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  br label %363

363:                                              ; preds = %361, %350, %340
  %364 = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %112, i32 2
  %365 = load ptr, ptr %364, align 4
  %366 = icmp eq ptr %365, null
  br i1 %366, label %375, label %367

367:                                              ; preds = %363
  %368 = getelementptr i8, ptr %365, i32 -152
  %369 = load i32, ptr %368, align 8
  %370 = and i32 %369, 2048
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %367
  %373 = load i32, ptr %116, align 4
  %374 = or i32 %373, 64
  store i32 %374, ptr %116, align 4
  br label %375

375:                                              ; preds = %372, %367, %363
  %376 = load i32, ptr %116, align 4
  %377 = lshr i32 %376, 6
  %378 = and i32 %377, 1
  %379 = add i32 %378, %110
  %380 = add i32 %111, 1
  br label %381

381:                                              ; preds = %375, %120, %109
  %382 = phi i32 [ %114, %120 ], [ %343, %375 ], [ %114, %109 ]
  %383 = phi i32 [ %113, %120 ], [ %347, %375 ], [ %113, %109 ]
  %384 = phi i32 [ %111, %120 ], [ %380, %375 ], [ %111, %109 ]
  %385 = phi i32 [ %110, %120 ], [ %379, %375 ], [ %110, %109 ]
  %386 = add nuw nsw i32 %112, 1
  %387 = icmp eq i32 %386, 32
  br i1 %387, label %388, label %109

388:                                              ; preds = %381
  %389 = icmp eq i32 %385, %384
  br i1 %389, label %390, label %393

390:                                              ; preds = %388
  %391 = load i32, ptr %9, align 4
  %392 = or i32 %391, 8
  store i32 %392, ptr %9, align 4
  br label %393

393:                                              ; preds = %390, %388
  %394 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 4
  %395 = load i32, ptr %394, align 16
  %396 = and i32 %395, 4
  %397 = icmp eq i32 %396, 0
  %398 = and i32 %382, 6
  %399 = icmp eq i32 %398, 0
  %400 = select i1 %397, i1 %399, i1 false
  br i1 %400, label %401, label %410

401:                                              ; preds = %393
  %402 = and i32 %383, 1
  %403 = icmp ne i32 %402, 0
  %404 = icmp eq i32 %382, 0
  %405 = xor i1 %403, true
  %406 = select i1 %405, i1 true, i1 %404
  %407 = icmp ult i32 %382, 2
  %408 = select i1 %403, i1 true, i1 %407
  %409 = select i1 %406, i1 %408, i1 false
  br i1 %409, label %414, label %410

410:                                              ; preds = %401, %393
  %411 = phi i32 [ 6, %393 ], [ 1, %401 ]
  %412 = load i32, ptr %108, align 4
  %413 = or i32 %412, %411
  store i32 %413, ptr %108, align 4
  br label %414

414:                                              ; preds = %410, %401
  %415 = load ptr, ptr %8, align 4
  %416 = icmp eq ptr %415, null
  br i1 %416, label %427, label %417

417:                                              ; preds = %414
  %418 = load i32, ptr %108, align 4
  %419 = and i32 %418, 33
  %420 = getelementptr inbounds %struct.ata_device, ptr %415, i32 0, i32 1
  %421 = load i32, ptr %420, align 4
  %422 = getelementptr %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 4, i32 %421
  %423 = load i32, ptr %422, align 4
  %424 = or i32 %423, %419
  store i32 %424, ptr %422, align 4
  %425 = load i32, ptr %108, align 4
  %426 = and i32 %425, -34
  store i32 %426, ptr %108, align 4
  br label %427

427:                                              ; preds = %417, %414
  %428 = and i32 %382, 4
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %442, label %430

430:                                              ; preds = %427
  %431 = load ptr, ptr %0, align 64
  %432 = getelementptr inbounds %struct.ata_port, ptr %431, i32 0, i32 25
  %433 = icmp eq ptr %432, %0
  br i1 %433, label %442, label %434

434:                                              ; preds = %430
  %435 = getelementptr inbounds %struct.ata_port, ptr %431, i32 0, i32 26
  %436 = load ptr, ptr %435, align 64
  %437 = icmp eq ptr %436, %0
  br i1 %437, label %442, label %438

438:                                              ; preds = %434
  %439 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 12, i32 0, i32 2
  %440 = load i32, ptr %439, align 4
  %441 = or i32 %440, 4
  store i32 %441, ptr %439, align 4
  br label %442

442:                                              ; preds = %438, %434, %430, %427
  %443 = load ptr, ptr %8, align 4
  %444 = icmp eq ptr %443, null
  br i1 %444, label %445, label %468

445:                                              ; preds = %442
  %446 = load ptr, ptr %0, align 64
  %447 = getelementptr inbounds %struct.ata_port, ptr %446, i32 0, i32 25
  %448 = icmp eq ptr %447, %0
  br i1 %448, label %453, label %449

449:                                              ; preds = %445
  %450 = getelementptr inbounds %struct.ata_port, ptr %446, i32 0, i32 26
  %451 = load ptr, ptr %450, align 64
  %452 = icmp eq ptr %451, %0
  br i1 %452, label %453, label %458

453:                                              ; preds = %449, %445
  %454 = getelementptr inbounds %struct.ata_port, ptr %446, i32 0, i32 3
  %455 = load i32, ptr %454, align 4
  %456 = and i32 %455, 1
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %747

458:                                              ; preds = %453, %449
  %459 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14
  %460 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14, i32 0, i32 9
  %461 = load i32, ptr %460, align 64
  switch i32 %461, label %462 [
    i32 7, label %466
    i32 5, label %466
    i32 3, label %466
    i32 1, label %466
  ]

462:                                              ; preds = %458
  %463 = icmp ne i32 %461, 9
  %464 = icmp eq ptr %459, null
  %465 = select i1 %463, i1 true, i1 %464
  br i1 %465, label %747, label %468

466:                                              ; preds = %458, %458, %458, %458
  %467 = icmp eq ptr %459, null
  br i1 %467, label %747, label %468

468:                                              ; preds = %466, %462, %442
  %469 = phi ptr [ %459, %466 ], [ %443, %442 ], [ %459, %462 ]
  %470 = getelementptr inbounds %struct.ata_device, ptr %469, i32 0, i32 3
  %471 = load i32, ptr %470, align 4
  %472 = lshr i32 %471, 15
  %473 = and i32 %472, 2
  %474 = or i32 %473, %383
  %475 = call ptr @ata_dev_phys_link(ptr noundef nonnull %469) #15
  %476 = and i32 %382, 20
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %487

478:                                              ; preds = %468
  %479 = and i32 %383, 1
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %728, label %481

481:                                              ; preds = %478
  %482 = and i32 %382, 2
  %483 = icmp ne i32 %482, 0
  %484 = and i32 %382, 137
  %485 = icmp eq i32 %484, 1
  %486 = or i1 %483, %485
  br i1 %486, label %487, label %728

487:                                              ; preds = %481, %468
  %488 = getelementptr inbounds %struct.ata_device, ptr %469, i32 0, i32 35
  %489 = load i32, ptr %488, align 8
  %490 = add i32 %489, 1
  %491 = srem i32 %490, 32
  store i32 %491, ptr %488, align 8
  %492 = getelementptr %struct.ata_device, ptr %469, i32 0, i32 35, i32 1, i32 %491
  store i32 %474, ptr %492, align 8
  %493 = getelementptr %struct.ata_device, ptr %469, i32 0, i32 35, i32 1, i32 %491, i32 1
  store i32 %382, ptr %493, align 4
  %494 = call i64 @get_jiffies_64() #15
  %495 = getelementptr %struct.ata_device, ptr %469, i32 0, i32 35, i32 1, i32 %491, i32 2
  store i64 %494, ptr %495, align 8
  %496 = call i64 @get_jiffies_64() #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #15
  %497 = call i64 @llvm.usub.sat.i64(i64 %496, i64 30000) #15
  %498 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(40) %498, i8 0, i64 40, i1 false) #15
  store i64 %497, ptr %2, align 8
  %499 = load i32, ptr %488, align 8
  br label %500

500:                                              ; preds = %546, %487
  %501 = phi i32 [ %499, %487 ], [ %552, %546 ]
  %502 = getelementptr %struct.ata_device, ptr %469, i32 0, i32 35, i32 1, i32 %501, i32 1
  %503 = load i32, ptr %502, align 4
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %554, label %505

505:                                              ; preds = %500
  %506 = getelementptr %struct.ata_device, ptr %469, i32 0, i32 35, i32 1, i32 %501
  %507 = load i32, ptr %506, align 8
  %508 = icmp sgt i32 %507, -1
  br i1 %508, label %509, label %554

509:                                              ; preds = %505
  %510 = getelementptr %struct.ata_device, ptr %469, i32 0, i32 35, i32 1, i32 %501, i32 2
  %511 = load i64, ptr %510, align 8
  %512 = load i64, ptr %2, align 8
  %513 = icmp ult i64 %511, %512
  br i1 %513, label %554, label %514

514:                                              ; preds = %509
  %515 = and i32 %507, 2
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %521, label %517

517:                                              ; preds = %514
  %518 = load i32, ptr %498, align 8
  %519 = icmp eq i32 %518, 0
  %520 = select i1 %519, i32 4, i32 0
  br label %522

521:                                              ; preds = %514
  store i32 1, ptr %498, align 8
  br label %522

522:                                              ; preds = %521, %517
  %523 = phi i32 [ %520, %517 ], [ 0, %521 ]
  %524 = and i32 %503, 16
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %528, label %526

526:                                              ; preds = %522
  %527 = or i32 %523, 1
  br label %546

528:                                              ; preds = %522
  %529 = and i32 %503, 4
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %533, label %531

531:                                              ; preds = %528
  %532 = or i32 %523, 2
  br label %546

533:                                              ; preds = %528
  %534 = and i32 %507, 1
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %546, label %536

536:                                              ; preds = %533
  %537 = and i32 %503, 2
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %541, label %539

539:                                              ; preds = %536
  %540 = or i32 %523, 2
  br label %546

541:                                              ; preds = %536
  %542 = and i32 %503, 137
  %543 = icmp eq i32 %542, 1
  %544 = or i32 %523, 3
  %545 = select i1 %543, i32 %544, i32 0
  br label %546

546:                                              ; preds = %541, %539, %533, %531, %526
  %547 = phi i32 [ %527, %526 ], [ %532, %531 ], [ %540, %539 ], [ 0, %533 ], [ %545, %541 ]
  %548 = getelementptr %struct.speed_down_verdict_arg, ptr %2, i32 0, i32 2, i32 %547
  %549 = load i32, ptr %548, align 4
  %550 = add i32 %549, 1
  store i32 %550, ptr %548, align 4
  %551 = add i32 %501, 31
  %552 = srem i32 %551, 32
  %553 = icmp eq i32 %552, %499
  br i1 %553, label %554, label %500

554:                                              ; preds = %546, %509, %505, %500
  %555 = getelementptr inbounds %struct.speed_down_verdict_arg, ptr %2, i32 0, i32 2, i32 5
  %556 = load i32, ptr %555, align 8
  %557 = getelementptr inbounds %struct.speed_down_verdict_arg, ptr %2, i32 0, i32 2, i32 6
  %558 = load i32, ptr %557, align 4
  %559 = getelementptr inbounds %struct.speed_down_verdict_arg, ptr %2, i32 0, i32 2, i32 7
  %560 = load i32, ptr %559, align 8
  %561 = getelementptr inbounds %struct.speed_down_verdict_arg, ptr %2, i32 0, i32 2, i32 1
  %562 = load i32, ptr %561, align 8
  %563 = getelementptr inbounds %struct.speed_down_verdict_arg, ptr %2, i32 0, i32 2, i32 2
  %564 = load i32, ptr %563, align 4
  %565 = getelementptr inbounds %struct.speed_down_verdict_arg, ptr %2, i32 0, i32 2, i32 3
  %566 = load i32, ptr %565, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %498, i8 0, i32 40, i1 false) #15
  %567 = call i64 @llvm.usub.sat.i64(i64 %496, i64 60000) #15
  store i64 %567, ptr %2, align 8
  br label %568

568:                                              ; preds = %614, %554
  %569 = phi i32 [ %499, %554 ], [ %620, %614 ]
  %570 = getelementptr %struct.ata_device, ptr %469, i32 0, i32 35, i32 1, i32 %569, i32 1
  %571 = load i32, ptr %570, align 4
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %622, label %573

573:                                              ; preds = %568
  %574 = getelementptr %struct.ata_device, ptr %469, i32 0, i32 35, i32 1, i32 %569
  %575 = load i32, ptr %574, align 8
  %576 = icmp sgt i32 %575, -1
  br i1 %576, label %577, label %622

577:                                              ; preds = %573
  %578 = getelementptr %struct.ata_device, ptr %469, i32 0, i32 35, i32 1, i32 %569, i32 2
  %579 = load i64, ptr %578, align 8
  %580 = load i64, ptr %2, align 8
  %581 = icmp ult i64 %579, %580
  br i1 %581, label %622, label %582

582:                                              ; preds = %577
  %583 = and i32 %575, 2
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %589, label %585

585:                                              ; preds = %582
  %586 = load i32, ptr %498, align 8
  %587 = icmp eq i32 %586, 0
  %588 = select i1 %587, i32 4, i32 0
  br label %590

589:                                              ; preds = %582
  store i32 1, ptr %498, align 8
  br label %590

590:                                              ; preds = %589, %585
  %591 = phi i32 [ %588, %585 ], [ 0, %589 ]
  %592 = and i32 %571, 16
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %596, label %594

594:                                              ; preds = %590
  %595 = or i32 %591, 1
  br label %614

596:                                              ; preds = %590
  %597 = and i32 %571, 4
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %601, label %599

599:                                              ; preds = %596
  %600 = or i32 %591, 2
  br label %614

601:                                              ; preds = %596
  %602 = and i32 %575, 1
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %614, label %604

604:                                              ; preds = %601
  %605 = and i32 %571, 2
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %609, label %607

607:                                              ; preds = %604
  %608 = or i32 %591, 2
  br label %614

609:                                              ; preds = %604
  %610 = and i32 %571, 137
  %611 = icmp eq i32 %610, 1
  %612 = or i32 %591, 3
  %613 = select i1 %611, i32 %612, i32 0
  br label %614

614:                                              ; preds = %609, %607, %601, %599, %594
  %615 = phi i32 [ %595, %594 ], [ %600, %599 ], [ %608, %607 ], [ 0, %601 ], [ %613, %609 ]
  %616 = getelementptr %struct.speed_down_verdict_arg, ptr %2, i32 0, i32 2, i32 %615
  %617 = load i32, ptr %616, align 4
  %618 = add i32 %617, 1
  store i32 %618, ptr %616, align 4
  %619 = add i32 %569, 31
  %620 = srem i32 %619, 32
  %621 = icmp eq i32 %620, %499
  br i1 %621, label %622, label %568

622:                                              ; preds = %614, %577, %573, %568
  %623 = add i32 %564, %562
  %624 = add i32 %623, %566
  %625 = icmp sgt i32 %624, 6
  %626 = add i32 %560, %558
  %627 = icmp sgt i32 %626, 1
  %628 = add i32 %558, %556
  %629 = icmp sgt i32 %628, 1
  %630 = select i1 %629, i32 14, i32 0
  %631 = or i32 %630, 9
  %632 = select i1 %627, i32 %631, i32 %630
  %633 = or i32 %632, 4
  %634 = select i1 %625, i32 %633, i32 %632
  %635 = load i32, ptr %563, align 4
  %636 = load i32, ptr %565, align 8
  %637 = add i32 %636, %635
  %638 = icmp sgt i32 %637, 3
  %639 = zext i1 %638 to i32
  %640 = or i32 %634, %639
  %641 = load i32, ptr %561, align 8
  %642 = add i32 %641, %635
  %643 = icmp sgt i32 %642, 3
  %644 = icmp sgt i32 %636, 6
  %645 = select i1 %643, i1 true, i1 %644
  %646 = or i32 %640, 2
  %647 = select i1 %645, i32 %646, i32 %640
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #15
  %648 = and i32 %647, 1
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %666, label %650

650:                                              ; preds = %622
  %651 = load i32, ptr %470, align 4
  %652 = and i32 %651, 12296
  %653 = icmp eq i32 %652, 8
  br i1 %653, label %654, label %666

654:                                              ; preds = %650
  %655 = or i32 %651, 8192
  store i32 %655, ptr %470, align 4
  %656 = load ptr, ptr %469, align 64
  %657 = load ptr, ptr %656, align 64
  %658 = getelementptr inbounds %struct.ata_port, ptr %657, i32 0, i32 5
  %659 = load i32, ptr %658, align 4
  %660 = getelementptr inbounds %struct.ata_link, ptr %656, i32 0, i32 1
  %661 = load i32, ptr %660, align 4
  %662 = getelementptr inbounds %struct.ata_device, ptr %469, i32 0, i32 1
  %663 = load i32, ptr %662, align 4
  %664 = add i32 %663, %661
  %665 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %659, i32 noundef %664) #16
  br label %710

666:                                              ; preds = %650, %622
  %667 = and i32 %647, 2
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %686, label %669

669:                                              ; preds = %666
  %670 = call i32 @sata_down_spd_limit(ptr noundef %475, i32 noundef 0) #15
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %710, label %672

672:                                              ; preds = %669
  %673 = getelementptr inbounds %struct.ata_device, ptr %469, i32 0, i32 34
  %674 = load i32, ptr %673, align 16
  %675 = icmp slt i32 %674, 2
  br i1 %675, label %676, label %686

676:                                              ; preds = %672
  %677 = getelementptr inbounds %struct.ata_device, ptr %469, i32 0, i32 14
  %678 = load i32, ptr %677, align 4
  %679 = icmp eq i32 %678, 0
  %680 = select i1 %679, ptr @ata_eh_speed_down.pio_dnxfer_sel, ptr @ata_eh_speed_down.dma_dnxfer_sel
  %681 = getelementptr [2 x i32], ptr %680, i32 0, i32 %674
  %682 = load i32, ptr %681, align 4
  %683 = add nsw i32 %674, 1
  store i32 %683, ptr %673, align 16
  %684 = call i32 @ata_down_xfermask_limit(ptr noundef %469, i32 noundef %682) #15
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %710, label %686

686:                                              ; preds = %676, %672, %666
  %687 = and i32 %647, 4
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %728, label %689

689:                                              ; preds = %686
  %690 = getelementptr inbounds %struct.ata_device, ptr %469, i32 0, i32 34
  %691 = load i32, ptr %690, align 16
  %692 = icmp sgt i32 %691, 1
  br i1 %692, label %693, label %728

693:                                              ; preds = %689
  %694 = load ptr, ptr %475, align 64
  %695 = getelementptr inbounds %struct.ata_port, ptr %694, i32 0, i32 18
  %696 = load i32, ptr %695, align 4
  %697 = icmp eq i32 %696, 6
  br i1 %697, label %698, label %702

698:                                              ; preds = %693
  %699 = getelementptr inbounds %struct.ata_device, ptr %469, i32 0, i32 9
  %700 = load i32, ptr %699, align 64
  %701 = icmp eq i32 %700, 3
  br i1 %701, label %702, label %728

702:                                              ; preds = %698, %693
  %703 = getelementptr inbounds %struct.ata_device, ptr %469, i32 0, i32 14
  %704 = load i32, ptr %703, align 4
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %728, label %706

706:                                              ; preds = %702
  %707 = call i32 @ata_down_xfermask_limit(ptr noundef %469, i32 noundef 3) #15
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %709, label %728

709:                                              ; preds = %706
  store i32 0, ptr %690, align 16
  br label %710

710:                                              ; preds = %709, %676, %669, %654
  %711 = phi i32 [ 0, %654 ], [ 6, %676 ], [ 6, %709 ], [ 6, %669 ]
  %712 = and i32 %647, 8
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %728

714:                                              ; preds = %710
  %715 = load i32, ptr %488, align 8
  br label %716

716:                                              ; preds = %721, %714
  %717 = phi i32 [ %715, %714 ], [ %726, %721 ]
  %718 = getelementptr %struct.ata_device, ptr %469, i32 0, i32 35, i32 1, i32 %717, i32 1
  %719 = load i32, ptr %718, align 4
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %728, label %721

721:                                              ; preds = %716
  %722 = getelementptr %struct.ata_device, ptr %469, i32 0, i32 35, i32 1, i32 %717
  %723 = load i32, ptr %722, align 8
  %724 = or i32 %723, -2147483648
  store i32 %724, ptr %722, align 8
  %725 = add i32 %717, 31
  %726 = srem i32 %725, 32
  %727 = icmp eq i32 %726, %715
  br i1 %727, label %728, label %716

728:                                              ; preds = %721, %716, %710, %706, %702, %698, %689, %686, %481, %478
  %729 = phi i32 [ 0, %706 ], [ 0, %702 ], [ 0, %698 ], [ 0, %689 ], [ 0, %686 ], [ %711, %710 ], [ 0, %478 ], [ 0, %481 ], [ %711, %721 ], [ %711, %716 ]
  %730 = load i32, ptr %108, align 4
  %731 = or i32 %730, %729
  store i32 %731, ptr %108, align 4
  %732 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_link_autopsy, i32 0, i32 1), align 4
  %733 = icmp sgt i32 %732, 0
  br i1 %733, label %734, label %747

734:                                              ; preds = %728
  %735 = tail call ptr @llvm.thread.pointer() #15
  %736 = getelementptr inbounds %struct.thread_info, ptr %735, i32 0, i32 2
  %737 = load i32, ptr %736, align 8
  %738 = lshr i32 %737, 5
  %739 = getelementptr i32, ptr @__cpu_online_mask, i32 %738
  %740 = load volatile i32, ptr %739, align 4
  %741 = and i32 %737, 31
  %742 = shl nuw i32 1, %741
  %743 = and i32 %742, %740
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %747, label %745

745:                                              ; preds = %734
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  %746 = call i32 @__traceiter_ata_eh_link_autopsy(ptr noundef null, ptr noundef %469, i32 noundef %731, i32 noundef %382) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  br label %747

747:                                              ; preds = %745, %734, %728, %466, %462, %453, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local ptr @ata_get_cmd_name(i8 noundef zeroext %0) #10 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi i32 [ 0, %1 ], [ %8, %7 ]
  %4 = getelementptr [92 x %struct.anon.80], ptr @ata_get_cmd_name.cmd_descr, i32 0, i32 %3
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, %0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = add nuw nsw i32 %3, 1
  %9 = icmp eq i32 %8, 91
  br i1 %9, label %13, label %2

10:                                               ; preds = %2
  %11 = getelementptr [92 x %struct.anon.80], ptr @ata_get_cmd_name.cmd_descr, i32 0, i32 %3, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi ptr [ %12, %10 ], [ @.str.102, %7 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_report(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [20 x i8], align 1
  %4 = alloca [70 x i8], align 1
  %5 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 1) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %569, label %7

7:                                                ; preds = %566, %1
  %8 = phi ptr [ %567, %566 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 64
  %10 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #15
  %11 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %566

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12, i32 0, i32 7
  %17 = load i8, ptr %16, align 4
  br label %18

18:                                               ; preds = %47, %15
  %19 = phi i32 [ 0, %15 ], [ %49, %47 ]
  %20 = phi i32 [ 0, %15 ], [ %48, %47 ]
  %21 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %19, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %18
  %26 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %19, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = call ptr @ata_dev_phys_link(ptr noundef %27) #15
  %29 = icmp eq ptr %28, %8
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load i32, ptr %21, align 4
  %32 = and i32 %31, 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %19, i32 20
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %47, label %38

38:                                               ; preds = %34, %30
  %39 = and i32 %31, 131072
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %19, i32 20
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %38
  %46 = add i32 %20, 1
  br label %47

47:                                               ; preds = %45, %41, %34, %25, %18
  %48 = phi i32 [ %20, %25 ], [ %20, %34 ], [ %46, %45 ], [ %20, %41 ], [ %20, %18 ]
  %49 = add nuw nsw i32 %19, 1
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %18

51:                                               ; preds = %47
  %52 = icmp eq i8 %17, 0
  %53 = select i1 %52, ptr null, ptr %16
  %54 = icmp eq i32 %48, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %566, label %59

59:                                               ; preds = %55, %51
  %60 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 4
  %61 = load i32, ptr %60, align 16
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, ptr @.str.3, ptr @.str.134
  %65 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 40
  %66 = load i32, ptr %65, align 8
  %67 = icmp slt i32 %66, 5
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 6, ptr noundef nonnull @.str.135, i32 noundef %66) #15
  br label %70

70:                                               ; preds = %68, %59
  %71 = load ptr, ptr %10, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %104, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %71, align 64
  %75 = load ptr, ptr %74, align 64
  %76 = getelementptr inbounds %struct.ata_port, ptr %75, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.ata_link, ptr %74, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.ata_device, ptr %71, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, %79
  %83 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %77, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88, i32 noundef %90, ptr noundef nonnull %64, ptr noundef nonnull %2) #16
  br i1 %52, label %159, label %92

92:                                               ; preds = %73
  %93 = load ptr, ptr %10, align 4
  %94 = load ptr, ptr %93, align 64
  %95 = load ptr, ptr %94, align 64
  %96 = getelementptr inbounds %struct.ata_port, ptr %95, i32 0, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.ata_link, ptr %94, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.ata_device, ptr %93, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, %99
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, i32 noundef %97, i32 noundef %102, ptr noundef nonnull %53) #16
  br label %159

104:                                              ; preds = %70
  %105 = load ptr, ptr %8, align 64
  %106 = getelementptr inbounds %struct.ata_port, ptr %105, i32 0, i32 27
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.ata_port, ptr %105, i32 0, i32 26
  %111 = load ptr, ptr %110, align 64
  %112 = icmp eq ptr %111, null
  br i1 %112, label %127, label %113

113:                                              ; preds = %109, %104
  %114 = getelementptr inbounds %struct.ata_port, ptr %105, i32 0, i32 5
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12, i32 0, i32 3
  %125 = load i32, ptr %124, align 4
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %115, i32 noundef %117, i32 noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %125, ptr noundef nonnull %64, ptr noundef nonnull %2) #16
  br label %139

127:                                              ; preds = %109
  %128 = getelementptr inbounds %struct.ata_port, ptr %105, i32 0, i32 5
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 4
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12, i32 0, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef %129, i32 noundef %131, i32 noundef %133, i32 noundef %135, i32 noundef %137, ptr noundef nonnull %64, ptr noundef nonnull %2) #16
  br label %139

139:                                              ; preds = %127, %113
  br i1 %52, label %159, label %140

140:                                              ; preds = %139
  %141 = load ptr, ptr %8, align 64
  %142 = getelementptr inbounds %struct.ata_port, ptr %141, i32 0, i32 27
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.ata_port, ptr %141, i32 0, i32 26
  %147 = load ptr, ptr %146, align 64
  %148 = icmp eq ptr %147, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %145, %140
  %150 = getelementptr inbounds %struct.ata_port, ptr %141, i32 0, i32 5
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, i32 noundef %151, i32 noundef %153, ptr noundef nonnull %53) #16
  br label %159

155:                                              ; preds = %145
  %156 = getelementptr inbounds %struct.ata_port, ptr %141, i32 0, i32 5
  %157 = load i32, ptr %156, align 4
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %157, ptr noundef nonnull %53) #16
  br label %159

159:                                              ; preds = %155, %149, %139, %92, %73
  %160 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 12, i32 0, i32 1
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %284, label %163

163:                                              ; preds = %159
  %164 = load ptr, ptr %8, align 64
  %165 = getelementptr inbounds %struct.ata_port, ptr %164, i32 0, i32 27
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.ata_port, ptr %164, i32 0, i32 26
  %170 = load ptr, ptr %169, align 64
  %171 = icmp eq ptr %170, null
  br i1 %171, label %229, label %172

172:                                              ; preds = %168, %163
  %173 = getelementptr inbounds %struct.ata_port, ptr %164, i32 0, i32 5
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.ata_link, ptr %8, i32 0, i32 1
  %176 = load i32, ptr %175, align 4
  %177 = and i32 %161, 1
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, ptr @.str.3, ptr @.str.141
  %180 = and i32 %161, 2
  %181 = icmp eq i32 %180, 0
  %182 = select i1 %181, ptr @.str.3, ptr @.str.142
  %183 = and i32 %161, 256
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %184, ptr @.str.3, ptr @.str.143
  %186 = and i32 %161, 512
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, ptr @.str.3, ptr @.str.144
  %189 = and i32 %161, 1024
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, ptr @.str.3, ptr @.str.145
  %192 = and i32 %161, 2048
  %193 = icmp eq i32 %192, 0
  %194 = select i1 %193, ptr @.str.3, ptr @.str.146
  %195 = and i32 %161, 65536
  %196 = icmp eq i32 %195, 0
  %197 = select i1 %196, ptr @.str.3, ptr @.str.147
  %198 = and i32 %161, 131072
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %199, ptr @.str.3, ptr @.str.148
  %201 = and i32 %161, 262144
  %202 = icmp eq i32 %201, 0
  %203 = select i1 %202, ptr @.str.3, ptr @.str.149
  %204 = and i32 %161, 524288
  %205 = icmp eq i32 %204, 0
  %206 = select i1 %205, ptr @.str.3, ptr @.str.150
  %207 = and i32 %161, 1048576
  %208 = icmp eq i32 %207, 0
  %209 = select i1 %208, ptr @.str.3, ptr @.str.151
  %210 = and i32 %161, 2097152
  %211 = icmp eq i32 %210, 0
  %212 = select i1 %211, ptr @.str.3, ptr @.str.152
  %213 = and i32 %161, 4194304
  %214 = icmp eq i32 %213, 0
  %215 = select i1 %214, ptr @.str.3, ptr @.str.153
  %216 = and i32 %161, 8388608
  %217 = icmp eq i32 %216, 0
  %218 = select i1 %217, ptr @.str.3, ptr @.str.154
  %219 = and i32 %161, 16777216
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %220, ptr @.str.3, ptr @.str.155
  %222 = and i32 %161, 33554432
  %223 = icmp eq i32 %222, 0
  %224 = select i1 %223, ptr @.str.3, ptr @.str.156
  %225 = and i32 %161, 67108864
  %226 = icmp eq i32 %225, 0
  %227 = select i1 %226, ptr @.str.3, ptr @.str.157
  %228 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, i32 noundef %174, i32 noundef %176, ptr noundef nonnull %179, ptr noundef nonnull %182, ptr noundef nonnull %185, ptr noundef nonnull %188, ptr noundef nonnull %191, ptr noundef nonnull %194, ptr noundef nonnull %197, ptr noundef nonnull %200, ptr noundef nonnull %203, ptr noundef nonnull %206, ptr noundef nonnull %209, ptr noundef nonnull %212, ptr noundef nonnull %215, ptr noundef nonnull %218, ptr noundef nonnull %221, ptr noundef nonnull %224, ptr noundef nonnull %227) #16
  br label %284

229:                                              ; preds = %168
  %230 = getelementptr inbounds %struct.ata_port, ptr %164, i32 0, i32 5
  %231 = load i32, ptr %230, align 4
  %232 = and i32 %161, 1
  %233 = icmp eq i32 %232, 0
  %234 = select i1 %233, ptr @.str.3, ptr @.str.141
  %235 = and i32 %161, 2
  %236 = icmp eq i32 %235, 0
  %237 = select i1 %236, ptr @.str.3, ptr @.str.142
  %238 = and i32 %161, 256
  %239 = icmp eq i32 %238, 0
  %240 = select i1 %239, ptr @.str.3, ptr @.str.143
  %241 = and i32 %161, 512
  %242 = icmp eq i32 %241, 0
  %243 = select i1 %242, ptr @.str.3, ptr @.str.144
  %244 = and i32 %161, 1024
  %245 = icmp eq i32 %244, 0
  %246 = select i1 %245, ptr @.str.3, ptr @.str.145
  %247 = and i32 %161, 2048
  %248 = icmp eq i32 %247, 0
  %249 = select i1 %248, ptr @.str.3, ptr @.str.146
  %250 = and i32 %161, 65536
  %251 = icmp eq i32 %250, 0
  %252 = select i1 %251, ptr @.str.3, ptr @.str.147
  %253 = and i32 %161, 131072
  %254 = icmp eq i32 %253, 0
  %255 = select i1 %254, ptr @.str.3, ptr @.str.148
  %256 = and i32 %161, 262144
  %257 = icmp eq i32 %256, 0
  %258 = select i1 %257, ptr @.str.3, ptr @.str.149
  %259 = and i32 %161, 524288
  %260 = icmp eq i32 %259, 0
  %261 = select i1 %260, ptr @.str.3, ptr @.str.150
  %262 = and i32 %161, 1048576
  %263 = icmp eq i32 %262, 0
  %264 = select i1 %263, ptr @.str.3, ptr @.str.151
  %265 = and i32 %161, 2097152
  %266 = icmp eq i32 %265, 0
  %267 = select i1 %266, ptr @.str.3, ptr @.str.152
  %268 = and i32 %161, 4194304
  %269 = icmp eq i32 %268, 0
  %270 = select i1 %269, ptr @.str.3, ptr @.str.153
  %271 = and i32 %161, 8388608
  %272 = icmp eq i32 %271, 0
  %273 = select i1 %272, ptr @.str.3, ptr @.str.154
  %274 = and i32 %161, 16777216
  %275 = icmp eq i32 %274, 0
  %276 = select i1 %275, ptr @.str.3, ptr @.str.155
  %277 = and i32 %161, 33554432
  %278 = icmp eq i32 %277, 0
  %279 = select i1 %278, ptr @.str.3, ptr @.str.156
  %280 = and i32 %161, 67108864
  %281 = icmp eq i32 %280, 0
  %282 = select i1 %281, ptr @.str.3, ptr @.str.157
  %283 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %231, ptr noundef nonnull %234, ptr noundef nonnull %237, ptr noundef nonnull %240, ptr noundef nonnull %243, ptr noundef nonnull %246, ptr noundef nonnull %249, ptr noundef nonnull %252, ptr noundef nonnull %255, ptr noundef nonnull %258, ptr noundef nonnull %261, ptr noundef nonnull %264, ptr noundef nonnull %267, ptr noundef nonnull %270, ptr noundef nonnull %273, ptr noundef nonnull %276, ptr noundef nonnull %279, ptr noundef nonnull %282) #16
  br label %284

284:                                              ; preds = %229, %172, %159
  br label %285

285:                                              ; preds = %563, %284
  %286 = phi i32 [ %564, %563 ], [ 0, %284 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %3, i8 0, i32 20, i1 false) #15
  call void @llvm.lifetime.start.p0(i64 70, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(70) %4, i8 0, i32 70, i1 false) #15
  %287 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 6
  %288 = load i32, ptr %287, align 4
  %289 = and i32 %288, 65536
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %563, label %291

291:                                              ; preds = %285
  %292 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 1
  %293 = load ptr, ptr %292, align 4
  %294 = call ptr @ata_dev_phys_link(ptr noundef %293) #15
  %295 = icmp eq ptr %294, %8
  br i1 %295, label %296, label %563

296:                                              ; preds = %291
  %297 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 20
  %298 = load i32, ptr %297, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %563, label %300

300:                                              ; preds = %296
  %301 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 11
  %302 = load i32, ptr %301, align 4
  %303 = icmp eq i32 %302, 3
  br i1 %303, label %320, label %304

304:                                              ; preds = %300
  %305 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 1
  %306 = load i8, ptr %305, align 4
  %307 = add i8 %306, 1
  %308 = icmp ult i8 %307, 12
  br i1 %308, label %309, label %313

309:                                              ; preds = %304
  %310 = sext i8 %307 to i32
  %311 = getelementptr inbounds [12 x ptr], ptr @switch.table.ata_eh_report, i32 0, i32 %310
  %312 = load ptr, ptr %311, align 4
  br label %313

313:                                              ; preds = %309, %304
  %314 = phi ptr [ null, %304 ], [ %312, %309 ]
  %315 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 13
  %316 = load i32, ptr %315, align 4
  %317 = getelementptr [3 x ptr], ptr @ata_eh_link_report.dma_str, i32 0, i32 %302
  %318 = load ptr, ptr %317, align 4
  %319 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 20, ptr noundef nonnull @.str.167, ptr noundef %314, i32 noundef %316, ptr noundef %318) #15
  br label %320

320:                                              ; preds = %313, %300
  %321 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 1
  %322 = load i8, ptr %321, align 4
  %323 = and i8 %322, 8
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %343, label %325

325:                                              ; preds = %320
  %326 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 5
  %327 = load ptr, ptr %292, align 4
  %328 = getelementptr inbounds %struct.ata_device, ptr %327, i32 0, i32 17
  %329 = load i32, ptr %328, align 8
  %330 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 2
  %331 = load ptr, ptr %330, align 4
  %332 = icmp eq ptr %331, null
  br i1 %332, label %339, label %333

333:                                              ; preds = %325
  %334 = getelementptr inbounds %struct.scsi_cmnd, ptr %331, i32 0, i32 16
  %335 = load ptr, ptr %334, align 4
  %336 = getelementptr inbounds %struct.scsi_cmnd, ptr %331, i32 0, i32 14
  %337 = load i16, ptr %336, align 4
  %338 = zext i16 %337 to i32
  br label %339

339:                                              ; preds = %333, %325
  %340 = phi ptr [ %335, %333 ], [ %326, %325 ]
  %341 = phi i32 [ %338, %333 ], [ %329, %325 ]
  %342 = call i32 @__scsi_format_command(ptr noundef nonnull %4, i32 noundef 70, ptr noundef %340, i32 noundef %341) #15
  br label %370

343:                                              ; preds = %320
  %344 = load ptr, ptr %292, align 4
  %345 = load ptr, ptr %344, align 64
  %346 = load ptr, ptr %345, align 64
  %347 = getelementptr inbounds %struct.ata_port, ptr %346, i32 0, i32 5
  %348 = load i32, ptr %347, align 4
  %349 = getelementptr inbounds %struct.ata_link, ptr %345, i32 0, i32 1
  %350 = load i32, ptr %349, align 4
  %351 = getelementptr inbounds %struct.ata_device, ptr %344, i32 0, i32 1
  %352 = load i32, ptr %351, align 4
  %353 = add i32 %352, %350
  %354 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 14
  %355 = load i8, ptr %354, align 1
  br label %356

356:                                              ; preds = %361, %343
  %357 = phi i32 [ 0, %343 ], [ %362, %361 ]
  %358 = getelementptr [92 x %struct.anon.80], ptr @ata_get_cmd_name.cmd_descr, i32 0, i32 %357
  %359 = load i8, ptr %358, align 4
  %360 = icmp eq i8 %359, %355
  br i1 %360, label %364, label %361

361:                                              ; preds = %356
  %362 = add nuw nsw i32 %357, 1
  %363 = icmp eq i32 %362, 91
  br i1 %363, label %367, label %356

364:                                              ; preds = %356
  %365 = getelementptr [92 x %struct.anon.80], ptr @ata_get_cmd_name.cmd_descr, i32 0, i32 %357, i32 1
  %366 = load ptr, ptr %365, align 4
  br label %367

367:                                              ; preds = %364, %361
  %368 = phi ptr [ %366, %364 ], [ @.str.102, %361 ]
  %369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %348, i32 noundef %353, ptr noundef %368) #16
  br label %370

370:                                              ; preds = %367, %339
  %371 = load ptr, ptr %292, align 4
  %372 = load ptr, ptr %371, align 64
  %373 = load ptr, ptr %372, align 64
  %374 = getelementptr inbounds %struct.ata_port, ptr %373, i32 0, i32 5
  %375 = load i32, ptr %374, align 4
  %376 = getelementptr inbounds %struct.ata_link, ptr %372, i32 0, i32 1
  %377 = load i32, ptr %376, align 4
  %378 = getelementptr inbounds %struct.ata_device, ptr %371, i32 0, i32 1
  %379 = load i32, ptr %378, align 4
  %380 = add i32 %379, %377
  %381 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 14
  %382 = load i8, ptr %381, align 1
  %383 = zext i8 %382 to i32
  %384 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 8
  %385 = load i8, ptr %384, align 1
  %386 = zext i8 %385 to i32
  %387 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 9
  %388 = load i8, ptr %387, align 4
  %389 = zext i8 %388 to i32
  %390 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 10
  %391 = load i8, ptr %390, align 1
  %392 = zext i8 %391 to i32
  %393 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 11
  %394 = load i8, ptr %393, align 2
  %395 = zext i8 %394 to i32
  %396 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 12
  %397 = load i8, ptr %396, align 1
  %398 = zext i8 %397 to i32
  %399 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 3
  %400 = load i8, ptr %399, align 2
  %401 = zext i8 %400 to i32
  %402 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 4
  %403 = load i8, ptr %402, align 1
  %404 = zext i8 %403 to i32
  %405 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 5
  %406 = load i8, ptr %405, align 4
  %407 = zext i8 %406 to i32
  %408 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 6
  %409 = load i8, ptr %408, align 1
  %410 = zext i8 %409 to i32
  %411 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 7
  %412 = load i8, ptr %411, align 2
  %413 = zext i8 %412 to i32
  %414 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 4, i32 13
  %415 = load i8, ptr %414, align 4
  %416 = zext i8 %415 to i32
  %417 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 7
  %418 = load i32, ptr %417, align 4
  %419 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 21, i32 14
  %420 = load i8, ptr %419, align 1
  %421 = zext i8 %420 to i32
  %422 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 21, i32 8
  %423 = load i8, ptr %422, align 1
  %424 = zext i8 %423 to i32
  %425 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 21, i32 9
  %426 = load i8, ptr %425, align 4
  %427 = zext i8 %426 to i32
  %428 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 21, i32 10
  %429 = load i8, ptr %428, align 1
  %430 = zext i8 %429 to i32
  %431 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 21, i32 11
  %432 = load i8, ptr %431, align 2
  %433 = zext i8 %432 to i32
  %434 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 21, i32 12
  %435 = load i8, ptr %434, align 1
  %436 = zext i8 %435 to i32
  %437 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 21, i32 3
  %438 = load i8, ptr %437, align 2
  %439 = zext i8 %438 to i32
  %440 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 21, i32 4
  %441 = load i8, ptr %440, align 1
  %442 = zext i8 %441 to i32
  %443 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 21, i32 5
  %444 = load i8, ptr %443, align 4
  %445 = zext i8 %444 to i32
  %446 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 21, i32 6
  %447 = load i8, ptr %446, align 1
  %448 = zext i8 %447 to i32
  %449 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 21, i32 7
  %450 = load i8, ptr %449, align 2
  %451 = zext i8 %450 to i32
  %452 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %286, i32 21, i32 13
  %453 = load i8, ptr %452, align 4
  %454 = zext i8 %453 to i32
  %455 = load i32, ptr %297, align 4
  %456 = and i32 %455, 32
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %486

458:                                              ; preds = %370
  %459 = and i32 %455, 16
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %486

461:                                              ; preds = %458
  %462 = and i32 %455, 4
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %486

464:                                              ; preds = %461
  %465 = and i32 %455, 2
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %486

467:                                              ; preds = %464
  %468 = and i32 %455, 64
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %486

470:                                              ; preds = %467
  %471 = and i32 %455, 8
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %486

473:                                              ; preds = %470
  %474 = and i32 %455, 128
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %486

476:                                              ; preds = %473
  %477 = and i32 %455, 1
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %486

479:                                              ; preds = %476
  %480 = and i32 %455, 1024
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %486

482:                                              ; preds = %479
  %483 = and i32 %455, 512
  %484 = icmp eq i32 %483, 0
  %485 = select i1 %484, ptr @.str.194, ptr @.str.193
  br label %486

486:                                              ; preds = %482, %479, %476, %473, %470, %467, %464, %461, %458, %370
  %487 = phi ptr [ @.str.184, %370 ], [ @.str.185, %458 ], [ @.str.186, %461 ], [ @.str.187, %464 ], [ @.str.188, %467 ], [ @.str.189, %470 ], [ @.str.190, %473 ], [ @.str.191, %476 ], [ @.str.192, %479 ], [ %485, %482 ]
  %488 = and i32 %455, 1024
  %489 = icmp eq i32 %488, 0
  %490 = select i1 %489, ptr @.str.3, ptr @.str.170
  %491 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %375, i32 noundef %380, i32 noundef %383, i32 noundef %386, i32 noundef %389, i32 noundef %392, i32 noundef %395, i32 noundef %398, i32 noundef %401, i32 noundef %404, i32 noundef %407, i32 noundef %410, i32 noundef %413, i32 noundef %416, i32 noundef %418, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %421, i32 noundef %424, i32 noundef %427, i32 noundef %430, i32 noundef %433, i32 noundef %436, i32 noundef %439, i32 noundef %442, i32 noundef %445, i32 noundef %448, i32 noundef %451, i32 noundef %454, i32 noundef %455, ptr noundef nonnull %487, ptr noundef nonnull %490) #16
  %492 = load i8, ptr %419, align 1
  %493 = zext i8 %492 to i32
  %494 = and i32 %493, 235
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %528, label %496

496:                                              ; preds = %486
  %497 = and i32 %493, 128
  %498 = icmp eq i32 %497, 0
  %499 = load ptr, ptr %292, align 4
  %500 = load ptr, ptr %499, align 64
  %501 = load ptr, ptr %500, align 64
  %502 = getelementptr inbounds %struct.ata_port, ptr %501, i32 0, i32 5
  %503 = load i32, ptr %502, align 4
  %504 = getelementptr inbounds %struct.ata_link, ptr %500, i32 0, i32 1
  %505 = load i32, ptr %504, align 4
  %506 = getelementptr inbounds %struct.ata_device, ptr %499, i32 0, i32 1
  %507 = load i32, ptr %506, align 4
  %508 = add i32 %507, %505
  br i1 %498, label %511, label %509

509:                                              ; preds = %496
  %510 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i32 noundef %503, i32 noundef %508) #16
  br label %528

511:                                              ; preds = %496
  %512 = and i32 %493, 64
  %513 = icmp eq i32 %512, 0
  %514 = select i1 %513, ptr @.str.3, ptr @.str.173
  %515 = and i32 %493, 32
  %516 = icmp eq i32 %515, 0
  %517 = select i1 %516, ptr @.str.3, ptr @.str.174
  %518 = and i32 %493, 8
  %519 = icmp eq i32 %518, 0
  %520 = select i1 %519, ptr @.str.3, ptr @.str.175
  %521 = and i32 %493, 2
  %522 = icmp eq i32 %521, 0
  %523 = select i1 %522, ptr @.str.3, ptr @.str.176
  %524 = and i32 %493, 1
  %525 = icmp eq i32 %524, 0
  %526 = select i1 %525, ptr @.str.3, ptr @.str.177
  %527 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %503, i32 noundef %508, ptr noundef nonnull %514, ptr noundef nonnull %517, ptr noundef nonnull %520, ptr noundef nonnull %523, ptr noundef nonnull %526) #16
  br label %528

528:                                              ; preds = %511, %509, %486
  %529 = load i8, ptr %381, align 1
  %530 = icmp eq i8 %529, -96
  br i1 %530, label %563, label %531

531:                                              ; preds = %528
  %532 = load i8, ptr %422, align 1
  %533 = zext i8 %532 to i32
  %534 = and i32 %533, 213
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %563, label %536

536:                                              ; preds = %531
  %537 = load ptr, ptr %292, align 4
  %538 = load ptr, ptr %537, align 64
  %539 = load ptr, ptr %538, align 64
  %540 = getelementptr inbounds %struct.ata_port, ptr %539, i32 0, i32 5
  %541 = load i32, ptr %540, align 4
  %542 = getelementptr inbounds %struct.ata_link, ptr %538, i32 0, i32 1
  %543 = load i32, ptr %542, align 4
  %544 = getelementptr inbounds %struct.ata_device, ptr %537, i32 0, i32 1
  %545 = load i32, ptr %544, align 4
  %546 = add i32 %545, %543
  %547 = and i32 %533, 128
  %548 = icmp eq i32 %547, 0
  %549 = select i1 %548, ptr @.str.3, ptr @.str.179
  %550 = and i32 %533, 64
  %551 = icmp eq i32 %550, 0
  %552 = select i1 %551, ptr @.str.3, ptr @.str.180
  %553 = and i32 %533, 1
  %554 = icmp eq i32 %553, 0
  %555 = select i1 %554, ptr @.str.3, ptr @.str.181
  %556 = and i32 %533, 16
  %557 = icmp eq i32 %556, 0
  %558 = select i1 %557, ptr @.str.3, ptr @.str.182
  %559 = and i32 %533, 4
  %560 = icmp eq i32 %559, 0
  %561 = select i1 %560, ptr @.str.3, ptr @.str.183
  %562 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, i32 noundef %541, i32 noundef %546, ptr noundef nonnull %549, ptr noundef nonnull %552, ptr noundef nonnull %555, ptr noundef nonnull %558, ptr noundef nonnull %561) #16
  br label %563

563:                                              ; preds = %536, %531, %528, %296, %291, %285
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  %564 = add nuw nsw i32 %286, 1
  %565 = icmp eq i32 %564, 32
  br i1 %565, label %566, label %285

566:                                              ; preds = %563, %55, %7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #15
  %567 = call ptr @ata_link_next(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 1) #15
  %568 = icmp eq ptr %567, null
  br i1 %568, label %569, label %7

569:                                              ; preds = %566, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_eh_reset(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = load ptr, ptr %0, align 64
  %9 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 26
  %10 = load ptr, ptr %9, align 64
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.ata_link, ptr %10, i32 0, i32 12
  %13 = select i1 %11, ptr null, ptr %12
  %14 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !8
  %19 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 3
  %20 = icmp eq i32 %18, 0
  %21 = and i32 %15, 512
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 4, i32 1
  %24 = and i32 %15, 2
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr %4, ptr null
  %27 = and i32 %15, 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr %3, ptr null
  %30 = and i32 %17, 196608
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %6
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %33, %35
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40, !prof !9

38:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2473, i32 noundef 9, ptr noundef null) #15
  %39 = load i32, ptr %34, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i32 [ %39, %38 ], [ %35, %32 ]
  %42 = add i32 %41, 500
  %43 = sub i32 %33, %42
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = sub i32 %42, %33
  %47 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %46) #15
  br label %48

48:                                               ; preds = %45, %40, %6
  %49 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %50) #15
  %52 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 4
  %53 = load i32, ptr %52, align 16
  %54 = or i32 %53, 256
  store i32 %54, ptr %52, align 16
  %55 = load ptr, ptr %49, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %55, i32 noundef %51) #15
  tail call void @ata_eh_about_to_do(ptr noundef %0, ptr noundef null, i32 noundef 6)
  %56 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 1
  br label %60

60:                                               ; preds = %69, %58
  %61 = phi ptr [ %56, %58 ], [ %70, %69 ]
  %62 = getelementptr inbounds %struct.ata_device, ptr %61, i32 0, i32 11
  store i8 8, ptr %62, align 8
  %63 = getelementptr inbounds %struct.ata_device, ptr %61, i32 0, i32 12
  store i8 -1, ptr %63, align 1
  %64 = load ptr, ptr %59, align 4
  %65 = getelementptr inbounds %struct.ata_port_operations, ptr %64, i32 0, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  tail call void %66(ptr noundef %8, ptr noundef nonnull %61) #15
  br label %69

69:                                               ; preds = %68, %60
  %70 = tail call ptr @ata_dev_next(ptr noundef nonnull %61, ptr noundef %0, i32 noundef 2) #15
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %60

72:                                               ; preds = %69, %48
  %73 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, -7
  store i32 %75, ptr %73, align 4
  %76 = icmp eq ptr %26, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = icmp eq ptr %29, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %77, %72
  %80 = phi i32 [ 4, %72 ], [ 2, %77 ]
  %81 = phi ptr [ %4, %72 ], [ %3, %77 ]
  %82 = or i32 %75, %80
  store i32 %82, ptr %73, align 4
  br label %83

83:                                               ; preds = %79, %77
  %84 = phi ptr [ null, %77 ], [ %81, %79 ]
  %85 = icmp eq ptr %2, null
  br i1 %85, label %167, label %86

86:                                               ; preds = %83
  %87 = load volatile i32, ptr @jiffies, align 64
  %88 = add i32 %87, 1000
  br i1 %11, label %89, label %91

89:                                               ; preds = %86
  %90 = tail call i32 %2(ptr noundef %0, i32 noundef %88) #15
  br label %105

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ata_eh_info, ptr %13, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, -7
  store i32 %94, ptr %92, align 4
  %95 = load i32, ptr %73, align 4
  %96 = or i32 %95, %94
  store i32 %96, ptr %92, align 4
  %97 = tail call i32 %2(ptr noundef %0, i32 noundef %88) #15
  switch i32 %97, label %105 [
    i32 -2, label %98
    i32 0, label %98
  ]

98:                                               ; preds = %91, %91
  %99 = tail call i32 %2(ptr noundef nonnull %10, i32 noundef %88) #15
  %100 = icmp eq i32 %99, -2
  %101 = load i32, ptr %92, align 4
  %102 = load i32, ptr %73, align 4
  %103 = or i32 %102, %101
  store i32 %103, ptr %73, align 4
  %104 = select i1 %100, i32 %97, i32 %99
  br label %105

105:                                              ; preds = %98, %91, %89
  %106 = phi i32 [ %97, %91 ], [ %90, %89 ], [ %104, %98 ]
  switch i32 %106, label %119 [
    i32 0, label %138
    i32 -2, label %107
  ]

107:                                              ; preds = %105
  %108 = load i32, ptr %73, align 4
  %109 = and i32 %108, -7
  store i32 %109, ptr %73, align 4
  %110 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #15
  %111 = icmp eq ptr %110, null
  br i1 %111, label %714, label %112

112:                                              ; preds = %112, %107
  %113 = phi ptr [ %117, %112 ], [ %110, %107 ]
  %114 = getelementptr inbounds %struct.ata_device, ptr %113, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr i32, ptr %19, i32 %115
  store i32 11, ptr %116, align 4
  %117 = tail call ptr @ata_dev_next(ptr noundef nonnull %113, ptr noundef %0, i32 noundef 2) #15
  %118 = icmp eq ptr %117, null
  br i1 %118, label %714, label %112

119:                                              ; preds = %105
  %120 = load ptr, ptr %0, align 64
  %121 = getelementptr inbounds %struct.ata_port, ptr %120, i32 0, i32 27
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.ata_port, ptr %120, i32 0, i32 26
  %126 = load ptr, ptr %125, align 64
  %127 = icmp eq ptr %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %124, %119
  %129 = getelementptr inbounds %struct.ata_port, ptr %120, i32 0, i32 5
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %130, i32 noundef %132, i32 noundef %106) #16
  br label %714

134:                                              ; preds = %124
  %135 = getelementptr inbounds %struct.ata_port, ptr %120, i32 0, i32 5
  %136 = load i32, ptr %135, align 4
  %137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %136, i32 noundef %106) #16
  br label %714

138:                                              ; preds = %105
  %139 = icmp eq ptr %84, null
  br i1 %139, label %167, label %140

140:                                              ; preds = %138
  %141 = load i32, ptr %73, align 4
  %142 = and i32 %141, 6
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %167

144:                                              ; preds = %140
  %145 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #15
  %146 = icmp eq ptr %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %147, %144
  %148 = phi ptr [ %152, %147 ], [ %145, %144 ]
  %149 = getelementptr inbounds %struct.ata_device, ptr %148, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr i32, ptr %19, i32 %150
  store i32 11, ptr %151, align 4
  %152 = tail call ptr @ata_dev_next(ptr noundef nonnull %148, ptr noundef %0, i32 noundef 2) #15
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %147

154:                                              ; preds = %147, %144
  %155 = load i32, ptr %52, align 16
  %156 = and i32 %155, 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %714, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %0, align 64
  %160 = getelementptr inbounds %struct.ata_port, ptr %159, i32 0, i32 25
  %161 = icmp eq ptr %160, %0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.ata_port, ptr %159, i32 0, i32 26
  %164 = load ptr, ptr %163, align 64
  %165 = icmp eq ptr %164, %0
  br i1 %165, label %166, label %714

166:                                              ; preds = %162, %158
  tail call void @ata_eh_thaw_port(ptr noundef %8)
  br label %714

167:                                              ; preds = %140, %138, %83
  %168 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %169 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 8
  %170 = getelementptr inbounds %struct.ata_link, ptr %10, i32 0, i32 1
  %171 = icmp eq ptr %29, null
  %172 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 9
  %173 = getelementptr inbounds %struct.ata_link, ptr %10, i32 0, i32 9
  %174 = icmp eq ptr %5, null
  %175 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 11
  %176 = getelementptr inbounds %struct.ata_link, ptr %10, i32 0, i32 11
  %177 = icmp ne i32 %1, 0
  %178 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 31
  %179 = add nsw i32 %23, -2
  %180 = add nsw i32 %23, -1
  br label %181

181:                                              ; preds = %837, %167
  %182 = phi i32 [ 0, %167 ], [ %739, %837 ]
  %183 = phi ptr [ %84, %167 ], [ %838, %837 ]
  %184 = phi i32 [ 0, %167 ], [ %196, %837 ]
  %185 = phi i32 [ %15, %167 ], [ %726, %837 ]
  %186 = load ptr, ptr %0, align 64
  %187 = getelementptr inbounds %struct.ata_port, ptr %186, i32 0, i32 25
  %188 = icmp eq ptr %187, %0
  br i1 %188, label %193, label %189

189:                                              ; preds = %181
  %190 = getelementptr inbounds %struct.ata_port, ptr %186, i32 0, i32 26
  %191 = load ptr, ptr %190, align 64
  %192 = icmp eq ptr %191, %0
  br i1 %192, label %193, label %194

193:                                              ; preds = %189, %181
  call void @ata_eh_freeze_port(ptr noundef %8)
  br label %194

194:                                              ; preds = %193, %189
  %195 = load volatile i32, ptr @jiffies, align 64
  %196 = add nuw nsw i32 %184, 1
  %197 = getelementptr [5 x i32], ptr @ata_eh_reset_timeouts, i32 0, i32 %184
  %198 = load i32, ptr %197, align 4
  %199 = call i32 @__msecs_to_jiffies(i32 noundef %198) #15
  %200 = add i32 %199, %195
  %201 = icmp eq ptr %183, null
  br i1 %201, label %452, label %202

202:                                              ; preds = %194
  br i1 %20, label %203, label %225

203:                                              ; preds = %202
  %204 = load ptr, ptr %0, align 64
  %205 = getelementptr inbounds %struct.ata_port, ptr %204, i32 0, i32 27
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.ata_port, ptr %204, i32 0, i32 26
  %210 = load ptr, ptr %209, align 64
  %211 = icmp eq ptr %210, null
  br i1 %211, label %219, label %212

212:                                              ; preds = %208, %203
  %213 = getelementptr inbounds %struct.ata_port, ptr %204, i32 0, i32 5
  %214 = load i32, ptr %213, align 4
  %215 = load i32, ptr %168, align 4
  %216 = icmp eq ptr %183, %29
  %217 = select i1 %216, ptr @.str.106, ptr @.str.107
  %218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %214, i32 noundef %215, ptr noundef nonnull %217) #16
  br label %225

219:                                              ; preds = %208
  %220 = getelementptr inbounds %struct.ata_port, ptr %204, i32 0, i32 5
  %221 = load i32, ptr %220, align 4
  %222 = icmp eq ptr %183, %29
  %223 = select i1 %222, ptr @.str.106, ptr @.str.107
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %221, ptr noundef nonnull %223) #16
  br label %225

225:                                              ; preds = %219, %212, %202
  %226 = load volatile i32, ptr @jiffies, align 64
  store i32 %226, ptr %169, align 4
  %227 = icmp eq ptr %183, %26
  %228 = load i32, ptr %16, align 4
  br i1 %227, label %229, label %246

229:                                              ; preds = %225
  %230 = or i32 %228, 131072
  store i32 %230, ptr %16, align 4
  %231 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_link_hardreset_begin, i32 0, i32 1), align 4
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %263

233:                                              ; preds = %229
  %234 = tail call ptr @llvm.thread.pointer() #15
  %235 = getelementptr inbounds %struct.thread_info, ptr %234, i32 0, i32 2
  %236 = load i32, ptr %235, align 8
  %237 = lshr i32 %236, 5
  %238 = getelementptr i32, ptr @__cpu_online_mask, i32 %237
  %239 = load volatile i32, ptr %238, align 4
  %240 = and i32 %236, 31
  %241 = shl nuw i32 1, %240
  %242 = and i32 %241, %239
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %263, label %244

244:                                              ; preds = %233
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !25
  %245 = call i32 @__traceiter_ata_link_hardreset_begin(ptr noundef null, ptr noundef %0, ptr noundef %19, i32 noundef %200) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %263

246:                                              ; preds = %225
  %247 = or i32 %228, 65536
  store i32 %247, ptr %16, align 4
  %248 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_link_softreset_begin, i32 0, i32 1), align 4
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %263

250:                                              ; preds = %246
  %251 = tail call ptr @llvm.thread.pointer() #15
  %252 = getelementptr inbounds %struct.thread_info, ptr %251, i32 0, i32 2
  %253 = load i32, ptr %252, align 8
  %254 = lshr i32 %253, 5
  %255 = getelementptr i32, ptr @__cpu_online_mask, i32 %254
  %256 = load volatile i32, ptr %255, align 4
  %257 = and i32 %253, 31
  %258 = shl nuw i32 1, %257
  %259 = and i32 %258, %256
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %250
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  %262 = call i32 @__traceiter_ata_link_softreset_begin(ptr noundef null, ptr noundef %0, ptr noundef %19, i32 noundef %200) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  br label %263

263:                                              ; preds = %261, %250, %246, %244, %233, %229
  %264 = call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #15
  %265 = icmp eq ptr %264, null
  br i1 %265, label %273, label %266

266:                                              ; preds = %266, %263
  %267 = phi ptr [ %271, %266 ], [ %264, %263 ]
  %268 = getelementptr inbounds %struct.ata_device, ptr %267, i32 0, i32 1
  %269 = load i32, ptr %268, align 4
  %270 = getelementptr i32, ptr %19, i32 %269
  store i32 0, ptr %270, align 4
  %271 = call ptr @ata_dev_next(ptr noundef nonnull %267, ptr noundef %0, i32 noundef 2) #15
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %266

273:                                              ; preds = %266, %263
  %274 = call i32 %183(ptr noundef %0, ptr noundef %19, i32 noundef %200) #15
  br i1 %227, label %275, label %291

275:                                              ; preds = %273
  %276 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_link_hardreset_end, i32 0, i32 1), align 4
  %277 = icmp sgt i32 %276, 0
  br i1 %277, label %278, label %307

278:                                              ; preds = %275
  %279 = tail call ptr @llvm.thread.pointer() #15
  %280 = getelementptr inbounds %struct.thread_info, ptr %279, i32 0, i32 2
  %281 = load i32, ptr %280, align 8
  %282 = lshr i32 %281, 5
  %283 = getelementptr i32, ptr @__cpu_online_mask, i32 %282
  %284 = load volatile i32, ptr %283, align 4
  %285 = and i32 %281, 31
  %286 = shl nuw i32 1, %285
  %287 = and i32 %286, %284
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %307, label %289

289:                                              ; preds = %278
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !29
  %290 = call i32 @__traceiter_ata_link_hardreset_end(ptr noundef null, ptr noundef %0, ptr noundef %19, i32 noundef %274) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  br label %307

291:                                              ; preds = %273
  %292 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_link_softreset_end, i32 0, i32 1), align 4
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %307

294:                                              ; preds = %291
  %295 = tail call ptr @llvm.thread.pointer() #15
  %296 = getelementptr inbounds %struct.thread_info, ptr %295, i32 0, i32 2
  %297 = load i32, ptr %296, align 8
  %298 = lshr i32 %297, 5
  %299 = getelementptr i32, ptr @__cpu_online_mask, i32 %298
  %300 = load volatile i32, ptr %299, align 4
  %301 = and i32 %297, 31
  %302 = shl nuw i32 1, %301
  %303 = and i32 %302, %300
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %294
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !31
  %306 = call i32 @__traceiter_ata_link_softreset_end(ptr noundef null, ptr noundef %0, ptr noundef %19, i32 noundef %274) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !32
  br label %307

307:                                              ; preds = %305, %294, %291, %289, %278, %275
  switch i32 %274, label %722 [
    i32 -11, label %308
    i32 0, label %308
  ]

308:                                              ; preds = %307, %307
  %309 = xor i1 %227, true
  %310 = select i1 %11, i1 true, i1 %309
  br i1 %310, label %365, label %311

311:                                              ; preds = %308
  br i1 %20, label %312, label %330

312:                                              ; preds = %311
  %313 = load ptr, ptr %10, align 64
  %314 = getelementptr inbounds %struct.ata_port, ptr %313, i32 0, i32 27
  %315 = load i32, ptr %314, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.ata_port, ptr %313, i32 0, i32 26
  %319 = load ptr, ptr %318, align 64
  %320 = icmp eq ptr %319, null
  br i1 %320, label %326, label %321

321:                                              ; preds = %317, %312
  %322 = getelementptr inbounds %struct.ata_port, ptr %313, i32 0, i32 5
  %323 = load i32, ptr %322, align 4
  %324 = load i32, ptr %170, align 4
  %325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %323, i32 noundef %324) #16
  br label %330

326:                                              ; preds = %317
  %327 = getelementptr inbounds %struct.ata_port, ptr %313, i32 0, i32 5
  %328 = load i32, ptr %327, align 4
  %329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %328) #16
  br label %330

330:                                              ; preds = %326, %321, %311
  call void @ata_eh_about_to_do(ptr noundef nonnull %10, ptr noundef null, i32 noundef 6)
  %331 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_slave_hardreset_begin, i32 0, i32 1), align 4
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %346

333:                                              ; preds = %330
  %334 = tail call ptr @llvm.thread.pointer() #15
  %335 = getelementptr inbounds %struct.thread_info, ptr %334, i32 0, i32 2
  %336 = load i32, ptr %335, align 8
  %337 = lshr i32 %336, 5
  %338 = getelementptr i32, ptr @__cpu_online_mask, i32 %337
  %339 = load volatile i32, ptr %338, align 4
  %340 = and i32 %336, 31
  %341 = shl nuw i32 1, %340
  %342 = and i32 %341, %339
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %346, label %344

344:                                              ; preds = %333
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !33
  %345 = call i32 @__traceiter_ata_slave_hardreset_begin(ptr noundef null, ptr noundef nonnull %10, ptr noundef %19, i32 noundef %200) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !34
  br label %346

346:                                              ; preds = %344, %333, %330
  %347 = call i32 %183(ptr noundef nonnull %10, ptr noundef %19, i32 noundef %200) #15
  %348 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_slave_hardreset_end, i32 0, i32 1), align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %363

350:                                              ; preds = %346
  %351 = tail call ptr @llvm.thread.pointer() #15
  %352 = getelementptr inbounds %struct.thread_info, ptr %351, i32 0, i32 2
  %353 = load i32, ptr %352, align 8
  %354 = lshr i32 %353, 5
  %355 = getelementptr i32, ptr @__cpu_online_mask, i32 %354
  %356 = load volatile i32, ptr %355, align 4
  %357 = and i32 %353, 31
  %358 = shl nuw i32 1, %357
  %359 = and i32 %358, %356
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %350
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !35
  %362 = call i32 @__traceiter_ata_slave_hardreset_end(ptr noundef null, ptr noundef nonnull %10, ptr noundef %19, i32 noundef %347) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !36
  br label %363

363:                                              ; preds = %361, %350, %346
  switch i32 %347, label %722 [
    i32 -11, label %364
    i32 0, label %365
  ]

364:                                              ; preds = %363
  br label %365

365:                                              ; preds = %364, %363, %308
  %366 = phi i32 [ %274, %308 ], [ %274, %363 ], [ -11, %364 ]
  br i1 %227, label %367, label %476

367:                                              ; preds = %365
  %368 = load i32, ptr %14, align 8
  %369 = and i32 %368, 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %476

371:                                              ; preds = %367
  %372 = call zeroext i1 @ata_link_offline(ptr noundef %0) #15
  br i1 %372, label %476, label %373

373:                                              ; preds = %371
  %374 = icmp eq i32 %366, -11
  br i1 %374, label %388, label %375

375:                                              ; preds = %373
  %376 = load ptr, ptr %0, align 64
  %377 = getelementptr inbounds %struct.ata_port, ptr %376, i32 0, i32 3
  %378 = load i32, ptr %377, align 4
  %379 = and i32 %378, 524288
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %476, label %381

381:                                              ; preds = %375
  %382 = getelementptr inbounds %struct.ata_port, ptr %376, i32 0, i32 25
  %383 = icmp eq ptr %382, %0
  br i1 %383, label %388, label %384

384:                                              ; preds = %381
  %385 = getelementptr inbounds %struct.ata_port, ptr %376, i32 0, i32 26
  %386 = load ptr, ptr %385, align 64
  %387 = icmp eq ptr %386, %0
  br i1 %387, label %388, label %476

388:                                              ; preds = %384, %381, %373
  br i1 %171, label %389, label %407

389:                                              ; preds = %388
  %390 = load ptr, ptr %0, align 64
  %391 = getelementptr inbounds %struct.ata_port, ptr %390, i32 0, i32 27
  %392 = load i32, ptr %391, align 4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %389
  %395 = getelementptr inbounds %struct.ata_port, ptr %390, i32 0, i32 26
  %396 = load ptr, ptr %395, align 64
  %397 = icmp eq ptr %396, null
  br i1 %397, label %403, label %398

398:                                              ; preds = %394, %389
  %399 = getelementptr inbounds %struct.ata_port, ptr %390, i32 0, i32 5
  %400 = load i32, ptr %399, align 4
  %401 = load i32, ptr %168, align 4
  %402 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %400, i32 noundef %401) #16
  br label %722

403:                                              ; preds = %394
  %404 = getelementptr inbounds %struct.ata_port, ptr %390, i32 0, i32 5
  %405 = load i32, ptr %404, align 4
  %406 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %405) #16
  br label %722

407:                                              ; preds = %388
  call void @ata_eh_about_to_do(ptr noundef %0, ptr noundef null, i32 noundef 6)
  %408 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_link_softreset_begin, i32 0, i32 1), align 4
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %410, label %423

410:                                              ; preds = %407
  %411 = tail call ptr @llvm.thread.pointer() #15
  %412 = getelementptr inbounds %struct.thread_info, ptr %411, i32 0, i32 2
  %413 = load i32, ptr %412, align 8
  %414 = lshr i32 %413, 5
  %415 = getelementptr i32, ptr @__cpu_online_mask, i32 %414
  %416 = load volatile i32, ptr %415, align 4
  %417 = and i32 %413, 31
  %418 = shl nuw i32 1, %417
  %419 = and i32 %418, %416
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %410
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  %422 = call i32 @__traceiter_ata_link_softreset_begin(ptr noundef null, ptr noundef %0, ptr noundef %19, i32 noundef %200) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  br label %423

423:                                              ; preds = %421, %410, %407
  %424 = call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #15
  %425 = icmp eq ptr %424, null
  br i1 %425, label %433, label %426

426:                                              ; preds = %426, %423
  %427 = phi ptr [ %431, %426 ], [ %424, %423 ]
  %428 = getelementptr inbounds %struct.ata_device, ptr %427, i32 0, i32 1
  %429 = load i32, ptr %428, align 4
  %430 = getelementptr i32, ptr %19, i32 %429
  store i32 0, ptr %430, align 4
  %431 = call ptr @ata_dev_next(ptr noundef nonnull %427, ptr noundef %0, i32 noundef 2) #15
  %432 = icmp eq ptr %431, null
  br i1 %432, label %433, label %426

433:                                              ; preds = %426, %423
  %434 = call i32 %29(ptr noundef %0, ptr noundef %19, i32 noundef %200) #15
  %435 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_link_softreset_end, i32 0, i32 1), align 4
  %436 = icmp sgt i32 %435, 0
  br i1 %436, label %437, label %450

437:                                              ; preds = %433
  %438 = tail call ptr @llvm.thread.pointer() #15
  %439 = getelementptr inbounds %struct.thread_info, ptr %438, i32 0, i32 2
  %440 = load i32, ptr %439, align 8
  %441 = lshr i32 %440, 5
  %442 = getelementptr i32, ptr @__cpu_online_mask, i32 %441
  %443 = load volatile i32, ptr %442, align 4
  %444 = and i32 %440, 31
  %445 = shl nuw i32 1, %444
  %446 = and i32 %445, %443
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %450, label %448

448:                                              ; preds = %437
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !31
  %449 = call i32 @__traceiter_ata_link_softreset_end(ptr noundef null, ptr noundef %0, ptr noundef %19, i32 noundef %434) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !32
  br label %450

450:                                              ; preds = %448, %437, %433
  %451 = icmp eq i32 %434, 0
  br i1 %451, label %476, label %722

452:                                              ; preds = %194
  br i1 %20, label %453, label %471

453:                                              ; preds = %452
  %454 = load ptr, ptr %0, align 64
  %455 = getelementptr inbounds %struct.ata_port, ptr %454, i32 0, i32 27
  %456 = load i32, ptr %455, align 4
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %453
  %459 = getelementptr inbounds %struct.ata_port, ptr %454, i32 0, i32 26
  %460 = load ptr, ptr %459, align 64
  %461 = icmp eq ptr %460, null
  br i1 %461, label %467, label %462

462:                                              ; preds = %458, %453
  %463 = getelementptr inbounds %struct.ata_port, ptr %454, i32 0, i32 5
  %464 = load i32, ptr %463, align 4
  %465 = load i32, ptr %168, align 4
  %466 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %464, i32 noundef %465) #16
  br label %471

467:                                              ; preds = %458
  %468 = getelementptr inbounds %struct.ata_port, ptr %454, i32 0, i32 5
  %469 = load i32, ptr %468, align 4
  %470 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %469) #16
  br label %471

471:                                              ; preds = %467, %462, %452
  %472 = and i32 %185, 24
  %473 = icmp eq i32 %472, 0
  %474 = or i32 %185, 8
  %475 = select i1 %473, i32 %474, i32 %185
  br label %476

476:                                              ; preds = %471, %450, %384, %375, %371, %367, %365
  %477 = phi i32 [ 0, %450 ], [ %366, %365 ], [ %182, %471 ], [ %366, %371 ], [ %366, %367 ], [ %366, %384 ], [ %366, %375 ]
  %478 = phi ptr [ %29, %450 ], [ %183, %365 ], [ null, %471 ], [ %26, %371 ], [ %26, %367 ], [ %26, %384 ], [ %26, %375 ]
  %479 = phi i32 [ %185, %450 ], [ %185, %365 ], [ %475, %471 ], [ %185, %371 ], [ %185, %367 ], [ %185, %384 ], [ %185, %375 ]
  %480 = call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #15
  %481 = icmp eq ptr %480, null
  br i1 %481, label %504, label %482

482:                                              ; preds = %476
  %483 = and i32 %479, 8
  %484 = icmp eq i32 %483, 0
  %485 = and i32 %479, 24
  %486 = icmp eq i32 %485, 0
  %487 = select i1 %484, i32 8, i32 1
  br label %488

488:                                              ; preds = %501, %482
  %489 = phi ptr [ %480, %482 ], [ %502, %501 ]
  %490 = getelementptr inbounds %struct.ata_device, ptr %489, i32 0, i32 11
  store i8 8, ptr %490, align 8
  %491 = getelementptr inbounds %struct.ata_device, ptr %489, i32 0, i32 3
  %492 = load i32, ptr %491, align 4
  %493 = and i32 %492, -32769
  store i32 %493, ptr %491, align 4
  %494 = call ptr @ata_dev_phys_link(ptr noundef nonnull %489) #15
  %495 = call zeroext i1 @ata_phys_link_offline(ptr noundef %494) #15
  %496 = select i1 %495, i1 true, i1 %486
  br i1 %496, label %501, label %497

497:                                              ; preds = %488
  %498 = getelementptr inbounds %struct.ata_device, ptr %489, i32 0, i32 1
  %499 = load i32, ptr %498, align 4
  %500 = getelementptr i32, ptr %19, i32 %499
  store i32 %487, ptr %500, align 4
  br label %501

501:                                              ; preds = %497, %488
  %502 = call ptr @ata_dev_next(ptr noundef nonnull %489, ptr noundef %0, i32 noundef 2) #15
  %503 = icmp eq ptr %502, null
  br i1 %503, label %504, label %488

504:                                              ; preds = %501, %476
  %505 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %7) #15
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %511

507:                                              ; preds = %504
  %508 = load i32, ptr %7, align 4
  %509 = lshr i32 %508, 4
  %510 = and i32 %509, 15
  store i32 %510, ptr %172, align 8
  br label %511

511:                                              ; preds = %507, %504
  br i1 %11, label %519, label %512

512:                                              ; preds = %511
  %513 = call i32 @sata_scr_read(ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull %7) #15
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %519

515:                                              ; preds = %512
  %516 = load i32, ptr %7, align 4
  %517 = lshr i32 %516, 4
  %518 = and i32 %517, 15
  store i32 %518, ptr %173, align 8
  br label %519

519:                                              ; preds = %515, %512, %511
  %520 = load ptr, ptr %0, align 64
  %521 = getelementptr inbounds %struct.ata_port, ptr %520, i32 0, i32 25
  %522 = icmp eq ptr %521, %0
  br i1 %522, label %527, label %523

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.ata_port, ptr %520, i32 0, i32 26
  %525 = load ptr, ptr %524, align 64
  %526 = icmp eq ptr %525, %0
  br i1 %526, label %527, label %528

527:                                              ; preds = %523, %519
  call void @ata_eh_thaw_port(ptr noundef %8)
  br label %528

528:                                              ; preds = %527, %523
  br i1 %174, label %562, label %529

529:                                              ; preds = %528
  call void %5(ptr noundef %0, ptr noundef %19) #15
  %530 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_link_postreset, i32 0, i32 1), align 4
  %531 = icmp sgt i32 %530, 0
  br i1 %531, label %532, label %545

532:                                              ; preds = %529
  %533 = tail call ptr @llvm.thread.pointer() #15
  %534 = getelementptr inbounds %struct.thread_info, ptr %533, i32 0, i32 2
  %535 = load i32, ptr %534, align 8
  %536 = lshr i32 %535, 5
  %537 = getelementptr i32, ptr @__cpu_online_mask, i32 %536
  %538 = load volatile i32, ptr %537, align 4
  %539 = and i32 %535, 31
  %540 = shl nuw i32 1, %539
  %541 = and i32 %540, %538
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %545, label %543

543:                                              ; preds = %532
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !37
  %544 = call i32 @__traceiter_ata_link_postreset(ptr noundef null, ptr noundef %0, ptr noundef %19, i32 noundef %477) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !38
  br label %545

545:                                              ; preds = %543, %532, %529
  br i1 %11, label %562, label %546

546:                                              ; preds = %545
  call void %5(ptr noundef nonnull %10, ptr noundef %19) #15
  %547 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_slave_postreset, i32 0, i32 1), align 4
  %548 = icmp sgt i32 %547, 0
  br i1 %548, label %549, label %562

549:                                              ; preds = %546
  %550 = tail call ptr @llvm.thread.pointer() #15
  %551 = getelementptr inbounds %struct.thread_info, ptr %550, i32 0, i32 2
  %552 = load i32, ptr %551, align 8
  %553 = lshr i32 %552, 5
  %554 = getelementptr i32, ptr @__cpu_online_mask, i32 %553
  %555 = load volatile i32, ptr %554, align 4
  %556 = and i32 %552, 31
  %557 = shl nuw i32 1, %556
  %558 = and i32 %557, %555
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %562, label %560

560:                                              ; preds = %549
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !39
  %561 = call i32 @__traceiter_ata_slave_postreset(ptr noundef null, ptr noundef nonnull %10, ptr noundef %19, i32 noundef %477) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !40
  br label %562

562:                                              ; preds = %560, %549, %546, %545, %528
  %563 = load ptr, ptr %0, align 64
  %564 = getelementptr inbounds %struct.ata_port, ptr %563, i32 0, i32 2
  %565 = load ptr, ptr %564, align 8
  %566 = call i32 @_raw_spin_lock_irqsave(ptr noundef %565) #15
  call void @llvm.memset.p0.i32(ptr noundef align 64 dereferenceable(116) %175, i8 0, i32 116, i1 false)
  br i1 %11, label %568, label %567

567:                                              ; preds = %562
  call void @llvm.memset.p0.i32(ptr noundef align 64 dereferenceable(116) %176, i8 0, i32 116, i1 false)
  br label %568

568:                                              ; preds = %567, %562
  %569 = load i32, ptr %52, align 16
  %570 = and i32 %569, -2
  store i32 %570, ptr %52, align 16
  %571 = load ptr, ptr %0, align 64
  %572 = getelementptr inbounds %struct.ata_port, ptr %571, i32 0, i32 2
  %573 = load ptr, ptr %572, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %573, i32 noundef %566) #15
  %574 = load i32, ptr %52, align 16
  %575 = and i32 %574, 4
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %578, label %577

577:                                              ; preds = %568
  call void @ata_eh_thaw_port(ptr noundef %8)
  br label %578

578:                                              ; preds = %577, %568
  %579 = call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #15
  %580 = icmp eq ptr %579, null
  br i1 %580, label %646, label %581

581:                                              ; preds = %605, %578
  %582 = phi ptr [ %607, %605 ], [ %579, %578 ]
  %583 = phi i32 [ %606, %605 ], [ 0, %578 ]
  %584 = call ptr @ata_dev_phys_link(ptr noundef nonnull %582) #15
  %585 = call zeroext i1 @ata_phys_link_online(ptr noundef %584) #15
  br i1 %585, label %586, label %594

586:                                              ; preds = %581
  %587 = getelementptr inbounds %struct.ata_device, ptr %582, i32 0, i32 1
  %588 = load i32, ptr %587, align 4
  %589 = getelementptr i32, ptr %19, i32 %588
  %590 = load i32, ptr %589, align 4
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %592, label %605

592:                                              ; preds = %586
  store i32 11, ptr %589, align 4
  %593 = add i32 %583, 1
  br label %605

594:                                              ; preds = %581
  %595 = call ptr @ata_dev_phys_link(ptr noundef nonnull %582) #15
  %596 = call zeroext i1 @ata_phys_link_offline(ptr noundef %595) #15
  %597 = getelementptr inbounds %struct.ata_device, ptr %582, i32 0, i32 1
  %598 = load i32, ptr %597, align 4
  %599 = getelementptr i32, ptr %19, i32 %598
  br i1 %596, label %600, label %601

600:                                              ; preds = %594
  store i32 11, ptr %599, align 4
  br label %605

601:                                              ; preds = %594
  %602 = load i32, ptr %599, align 4
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %605

604:                                              ; preds = %601
  store i32 11, ptr %599, align 4
  br label %605

605:                                              ; preds = %604, %601, %600, %592, %586
  %606 = phi i32 [ %593, %592 ], [ %583, %586 ], [ %583, %600 ], [ %583, %604 ], [ %583, %601 ]
  %607 = call ptr @ata_dev_next(ptr noundef nonnull %582, ptr noundef %0, i32 noundef 2) #15
  %608 = icmp eq ptr %607, null
  br i1 %608, label %609, label %581

609:                                              ; preds = %605
  %610 = icmp ne i32 %606, 0
  %611 = select i1 %177, i1 %610, i1 false
  br i1 %611, label %612, label %646

612:                                              ; preds = %609
  %613 = icmp ult i32 %196, %23
  %614 = load ptr, ptr %0, align 64
  %615 = getelementptr inbounds %struct.ata_port, ptr %614, i32 0, i32 27
  %616 = load i32, ptr %615, align 4
  %617 = icmp eq i32 %616, 0
  br i1 %613, label %618, label %632

618:                                              ; preds = %612
  br i1 %617, label %619, label %623

619:                                              ; preds = %618
  %620 = getelementptr inbounds %struct.ata_port, ptr %614, i32 0, i32 26
  %621 = load ptr, ptr %620, align 64
  %622 = icmp eq ptr %621, null
  br i1 %622, label %628, label %623

623:                                              ; preds = %619, %618
  %624 = getelementptr inbounds %struct.ata_port, ptr %614, i32 0, i32 5
  %625 = load i32, ptr %624, align 4
  %626 = load i32, ptr %168, align 4
  %627 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %625, i32 noundef %626, i32 noundef %606) #16
  br label %722

628:                                              ; preds = %619
  %629 = getelementptr inbounds %struct.ata_port, ptr %614, i32 0, i32 5
  %630 = load i32, ptr %629, align 4
  %631 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %630, i32 noundef %606) #16
  br label %722

632:                                              ; preds = %612
  br i1 %617, label %633, label %637

633:                                              ; preds = %632
  %634 = getelementptr inbounds %struct.ata_port, ptr %614, i32 0, i32 26
  %635 = load ptr, ptr %634, align 64
  %636 = icmp eq ptr %635, null
  br i1 %636, label %642, label %637

637:                                              ; preds = %633, %632
  %638 = getelementptr inbounds %struct.ata_port, ptr %614, i32 0, i32 5
  %639 = load i32, ptr %638, align 4
  %640 = load i32, ptr %168, align 4
  %641 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %639, i32 noundef %640, i32 noundef %606) #16
  br label %646

642:                                              ; preds = %633
  %643 = getelementptr inbounds %struct.ata_port, ptr %614, i32 0, i32 5
  %644 = load i32, ptr %643, align 4
  %645 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %644, i32 noundef %606) #16
  br label %646

646:                                              ; preds = %642, %637, %609, %578
  %647 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_done, i32 0, i32 1), align 4
  %648 = icmp sgt i32 %647, 0
  br i1 %648, label %649, label %662

649:                                              ; preds = %646
  %650 = tail call ptr @llvm.thread.pointer() #15
  %651 = getelementptr inbounds %struct.thread_info, ptr %650, i32 0, i32 2
  %652 = load i32, ptr %651, align 8
  %653 = lshr i32 %652, 5
  %654 = getelementptr i32, ptr @__cpu_online_mask, i32 %653
  %655 = load volatile i32, ptr %654, align 4
  %656 = and i32 %652, 31
  %657 = shl nuw i32 1, %656
  %658 = and i32 %657, %655
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %662, label %660

660:                                              ; preds = %649
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %661 = call i32 @__traceiter_ata_eh_done(ptr noundef null, ptr noundef %0, i32 noundef 0, i32 noundef 6) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  br label %662

662:                                              ; preds = %660, %649, %646
  %663 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12
  %664 = load i32, ptr %73, align 4
  %665 = and i32 %664, -7
  store i32 %665, ptr %73, align 4
  %666 = call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #15
  %667 = icmp eq ptr %666, null
  br i1 %667, label %677, label %668

668:                                              ; preds = %668, %662
  %669 = phi ptr [ %675, %668 ], [ %666, %662 ]
  %670 = getelementptr inbounds %struct.ata_device, ptr %669, i32 0, i32 1
  %671 = load i32, ptr %670, align 4
  %672 = getelementptr %struct.ata_eh_info, ptr %663, i32 0, i32 4, i32 %671
  %673 = load i32, ptr %672, align 4
  %674 = and i32 %673, -7
  store i32 %674, ptr %672, align 4
  %675 = call ptr @ata_dev_next(ptr noundef nonnull %669, ptr noundef %0, i32 noundef 2) #15
  %676 = icmp eq ptr %675, null
  br i1 %676, label %677, label %668

677:                                              ; preds = %668, %662
  br i1 %11, label %709, label %678

678:                                              ; preds = %677
  %679 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_done, i32 0, i32 1), align 4
  %680 = icmp sgt i32 %679, 0
  br i1 %680, label %681, label %694

681:                                              ; preds = %678
  %682 = tail call ptr @llvm.thread.pointer() #15
  %683 = getelementptr inbounds %struct.thread_info, ptr %682, i32 0, i32 2
  %684 = load i32, ptr %683, align 8
  %685 = lshr i32 %684, 5
  %686 = getelementptr i32, ptr @__cpu_online_mask, i32 %685
  %687 = load volatile i32, ptr %686, align 4
  %688 = and i32 %684, 31
  %689 = shl nuw i32 1, %688
  %690 = and i32 %689, %687
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %694, label %692

692:                                              ; preds = %681
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %693 = call i32 @__traceiter_ata_eh_done(ptr noundef null, ptr noundef nonnull %10, i32 noundef 0, i32 noundef 6) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  br label %694

694:                                              ; preds = %692, %681, %678
  %695 = getelementptr inbounds %struct.ata_link, ptr %10, i32 0, i32 12, i32 0, i32 3
  %696 = load i32, ptr %695, align 4
  %697 = and i32 %696, -7
  store i32 %697, ptr %695, align 4
  %698 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %10, i32 noundef 2) #15
  %699 = icmp eq ptr %698, null
  br i1 %699, label %709, label %700

700:                                              ; preds = %700, %694
  %701 = phi ptr [ %707, %700 ], [ %698, %694 ]
  %702 = getelementptr inbounds %struct.ata_device, ptr %701, i32 0, i32 1
  %703 = load i32, ptr %702, align 4
  %704 = getelementptr %struct.ata_eh_info, ptr %12, i32 0, i32 4, i32 %703
  %705 = load i32, ptr %704, align 4
  %706 = and i32 %705, -7
  store i32 %706, ptr %704, align 4
  %707 = call ptr @ata_dev_next(ptr noundef nonnull %701, ptr noundef nonnull %10, i32 noundef 2) #15
  %708 = icmp eq ptr %707, null
  br i1 %708, label %709, label %700

709:                                              ; preds = %700, %694, %677
  %710 = load volatile i32, ptr @jiffies, align 64
  store i32 %710, ptr %169, align 4
  %711 = load i32, ptr %73, align 4
  %712 = or i32 %711, 1
  store i32 %712, ptr %73, align 4
  %713 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 10
  store i32 0, ptr %713, align 4
  br label %714

714:                                              ; preds = %826, %822, %749, %745, %709, %166, %162, %154, %134, %128, %112, %107
  %715 = phi i32 [ %739, %749 ], [ %739, %745 ], [ -85, %826 ], [ -85, %822 ], [ 0, %709 ], [ 0, %154 ], [ 0, %162 ], [ 0, %166 ], [ %106, %134 ], [ %106, %128 ], [ 0, %107 ], [ 0, %112 ]
  %716 = load i32, ptr %16, align 4
  %717 = and i32 %716, -2
  store i32 %717, ptr %16, align 4
  br i1 %11, label %839, label %718

718:                                              ; preds = %714
  %719 = getelementptr inbounds %struct.ata_eh_info, ptr %13, i32 0, i32 5
  %720 = load i32, ptr %719, align 4
  %721 = and i32 %720, -2
  store i32 %721, ptr %719, align 4
  br label %839

722:                                              ; preds = %628, %623, %450, %403, %398, %363, %307
  %723 = phi i32 [ %274, %307 ], [ -22, %403 ], [ -22, %398 ], [ %434, %450 ], [ -11, %628 ], [ -11, %623 ], [ %347, %363 ]
  %724 = phi ptr [ %183, %307 ], [ null, %403 ], [ null, %398 ], [ %29, %450 ], [ %478, %628 ], [ %478, %623 ], [ %183, %363 ]
  %725 = phi ptr [ %0, %307 ], [ %0, %403 ], [ %0, %398 ], [ %0, %450 ], [ %0, %628 ], [ %0, %623 ], [ %10, %363 ]
  %726 = phi i32 [ %185, %307 ], [ %185, %403 ], [ %185, %398 ], [ %185, %450 ], [ %479, %628 ], [ %479, %623 ], [ %185, %363 ]
  %727 = load ptr, ptr %0, align 64
  %728 = getelementptr inbounds %struct.ata_port, ptr %727, i32 0, i32 25
  %729 = icmp eq ptr %728, %0
  br i1 %729, label %738, label %730

730:                                              ; preds = %722
  %731 = getelementptr inbounds %struct.ata_port, ptr %727, i32 0, i32 26
  %732 = load ptr, ptr %731, align 64
  %733 = icmp eq ptr %732, %0
  br i1 %733, label %738, label %734

734:                                              ; preds = %730
  %735 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %7) #15
  %736 = icmp eq i32 %735, 0
  %737 = select i1 %736, i32 %723, i32 -85
  br label %738

738:                                              ; preds = %734, %730, %722
  %739 = phi i32 [ %723, %730 ], [ %737, %734 ], [ %723, %722 ]
  %740 = icmp eq i32 %184, %180
  br i1 %740, label %741, label %750

741:                                              ; preds = %738
  %742 = load ptr, ptr %0, align 64
  %743 = getelementptr inbounds %struct.ata_port, ptr %742, i32 0, i32 25
  %744 = icmp eq ptr %743, %0
  br i1 %744, label %749, label %745

745:                                              ; preds = %741
  %746 = getelementptr inbounds %struct.ata_port, ptr %742, i32 0, i32 26
  %747 = load ptr, ptr %746, align 64
  %748 = icmp eq ptr %747, %0
  br i1 %748, label %749, label %714

749:                                              ; preds = %745, %741
  call void @ata_eh_thaw_port(ptr noundef %8)
  br label %714

750:                                              ; preds = %738
  %751 = load volatile i32, ptr @jiffies, align 64
  %752 = sub i32 %751, %200
  %753 = icmp slt i32 %752, 0
  br i1 %753, label %754, label %816

754:                                              ; preds = %750
  %755 = sub i32 %200, %751
  %756 = load ptr, ptr %725, align 64
  %757 = getelementptr inbounds %struct.ata_port, ptr %756, i32 0, i32 27
  %758 = load i32, ptr %757, align 4
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %760, label %764

760:                                              ; preds = %754
  %761 = getelementptr inbounds %struct.ata_port, ptr %756, i32 0, i32 26
  %762 = load ptr, ptr %761, align 64
  %763 = icmp eq ptr %762, null
  br i1 %763, label %773, label %764

764:                                              ; preds = %760, %754
  %765 = getelementptr inbounds %struct.ata_port, ptr %756, i32 0, i32 5
  %766 = load i32, ptr %765, align 4
  %767 = getelementptr inbounds %struct.ata_link, ptr %725, i32 0, i32 1
  %768 = load i32, ptr %767, align 4
  %769 = call i32 @jiffies_to_msecs(i32 noundef %755) #15
  %770 = add i32 %769, 999
  %771 = udiv i32 %770, 1000
  %772 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %766, i32 noundef %768, i32 noundef %739, i32 noundef %771) #16
  br label %780

773:                                              ; preds = %760
  %774 = getelementptr inbounds %struct.ata_port, ptr %756, i32 0, i32 5
  %775 = load i32, ptr %774, align 4
  %776 = call i32 @jiffies_to_msecs(i32 noundef %755) #15
  %777 = add i32 %776, 999
  %778 = udiv i32 %777, 1000
  %779 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %775, i32 noundef %739, i32 noundef %778) #16
  br label %780

780:                                              ; preds = %773, %764
  %781 = load ptr, ptr %178, align 4
  %782 = getelementptr inbounds %struct.ata_host, ptr %781, i32 0, i32 10
  %783 = load ptr, ptr %782, align 4
  %784 = tail call ptr @llvm.thread.pointer() #15
  %785 = icmp ne ptr %783, %784
  %786 = load i1, ptr @ata_eh_release.__already_done, align 1
  %787 = xor i1 %786, true
  %788 = select i1 %785, i1 %787, i1 false
  br i1 %788, label %789, label %791, !prof !9

789:                                              ; preds = %780
  store i1 true, ptr @ata_eh_release.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 488, i32 noundef 9, ptr noundef null) #15
  %790 = load ptr, ptr %178, align 4
  br label %791

791:                                              ; preds = %789, %780
  %792 = phi ptr [ %790, %789 ], [ %781, %780 ]
  %793 = getelementptr inbounds %struct.ata_host, ptr %792, i32 0, i32 10
  store ptr null, ptr %793, align 4
  %794 = load ptr, ptr %178, align 4
  %795 = getelementptr inbounds %struct.ata_host, ptr %794, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %795) #15
  %796 = icmp eq i32 %755, 0
  br i1 %796, label %801, label %797

797:                                              ; preds = %797, %791
  %798 = phi i32 [ %799, %797 ], [ %755, %791 ]
  %799 = call i32 @schedule_timeout_uninterruptible(i32 noundef %798) #15
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %801, label %797

801:                                              ; preds = %797, %791
  %802 = load ptr, ptr %178, align 4
  %803 = getelementptr inbounds %struct.ata_host, ptr %802, i32 0, i32 9
  call void @mutex_lock(ptr noundef %803) #15
  %804 = load ptr, ptr %178, align 4
  %805 = getelementptr inbounds %struct.ata_host, ptr %804, i32 0, i32 10
  %806 = load ptr, ptr %805, align 4
  %807 = icmp ne ptr %806, null
  %808 = load i1, ptr @ata_eh_acquire.__already_done, align 1
  %809 = xor i1 %808, true
  %810 = select i1 %807, i1 %809, i1 false
  br i1 %810, label %811, label %813, !prof !9

811:                                              ; preds = %801
  store i1 true, ptr @ata_eh_acquire.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 472, i32 noundef 9, ptr noundef null) #15
  %812 = load ptr, ptr %178, align 4
  br label %813

813:                                              ; preds = %811, %801
  %814 = phi ptr [ %812, %811 ], [ %804, %801 ]
  %815 = getelementptr inbounds %struct.ata_host, ptr %814, i32 0, i32 10
  store ptr %784, ptr %815, align 4
  br label %816

816:                                              ; preds = %813, %750
  %817 = icmp eq i32 %739, -85
  br i1 %817, label %818, label %827

818:                                              ; preds = %816
  %819 = load ptr, ptr %0, align 64
  %820 = getelementptr inbounds %struct.ata_port, ptr %819, i32 0, i32 25
  %821 = icmp eq ptr %820, %0
  br i1 %821, label %826, label %822

822:                                              ; preds = %818
  %823 = getelementptr inbounds %struct.ata_port, ptr %819, i32 0, i32 26
  %824 = load ptr, ptr %823, align 64
  %825 = icmp eq ptr %824, %0
  br i1 %825, label %826, label %714

826:                                              ; preds = %822, %818
  call void @ata_eh_thaw_port(ptr noundef %8)
  br label %714

827:                                              ; preds = %816
  %828 = icmp eq i32 %184, %179
  br i1 %828, label %829, label %833

829:                                              ; preds = %827
  %830 = call i32 @sata_down_spd_limit(ptr noundef %0, i32 noundef 0) #15
  br i1 %11, label %837, label %831

831:                                              ; preds = %829
  %832 = call i32 @sata_down_spd_limit(ptr noundef nonnull %10, i32 noundef 0) #15
  br label %837

833:                                              ; preds = %827
  %834 = icmp eq i32 %739, -32
  br i1 %834, label %835, label %837

835:                                              ; preds = %833
  %836 = call i32 @sata_down_spd_limit(ptr noundef %725, i32 noundef 0) #15
  br label %837

837:                                              ; preds = %835, %833, %831, %829
  %838 = select i1 %76, ptr %724, ptr %26
  br label %181

839:                                              ; preds = %718, %714
  %840 = load ptr, ptr %49, align 8
  %841 = call i32 @_raw_spin_lock_irqsave(ptr noundef %840) #15
  %842 = load i32, ptr %52, align 16
  %843 = and i32 %842, -257
  store i32 %843, ptr %52, align 16
  %844 = load ptr, ptr %49, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %844, i32 noundef %841) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  ret i32 %715
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_phys_link_offline(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_phys_link(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_phys_link_online(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_down_spd_limit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_set_mode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 64
  %4 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %24, %2
  %7 = phi ptr [ %25, %24 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.ata_device, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 65536
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ata_device, ptr %7, i32 0, i32 35
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr %struct.ata_device, ptr %7, i32 0, i32 35, i32 1, i32 %14, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr %struct.ata_device, ptr %7, i32 0, i32 35, i32 1, i32 %14
  %19 = icmp eq ptr %18, null
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i32, ptr %18, align 8
  %23 = and i32 %22, -3
  store i32 %23, ptr %18, align 8
  br label %24

24:                                               ; preds = %21, %12, %6
  %25 = tail call ptr @ata_dev_next(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 0) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %6

27:                                               ; preds = %24, %2
  %28 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ata_port_operations, ptr %29, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call i32 %31(ptr noundef %0, ptr noundef %1) #15
  br label %37

35:                                               ; preds = %27
  %36 = tail call i32 @ata_do_set_mode(ptr noundef %0, ptr noundef %1) #15
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %72, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 6
  br label %43

43:                                               ; preds = %69, %41
  %44 = phi ptr [ %39, %41 ], [ %70, %69 ]
  %45 = getelementptr inbounds %struct.ata_device, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.ata_link, ptr %0, i32 0, i32 12, i32 7, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr inbounds %struct.ata_device, ptr %44, i32 0, i32 13
  %50 = load i8, ptr %49, align 2
  %51 = icmp eq i8 %50, %48
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.ata_device, ptr %44, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  br label %65

55:                                               ; preds = %43
  %56 = load i32, ptr %42, align 4
  %57 = getelementptr inbounds %struct.ata_device, ptr %44, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 12296
  %60 = icmp ne i32 %59, 8
  %61 = shl nuw i32 1, %46
  %62 = and i32 %56, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, %60
  br i1 %64, label %69, label %65

65:                                               ; preds = %55, %52
  %66 = phi i32 [ %54, %52 ], [ %58, %55 ]
  %67 = getelementptr inbounds %struct.ata_device, ptr %44, i32 0, i32 3
  %68 = or i32 %66, 65536
  store i32 %68, ptr %67, align 4
  br label %69

69:                                               ; preds = %65, %55
  %70 = tail call ptr @ata_dev_next(ptr noundef nonnull %44, ptr noundef %0, i32 noundef 0) #15
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %43

72:                                               ; preds = %69, %37
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_do_set_mode(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_link_nr_enabled(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ %7, %4 ], [ 0, %1 ]
  %6 = phi ptr [ %8, %4 ], [ %2, %1 ]
  %7 = add i32 %5, 1
  %8 = tail call ptr @ata_dev_next(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 0) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_eh_recover(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ata_taskfile, align 4
  %8 = alloca [16 x i8], align 1
  %9 = alloca %struct.ata_taskfile, align 4
  %10 = alloca [16 x i8], align 1
  %11 = alloca %struct.ata_taskfile, align 4
  %12 = alloca %struct.ata_taskfile, align 4
  %13 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  store ptr null, ptr %13, align 4, !annotation !8
  %14 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  br label %44

18:                                               ; preds = %127, %6
  %19 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %20 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %21 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 41
  %22 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %23 = getelementptr inbounds i8, ptr %12, i32 4
  %24 = getelementptr inbounds %struct.ata_taskfile, ptr %12, i32 0, i32 2
  %25 = getelementptr inbounds %struct.ata_taskfile, ptr %12, i32 0, i32 13
  %26 = getelementptr inbounds %struct.ata_taskfile, ptr %12, i32 0, i32 14
  %27 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 27
  %28 = getelementptr inbounds i8, ptr %11, i32 4
  %29 = getelementptr inbounds %struct.ata_taskfile, ptr %11, i32 0, i32 2
  %30 = getelementptr inbounds %struct.ata_taskfile, ptr %11, i32 0, i32 13
  %31 = getelementptr inbounds %struct.ata_taskfile, ptr %11, i32 0, i32 14
  %32 = getelementptr inbounds %struct.ata_taskfile, ptr %11, i32 0, i32 8
  %33 = getelementptr inbounds i8, ptr %9, i32 4
  %34 = getelementptr inbounds %struct.ata_taskfile, ptr %9, i32 0, i32 2
  %35 = getelementptr inbounds %struct.ata_taskfile, ptr %9, i32 0, i32 13
  %36 = getelementptr inbounds %struct.ata_taskfile, ptr %9, i32 0, i32 14
  %37 = getelementptr inbounds %struct.ata_taskfile, ptr %9, i32 0, i32 8
  %38 = getelementptr inbounds %struct.ata_taskfile, ptr %9, i32 0, i32 11
  %39 = getelementptr inbounds i8, ptr %7, i32 4
  %40 = getelementptr inbounds %struct.ata_taskfile, ptr %7, i32 0, i32 2
  %41 = getelementptr inbounds %struct.ata_taskfile, ptr %7, i32 0, i32 13
  %42 = getelementptr inbounds %struct.ata_taskfile, ptr %7, i32 0, i32 14
  %43 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 43
  br label %130

44:                                               ; preds = %127, %16
  %45 = phi ptr [ %14, %16 ], [ %128, %127 ]
  %46 = getelementptr inbounds %struct.ata_link, ptr %45, i32 0, i32 12, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %87, label %50

50:                                               ; preds = %44
  tail call void @ata_eh_about_to_do(ptr noundef nonnull %45, ptr noundef null, i32 noundef 8)
  %51 = load ptr, ptr %17, align 8
  %52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %51) #15
  %53 = getelementptr inbounds %struct.ata_link, ptr %45, i32 0, i32 5
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, -65
  store i32 %55, ptr %53, align 8
  %56 = load ptr, ptr %17, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %52) #15
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_done, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %50
  %60 = tail call ptr @llvm.thread.pointer() #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %71 = tail call i32 @__traceiter_ata_eh_done(ptr noundef null, ptr noundef nonnull %45, i32 noundef 0, i32 noundef 8) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  br label %72

72:                                               ; preds = %70, %59, %50
  %73 = getelementptr inbounds %struct.ata_link, ptr %45, i32 0, i32 12
  %74 = load i32, ptr %46, align 4
  %75 = and i32 %74, -9
  store i32 %75, ptr %46, align 4
  %76 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %45, i32 noundef 2) #15
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %78, %72
  %79 = phi ptr [ %85, %78 ], [ %76, %72 ]
  %80 = getelementptr inbounds %struct.ata_device, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr %struct.ata_eh_info, ptr %73, i32 0, i32 4, i32 %81
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, -9
  store i32 %84, ptr %82, align 4
  %85 = tail call ptr @ata_dev_next(ptr noundef nonnull %79, ptr noundef nonnull %45, i32 noundef 2) #15
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %78

87:                                               ; preds = %78, %72, %44
  %88 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %45, i32 noundef 2) #15
  store ptr %88, ptr %13, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %127, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.ata_link, ptr %45, i32 0, i32 5
  br label %92

92:                                               ; preds = %124, %90
  %93 = phi ptr [ %88, %90 ], [ %125, %124 ]
  %94 = load i32, ptr %91, align 8
  %95 = and i32 %94, 32
  %96 = icmp eq i32 %95, 0
  %97 = getelementptr inbounds %struct.ata_device, ptr %93, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr %struct.ata_link, ptr %45, i32 0, i32 12, i32 1, i32 %98
  %100 = select i1 %96, i32 3, i32 1
  store i32 %100, ptr %99, align 4
  %101 = load ptr, ptr %13, align 4
  %102 = getelementptr inbounds %struct.ata_device, ptr %101, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr %struct.ata_link, ptr %45, i32 0, i32 12, i32 0, i32 4, i32 %103
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, -34
  %107 = load i32, ptr %46, align 4
  %108 = or i32 %107, %106
  store i32 %108, ptr %46, align 4
  %109 = load i32, ptr %102, align 4
  %110 = getelementptr %struct.ata_link, ptr %45, i32 0, i32 12, i32 0, i32 4, i32 %109
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 33
  store i32 %112, ptr %110, align 4
  %113 = load ptr, ptr %13, align 4
  %114 = getelementptr inbounds %struct.ata_device, ptr %113, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 16777216
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %92
  tail call void @ata_eh_detach_dev(ptr noundef %113)
  br label %119

119:                                              ; preds = %118, %92
  %120 = getelementptr inbounds %struct.ata_device, ptr %113, i32 0, i32 9
  %121 = load i32, ptr %120, align 64
  switch i32 %121, label %122 [
    i32 7, label %124
    i32 5, label %124
    i32 3, label %124
    i32 1, label %124
    i32 9, label %124
  ]

122:                                              ; preds = %119
  %123 = tail call fastcc i32 @ata_eh_schedule_probe(ptr noundef %113)
  br label %124

124:                                              ; preds = %122, %119, %119, %119, %119, %119
  %125 = tail call ptr @ata_dev_next(ptr noundef %113, ptr noundef nonnull %45, i32 noundef 2) #15
  store ptr %125, ptr %13, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %92

127:                                              ; preds = %124, %87
  %128 = tail call ptr @ata_link_next(ptr noundef nonnull %45, ptr noundef %0, i32 noundef 0) #15
  %129 = icmp eq ptr %128, null
  br i1 %129, label %18, label %44

130:                                              ; preds = %1172, %18
  %131 = load i32, ptr %19, align 16
  %132 = and i32 %131, 512
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %1184

134:                                              ; preds = %130
  %135 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #15
  %136 = icmp eq ptr %135, null
  br i1 %136, label %207, label %137

137:                                              ; preds = %204, %134
  %138 = phi ptr [ %205, %204 ], [ %135, %134 ]
  %139 = load ptr, ptr %138, align 64
  %140 = getelementptr inbounds %struct.ata_link, ptr %138, i32 0, i32 5
  %141 = load i32, ptr %140, align 8
  %142 = and i32 %141, 64
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %191

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.ata_link, ptr %138, i32 0, i32 12, i32 0, i32 5
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, 16
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %191

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.ata_port, ptr %139, i32 0, i32 4
  %151 = load i32, ptr %150, align 16
  %152 = and i32 %151, 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %193

154:                                              ; preds = %149
  %155 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %138, i32 noundef 0) #15
  %156 = icmp eq ptr %155, null
  br i1 %156, label %165, label %157

157:                                              ; preds = %157, %154
  %158 = phi i32 [ %160, %157 ], [ 0, %154 ]
  %159 = phi ptr [ %161, %157 ], [ %155, %154 ]
  %160 = add i32 %158, 1
  %161 = call ptr @ata_dev_next(ptr noundef nonnull %159, ptr noundef nonnull %138, i32 noundef 0) #15
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %157

163:                                              ; preds = %157
  %164 = icmp eq i32 %160, 0
  br i1 %164, label %165, label %193

165:                                              ; preds = %163, %154
  %166 = getelementptr inbounds %struct.ata_link, ptr %138, i32 0, i32 12, i32 0, i32 3
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, 6
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %165
  %171 = load i32, ptr %145, align 4
  %172 = and i32 %171, 196608
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %193, label %174

174:                                              ; preds = %170, %165
  %175 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %138, i32 noundef 2) #15
  %176 = icmp eq ptr %175, null
  br i1 %176, label %191, label %177

177:                                              ; preds = %188, %174
  %178 = phi ptr [ %189, %188 ], [ %175, %174 ]
  %179 = getelementptr inbounds %struct.ata_device, ptr %178, i32 0, i32 9
  %180 = load i32, ptr %179, align 64
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.ata_device, ptr %178, i32 0, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr %struct.ata_link, ptr %138, i32 0, i32 12, i32 3, i32 %184
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 11
  br i1 %187, label %188, label %193

188:                                              ; preds = %182, %177
  %189 = call ptr @ata_dev_next(ptr noundef nonnull %178, ptr noundef nonnull %138, i32 noundef 2) #15
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %177

191:                                              ; preds = %188, %174, %144, %137
  %192 = getelementptr inbounds %struct.ata_link, ptr %138, i32 0, i32 12, i32 0, i32 3
  store i32 0, ptr %192, align 4
  br label %193

193:                                              ; preds = %191, %182, %170, %163, %149
  %194 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %138, i32 noundef 2) #15
  store ptr %194, ptr %13, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %204, label %196

196:                                              ; preds = %196, %193
  %197 = phi ptr [ %202, %196 ], [ %194, %193 ]
  %198 = getelementptr inbounds %struct.ata_device, ptr %197, i32 0, i32 1
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr %struct.ata_link, ptr %138, i32 0, i32 12, i32 3, i32 %199
  store i32 0, ptr %200, align 4
  %201 = load ptr, ptr %13, align 4
  %202 = call ptr @ata_dev_next(ptr noundef %201, ptr noundef nonnull %138, i32 noundef 2) #15
  store ptr %202, ptr %13, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %196

204:                                              ; preds = %196, %193
  %205 = call ptr @ata_link_next(ptr noundef nonnull %138, ptr noundef %0, i32 noundef 0) #15
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %137

207:                                              ; preds = %204, %134
  %208 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #15
  %209 = icmp eq ptr %208, null
  br i1 %209, label %255, label %210

210:                                              ; preds = %252, %207
  %211 = phi ptr [ %253, %252 ], [ %208, %207 ]
  %212 = getelementptr inbounds %struct.ata_link, ptr %211, i32 0, i32 12, i32 0, i32 3
  %213 = load i32, ptr %212, align 4
  %214 = and i32 %213, 6
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %252, label %216

216:                                              ; preds = %210
  %217 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %211, i32 noundef 2) #15
  %218 = icmp eq ptr %217, null
  br i1 %218, label %229, label %219

219:                                              ; preds = %219, %216
  %220 = phi i32 [ %226, %219 ], [ 0, %216 ]
  %221 = phi ptr [ %227, %219 ], [ %217, %216 ]
  %222 = getelementptr inbounds %struct.ata_device, ptr %221, i32 0, i32 9
  %223 = load i32, ptr %222, align 64
  %224 = icmp eq i32 %223, 0
  %225 = zext i1 %224 to i32
  %226 = add i32 %220, %225
  %227 = call ptr @ata_dev_next(ptr noundef nonnull %221, ptr noundef nonnull %211, i32 noundef 2) #15
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %219

229:                                              ; preds = %219, %216
  %230 = phi i32 [ 0, %216 ], [ %226, %219 ]
  %231 = call i32 @ata_eh_reset(ptr noundef nonnull %211, i32 noundef %230, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %252, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr %211, align 64
  %235 = getelementptr inbounds %struct.ata_port, ptr %234, i32 0, i32 27
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.ata_port, ptr %234, i32 0, i32 26
  %240 = load ptr, ptr %239, align 64
  %241 = icmp eq ptr %240, null
  br i1 %241, label %248, label %242

242:                                              ; preds = %238, %233
  %243 = getelementptr inbounds %struct.ata_port, ptr %234, i32 0, i32 5
  %244 = load i32, ptr %243, align 4
  %245 = getelementptr inbounds %struct.ata_link, ptr %211, i32 0, i32 1
  %246 = load i32, ptr %245, align 4
  %247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %244, i32 noundef %246) #16
  br label %1177

248:                                              ; preds = %238
  %249 = getelementptr inbounds %struct.ata_port, ptr %234, i32 0, i32 5
  %250 = load i32, ptr %249, align 4
  %251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef %250) #16
  br label %1177

252:                                              ; preds = %229, %210
  %253 = call ptr @ata_link_next(ptr noundef nonnull %211, ptr noundef %0, i32 noundef 0) #15
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %210

255:                                              ; preds = %252, %207
  br label %256

256:                                              ; preds = %391, %255
  %257 = load ptr, ptr %20, align 8
  %258 = call i32 @_raw_spin_lock_irqsave(ptr noundef %257) #15
  store i32 0, ptr %21, align 4
  %259 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #15
  %260 = icmp eq ptr %259, null
  br i1 %260, label %307, label %261

261:                                              ; preds = %304, %256
  %262 = phi ptr [ %305, %304 ], [ %259, %256 ]
  %263 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %262, i32 noundef 2) #15
  %264 = icmp eq ptr %263, null
  br i1 %264, label %304, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.ata_link, ptr %262, i32 0, i32 11, i32 3
  br label %267

267:                                              ; preds = %297, %265
  %268 = phi ptr [ %263, %265 ], [ %302, %297 ]
  %269 = getelementptr inbounds %struct.ata_device, ptr %268, i32 0, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = getelementptr %struct.ata_link, ptr %262, i32 0, i32 11, i32 4, i32 %270
  %272 = load i32, ptr %271, align 4
  %273 = and i32 %272, 32
  %274 = getelementptr %struct.ata_link, ptr %262, i32 0, i32 12, i32 0, i32 4, i32 %270
  %275 = load i32, ptr %274, align 4
  %276 = or i32 %275, %273
  store i32 %276, ptr %274, align 4
  %277 = load i32, ptr %266, align 4
  %278 = and i32 %277, 32
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %297, label %280

280:                                              ; preds = %267
  %281 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %262, i32 noundef 2) #15
  %282 = icmp eq ptr %281, null
  br i1 %282, label %294, label %283

283:                                              ; preds = %283, %280
  %284 = phi ptr [ %292, %283 ], [ %281, %280 ]
  %285 = load i32, ptr %266, align 4
  %286 = and i32 %285, 32
  %287 = getelementptr inbounds %struct.ata_device, ptr %284, i32 0, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = getelementptr %struct.ata_link, ptr %262, i32 0, i32 11, i32 4, i32 %288
  %290 = load i32, ptr %289, align 4
  %291 = or i32 %290, %286
  store i32 %291, ptr %289, align 4
  %292 = call ptr @ata_dev_next(ptr noundef nonnull %284, ptr noundef nonnull %262, i32 noundef 2) #15
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %283

294:                                              ; preds = %283, %280
  %295 = load i32, ptr %266, align 4
  %296 = and i32 %295, -33
  store i32 %296, ptr %266, align 4
  br label %297

297:                                              ; preds = %294, %267
  %298 = load i32, ptr %269, align 4
  %299 = getelementptr %struct.ata_link, ptr %262, i32 0, i32 11, i32 4, i32 %298
  %300 = load i32, ptr %299, align 4
  %301 = and i32 %300, -33
  store i32 %301, ptr %299, align 4
  %302 = call ptr @ata_dev_next(ptr noundef nonnull %268, ptr noundef nonnull %262, i32 noundef 2) #15
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %267

304:                                              ; preds = %297, %261
  %305 = call ptr @ata_link_next(ptr noundef nonnull %262, ptr noundef %0, i32 noundef 0) #15
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %261

307:                                              ; preds = %304, %256
  %308 = load ptr, ptr %20, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %308, i32 noundef %258) #15
  %309 = load volatile i32, ptr @jiffies, align 64
  %310 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #15
  %311 = icmp eq ptr %310, null
  br i1 %311, label %357, label %312

312:                                              ; preds = %353, %307
  %313 = phi ptr [ %355, %353 ], [ %310, %307 ]
  %314 = phi i32 [ %354, %353 ], [ %309, %307 ]
  %315 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %313, i32 noundef 2) #15
  store ptr %315, ptr %13, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %353, label %317

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.ata_link, ptr %313, i32 0, i32 12, i32 5
  br label %319

319:                                              ; preds = %348, %317
  %320 = phi i32 [ %314, %317 ], [ %350, %348 ]
  %321 = phi ptr [ %315, %317 ], [ %351, %348 ]
  %322 = getelementptr inbounds %struct.ata_device, ptr %321, i32 0, i32 9
  %323 = load i32, ptr %322, align 64
  switch i32 %323, label %348 [
    i32 1, label %324
    i32 9, label %324
  ]

324:                                              ; preds = %319, %319
  %325 = getelementptr inbounds %struct.ata_device, ptr %321, i32 0, i32 1
  %326 = load i32, ptr %325, align 4
  %327 = getelementptr %struct.ata_link, ptr %313, i32 0, i32 12, i32 0, i32 4, i32 %326
  %328 = load i32, ptr %327, align 4
  %329 = and i32 %328, 32
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %348, label %331

331:                                              ; preds = %324
  %332 = getelementptr inbounds %struct.ata_device, ptr %321, i32 0, i32 10
  %333 = load i32, ptr %332, align 4
  %334 = sub i32 %320, %333
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %340, label %336

336:                                              ; preds = %331
  %337 = load volatile i32, ptr @jiffies, align 64
  %338 = sub i32 %337, %333
  %339 = icmp sgt i32 %338, -1
  br i1 %339, label %348, label %340

340:                                              ; preds = %336, %331
  %341 = phi i32 [ %320, %336 ], [ %333, %331 ]
  %342 = load i32, ptr %318, align 4
  %343 = shl nuw i32 1, %326
  %344 = and i32 %342, %343
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %340
  call fastcc void @ata_eh_park_issue_cmd(ptr noundef nonnull %321, i32 noundef 1)
  %347 = load ptr, ptr %13, align 4
  br label %348

348:                                              ; preds = %346, %340, %336, %324, %319
  %349 = phi ptr [ %347, %346 ], [ %321, %319 ], [ %321, %324 ], [ %321, %336 ], [ %321, %340 ]
  %350 = phi i32 [ %341, %346 ], [ %320, %319 ], [ %320, %324 ], [ %320, %336 ], [ %341, %340 ]
  %351 = call ptr @ata_dev_next(ptr noundef %349, ptr noundef nonnull %313, i32 noundef 2) #15
  store ptr %351, ptr %13, align 4
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %319

353:                                              ; preds = %348, %312
  %354 = phi i32 [ %314, %312 ], [ %350, %348 ]
  %355 = call ptr @ata_link_next(ptr noundef nonnull %313, ptr noundef %0, i32 noundef 0) #15
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %312

357:                                              ; preds = %353, %307
  %358 = phi i32 [ %309, %307 ], [ %354, %353 ]
  %359 = load volatile i32, ptr @jiffies, align 64
  %360 = sub i32 %359, %358
  %361 = icmp sgt i32 %360, -1
  br i1 %361, label %395, label %362

362:                                              ; preds = %357
  %363 = load ptr, ptr %22, align 4
  %364 = getelementptr inbounds %struct.ata_host, ptr %363, i32 0, i32 10
  %365 = load ptr, ptr %364, align 4
  %366 = tail call ptr @llvm.thread.pointer() #15
  %367 = icmp ne ptr %365, %366
  %368 = load i1, ptr @ata_eh_release.__already_done, align 1
  %369 = xor i1 %368, true
  %370 = select i1 %367, i1 %369, i1 false
  br i1 %370, label %371, label %373, !prof !9

371:                                              ; preds = %362
  store i1 true, ptr @ata_eh_release.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 488, i32 noundef 9, ptr noundef null) #15
  %372 = load ptr, ptr %22, align 4
  br label %373

373:                                              ; preds = %371, %362
  %374 = phi ptr [ %372, %371 ], [ %363, %362 ]
  %375 = getelementptr inbounds %struct.ata_host, ptr %374, i32 0, i32 10
  store ptr null, ptr %375, align 4
  %376 = load ptr, ptr %22, align 4
  %377 = getelementptr inbounds %struct.ata_host, ptr %376, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %377) #15
  %378 = sub i32 %358, %359
  %379 = call i32 @wait_for_completion_timeout(ptr noundef %21, i32 noundef %378) #15
  %380 = load ptr, ptr %22, align 4
  %381 = getelementptr inbounds %struct.ata_host, ptr %380, i32 0, i32 9
  call void @mutex_lock(ptr noundef %381) #15
  %382 = load ptr, ptr %22, align 4
  %383 = getelementptr inbounds %struct.ata_host, ptr %382, i32 0, i32 10
  %384 = load ptr, ptr %383, align 4
  %385 = icmp ne ptr %384, null
  %386 = load i1, ptr @ata_eh_acquire.__already_done, align 1
  %387 = xor i1 %386, true
  %388 = select i1 %385, i1 %387, i1 false
  br i1 %388, label %389, label %391, !prof !9

389:                                              ; preds = %373
  store i1 true, ptr @ata_eh_acquire.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 472, i32 noundef 9, ptr noundef null) #15
  %390 = load ptr, ptr %22, align 4
  br label %391

391:                                              ; preds = %389, %373
  %392 = phi ptr [ %390, %389 ], [ %382, %373 ]
  %393 = getelementptr inbounds %struct.ata_host, ptr %392, i32 0, i32 10
  store ptr %366, ptr %393, align 4
  %394 = icmp eq i32 %379, 0
  br i1 %394, label %395, label %256

395:                                              ; preds = %391, %357
  %396 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #15
  %397 = icmp eq ptr %396, null
  br i1 %397, label %458, label %398

398:                                              ; preds = %455, %395
  %399 = phi ptr [ %456, %455 ], [ %396, %395 ]
  %400 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %399, i32 noundef 2) #15
  store ptr %400, ptr %13, align 4
  %401 = icmp eq ptr %400, null
  br i1 %401, label %455, label %402

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.ata_link, ptr %399, i32 0, i32 12, i32 5
  %404 = getelementptr inbounds %struct.ata_link, ptr %399, i32 0, i32 12
  br label %405

405:                                              ; preds = %451, %402
  %406 = phi ptr [ %400, %402 ], [ %453, %451 ]
  %407 = load i32, ptr %403, align 4
  %408 = getelementptr inbounds %struct.ata_device, ptr %406, i32 0, i32 1
  %409 = load i32, ptr %408, align 4
  %410 = shl nuw i32 1, %409
  %411 = and i32 %410, %407
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %451, label %413

413:                                              ; preds = %405
  %414 = load ptr, ptr %406, align 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #15
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %23, i8 0, i64 20, i1 false) #15
  %415 = load ptr, ptr %414, align 64
  %416 = getelementptr inbounds %struct.ata_port, ptr %415, i32 0, i32 9
  %417 = load i8, ptr %416, align 4
  store i8 %417, ptr %24, align 1
  %418 = load i32, ptr %408, align 4
  %419 = icmp eq i32 %418, 0
  %420 = select i1 %419, i8 -96, i8 -80
  store i8 %420, ptr %25, align 4
  %421 = shl nuw i32 1, %418
  %422 = xor i32 %421, -1
  %423 = getelementptr inbounds %struct.ata_link, ptr %414, i32 0, i32 12, i32 5
  %424 = load i32, ptr %423, align 4
  %425 = and i32 %424, %422
  store i32 %425, ptr %423, align 4
  store i8 -27, ptr %26, align 1
  store i32 6, ptr %12, align 4
  store i8 0, ptr %23, align 4
  %426 = call i32 @ata_exec_internal(ptr noundef nonnull %406, ptr noundef nonnull %12, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #15
  %427 = load ptr, ptr %13, align 4
  %428 = icmp eq ptr %427, null
  br i1 %428, label %432, label %429

429:                                              ; preds = %413
  %430 = getelementptr inbounds %struct.ata_device, ptr %427, i32 0, i32 1
  %431 = load i32, ptr %430, align 4
  br label %432

432:                                              ; preds = %429, %413
  %433 = phi i32 [ %431, %429 ], [ 0, %413 ]
  %434 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_done, i32 0, i32 1), align 4
  %435 = icmp sgt i32 %434, 0
  br i1 %435, label %436, label %449

436:                                              ; preds = %432
  %437 = tail call ptr @llvm.thread.pointer() #15
  %438 = getelementptr inbounds %struct.thread_info, ptr %437, i32 0, i32 2
  %439 = load i32, ptr %438, align 8
  %440 = lshr i32 %439, 5
  %441 = getelementptr i32, ptr @__cpu_online_mask, i32 %440
  %442 = load volatile i32, ptr %441, align 4
  %443 = and i32 %439, 31
  %444 = shl nuw i32 1, %443
  %445 = and i32 %444, %442
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %449, label %447

447:                                              ; preds = %436
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %448 = call i32 @__traceiter_ata_eh_done(ptr noundef null, ptr noundef nonnull %399, i32 noundef %433, i32 noundef 32) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  br label %449

449:                                              ; preds = %447, %436, %432
  call fastcc void @ata_eh_clear_action(ptr noundef nonnull %399, ptr noundef %427, ptr noundef %404, i32 noundef 32) #15
  %450 = load ptr, ptr %13, align 4
  br label %451

451:                                              ; preds = %449, %405
  %452 = phi ptr [ %406, %405 ], [ %450, %449 ]
  %453 = call ptr @ata_dev_next(ptr noundef %452, ptr noundef nonnull %399, i32 noundef 2) #15
  store ptr %453, ptr %13, align 4
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %405

455:                                              ; preds = %451, %398
  %456 = call ptr @ata_link_next(ptr noundef nonnull %399, ptr noundef %0, i32 noundef 0) #15
  %457 = icmp eq ptr %456, null
  br i1 %457, label %458, label %398

458:                                              ; preds = %455, %395
  %459 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #15
  %460 = icmp eq ptr %459, null
  br i1 %460, label %1184, label %461

461:                                              ; preds = %1167, %458
  %462 = phi ptr [ %1170, %1167 ], [ %459, %458 ]
  %463 = phi i32 [ %1169, %1167 ], [ 0, %458 ]
  %464 = phi i32 [ %1168, %1167 ], [ 0, %458 ]
  %465 = load i32, ptr %27, align 4
  %466 = icmp eq i32 %465, 0
  %467 = load ptr, ptr %462, align 64
  br i1 %466, label %475, label %468

468:                                              ; preds = %461
  %469 = getelementptr inbounds %struct.ata_port, ptr %467, i32 0, i32 25
  %470 = icmp eq ptr %469, %462
  br i1 %470, label %853, label %471

471:                                              ; preds = %468
  %472 = getelementptr inbounds %struct.ata_port, ptr %467, i32 0, i32 26
  %473 = load ptr, ptr %472, align 64
  %474 = icmp eq ptr %473, %462
  br i1 %474, label %853, label %475

475:                                              ; preds = %471, %461
  %476 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %462, i32 noundef 3) #15
  %477 = icmp eq ptr %476, null
  br i1 %477, label %605, label %478

478:                                              ; preds = %475
  %479 = getelementptr inbounds %struct.ata_link, ptr %462, i32 0, i32 12, i32 0, i32 5
  %480 = getelementptr inbounds %struct.ata_link, ptr %462, i32 0, i32 12
  %481 = getelementptr inbounds %struct.ata_port, ptr %467, i32 0, i32 36
  %482 = getelementptr inbounds %struct.ata_link, ptr %462, i32 0, i32 12, i32 0, i32 3
  br label %483

483:                                              ; preds = %601, %478
  %484 = phi i32 [ 0, %478 ], [ %602, %601 ]
  %485 = phi ptr [ %476, %478 ], [ %603, %601 ]
  %486 = load ptr, ptr %485, align 64
  %487 = getelementptr inbounds %struct.ata_link, ptr %486, i32 0, i32 12, i32 0, i32 3
  %488 = load i32, ptr %487, align 4
  %489 = getelementptr inbounds %struct.ata_device, ptr %485, i32 0, i32 1
  %490 = load i32, ptr %489, align 4
  %491 = getelementptr %struct.ata_link, ptr %486, i32 0, i32 12, i32 0, i32 4, i32 %490
  %492 = load i32, ptr %491, align 4
  %493 = or i32 %492, %488
  %494 = load i32, ptr %479, align 4
  %495 = and i32 %494, 196608
  %496 = icmp ne i32 %495, 0
  %497 = zext i1 %496 to i32
  %498 = and i32 %493, 1
  %499 = icmp eq i32 %498, 0
  %500 = getelementptr inbounds %struct.ata_device, ptr %485, i32 0, i32 9
  %501 = load i32, ptr %500, align 64
  br i1 %499, label %560, label %502

502:                                              ; preds = %483
  switch i32 %501, label %601 [
    i32 5, label %503
    i32 1, label %504
    i32 3, label %504
    i32 7, label %504
    i32 9, label %504
    i32 0, label %562
  ], !prof !41

503:                                              ; preds = %502
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2940, i32 noundef 9, ptr noundef null) #15
  br label %504

504:                                              ; preds = %503, %502, %502, %502, %502
  %505 = call ptr @ata_dev_phys_link(ptr noundef nonnull %485) #15
  %506 = call zeroext i1 @ata_phys_link_offline(ptr noundef %505) #15
  br i1 %506, label %1061, label %507

507:                                              ; preds = %504
  call void @ata_eh_about_to_do(ptr noundef %462, ptr noundef nonnull %485, i32 noundef 1) #15
  %508 = load i32, ptr %489, align 4
  %509 = getelementptr %struct.ata_link, ptr %462, i32 0, i32 12, i32 3, i32 %508
  %510 = load i32, ptr %509, align 4
  %511 = call i32 @ata_dev_revalidate(ptr noundef nonnull %485, i32 noundef %510, i32 noundef %497) #15
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %1061

513:                                              ; preds = %507
  %514 = load i32, ptr %489, align 4
  %515 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_done, i32 0, i32 1), align 4
  %516 = icmp sgt i32 %515, 0
  br i1 %516, label %517, label %530

517:                                              ; preds = %513
  %518 = tail call ptr @llvm.thread.pointer() #15
  %519 = getelementptr inbounds %struct.thread_info, ptr %518, i32 0, i32 2
  %520 = load i32, ptr %519, align 8
  %521 = lshr i32 %520, 5
  %522 = getelementptr i32, ptr @__cpu_online_mask, i32 %521
  %523 = load volatile i32, ptr %522, align 4
  %524 = and i32 %520, 31
  %525 = shl nuw i32 1, %524
  %526 = and i32 %525, %523
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %530, label %528

528:                                              ; preds = %517
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %529 = call i32 @__traceiter_ata_eh_done(ptr noundef null, ptr noundef %462, i32 noundef %514, i32 noundef 1) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  br label %530

530:                                              ; preds = %528, %517, %513
  %531 = load i32, ptr %482, align 4
  %532 = and i32 %531, 1
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %551, label %534

534:                                              ; preds = %530
  %535 = call ptr @ata_dev_next(ptr noundef null, ptr noundef %462, i32 noundef 2) #15
  %536 = icmp eq ptr %535, null
  br i1 %536, label %548, label %537

537:                                              ; preds = %537, %534
  %538 = phi ptr [ %546, %537 ], [ %535, %534 ]
  %539 = load i32, ptr %482, align 4
  %540 = and i32 %539, 1
  %541 = getelementptr inbounds %struct.ata_device, ptr %538, i32 0, i32 1
  %542 = load i32, ptr %541, align 4
  %543 = getelementptr %struct.ata_eh_info, ptr %480, i32 0, i32 4, i32 %542
  %544 = load i32, ptr %543, align 4
  %545 = or i32 %544, %540
  store i32 %545, ptr %543, align 4
  %546 = call ptr @ata_dev_next(ptr noundef nonnull %538, ptr noundef %462, i32 noundef 2) #15
  %547 = icmp eq ptr %546, null
  br i1 %547, label %548, label %537

548:                                              ; preds = %537, %534
  %549 = load i32, ptr %482, align 4
  %550 = and i32 %549, -2
  store i32 %550, ptr %482, align 4
  br label %551

551:                                              ; preds = %548, %530
  %552 = load i32, ptr %489, align 4
  %553 = getelementptr %struct.ata_eh_info, ptr %480, i32 0, i32 4, i32 %552
  %554 = load i32, ptr %553, align 4
  %555 = and i32 %554, -2
  store i32 %555, ptr %553, align 4
  %556 = load i32, ptr %479, align 4
  %557 = or i32 %556, 524288
  store i32 %557, ptr %479, align 4
  %558 = load ptr, ptr @system_wq, align 4
  %559 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %558, ptr noundef %481) #15
  br label %601

560:                                              ; preds = %483
  %561 = icmp eq i32 %501, 0
  br i1 %561, label %562, label %601

562:                                              ; preds = %560, %502
  %563 = getelementptr %struct.ata_link, ptr %462, i32 0, i32 12, i32 1, i32 %490
  %564 = load i32, ptr %563, align 4
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %601, label %566

566:                                              ; preds = %562
  %567 = getelementptr %struct.ata_link, ptr %462, i32 0, i32 12, i32 3, i32 %490
  %568 = load i32, ptr %567, align 4
  switch i32 %568, label %601 [
    i32 7, label %569
    i32 5, label %569
    i32 3, label %569
    i32 1, label %569
    i32 9, label %569
  ]

569:                                              ; preds = %566, %566, %566, %566, %566
  store i32 %568, ptr %500, align 64
  %570 = icmp eq i32 %568, 5
  br i1 %570, label %571, label %573

571:                                              ; preds = %569
  %572 = call i32 @sata_pmp_attach(ptr noundef nonnull %485) #15
  br label %576

573:                                              ; preds = %569
  %574 = getelementptr inbounds %struct.ata_device, ptr %485, i32 0, i32 25
  %575 = call i32 @ata_dev_read_id(ptr noundef nonnull %485, ptr noundef %500, i32 noundef %497, ptr noundef %574) #15
  br label %576

576:                                              ; preds = %573, %571
  %577 = phi i32 [ %572, %571 ], [ %575, %573 ]
  %578 = load i32, ptr %500, align 64
  %579 = load i32, ptr %489, align 4
  %580 = getelementptr %struct.ata_link, ptr %462, i32 0, i32 12, i32 3, i32 %579
  store i32 %578, ptr %580, align 4
  store i32 0, ptr %500, align 64
  switch i32 %577, label %1061 [
    i32 0, label %581
    i32 -2, label %600
  ]

581:                                              ; preds = %576
  %582 = getelementptr inbounds %struct.ata_device, ptr %485, i32 0, i32 35
  %583 = load i32, ptr %582, align 8
  br label %584

584:                                              ; preds = %589, %581
  %585 = phi i32 [ %583, %581 ], [ %594, %589 ]
  %586 = getelementptr %struct.ata_device, ptr %485, i32 0, i32 35, i32 1, i32 %585, i32 1
  %587 = load i32, ptr %586, align 4
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %596, label %589

589:                                              ; preds = %584
  %590 = getelementptr %struct.ata_device, ptr %485, i32 0, i32 35, i32 1, i32 %585
  %591 = load i32, ptr %590, align 8
  %592 = or i32 %591, -2147483648
  store i32 %592, ptr %590, align 8
  %593 = add i32 %585, 31
  %594 = srem i32 %593, 32
  %595 = icmp eq i32 %594, %583
  br i1 %595, label %596, label %584

596:                                              ; preds = %589, %584
  %597 = load i32, ptr %489, align 4
  %598 = shl nuw i32 1, %597
  %599 = or i32 %598, %484
  br label %601

600:                                              ; preds = %576
  call void @ata_eh_thaw_port(ptr noundef %467) #15
  br label %601

601:                                              ; preds = %600, %596, %566, %562, %560, %551, %502
  %602 = phi i32 [ %484, %560 ], [ %484, %562 ], [ %599, %596 ], [ %484, %600 ], [ %484, %551 ], [ %484, %566 ], [ %484, %502 ]
  %603 = call ptr @ata_dev_next(ptr noundef nonnull %485, ptr noundef %462, i32 noundef 3) #15
  %604 = icmp eq ptr %603, null
  br i1 %604, label %605, label %483

605:                                              ; preds = %601, %475
  %606 = phi i32 [ 0, %475 ], [ %602, %601 ]
  %607 = getelementptr inbounds %struct.ata_link, ptr %462, i32 0, i32 12, i32 0, i32 5
  %608 = load i32, ptr %607, align 4
  %609 = and i32 %608, 196608
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %629, label %611

611:                                              ; preds = %605
  %612 = load ptr, ptr %462, align 64
  %613 = getelementptr inbounds %struct.ata_port, ptr %612, i32 0, i32 25
  %614 = icmp eq ptr %613, %462
  br i1 %614, label %619, label %615

615:                                              ; preds = %611
  %616 = getelementptr inbounds %struct.ata_port, ptr %612, i32 0, i32 26
  %617 = load ptr, ptr %616, align 64
  %618 = icmp eq ptr %617, %462
  br i1 %618, label %619, label %629

619:                                              ; preds = %615, %611
  %620 = getelementptr inbounds %struct.ata_port, ptr %467, i32 0, i32 1
  %621 = load ptr, ptr %620, align 4
  %622 = getelementptr inbounds %struct.ata_port_operations, ptr %621, i32 0, i32 5
  %623 = load ptr, ptr %622, align 4
  %624 = icmp eq ptr %623, null
  br i1 %624, label %628, label %625

625:                                              ; preds = %619
  %626 = call i32 %623(ptr noundef %467) #15
  %627 = getelementptr inbounds %struct.ata_port, ptr %467, i32 0, i32 18
  store i32 %626, ptr %627, align 4
  br label %628

628:                                              ; preds = %625, %619
  call void @ata_force_cbl(ptr noundef %467) #15
  br label %629

629:                                              ; preds = %628, %615, %605
  %630 = call ptr @ata_dev_next(ptr noundef null, ptr noundef %462, i32 noundef 2) #15
  %631 = icmp eq ptr %630, null
  br i1 %631, label %667, label %632

632:                                              ; preds = %629
  %633 = getelementptr inbounds %struct.ata_port, ptr %467, i32 0, i32 2
  %634 = getelementptr inbounds %struct.ata_port, ptr %467, i32 0, i32 4
  br label %635

635:                                              ; preds = %664, %632
  %636 = phi ptr [ %630, %632 ], [ %665, %664 ]
  %637 = getelementptr inbounds %struct.ata_device, ptr %636, i32 0, i32 1
  %638 = load i32, ptr %637, align 4
  %639 = shl nuw i32 1, %638
  %640 = and i32 %639, %606
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %664, label %642

642:                                              ; preds = %635
  %643 = getelementptr %struct.ata_link, ptr %462, i32 0, i32 12, i32 3, i32 %638
  %644 = load i32, ptr %643, align 4
  %645 = getelementptr inbounds %struct.ata_device, ptr %636, i32 0, i32 9
  store i32 %644, ptr %645, align 64
  %646 = icmp eq i32 %644, 5
  br i1 %646, label %664, label %647

647:                                              ; preds = %642
  %648 = load i32, ptr %607, align 4
  %649 = or i32 %648, 262144
  store i32 %649, ptr %607, align 4
  %650 = call i32 @ata_dev_configure(ptr noundef nonnull %636) #15
  %651 = load i32, ptr %607, align 4
  %652 = and i32 %651, -262145
  store i32 %652, ptr %607, align 4
  %653 = icmp eq i32 %650, 0
  br i1 %653, label %656, label %654

654:                                              ; preds = %647
  %655 = getelementptr inbounds %struct.ata_device, ptr %636, i32 0, i32 9
  store i32 0, ptr %655, align 64
  br label %1061

656:                                              ; preds = %647
  %657 = load ptr, ptr %633, align 8
  %658 = call i32 @_raw_spin_lock_irqsave(ptr noundef %657) #15
  %659 = load i32, ptr %634, align 16
  %660 = or i32 %659, 64
  store i32 %660, ptr %634, align 16
  %661 = load ptr, ptr %633, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %661, i32 noundef %658) #15
  %662 = load i32, ptr %607, align 4
  %663 = or i32 %662, 524288
  store i32 %663, ptr %607, align 4
  br label %664

664:                                              ; preds = %656, %642, %635
  %665 = call ptr @ata_dev_next(ptr noundef nonnull %636, ptr noundef %462, i32 noundef 2) #15
  %666 = icmp eq ptr %665, null
  br i1 %666, label %667, label %635

667:                                              ; preds = %664, %629
  %668 = getelementptr inbounds %struct.ata_link, ptr %462, i32 0, i32 14, i32 0, i32 9
  %669 = load i32, ptr %668, align 64
  %670 = icmp eq i32 %669, 5
  br i1 %670, label %671, label %673

671:                                              ; preds = %667
  %672 = getelementptr inbounds %struct.ata_link, ptr %462, i32 0, i32 12, i32 0, i32 3
  store i32 0, ptr %672, align 4
  br label %1184

673:                                              ; preds = %667
  %674 = load i32, ptr %607, align 4
  %675 = and i32 %674, 524288
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %683, label %677

677:                                              ; preds = %673
  %678 = call i32 @ata_set_mode(ptr noundef nonnull %462, ptr noundef nonnull %13)
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %680, label %1058

680:                                              ; preds = %677
  %681 = load i32, ptr %607, align 4
  %682 = and i32 %681, -524289
  store i32 %682, ptr %607, align 4
  br label %683

683:                                              ; preds = %680, %673
  %684 = phi i32 [ %682, %680 ], [ %674, %673 ]
  %685 = and i32 %684, 196608
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %775, label %687

687:                                              ; preds = %683
  %688 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %462, i32 noundef 2) #15
  store ptr %688, ptr %13, align 4
  %689 = icmp eq ptr %688, null
  br i1 %689, label %775, label %690

690:                                              ; preds = %771, %687
  %691 = phi ptr [ %773, %771 ], [ %688, %687 ]
  %692 = getelementptr inbounds %struct.ata_device, ptr %691, i32 0, i32 9
  %693 = load i32, ptr %692, align 64
  %694 = icmp eq i32 %693, 3
  br i1 %694, label %695, label %771

695:                                              ; preds = %690
  %696 = getelementptr inbounds %struct.ata_device, ptr %691, i32 0, i32 1
  br label %700

697:                                              ; preds = %747
  %698 = add nuw nsw i32 %701, 1
  %699 = icmp eq i32 %698, 5
  br i1 %699, label %761, label %700

700:                                              ; preds = %697, %695
  %701 = phi i32 [ 0, %695 ], [ %698, %697 ]
  %702 = load ptr, ptr %691, align 64
  %703 = load ptr, ptr %702, align 64
  %704 = getelementptr inbounds %struct.ata_port, ptr %703, i32 0, i32 50
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %10, i8 0, i32 16, i1 false) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #15
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %28, i8 0, i64 20, i1 false) #15
  %705 = load ptr, ptr %702, align 64
  %706 = getelementptr inbounds %struct.ata_port, ptr %705, i32 0, i32 9
  %707 = load i8, ptr %706, align 4
  store i8 %707, ptr %29, align 1
  %708 = load i32, ptr %696, align 4
  %709 = icmp eq i32 %708, 0
  %710 = select i1 %709, i8 -96, i8 -80
  store i8 %710, ptr %30, align 4
  store i32 6, ptr %11, align 4
  store i8 -96, ptr %31, align 1
  store i8 8, ptr %28, align 4
  %711 = call i32 @ata_exec_internal(ptr noundef nonnull %691, ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #15
  %712 = icmp eq i32 %711, 1
  br i1 %712, label %725, label %713

713:                                              ; preds = %700
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  %714 = icmp eq i32 %711, 0
  br i1 %714, label %771, label %715

715:                                              ; preds = %713
  %716 = load ptr, ptr %691, align 64
  %717 = load ptr, ptr %716, align 64
  %718 = getelementptr inbounds %struct.ata_port, ptr %717, i32 0, i32 5
  %719 = load i32, ptr %718, align 4
  %720 = getelementptr inbounds %struct.ata_link, ptr %716, i32 0, i32 1
  %721 = load i32, ptr %720, align 4
  %722 = load i32, ptr %696, align 4
  %723 = add i32 %722, %721
  %724 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, i32 noundef %719, i32 noundef %723, i32 noundef %711) #16
  br label %1058

725:                                              ; preds = %700
  %726 = load i8, ptr %32, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  %727 = and i8 %726, -16
  %728 = icmp eq i8 %727, 96
  br i1 %728, label %729, label %771

729:                                              ; preds = %725
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(16) @__const.atapi_eh_request_sense.cdb, i32 16, i1 false) #15
  %730 = load ptr, ptr %691, align 64
  %731 = load ptr, ptr %730, align 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #15
  %732 = getelementptr inbounds %struct.ata_port, ptr %703, i32 0, i32 50, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %732, i8 0, i32 95, i1 false) #15
  store i8 112, ptr %704, align 1
  %733 = getelementptr %struct.ata_port, ptr %703, i32 0, i32 50, i32 2
  store i8 6, ptr %733, align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %33, i8 0, i32 20, i1 false) #15
  %734 = load ptr, ptr %691, align 64
  %735 = load ptr, ptr %734, align 64
  %736 = getelementptr inbounds %struct.ata_port, ptr %735, i32 0, i32 9
  %737 = load i8, ptr %736, align 4
  store i8 %737, ptr %34, align 1
  %738 = load i32, ptr %696, align 4
  %739 = icmp eq i32 %738, 0
  %740 = select i1 %739, i8 -96, i8 -80
  store i8 %740, ptr %35, align 4
  store i32 6, ptr %9, align 4
  store i8 -96, ptr %36, align 1
  %741 = getelementptr inbounds %struct.ata_port, ptr %731, i32 0, i32 3
  %742 = load i32, ptr %741, align 4
  %743 = and i32 %742, 128
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %746, label %745

745:                                              ; preds = %729
  store i8 1, ptr %37, align 1
  br label %747

746:                                              ; preds = %729
  store i8 96, ptr %38, align 2
  br label %747

747:                                              ; preds = %746, %745
  %748 = phi i8 [ 9, %746 ], [ 10, %745 ]
  store i8 %748, ptr %33, align 4
  %749 = call i32 @ata_exec_internal(ptr noundef nonnull %691, ptr noundef nonnull %9, ptr noundef nonnull %8, i32 noundef 2, ptr noundef %704, i32 noundef 96, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %697, label %751

751:                                              ; preds = %747
  %752 = load ptr, ptr %691, align 64
  %753 = load ptr, ptr %752, align 64
  %754 = getelementptr inbounds %struct.ata_port, ptr %753, i32 0, i32 5
  %755 = load i32, ptr %754, align 4
  %756 = getelementptr inbounds %struct.ata_link, ptr %752, i32 0, i32 1
  %757 = load i32, ptr %756, align 4
  %758 = load i32, ptr %696, align 4
  %759 = add i32 %758, %757
  %760 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, i32 noundef %755, i32 noundef %759, i32 noundef %749) #16
  br label %1058

761:                                              ; preds = %697
  %762 = load ptr, ptr %691, align 64
  %763 = load ptr, ptr %762, align 64
  %764 = getelementptr inbounds %struct.ata_port, ptr %763, i32 0, i32 5
  %765 = load i32, ptr %764, align 4
  %766 = getelementptr inbounds %struct.ata_link, ptr %762, i32 0, i32 1
  %767 = load i32, ptr %766, align 4
  %768 = load i32, ptr %696, align 4
  %769 = add i32 %768, %767
  %770 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, i32 noundef %765, i32 noundef %769, i32 noundef 5) #16
  br label %771

771:                                              ; preds = %761, %725, %713, %690
  %772 = load ptr, ptr %13, align 4
  %773 = call ptr @ata_dev_next(ptr noundef %772, ptr noundef nonnull %462, i32 noundef 2) #15
  store ptr %773, ptr %13, align 4
  %774 = icmp eq ptr %773, null
  br i1 %774, label %775, label %690

775:                                              ; preds = %771, %687, %683
  %776 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %462, i32 noundef 2) #15
  store ptr %776, ptr %13, align 4
  %777 = icmp eq ptr %776, null
  br i1 %777, label %853, label %778

778:                                              ; preds = %849, %775
  %779 = phi ptr [ %851, %849 ], [ %776, %775 ]
  %780 = getelementptr inbounds %struct.ata_device, ptr %779, i32 0, i32 9
  %781 = load i32, ptr %780, align 64
  switch i32 %781, label %849 [
    i32 1, label %782
    i32 9, label %782
  ]

782:                                              ; preds = %778, %778
  %783 = load ptr, ptr %779, align 64
  %784 = load ptr, ptr %783, align 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  %785 = getelementptr inbounds %struct.ata_link, ptr %783, i32 0, i32 3
  %786 = load i32, ptr %785, align 32
  %787 = icmp ult i32 %786, 33
  br i1 %787, label %788, label %846

788:                                              ; preds = %782
  %789 = getelementptr %struct.ata_port, ptr %784, i32 0, i32 19, i32 %786, i32 1
  %790 = load ptr, ptr %789, align 4
  %791 = icmp eq ptr %790, %779
  br i1 %791, label %792, label %846

792:                                              ; preds = %788
  %793 = getelementptr %struct.ata_port, ptr %784, i32 0, i32 19, i32 %786, i32 4, i32 14
  %794 = load i8, ptr %793, align 1
  switch i8 %794, label %846 [
    i8 -22, label %795
    i8 -25, label %795
  ]

795:                                              ; preds = %792, %792
  %796 = getelementptr %struct.ata_port, ptr %784, i32 0, i32 19, i32 %786, i32 20
  %797 = load i32, ptr %796, align 4
  %798 = and i32 %797, 1
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %800, label %846

800:                                              ; preds = %795
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %39, i8 0, i32 20, i1 false) #15
  %801 = load ptr, ptr %783, align 64
  %802 = getelementptr inbounds %struct.ata_port, ptr %801, i32 0, i32 9
  %803 = load i8, ptr %802, align 4
  store i8 %803, ptr %40, align 1
  %804 = getelementptr inbounds %struct.ata_device, ptr %779, i32 0, i32 1
  %805 = load i32, ptr %804, align 4
  %806 = icmp eq i32 %805, 0
  %807 = select i1 %806, i8 -96, i8 -80
  store i8 %807, ptr %41, align 4
  %808 = load i8, ptr %793, align 1
  store i8 %808, ptr %42, align 1
  store i32 4, ptr %7, align 4
  %809 = load ptr, ptr %783, align 64
  %810 = getelementptr inbounds %struct.ata_port, ptr %809, i32 0, i32 5
  %811 = load i32, ptr %810, align 4
  %812 = getelementptr inbounds %struct.ata_link, ptr %783, i32 0, i32 1
  %813 = load i32, ptr %812, align 4
  %814 = add i32 %813, %805
  %815 = zext i8 %808 to i32
  %816 = load i32, ptr %796, align 4
  %817 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, i32 noundef %811, i32 noundef %814, i32 noundef %815, i32 noundef %816) #16
  %818 = call i32 @ata_exec_internal(ptr noundef nonnull %779, ptr noundef nonnull %7, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #15
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %826

820:                                              ; preds = %800
  %821 = getelementptr %struct.ata_port, ptr %784, i32 0, i32 19, i32 %786, i32 2
  %822 = load ptr, ptr %821, align 4
  %823 = getelementptr inbounds %struct.scsi_cmnd, ptr %822, i32 0, i32 9
  %824 = load i32, ptr %823, align 4
  %825 = call i32 @llvm.smax.i32(i32 %824, i32 1) #15
  store i32 %825, ptr %823, align 4
  br label %846

826:                                              ; preds = %800
  %827 = load ptr, ptr %779, align 64
  %828 = load ptr, ptr %827, align 64
  %829 = getelementptr inbounds %struct.ata_port, ptr %828, i32 0, i32 5
  %830 = load i32, ptr %829, align 4
  %831 = getelementptr inbounds %struct.ata_link, ptr %827, i32 0, i32 1
  %832 = load i32, ptr %831, align 4
  %833 = load i32, ptr %804, align 4
  %834 = add i32 %833, %832
  %835 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, i32 noundef %830, i32 noundef %834, i32 noundef %818) #16
  %836 = and i32 %818, 1
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %848, label %838

838:                                              ; preds = %826
  %839 = load i32, ptr %796, align 4
  %840 = or i32 %839, 1
  store i32 %840, ptr %796, align 4
  %841 = getelementptr %struct.ata_port, ptr %784, i32 0, i32 19, i32 %786, i32 21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %841, ptr noundef nonnull align 4 dereferenceable(24) %7, i32 24, i1 false) #15
  %842 = getelementptr inbounds %struct.ata_port, ptr %784, i32 0, i32 4
  %843 = load i32, ptr %842, align 16
  %844 = and i32 %843, 4
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %848

846:                                              ; preds = %838, %820, %795, %792, %788, %782
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  %847 = load ptr, ptr %13, align 4
  br label %849

848:                                              ; preds = %838, %826
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  br label %1058

849:                                              ; preds = %846, %778
  %850 = phi ptr [ %847, %846 ], [ %779, %778 ]
  %851 = call ptr @ata_dev_next(ptr noundef %850, ptr noundef nonnull %462, i32 noundef 2) #15
  store ptr %851, ptr %13, align 4
  %852 = icmp eq ptr %851, null
  br i1 %852, label %853, label %778

853:                                              ; preds = %849, %775, %471, %468
  %854 = phi i32 [ %463, %471 ], [ %463, %468 ], [ 0, %775 ], [ 0, %849 ]
  %855 = getelementptr inbounds %struct.ata_link, ptr %462, i32 0, i32 10
  %856 = load i32, ptr %855, align 4
  %857 = load i32, ptr %43, align 64
  %858 = icmp eq i32 %856, %857
  br i1 %858, label %1055, label %859

859:                                              ; preds = %853
  %860 = load ptr, ptr %462, align 64
  %861 = getelementptr inbounds %struct.ata_port, ptr %860, i32 0, i32 25
  %862 = icmp eq ptr %861, %462
  br i1 %862, label %867, label %863

863:                                              ; preds = %859
  %864 = getelementptr inbounds %struct.ata_port, ptr %860, i32 0, i32 26
  %865 = load ptr, ptr %864, align 64
  %866 = icmp eq ptr %865, %462
  br i1 %866, label %867, label %868

867:                                              ; preds = %863, %859
  br label %868

868:                                              ; preds = %867, %863
  %869 = phi ptr [ %860, %867 ], [ null, %863 ]
  %870 = getelementptr inbounds %struct.ata_port, ptr %860, i32 0, i32 3
  %871 = load i32, ptr %870, align 4
  %872 = and i32 %871, 8388608
  %873 = icmp eq i32 %872, 0
  %874 = getelementptr inbounds %struct.ata_link, ptr %462, i32 0, i32 5
  %875 = load i32, ptr %874, align 8
  %876 = and i32 %875, 256
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %878, label %1055

878:                                              ; preds = %868
  %879 = icmp eq ptr %869, null
  br i1 %879, label %886, label %880

880:                                              ; preds = %878
  %881 = getelementptr inbounds %struct.ata_port, ptr %869, i32 0, i32 1
  %882 = load ptr, ptr %881, align 4
  %883 = getelementptr inbounds %struct.ata_port_operations, ptr %882, i32 0, i32 31
  %884 = load ptr, ptr %883, align 4
  %885 = icmp eq ptr %884, null
  br i1 %885, label %1055, label %886

886:                                              ; preds = %880, %878
  %887 = call ptr @ata_dev_next(ptr noundef null, ptr noundef %462, i32 noundef 0) #15
  %888 = icmp eq ptr %887, null
  br i1 %888, label %938, label %889

889:                                              ; preds = %886
  %890 = icmp ugt i32 %857, 2
  br label %891

891:                                              ; preds = %935, %889
  %892 = phi ptr [ %887, %889 ], [ %936, %935 ]
  %893 = phi i32 [ 3, %889 ], [ %918, %935 ]
  %894 = phi ptr [ null, %889 ], [ %916, %935 ]
  %895 = phi ptr [ null, %889 ], [ %912, %935 ]
  %896 = getelementptr %struct.ata_device, ptr %892, i32 0, i32 25, i32 0, i32 38
  %897 = load i16, ptr %896, align 2
  %898 = add i16 %897, -1
  %899 = icmp ult i16 %898, -2
  %900 = and i16 %897, 512
  %901 = icmp ne i16 %900, 0
  %902 = and i1 %899, %901
  %903 = getelementptr %struct.ata_device, ptr %892, i32 0, i32 25, i32 0, i32 39
  %904 = load i16, ptr %903, align 2
  %905 = add i16 %904, -1
  %906 = icmp ult i16 %905, -2
  %907 = and i16 %904, 8
  %908 = icmp ne i16 %907, 0
  %909 = and i1 %906, %908
  %910 = select i1 %909, i1 %873, i1 false
  %911 = icmp eq ptr %895, null
  %912 = select i1 %911, ptr %892, ptr %895
  %913 = icmp eq ptr %894, null
  %914 = select i1 %902, i1 true, i1 %910
  %915 = select i1 %914, ptr %892, ptr null
  %916 = select i1 %913, ptr %915, ptr %894
  %917 = select i1 %902, i32 -2, i32 -4
  %918 = and i32 %917, %893
  %919 = xor i1 %910, true
  %920 = select i1 %890, i1 true, i1 %919
  br i1 %920, label %935, label %921

921:                                              ; preds = %891
  %922 = call i32 @ata_dev_set_feature(ptr noundef nonnull %892, i8 noundef zeroext -112, i8 noundef zeroext 3) #15
  %923 = icmp ugt i32 %922, 1
  br i1 %923, label %924, label %935

924:                                              ; preds = %921
  %925 = load ptr, ptr %892, align 64
  %926 = load ptr, ptr %925, align 64
  %927 = getelementptr inbounds %struct.ata_port, ptr %926, i32 0, i32 5
  %928 = load i32, ptr %927, align 4
  %929 = getelementptr inbounds %struct.ata_link, ptr %925, i32 0, i32 1
  %930 = load i32, ptr %929, align 4
  %931 = getelementptr inbounds %struct.ata_device, ptr %892, i32 0, i32 1
  %932 = load i32, ptr %931, align 4
  %933 = add i32 %932, %930
  %934 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, i32 noundef %928, i32 noundef %933, i32 noundef %922) #16
  br label %1010

935:                                              ; preds = %921, %891
  %936 = call ptr @ata_dev_next(ptr noundef nonnull %892, ptr noundef %462, i32 noundef 0) #15
  %937 = icmp eq ptr %936, null
  br i1 %937, label %938, label %891

938:                                              ; preds = %935, %886
  %939 = phi ptr [ null, %886 ], [ %912, %935 ]
  %940 = phi ptr [ null, %886 ], [ %916, %935 ]
  %941 = phi i32 [ 3, %886 ], [ %918, %935 ]
  br i1 %879, label %959, label %942

942:                                              ; preds = %938
  %943 = getelementptr inbounds %struct.ata_port, ptr %869, i32 0, i32 1
  %944 = load ptr, ptr %943, align 4
  %945 = getelementptr inbounds %struct.ata_port_operations, ptr %944, i32 0, i32 31
  %946 = load ptr, ptr %945, align 4
  %947 = call i32 %946(ptr noundef %462, i32 noundef %857, i32 noundef %941) #15
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %949, label %961

949:                                              ; preds = %942
  %950 = getelementptr inbounds %struct.ata_port, ptr %869, i32 0, i32 26
  %951 = load ptr, ptr %950, align 64
  %952 = icmp eq ptr %951, null
  br i1 %952, label %953, label %954

953:                                              ; preds = %949
  store i32 %857, ptr %855, align 4
  br label %967

954:                                              ; preds = %949
  %955 = load ptr, ptr %943, align 4
  %956 = getelementptr inbounds %struct.ata_port_operations, ptr %955, i32 0, i32 31
  %957 = load ptr, ptr %956, align 4
  %958 = call i32 %957(ptr noundef nonnull %951, i32 noundef %857, i32 noundef %941) #15
  br label %961

959:                                              ; preds = %938
  %960 = call i32 @sata_pmp_set_lpm(ptr noundef %462, i32 noundef %857, i32 noundef %941) #15
  br label %961

961:                                              ; preds = %959, %954, %942
  %962 = phi i32 [ %947, %942 ], [ %958, %954 ], [ %960, %959 ]
  switch i32 %962, label %963 [
    i32 0, label %966
    i32 -95, label %1051
  ]

963:                                              ; preds = %961
  %964 = icmp eq ptr %940, null
  %965 = select i1 %964, ptr %939, ptr %940
  br label %1010

966:                                              ; preds = %961
  store i32 %857, ptr %855, align 4
  br i1 %879, label %973, label %967

967:                                              ; preds = %966, %953
  %968 = getelementptr inbounds %struct.ata_port, ptr %869, i32 0, i32 26
  %969 = load ptr, ptr %968, align 64
  %970 = icmp eq ptr %969, null
  br i1 %970, label %973, label %971

971:                                              ; preds = %967
  %972 = getelementptr inbounds %struct.ata_link, ptr %969, i32 0, i32 10
  store i32 %857, ptr %972, align 4
  br label %973

973:                                              ; preds = %971, %967, %966
  %974 = call ptr @ata_dev_next(ptr noundef null, ptr noundef %462, i32 noundef 0) #15
  %975 = icmp eq ptr %974, null
  br i1 %975, label %1007, label %976

976:                                              ; preds = %973
  %977 = icmp ult i32 %857, 3
  %978 = xor i1 %873, true
  %979 = select i1 %977, i1 true, i1 %978
  br label %980

980:                                              ; preds = %1004, %976
  %981 = phi ptr [ %974, %976 ], [ %1005, %1004 ]
  br i1 %979, label %1004, label %982

982:                                              ; preds = %980
  %983 = getelementptr %struct.ata_device, ptr %981, i32 0, i32 25, i32 0, i32 39
  %984 = load i16, ptr %983, align 2
  %985 = add i16 %984, -1
  %986 = icmp ult i16 %985, -2
  %987 = and i16 %984, 8
  %988 = icmp ne i16 %987, 0
  %989 = and i1 %986, %988
  br i1 %989, label %990, label %1004

990:                                              ; preds = %982
  %991 = call i32 @ata_dev_set_feature(ptr noundef nonnull %981, i8 noundef zeroext 16, i8 noundef zeroext 3) #15
  %992 = icmp ugt i32 %991, 1
  br i1 %992, label %993, label %1004

993:                                              ; preds = %990
  %994 = load ptr, ptr %981, align 64
  %995 = load ptr, ptr %994, align 64
  %996 = getelementptr inbounds %struct.ata_port, ptr %995, i32 0, i32 5
  %997 = load i32, ptr %996, align 4
  %998 = getelementptr inbounds %struct.ata_link, ptr %994, i32 0, i32 1
  %999 = load i32, ptr %998, align 4
  %1000 = getelementptr inbounds %struct.ata_device, ptr %981, i32 0, i32 1
  %1001 = load i32, ptr %1000, align 4
  %1002 = add i32 %1001, %999
  %1003 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, i32 noundef %997, i32 noundef %1002, i32 noundef %991) #16
  br label %1010

1004:                                             ; preds = %990, %982, %980
  %1005 = call ptr @ata_dev_next(ptr noundef nonnull %981, ptr noundef %462, i32 noundef 0) #15
  %1006 = icmp eq ptr %1005, null
  br i1 %1006, label %1007, label %980

1007:                                             ; preds = %1004, %973
  %1008 = load volatile i32, ptr @jiffies, align 64
  %1009 = getelementptr inbounds %struct.ata_link, ptr %462, i32 0, i32 15
  store i32 %1008, ptr %1009, align 64
  br label %1051

1010:                                             ; preds = %993, %963, %924
  %1011 = phi i32 [ -5, %924 ], [ %962, %963 ], [ -5, %993 ]
  %1012 = phi ptr [ %892, %924 ], [ %965, %963 ], [ %981, %993 ]
  store i32 %856, ptr %855, align 4
  br i1 %879, label %1019, label %1013

1013:                                             ; preds = %1010
  %1014 = getelementptr inbounds %struct.ata_port, ptr %869, i32 0, i32 26
  %1015 = load ptr, ptr %1014, align 64
  %1016 = icmp eq ptr %1015, null
  br i1 %1016, label %1019, label %1017

1017:                                             ; preds = %1013
  %1018 = getelementptr inbounds %struct.ata_link, ptr %1015, i32 0, i32 10
  store i32 %856, ptr %1018, align 4
  br label %1019

1019:                                             ; preds = %1017, %1013, %1010
  %1020 = icmp eq ptr %1012, null
  br i1 %1020, label %1027, label %1021

1021:                                             ; preds = %1019
  %1022 = getelementptr inbounds %struct.ata_device, ptr %1012, i32 0, i32 1
  %1023 = load i32, ptr %1022, align 4
  %1024 = getelementptr %struct.ata_link, ptr %462, i32 0, i32 12, i32 1, i32 %1023
  %1025 = load i32, ptr %1024, align 4
  %1026 = icmp slt i32 %1025, 3
  br i1 %1026, label %1027, label %1049

1027:                                             ; preds = %1021, %1019
  %1028 = load ptr, ptr %462, align 64
  %1029 = getelementptr inbounds %struct.ata_port, ptr %1028, i32 0, i32 27
  %1030 = load i32, ptr %1029, align 4
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1032, label %1036

1032:                                             ; preds = %1027
  %1033 = getelementptr inbounds %struct.ata_port, ptr %1028, i32 0, i32 26
  %1034 = load ptr, ptr %1033, align 64
  %1035 = icmp eq ptr %1034, null
  br i1 %1035, label %1042, label %1036

1036:                                             ; preds = %1032, %1027
  %1037 = getelementptr inbounds %struct.ata_port, ptr %1028, i32 0, i32 5
  %1038 = load i32, ptr %1037, align 4
  %1039 = getelementptr inbounds %struct.ata_link, ptr %462, i32 0, i32 1
  %1040 = load i32, ptr %1039, align 4
  %1041 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, i32 noundef %1038, i32 noundef %1040) #16
  br label %1046

1042:                                             ; preds = %1032
  %1043 = getelementptr inbounds %struct.ata_port, ptr %1028, i32 0, i32 5
  %1044 = load i32, ptr %1043, align 4
  %1045 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %1044) #16
  br label %1046

1046:                                             ; preds = %1042, %1036
  %1047 = load i32, ptr %874, align 8
  %1048 = or i32 %1047, 256
  store i32 %1048, ptr %874, align 8
  br label %1049

1049:                                             ; preds = %1046, %1021
  store ptr %1012, ptr %13, align 4
  %1050 = icmp eq i32 %1011, 0
  br i1 %1050, label %1055, label %1065

1051:                                             ; preds = %1007, %961
  %1052 = phi i32 [ 1024, %1007 ], [ 256, %961 ]
  %1053 = load i32, ptr %874, align 8
  %1054 = or i32 %1053, %1052
  store i32 %1054, ptr %874, align 8
  br label %1055

1055:                                             ; preds = %1051, %1049, %880, %868, %853
  %1056 = phi i32 [ 0, %1049 ], [ %854, %853 ], [ 0, %880 ], [ 0, %868 ], [ 0, %1051 ]
  %1057 = getelementptr inbounds %struct.ata_link, ptr %462, i32 0, i32 12, i32 0, i32 5
  store i32 0, ptr %1057, align 4
  br label %1167

1058:                                             ; preds = %848, %751, %715, %677
  %1059 = phi i32 [ -5, %751 ], [ -5, %715 ], [ -5, %848 ], [ %678, %677 ]
  %1060 = load ptr, ptr %13, align 4
  br label %1065

1061:                                             ; preds = %654, %576, %507, %504
  %1062 = phi ptr [ %636, %654 ], [ %485, %507 ], [ %485, %504 ], [ %485, %576 ]
  %1063 = phi i32 [ %650, %654 ], [ %577, %576 ], [ -5, %504 ], [ %511, %507 ]
  store ptr %1062, ptr %13, align 4
  %1064 = add i32 %464, 1
  br label %1070

1065:                                             ; preds = %1058, %1049
  %1066 = phi ptr [ %1060, %1058 ], [ %1012, %1049 ]
  %1067 = phi i32 [ %1059, %1058 ], [ %1011, %1049 ]
  %1068 = add i32 %464, 1
  %1069 = icmp eq ptr %1066, null
  br i1 %1069, label %1158, label %1070

1070:                                             ; preds = %1065, %1061
  %1071 = phi i32 [ %1064, %1061 ], [ %1068, %1065 ]
  %1072 = phi i32 [ %1063, %1061 ], [ %1067, %1065 ]
  %1073 = phi ptr [ %1062, %1061 ], [ %1066, %1065 ]
  %1074 = load ptr, ptr %1073, align 64
  %1075 = icmp eq i32 %1072, -11
  br i1 %1075, label %1106, label %1076

1076:                                             ; preds = %1070
  %1077 = getelementptr inbounds %struct.ata_device, ptr %1073, i32 0, i32 1
  %1078 = load i32, ptr %1077, align 4
  %1079 = getelementptr %struct.ata_link, ptr %1074, i32 0, i32 12, i32 1, i32 %1078
  %1080 = load i32, ptr %1079, align 4
  %1081 = add i32 %1080, -1
  store i32 %1081, ptr %1079, align 4
  switch i32 %1072, label %1106 [
    i32 -19, label %1082
    i32 -22, label %1088
    i32 -5, label %1093
  ]

1082:                                             ; preds = %1076
  %1083 = load i32, ptr %1077, align 4
  %1084 = shl nuw i32 1, %1083
  %1085 = getelementptr inbounds %struct.ata_link, ptr %1074, i32 0, i32 12, i32 0, i32 6
  %1086 = load i32, ptr %1085, align 4
  %1087 = or i32 %1086, %1084
  store i32 %1087, ptr %1085, align 4
  br label %1088

1088:                                             ; preds = %1082, %1076
  %1089 = load i32, ptr %1077, align 4
  %1090 = getelementptr %struct.ata_link, ptr %1074, i32 0, i32 12, i32 1, i32 %1089
  %1091 = load i32, ptr %1090, align 4
  %1092 = call i32 @llvm.smin.i32(i32 %1091, i32 1) #15
  store i32 %1092, ptr %1090, align 4
  br label %1093

1093:                                             ; preds = %1088, %1076
  %1094 = load i32, ptr %1077, align 4
  %1095 = getelementptr %struct.ata_link, ptr %1074, i32 0, i32 12, i32 1, i32 %1094
  %1096 = load i32, ptr %1095, align 4
  %1097 = icmp eq i32 %1096, 1
  br i1 %1097, label %1098, label %1106

1098:                                             ; preds = %1093
  %1099 = call ptr @ata_dev_phys_link(ptr noundef nonnull %1073) #15
  %1100 = call i32 @sata_down_spd_limit(ptr noundef %1099, i32 noundef 0) #15
  %1101 = getelementptr inbounds %struct.ata_device, ptr %1073, i32 0, i32 11
  %1102 = load i8, ptr %1101, align 8
  %1103 = icmp ugt i8 %1102, 8
  br i1 %1103, label %1104, label %1106

1104:                                             ; preds = %1098
  %1105 = call i32 @ata_down_xfermask_limit(ptr noundef nonnull %1073, i32 noundef 0) #15
  br label %1106

1106:                                             ; preds = %1104, %1098, %1093, %1076, %1070
  %1107 = getelementptr inbounds %struct.ata_device, ptr %1073, i32 0, i32 9
  %1108 = load i32, ptr %1107, align 64
  switch i32 %1108, label %1154 [
    i32 7, label %1109
    i32 5, label %1109
    i32 3, label %1109
    i32 1, label %1109
    i32 9, label %1109
  ]

1109:                                             ; preds = %1106, %1106, %1106, %1106, %1106
  %1110 = getelementptr inbounds %struct.ata_device, ptr %1073, i32 0, i32 1
  %1111 = load i32, ptr %1110, align 4
  %1112 = getelementptr %struct.ata_link, ptr %1074, i32 0, i32 12, i32 1, i32 %1111
  %1113 = load i32, ptr %1112, align 4
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1115, label %1154

1115:                                             ; preds = %1109
  switch i32 %1108, label %1142 [
    i32 7, label %1116
    i32 5, label %1116
    i32 3, label %1116
    i32 1, label %1116
    i32 9, label %1116
  ]

1116:                                             ; preds = %1115, %1115, %1115, %1115, %1115
  %1117 = load ptr, ptr %1073, align 64
  %1118 = load ptr, ptr %1117, align 64
  %1119 = getelementptr inbounds %struct.ata_port, ptr %1118, i32 0, i32 5
  %1120 = load i32, ptr %1119, align 4
  %1121 = getelementptr inbounds %struct.ata_link, ptr %1117, i32 0, i32 1
  %1122 = load i32, ptr %1121, align 4
  %1123 = add i32 %1122, %1111
  %1124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %1120, i32 noundef %1123) #16
  %1125 = call i32 @ata_down_xfermask_limit(ptr noundef nonnull %1073, i32 noundef -2147483644) #15
  %1126 = load i32, ptr %1107, align 64
  %1127 = add i32 %1126, 1
  store i32 %1127, ptr %1107, align 64
  %1128 = getelementptr inbounds %struct.ata_device, ptr %1073, i32 0, i32 35
  %1129 = load i32, ptr %1128, align 8
  br label %1130

1130:                                             ; preds = %1135, %1116
  %1131 = phi i32 [ %1129, %1116 ], [ %1140, %1135 ]
  %1132 = getelementptr %struct.ata_device, ptr %1073, i32 0, i32 35, i32 1, i32 %1131, i32 1
  %1133 = load i32, ptr %1132, align 4
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1142, label %1135

1135:                                             ; preds = %1130
  %1136 = getelementptr %struct.ata_device, ptr %1073, i32 0, i32 35, i32 1, i32 %1131
  %1137 = load i32, ptr %1136, align 8
  %1138 = or i32 %1137, -2147483648
  store i32 %1138, ptr %1136, align 8
  %1139 = add i32 %1131, 31
  %1140 = srem i32 %1139, 32
  %1141 = icmp eq i32 %1140, %1129
  br i1 %1141, label %1142, label %1130

1142:                                             ; preds = %1135, %1130, %1115
  %1143 = call ptr @ata_dev_phys_link(ptr noundef %1073) #15
  %1144 = call zeroext i1 @ata_phys_link_offline(ptr noundef %1143) #15
  br i1 %1144, label %1145, label %1146

1145:                                             ; preds = %1142
  call void @ata_eh_detach_dev(ptr noundef %1073) #15
  br label %1146

1146:                                             ; preds = %1145, %1142
  %1147 = call fastcc i32 @ata_eh_schedule_probe(ptr noundef %1073) #15
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1158, label %1149

1149:                                             ; preds = %1146
  %1150 = load i32, ptr %1110, align 4
  %1151 = getelementptr %struct.ata_link, ptr %1074, i32 0, i32 12, i32 1, i32 %1150
  store i32 3, ptr %1151, align 4
  %1152 = load i32, ptr %1110, align 4
  %1153 = getelementptr %struct.ata_link, ptr %1074, i32 0, i32 12, i32 2, i32 %1152
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %1153, i8 0, i32 28, i1 false) #15
  br label %1158

1154:                                             ; preds = %1109, %1106
  %1155 = getelementptr inbounds %struct.ata_link, ptr %1074, i32 0, i32 12, i32 0, i32 3
  %1156 = load i32, ptr %1155, align 4
  %1157 = or i32 %1156, 6
  store i32 %1157, ptr %1155, align 4
  br label %1158

1158:                                             ; preds = %1154, %1149, %1146, %1065
  %1159 = phi i32 [ %1068, %1065 ], [ %1071, %1146 ], [ %1071, %1149 ], [ %1071, %1154 ]
  %1160 = phi i32 [ %1067, %1065 ], [ %1072, %1146 ], [ %1072, %1149 ], [ %1072, %1154 ]
  %1161 = load i32, ptr %19, align 16
  %1162 = and i32 %1161, 4
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1167, label %1164

1164:                                             ; preds = %1158
  %1165 = load i32, ptr %27, align 4
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1172, label %1177

1167:                                             ; preds = %1158, %1055
  %1168 = phi i32 [ %1159, %1158 ], [ %464, %1055 ]
  %1169 = phi i32 [ %1160, %1158 ], [ %1056, %1055 ]
  %1170 = call ptr @ata_link_next(ptr noundef nonnull %462, ptr noundef %0, i32 noundef 2) #15
  %1171 = icmp eq ptr %1170, null
  br i1 %1171, label %1172, label %461

1172:                                             ; preds = %1167, %1164
  %1173 = phi ptr [ %462, %1164 ], [ null, %1167 ]
  %1174 = phi i32 [ %1159, %1164 ], [ %1168, %1167 ]
  %1175 = phi i32 [ %1160, %1164 ], [ %1169, %1167 ]
  %1176 = icmp eq i32 %1174, 0
  br i1 %1176, label %1177, label %130

1177:                                             ; preds = %1172, %1164, %248, %242
  %1178 = phi i32 [ %231, %248 ], [ %231, %242 ], [ %1160, %1164 ], [ %1175, %1172 ]
  %1179 = phi ptr [ %211, %248 ], [ %211, %242 ], [ %462, %1164 ], [ %1173, %1172 ]
  %1180 = icmp ne i32 %1178, 0
  %1181 = icmp ne ptr %5, null
  %1182 = and i1 %1181, %1180
  br i1 %1182, label %1183, label %1184

1183:                                             ; preds = %1177
  store ptr %1179, ptr %5, align 4
  br label %1184

1184:                                             ; preds = %1183, %1177, %671, %458, %130
  %1185 = phi i32 [ %1178, %1183 ], [ %1178, %1177 ], [ 0, %671 ], [ 0, %130 ], [ 0, %458 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  ret i32 %1185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ata_eh_schedule_probe(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 64
  %3 = tail call ptr @ata_dev_phys_link(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 12, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, %5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %88, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 12, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %88

16:                                               ; preds = %11
  tail call void @ata_eh_detach_dev(ptr noundef %0)
  tail call void @ata_dev_init(ptr noundef %0) #15
  %17 = load i32, ptr %6, align 4
  %18 = shl nuw i32 1, %17
  %19 = load i32, ptr %12, align 4
  %20 = or i32 %19, %18
  store i32 %20, ptr %12, align 4
  %21 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 12, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, 6
  store i32 %23, ptr %21, align 4
  %24 = load i32, ptr %6, align 4
  %25 = getelementptr %struct.ata_link, ptr %2, i32 0, i32 12, i32 7, i32 %24
  store i8 0, ptr %25, align 1
  %26 = load i32, ptr %6, align 4
  %27 = shl nuw i32 1, %26
  %28 = xor i32 %27, -1
  %29 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 12, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %28
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.ata_link, ptr %3, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %51

35:                                               ; preds = %16
  %36 = load ptr, ptr %3, align 64
  %37 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 25
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 26
  %41 = load ptr, ptr %40, align 64
  %42 = icmp eq ptr %41, %3
  br i1 %42, label %43, label %49

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ata_port_operations, ptr %45, i32 0, i32 31
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %3, i32 noundef 1, i32 noundef 1) #15
  br label %51

49:                                               ; preds = %39
  %50 = tail call i32 @sata_pmp_set_lpm(ptr noundef %3, i32 noundef 1, i32 noundef 1) #15
  br label %51

51:                                               ; preds = %49, %43, %16
  %52 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 35
  %53 = load i32, ptr %52, align 8
  %54 = add i32 %53, 1
  %55 = srem i32 %54, 32
  store i32 %55, ptr %52, align 8
  %56 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 35, i32 1, i32 %55
  store i32 0, ptr %56, align 8
  %57 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 35, i32 1, i32 %55, i32 1
  store i32 256, ptr %57, align 4
  %58 = tail call i64 @get_jiffies_64() #15
  %59 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 35, i32 1, i32 %55, i32 2
  store i64 %58, ptr %59, align 8
  %60 = load i32, ptr %52, align 8
  br label %61

61:                                               ; preds = %77, %51
  %62 = phi i32 [ 0, %51 ], [ %78, %77 ]
  %63 = phi i32 [ %60, %51 ], [ %80, %77 ]
  %64 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 35, i32 1, i32 %63, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %61
  %68 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 35, i32 1, i32 %63
  %69 = tail call i64 @get_jiffies_64() #15
  %70 = load i32, ptr %68, align 8
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 35, i32 1, i32 %63, i32 2
  %74 = load i64, ptr %73, align 8
  %75 = tail call i64 @llvm.usub.sat.i64(i64 %69, i64 6000) #15
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = add i32 %62, 1
  %79 = add i32 %63, 31
  %80 = srem i32 %79, 32
  %81 = load i32, ptr %52, align 8
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %61

83:                                               ; preds = %77, %72, %67, %61
  %84 = phi i32 [ %62, %61 ], [ %78, %77 ], [ %62, %72 ], [ %62, %67 ]
  %85 = icmp sgt i32 %84, 2
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = tail call i32 @sata_down_spd_limit(ptr noundef %3, i32 noundef 1) #15
  br label %88

88:                                               ; preds = %86, %83, %11, %1
  %89 = phi i32 [ 0, %11 ], [ 0, %1 ], [ 1, %86 ], [ 1, %83 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_eh_park_issue_cmd(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ata_taskfile, align 4
  %4 = load ptr, ptr %0, align 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %6 = load ptr, ptr %4, align 64
  %7 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 9
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 2
  store i8 %8, ptr %9, align 1
  %10 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i8 -96, i8 -80
  %14 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 13
  store i8 %13, ptr %14, align 4
  %15 = icmp eq i32 %1, 0
  %16 = shl nuw i32 1, %11
  br i1 %15, label %25, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ata_link, ptr %4, i32 0, i32 12, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 8
  store i8 68, ptr %21, align 1
  %22 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 10
  store i8 76, ptr %22, align 1
  %23 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 11
  store i8 78, ptr %23, align 2
  %24 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 12
  store i8 85, ptr %24, align 1
  br label %30

25:                                               ; preds = %2
  %26 = xor i32 %16, -1
  %27 = getelementptr inbounds %struct.ata_link, ptr %4, i32 0, i32 12, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, %26
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %25, %17
  %31 = phi i8 [ -27, %25 ], [ -31, %17 ]
  %32 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 14
  store i8 %31, ptr %32, align 1
  store i32 6, ptr %3, align 4
  %33 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 1
  store i8 0, ptr %33, align 4
  %34 = call i32 @ata_exec_internal(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #15
  br i1 %15, label %57, label %35

35:                                               ; preds = %30
  %36 = icmp ne i32 %34, 0
  %37 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 10
  %38 = load i8, ptr %37, align 1
  %39 = icmp ne i8 %38, -60
  %40 = select i1 %36, i1 true, i1 %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load ptr, ptr %0, align 64
  %43 = load ptr, ptr %42, align 64
  %44 = getelementptr inbounds %struct.ata_port, ptr %43, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ata_link, ptr %42, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %10, align 4
  %49 = add i32 %48, %47
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, i32 noundef %45, i32 noundef %49) #16
  %51 = load i32, ptr %10, align 4
  %52 = shl nuw i32 1, %51
  %53 = xor i32 %52, -1
  %54 = getelementptr inbounds %struct.ata_link, ptr %4, i32 0, i32 12, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, %53
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %41, %35, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_do_eh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  tail call void @ata_eh_autopsy(ptr noundef %0)
  tail call void @ata_eh_report(ptr noundef %0)
  %6 = tail call i32 @ata_eh_recover(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %10 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %9, i32 noundef 2) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %44, %8
  %13 = phi ptr [ %45, %44 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.ata_device, ptr %13, i32 0, i32 9
  %15 = load i32, ptr %14, align 64
  switch i32 %15, label %44 [
    i32 7, label %16
    i32 5, label %16
    i32 3, label %16
    i32 1, label %16
    i32 9, label %16
  ]

16:                                               ; preds = %12, %12, %12, %12, %12
  %17 = load ptr, ptr %13, align 64
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ata_link, ptr %17, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ata_device, ptr %13, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %20, i32 noundef %25) #16
  %27 = tail call i32 @ata_down_xfermask_limit(ptr noundef nonnull %13, i32 noundef -2147483644) #15
  %28 = load i32, ptr %14, align 64
  %29 = add i32 %28, 1
  store i32 %29, ptr %14, align 64
  %30 = getelementptr inbounds %struct.ata_device, ptr %13, i32 0, i32 35
  %31 = load i32, ptr %30, align 8
  br label %32

32:                                               ; preds = %37, %16
  %33 = phi i32 [ %31, %16 ], [ %42, %37 ]
  %34 = getelementptr %struct.ata_device, ptr %13, i32 0, i32 35, i32 1, i32 %33, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = getelementptr %struct.ata_device, ptr %13, i32 0, i32 35, i32 1, i32 %33
  %39 = load i32, ptr %38, align 8
  %40 = or i32 %39, -2147483648
  store i32 %40, ptr %38, align 8
  %41 = add i32 %33, 31
  %42 = srem i32 %41, 32
  %43 = icmp eq i32 %42, %31
  br i1 %43, label %44, label %32

44:                                               ; preds = %37, %32, %12
  %45 = tail call ptr @ata_dev_next(ptr noundef nonnull %13, ptr noundef %9, i32 noundef 2) #15
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %12

47:                                               ; preds = %44, %8, %5
  tail call void @ata_eh_finish(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_std_error_handler(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @sata_std_hardreset
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %9 = tail call i32 @sata_scr_valid(ptr noundef %8) #15
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr null, ptr @sata_std_hardreset
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi ptr [ %5, %1 ], [ %11, %7 ]
  %14 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  tail call void @ata_do_eh(ptr noundef %0, ptr noundef %15, ptr noundef %17, ptr noundef %13, ptr noundef %19)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_std_hardreset(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_std_sched_eh(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_qc_complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_port_freeze(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_port_thaw(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @ata_eh_scsidone(ptr nocapture noundef %0) #12 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ata_qc_complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_eh_about_to_do(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_eh_done(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_analyze_ncq_error(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_check_sense(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_set_sense(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_eh_link_autopsy_qc(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_eh_link_autopsy(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_format_command(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_link_hardreset_begin(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_link_softreset_begin(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_link_hardreset_end(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_link_softreset_end(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_slave_hardreset_begin(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_slave_hardreset_end(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_link_offline(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_link_postreset(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_slave_postreset(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_dev_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_pmp_set_lpm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_dev_revalidate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_pmp_attach(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_dev_read_id(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_force_cbl(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_dev_configure(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_dev_set_feature(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2155090923}
!12 = !{i64 2155091069}
!13 = !{i64 2155075110}
!14 = !{i64 2155075258}
!15 = !{i64 2155106606}
!16 = !{i64 2155106748}
!17 = !{i64 2154892123}
!18 = !{i64 2154892315}
!19 = !{i64 2154908968}
!20 = !{i64 2154909146}
!21 = !{i64 2154875036}
!22 = !{i64 2154875196}
!23 = !{i64 2154854344}
!24 = !{i64 2154854548}
!25 = !{i64 2154925934}
!26 = !{i64 2154926136}
!27 = !{i64 2154965411}
!28 = !{i64 2154965613}
!29 = !{i64 2154982719}
!30 = !{i64 2154982905}
!31 = !{i64 2155021112}
!32 = !{i64 2155021298}
!33 = !{i64 2154947695}
!34 = !{i64 2154947899}
!35 = !{i64 2155003938}
!36 = !{i64 2155004126}
!37 = !{i64 2155038080}
!38 = !{i64 2155038258}
!39 = !{i64 2155054870}
!40 = !{i64 2155055050}
!41 = !{!"branch_weights", i32 1, i32 4, i32 4, i32 4, i32 4, i32 2, i32 1}
