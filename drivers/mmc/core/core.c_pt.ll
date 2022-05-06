; ModuleID = '/llk/IR/drivers/mmc/core/core.c_pt.bc'
source_filename = "../drivers/mmc/core/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_command_done:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_command_done\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_command_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_request_done:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_request_done\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_request_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_start_request:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_start_request\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_start_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_wait_for_req_done:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_wait_for_req_done\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_wait_for_req_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_cqe_start_req:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_cqe_start_req\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_cqe_start_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_cqe_request_done:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_cqe_request_done\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_cqe_request_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_cqe_post_req:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_cqe_post_req\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_cqe_post_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_cqe_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_cqe_recovery\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_cqe_recovery:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_is_req_done:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_is_req_done\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_is_req_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_wait_for_req:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_wait_for_req\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_wait_for_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_wait_for_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_wait_for_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_wait_for_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_set_data_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_set_data_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_set_data_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mmc_claim_host:\09\09\09\09\09"
module asm "\09.asciz \09\22__mmc_claim_host\22\09\09\09\09\09"
module asm "__kstrtabns___mmc_claim_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_release_host:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_release_host\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_release_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_get_card:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_get_card\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_get_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_put_card:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_put_card\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_put_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_detect_change:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_detect_change\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_detect_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_erase\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_can_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_can_erase\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_can_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_can_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_can_trim\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_can_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_can_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_can_discard\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_can_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_can_secure_erase_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_can_secure_erase_trim\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_can_secure_erase_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_erase_group_aligned:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_erase_group_aligned\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_erase_group_aligned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_calc_max_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_calc_max_discard\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_calc_max_discard:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_card_is_blockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_card_is_blockaddr\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_card_is_blockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_set_blocklen:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_set_blocklen\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_set_blocklen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_hw_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_hw_reset\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_hw_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_sw_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_sw_reset\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_sw_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_detect_card_removed:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_detect_card_removed\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_detect_card_removed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_card_alternative_gpt_sector:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_card_alternative_gpt_sector\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_card_alternative_gpt_sector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.95 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.97, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.97 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.trace_event_raw_mmc_request_start = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.trace_event_raw_mmc_request_done = type { %struct.trace_entry, i32, i32, [4 x i32], i32, i32, i32, [4 x i32], i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, [0 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_cqe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mmc_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mmc_request_start = internal constant [18 x i8] c"mmc_request_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mmc_request_start = dso_local global %struct.static_call_key { ptr @__traceiter_mmc_request_start }, align 4
@__tracepoint_mmc_request_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_mmc_request_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mmc_request_start, ptr null, ptr @__traceiter_mmc_request_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mmc_request_start = internal constant ptr @__tracepoint_mmc_request_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_mmc_request_done = internal constant [17 x i8] c"mmc_request_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mmc_request_done = dso_local global %struct.static_call_key { ptr @__traceiter_mmc_request_done }, align 4
@__tracepoint_mmc_request_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_mmc_request_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mmc_request_done, ptr null, ptr @__traceiter_mmc_request_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mmc_request_done = internal constant ptr @__tracepoint_mmc_request_done, section "__tracepoints_ptrs", align 4
@str__mmc__trace_system_name = internal constant [4 x i8] c"mmc\00", align 1
@trace_event_fields_mmc_request_start = internal global [26 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.95 { %struct.anon.96 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.95 { %struct.anon.96 { ptr @.str.33, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.95 { %struct.anon.96 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.95 { %struct.anon.96 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.95 { %struct.anon.96 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mmc_request_start = internal global %struct.trace_event_class { ptr @str__mmc__trace_system_name, ptr @trace_event_raw_event_mmc_request_start, ptr @perf_trace_mmc_request_start, ptr @trace_event_reg, ptr @trace_event_fields_mmc_request_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mmc_request_start, i64 24), ptr getelementptr (i8, ptr @event_class_mmc_request_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mmc_request_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_mmc_request_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_mmc_request_start = internal global [763 x i8] c"\22%s: start struct mmc_request[%p]: cmd_opcode=%u cmd_arg=0x%x cmd_flags=0x%x cmd_retries=%u stop_opcode=%u stop_arg=0x%x stop_flags=0x%x stop_retries=%u sbc_opcode=%u sbc_arg=0x%x sbc_flags=0x%x sbc_retires=%u blocks=%u block_size=%u blk_addr=%u data_flags=0x%x tag=%d can_retune=%u doing_retune=%u retune_now=%u need_retune=%d hold_retune=%d retune_period=%u\22, __get_str(name), REC->mrq, REC->cmd_opcode, REC->cmd_arg, REC->cmd_flags, REC->cmd_retries, REC->stop_opcode, REC->stop_arg, REC->stop_flags, REC->stop_retries, REC->sbc_opcode, REC->sbc_arg, REC->sbc_flags, REC->sbc_retries, REC->blocks, REC->blksz, REC->blk_addr, REC->data_flags, REC->tag, REC->can_retune, REC->doing_retune, REC->retune_now, REC->need_retune, REC->hold_retune, REC->retune_period\00", align 1
@event_mmc_request_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mmc_request_start, %union.anon.97 { ptr @__tracepoint_mmc_request_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mmc_request_start }, ptr @print_fmt_mmc_request_start, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mmc_request_start = internal global ptr @event_mmc_request_start, section "_ftrace_events", align 4
@trace_event_fields_mmc_request_done = internal global [24 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.95 { %struct.anon.96 { ptr @.str.41, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.95 { %struct.anon.96 { ptr @.str.43, i32 16, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.95 { %struct.anon.96 { ptr @.str.44, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.95 { %struct.anon.96 { ptr @.str.45, i32 16, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.95 { %struct.anon.96 { ptr @.str.46, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.95 { %struct.anon.96 { ptr @.str.47, i32 16, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.48, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.95 { %struct.anon.96 { ptr @.str.49, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.95 { %struct.anon.96 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.95 { %struct.anon.96 { ptr @.str.33, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.95 { %struct.anon.96 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.95 { %struct.anon.96 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.95 { %struct.anon.96 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mmc_request_done = internal global %struct.trace_event_class { ptr @str__mmc__trace_system_name, ptr @trace_event_raw_event_mmc_request_done, ptr @perf_trace_mmc_request_done, ptr @trace_event_reg, ptr @trace_event_fields_mmc_request_done, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mmc_request_done, i64 24), ptr getelementptr (i8, ptr @event_class_mmc_request_done, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mmc_request_done = internal global %struct.trace_event_functions { ptr @trace_raw_output_mmc_request_done, ptr null, ptr null, ptr null }, align 4
@print_fmt_mmc_request_done = internal global [921 x i8] c"\22%s: end struct mmc_request[%p]: cmd_opcode=%u cmd_err=%d cmd_resp=0x%x 0x%x 0x%x 0x%x cmd_retries=%u stop_opcode=%u stop_err=%d stop_resp=0x%x 0x%x 0x%x 0x%x stop_retries=%u sbc_opcode=%u sbc_err=%d sbc_resp=0x%x 0x%x 0x%x 0x%x sbc_retries=%u bytes_xfered=%u data_err=%d tag=%d can_retune=%u doing_retune=%u retune_now=%u need_retune=%d hold_retune=%d retune_period=%u\22, __get_str(name), REC->mrq, REC->cmd_opcode, REC->cmd_err, REC->cmd_resp[0], REC->cmd_resp[1], REC->cmd_resp[2], REC->cmd_resp[3], REC->cmd_retries, REC->stop_opcode, REC->stop_err, REC->stop_resp[0], REC->stop_resp[1], REC->stop_resp[2], REC->stop_resp[3], REC->stop_retries, REC->sbc_opcode, REC->sbc_err, REC->sbc_resp[0], REC->sbc_resp[1], REC->sbc_resp[2], REC->sbc_resp[3], REC->sbc_retries, REC->bytes_xfered, REC->data_err, REC->tag, REC->can_retune, REC->doing_retune, REC->retune_now, REC->need_retune, REC->hold_retune, REC->retune_period\00", align 1
@event_mmc_request_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mmc_request_done, %union.anon.97 { ptr @__tracepoint_mmc_request_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mmc_request_done }, ptr @print_fmt_mmc_request_done, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mmc_request_done = internal global ptr @event_mmc_request_done, section "_ftrace_events", align 4
@use_spi_crc = dso_local global i8 1, align 1
@__param_str_use_spi_crc = internal constant [21 x i8] c"mmc_core.use_spi_crc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_use_spi_crc = internal constant %struct.kernel_param { ptr @__param_str_use_spi_crc, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @use_spi_crc } }, section "__param", align 4
@__UNIQUE_ID_use_spi_crctype292 = internal constant [35 x i8] c"mmc_core.parmtype=use_spi_crc:bool\00", section ".modinfo", align 1
@__kstrtab_mmc_command_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_command_done = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_command_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_command_done to i32), ptr @__kstrtab_mmc_command_done, ptr @__kstrtabns_mmc_command_done }, section "___ksymtab+mmc_command_done", align 4
@__kstrtab_mmc_request_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_request_done = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_request_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_request_done to i32), ptr @__kstrtab_mmc_request_done, ptr @__kstrtabns_mmc_request_done }, section "___ksymtab+mmc_request_done", align 4
@.str = private unnamed_addr constant [24 x i8] c"drivers/mmc/core/core.c\00", align 1
@__kstrtab_mmc_start_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_start_request = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_start_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_start_request to i32), ptr @__kstrtab_mmc_start_request, ptr @__kstrtabns_mmc_start_request }, section "___ksymtab+mmc_start_request", align 4
@__kstrtab_mmc_wait_for_req_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_wait_for_req_done = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_wait_for_req_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_wait_for_req_done to i32), ptr @__kstrtab_mmc_wait_for_req_done, ptr @__kstrtabns_mmc_wait_for_req_done }, section "___ksymtab+mmc_wait_for_req_done", align 4
@__kstrtab_mmc_cqe_start_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_cqe_start_req = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_cqe_start_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_cqe_start_req to i32), ptr @__kstrtab_mmc_cqe_start_req, ptr @__kstrtabns_mmc_cqe_start_req }, section "___ksymtab+mmc_cqe_start_req", align 4
@__kstrtab_mmc_cqe_request_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_cqe_request_done = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_cqe_request_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_cqe_request_done to i32), ptr @__kstrtab_mmc_cqe_request_done, ptr @__kstrtabns_mmc_cqe_request_done }, section "___ksymtab+mmc_cqe_request_done", align 4
@__kstrtab_mmc_cqe_post_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_cqe_post_req = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_cqe_post_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_cqe_post_req to i32), ptr @__kstrtab_mmc_cqe_post_req, ptr @__kstrtabns_mmc_cqe_post_req }, section "___ksymtab+mmc_cqe_post_req", align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"\014%s: running CQE recovery\0A\00", align 1
@__kstrtab_mmc_cqe_recovery = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_cqe_recovery = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_cqe_recovery = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_cqe_recovery to i32), ptr @__kstrtab_mmc_cqe_recovery, ptr @__kstrtabns_mmc_cqe_recovery }, section "___ksymtab+mmc_cqe_recovery", align 4
@__kstrtab_mmc_is_req_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_is_req_done = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_is_req_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_is_req_done to i32), ptr @__kstrtab_mmc_is_req_done, ptr @__kstrtabns_mmc_is_req_done }, section "___ksymtab+mmc_is_req_done", align 4
@__kstrtab_mmc_wait_for_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_wait_for_req = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_wait_for_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_wait_for_req to i32), ptr @__kstrtab_mmc_wait_for_req, ptr @__kstrtabns_mmc_wait_for_req }, section "___ksymtab+mmc_wait_for_req", align 4
@__kstrtab_mmc_wait_for_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_wait_for_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_wait_for_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_wait_for_cmd to i32), ptr @__kstrtab_mmc_wait_for_cmd, ptr @__kstrtabns_mmc_wait_for_cmd }, section "___ksymtab+mmc_wait_for_cmd", align 4
@__kstrtab_mmc_set_data_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_set_data_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_set_data_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_set_data_timeout to i32), ptr @__kstrtab_mmc_set_data_timeout, ptr @__kstrtabns_mmc_set_data_timeout }, section "___ksymtab+mmc_set_data_timeout", align 4
@__kstrtab___mmc_claim_host = external dso_local constant [0 x i8], align 1
@__kstrtabns___mmc_claim_host = external dso_local constant [0 x i8], align 1
@__ksymtab___mmc_claim_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mmc_claim_host to i32), ptr @__kstrtab___mmc_claim_host, ptr @__kstrtabns___mmc_claim_host }, section "___ksymtab+__mmc_claim_host", align 4
@__kstrtab_mmc_release_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_release_host = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_release_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_release_host to i32), ptr @__kstrtab_mmc_release_host, ptr @__kstrtabns_mmc_release_host }, section "___ksymtab+mmc_release_host", align 4
@__kstrtab_mmc_get_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_get_card = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_get_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_get_card to i32), ptr @__kstrtab_mmc_get_card, ptr @__kstrtabns_mmc_get_card }, section "___ksymtab+mmc_get_card", align 4
@__kstrtab_mmc_put_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_put_card = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_put_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_put_card to i32), ptr @__kstrtab_mmc_put_card, ptr @__kstrtabns_mmc_put_card }, section "___ksymtab+mmc_put_card", align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"\013%s: tuning execution failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"card claims to support voltages below defined range\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"no support for card's volts\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"exceeding card's volts\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"\014%s: cannot verify signal voltage switch\0A\00", align 1
@__kstrtab_mmc_detect_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_detect_change = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_detect_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_detect_change to i32), ptr @__kstrtab_mmc_detect_change, ptr @__kstrtabns_mmc_detect_change }, section "___ksymtab+mmc_detect_change", align 4
@__kstrtab_mmc_erase = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_erase = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_erase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_erase to i32), ptr @__kstrtab_mmc_erase, ptr @__kstrtabns_mmc_erase }, section "___ksymtab+mmc_erase", align 4
@__kstrtab_mmc_can_erase = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_can_erase = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_can_erase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_can_erase to i32), ptr @__kstrtab_mmc_can_erase, ptr @__kstrtabns_mmc_can_erase }, section "___ksymtab+mmc_can_erase", align 4
@__kstrtab_mmc_can_trim = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_can_trim = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_can_trim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_can_trim to i32), ptr @__kstrtab_mmc_can_trim, ptr @__kstrtabns_mmc_can_trim }, section "___ksymtab+mmc_can_trim", align 4
@__kstrtab_mmc_can_discard = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_can_discard = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_can_discard = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_can_discard to i32), ptr @__kstrtab_mmc_can_discard, ptr @__kstrtabns_mmc_can_discard }, section "___ksymtab+mmc_can_discard", align 4
@__kstrtab_mmc_can_secure_erase_trim = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_can_secure_erase_trim = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_can_secure_erase_trim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_can_secure_erase_trim to i32), ptr @__kstrtab_mmc_can_secure_erase_trim, ptr @__kstrtabns_mmc_can_secure_erase_trim }, section "___ksymtab+mmc_can_secure_erase_trim", align 4
@__kstrtab_mmc_erase_group_aligned = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_erase_group_aligned = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_erase_group_aligned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_erase_group_aligned to i32), ptr @__kstrtab_mmc_erase_group_aligned, ptr @__kstrtabns_mmc_erase_group_aligned }, section "___ksymtab+mmc_erase_group_aligned", align 4
@__kstrtab_mmc_calc_max_discard = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_calc_max_discard = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_calc_max_discard = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_calc_max_discard to i32), ptr @__kstrtab_mmc_calc_max_discard, ptr @__kstrtabns_mmc_calc_max_discard }, section "___ksymtab+mmc_calc_max_discard", align 4
@__kstrtab_mmc_card_is_blockaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_card_is_blockaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_card_is_blockaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_card_is_blockaddr to i32), ptr @__kstrtab_mmc_card_is_blockaddr, ptr @__kstrtabns_mmc_card_is_blockaddr }, section "___ksymtab+mmc_card_is_blockaddr", align 4
@__kstrtab_mmc_set_blocklen = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_set_blocklen = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_set_blocklen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_set_blocklen to i32), ptr @__kstrtab_mmc_set_blocklen, ptr @__kstrtabns_mmc_set_blocklen }, section "___ksymtab+mmc_set_blocklen", align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"\014%s: tried to HW reset card, got error %d\0A\00", align 1
@__kstrtab_mmc_hw_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_hw_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_hw_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_hw_reset to i32), ptr @__kstrtab_mmc_hw_reset, ptr @__kstrtabns_mmc_hw_reset }, section "___ksymtab+mmc_hw_reset", align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"\014%s: tried to SW reset card, got error %d\0A\00", align 1
@__kstrtab_mmc_sw_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_sw_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_sw_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_sw_reset to i32), ptr @__kstrtab_mmc_sw_reset, ptr @__kstrtabns_mmc_sw_reset }, section "___ksymtab+mmc_sw_reset", align 4
@__kstrtab_mmc_detect_card_removed = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_detect_card_removed = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_detect_card_removed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_detect_card_removed to i32), ptr @__kstrtab_mmc_detect_card_removed, ptr @__kstrtabns_mmc_detect_card_removed }, section "___ksymtab+mmc_detect_card_removed", align 4
@__kstrtab_mmc_card_alternative_gpt_sector = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_card_alternative_gpt_sector = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_card_alternative_gpt_sector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_card_alternative_gpt_sector to i32), ptr @__kstrtab_mmc_card_alternative_gpt_sector, ptr @__kstrtabns_mmc_card_alternative_gpt_sector }, section "___ksymtab+mmc_card_alternative_gpt_sector", align 4
@freqs = internal unnamed_addr constant [4 x i32] [i32 400000, i32 300000, i32 200000, i32 100000], align 4
@__initcall__kmod_mmc_core__302_2332_mmc_init4 = internal global ptr @mmc_init, section ".initcall4.init", align 4
@__exitcall_mmc_exit = internal global ptr @mmc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file303 = internal constant [40 x i8] c"mmc_core.file=drivers/mmc/core/mmc_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [21 x i8] c"mmc_core.license=GPL\00", section ".modinfo", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"cmd_opcode\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"cmd_arg\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"cmd_flags\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"cmd_retries\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"stop_opcode\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"stop_arg\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"stop_flags\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"stop_retries\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"sbc_opcode\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"sbc_arg\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sbc_flags\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"sbc_retries\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"blk_addr\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"blksz\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"data_flags\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"can_retune\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"doing_retune\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"retune_now\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"need_retune\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"hold_retune\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"retune_period\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"struct mmc_request *\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"mrq\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.40 = private unnamed_addr constant [360 x i8] c"%s: start struct mmc_request[%p]: cmd_opcode=%u cmd_arg=0x%x cmd_flags=0x%x cmd_retries=%u stop_opcode=%u stop_arg=0x%x stop_flags=0x%x stop_retries=%u sbc_opcode=%u sbc_arg=0x%x sbc_flags=0x%x sbc_retires=%u blocks=%u block_size=%u blk_addr=%u data_flags=0x%x tag=%d can_retune=%u doing_retune=%u retune_now=%u need_retune=%d hold_retune=%d retune_period=%u\0A\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"cmd_err\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"u32[4]\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"cmd_resp\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"stop_err\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"stop_resp\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"sbc_err\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"sbc_resp\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"bytes_xfered\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"data_err\00", align 1
@.str.50 = private unnamed_addr constant [370 x i8] c"%s: end struct mmc_request[%p]: cmd_opcode=%u cmd_err=%d cmd_resp=0x%x 0x%x 0x%x 0x%x cmd_retries=%u stop_opcode=%u stop_err=%d stop_resp=0x%x 0x%x 0x%x 0x%x stop_retries=%u sbc_opcode=%u sbc_err=%d sbc_resp=0x%x 0x%x 0x%x 0x%x sbc_retries=%u bytes_xfered=%u data_err=%d tag=%d can_retune=%u doing_retune=%u retune_now=%u need_retune=%d hold_retune=%d retune_period=%u\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.54 = private unnamed_addr constant [47 x i8] c"\013mmc_erase: group start error %d, status %#x\0A\00", align 1
@.str.55 = private unnamed_addr constant [45 x i8] c"\013mmc_erase: group end error %d, status %#x\0A\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"\013mmc_erase: erase error %d, status %#x\0A\00", align 1
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__UNIQUE_ID_use_spi_crctype292, ptr @__event_mmc_request_done, ptr @__event_mmc_request_start, ptr @__exitcall_mmc_exit, ptr @__initcall__kmod_mmc_core__302_2332_mmc_init4, ptr @__ksymtab___mmc_claim_host, ptr @__ksymtab_mmc_calc_max_discard, ptr @__ksymtab_mmc_can_discard, ptr @__ksymtab_mmc_can_erase, ptr @__ksymtab_mmc_can_secure_erase_trim, ptr @__ksymtab_mmc_can_trim, ptr @__ksymtab_mmc_card_alternative_gpt_sector, ptr @__ksymtab_mmc_card_is_blockaddr, ptr @__ksymtab_mmc_command_done, ptr @__ksymtab_mmc_cqe_post_req, ptr @__ksymtab_mmc_cqe_recovery, ptr @__ksymtab_mmc_cqe_request_done, ptr @__ksymtab_mmc_cqe_start_req, ptr @__ksymtab_mmc_detect_card_removed, ptr @__ksymtab_mmc_detect_change, ptr @__ksymtab_mmc_erase, ptr @__ksymtab_mmc_erase_group_aligned, ptr @__ksymtab_mmc_get_card, ptr @__ksymtab_mmc_hw_reset, ptr @__ksymtab_mmc_is_req_done, ptr @__ksymtab_mmc_put_card, ptr @__ksymtab_mmc_release_host, ptr @__ksymtab_mmc_request_done, ptr @__ksymtab_mmc_set_blocklen, ptr @__ksymtab_mmc_set_data_timeout, ptr @__ksymtab_mmc_start_request, ptr @__ksymtab_mmc_sw_reset, ptr @__ksymtab_mmc_wait_for_cmd, ptr @__ksymtab_mmc_wait_for_req, ptr @__ksymtab_mmc_wait_for_req_done, ptr @__param_use_spi_crc, ptr @__tracepoint_mmc_request_done, ptr @__tracepoint_mmc_request_start, ptr @__tracepoint_ptr_mmc_request_done, ptr @__tracepoint_ptr_mmc_request_start, ptr @event_class_mmc_request_done, ptr @event_class_mmc_request_start, ptr @event_mmc_request_done, ptr @event_mmc_request_start, ptr @mmc_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mmc_request_start(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmc_request_start, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #18
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mmc_request_done(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmc_request_done, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #18
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mmc_request_start(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #18
  br i1 %13, label %201, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str.9, ptr %20
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi ptr [ %16, %14 ], [ %22, %18 ]
  %25 = tail call i32 @strlen(ptr noundef nonnull %24) #18
  %26 = add i32 %25, 109
  %27 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %26) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %201, label %29

29:                                               ; preds = %23
  %30 = shl i32 %25, 16
  %31 = add i32 %30, 65644
  %32 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 25
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, ptr %34, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi i32 [ %37, %36 ], [ 0, %29 ]
  %40 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %33, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.mmc_command, ptr %41, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi i32 [ %45, %43 ], [ 0, %38 ]
  %48 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 2
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %33, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.mmc_command, ptr %49, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i32 [ %53, %51 ], [ 0, %46 ]
  %56 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 3
  store i32 %55, ptr %56, align 4
  %57 = load ptr, ptr %33, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mmc_command, ptr %57, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi i32 [ %61, %59 ], [ 0, %54 ]
  %64 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 4
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = load i32, ptr %66, align 4
  br label %70

70:                                               ; preds = %68, %62
  %71 = phi i32 [ %69, %68 ], [ 0, %62 ]
  %72 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 5
  store i32 %71, ptr %72, align 4
  %73 = load ptr, ptr %65, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.mmc_command, ptr %73, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = phi i32 [ %77, %75 ], [ 0, %70 ]
  %80 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 6
  store i32 %79, ptr %80, align 4
  %81 = load ptr, ptr %65, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.mmc_command, ptr %81, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi i32 [ %85, %83 ], [ 0, %78 ]
  %88 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 7
  store i32 %87, ptr %88, align 4
  %89 = load ptr, ptr %65, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.mmc_command, ptr %89, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  br label %94

94:                                               ; preds = %91, %86
  %95 = phi i32 [ %93, %91 ], [ 0, %86 ]
  %96 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 8
  store i32 %95, ptr %96, align 4
  %97 = load ptr, ptr %2, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load i32, ptr %97, align 4
  br label %101

101:                                              ; preds = %99, %94
  %102 = phi i32 [ %100, %99 ], [ 0, %94 ]
  %103 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 9
  store i32 %102, ptr %103, align 4
  %104 = load ptr, ptr %2, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.mmc_command, ptr %104, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  br label %109

109:                                              ; preds = %106, %101
  %110 = phi i32 [ %108, %106 ], [ 0, %101 ]
  %111 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 10
  store i32 %110, ptr %111, align 4
  %112 = load ptr, ptr %2, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.mmc_command, ptr %112, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  br label %117

117:                                              ; preds = %114, %109
  %118 = phi i32 [ %116, %114 ], [ 0, %109 ]
  %119 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 11
  store i32 %118, ptr %119, align 4
  %120 = load ptr, ptr %2, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.mmc_command, ptr %120, i32 0, i32 4
  %124 = load i32, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %117
  %126 = phi i32 [ %124, %122 ], [ 0, %117 ]
  %127 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 12
  store i32 %126, ptr %127, align 4
  %128 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.mmc_data, ptr %129, i32 0, i32 2
  %133 = load i32, ptr %132, align 4
  br label %134

134:                                              ; preds = %131, %125
  %135 = phi i32 [ %133, %131 ], [ 0, %125 ]
  %136 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 15
  store i32 %135, ptr %136, align 4
  %137 = load ptr, ptr %128, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.mmc_data, ptr %137, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  br label %142

142:                                              ; preds = %139, %134
  %143 = phi i32 [ %141, %139 ], [ 0, %134 ]
  %144 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 13
  store i32 %143, ptr %144, align 4
  %145 = load ptr, ptr %128, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.mmc_data, ptr %145, i32 0, i32 4
  %149 = load i32, ptr %148, align 4
  br label %150

150:                                              ; preds = %147, %142
  %151 = phi i32 [ %149, %147 ], [ 0, %142 ]
  %152 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 14
  store i32 %151, ptr %152, align 4
  %153 = load ptr, ptr %128, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.mmc_data, ptr %153, i32 0, i32 6
  %157 = load i32, ptr %156, align 4
  br label %158

158:                                              ; preds = %155, %150
  %159 = phi i32 [ %157, %155 ], [ 0, %150 ]
  %160 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 16
  store i32 %159, ptr %160, align 4
  %161 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 10
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 17
  store i32 %162, ptr %163, align 4
  %164 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 29
  %165 = load i16, ptr %164, align 8
  %166 = lshr i16 %165, 3
  %167 = and i16 %166, 1
  %168 = zext i16 %167 to i32
  %169 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 18
  store i32 %168, ptr %169, align 4
  %170 = load i16, ptr %164, align 8
  %171 = lshr i16 %170, 4
  %172 = and i16 %171, 1
  %173 = zext i16 %172 to i32
  %174 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 19
  store i32 %173, ptr %174, align 4
  %175 = load i16, ptr %164, align 8
  %176 = lshr i16 %175, 5
  %177 = and i16 %176, 1
  %178 = zext i16 %177 to i32
  %179 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 20
  store i32 %178, ptr %179, align 4
  %180 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 32
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 21
  store i32 %181, ptr %182, align 4
  %183 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 33
  %184 = load i32, ptr %183, align 8
  %185 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 22
  store i32 %184, ptr %185, align 4
  %186 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 34
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 23
  store i32 %187, ptr %188, align 4
  %189 = getelementptr i8, ptr %27, i32 108
  %190 = load ptr, ptr %15, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %158
  %193 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  %196 = select i1 %195, ptr @.str.9, ptr %194
  br label %197

197:                                              ; preds = %192, %158
  %198 = phi ptr [ %190, %158 ], [ %196, %192 ]
  %199 = call ptr @strcpy(ptr noundef %189, ptr noundef nonnull %198)
  %200 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %27, i32 0, i32 24
  store ptr %2, ptr %200, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #18
  br label %201

201:                                              ; preds = %197, %23, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mmc_request_start(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr @.str.9, ptr %11
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi ptr [ %7, %3 ], [ %13, %9 ]
  %16 = tail call i32 @strlen(ptr noundef nonnull %15) #18
  %17 = shl i32 %16, 16
  %18 = add i32 %17, 65644
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #15, !srcloc !12
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load volatile ptr, ptr %26, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %221, label %33

33:                                               ; preds = %30, %14
  %34 = add i32 %16, 120
  %35 = and i32 %34, -8
  %36 = add i32 %35, -4
  %37 = call ptr @perf_trace_buf_alloc(i32 noundef %36, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %221, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %4, align 4
  %41 = call ptr @llvm.returnaddress(i32 0) #18
  %42 = ptrtoint ptr %41 to i32
  %43 = getelementptr [18 x i32], ptr %40, i32 0, i32 15
  store i32 %42, ptr %43, align 4
  %44 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %45 = ptrtoint ptr %44 to i32
  %46 = getelementptr [18 x i32], ptr %40, i32 0, i32 11
  store i32 %45, ptr %46, align 4
  %47 = call i32 @llvm.read_register.i32(metadata !0) #18
  %48 = getelementptr [18 x i32], ptr %40, i32 0, i32 13
  store i32 %47, ptr %48, align 4
  %49 = getelementptr [18 x i32], ptr %40, i32 0, i32 16
  store i32 19, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 25
  store i32 %18, ptr %50, align 4
  %51 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %39
  %55 = load i32, ptr %52, align 4
  br label %56

56:                                               ; preds = %54, %39
  %57 = phi i32 [ %55, %54 ], [ 0, %39 ]
  %58 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 1
  store i32 %57, ptr %58, align 4
  %59 = load ptr, ptr %51, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.mmc_command, ptr %59, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = phi i32 [ %63, %61 ], [ 0, %56 ]
  %66 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %51, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.mmc_command, ptr %67, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i32 [ %71, %69 ], [ 0, %64 ]
  %74 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 3
  store i32 %73, ptr %74, align 4
  %75 = load ptr, ptr %51, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.mmc_command, ptr %75, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %72
  %81 = phi i32 [ %79, %77 ], [ 0, %72 ]
  %82 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 4
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = load i32, ptr %84, align 4
  br label %88

88:                                               ; preds = %86, %80
  %89 = phi i32 [ %87, %86 ], [ 0, %80 ]
  %90 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 5
  store i32 %89, ptr %90, align 4
  %91 = load ptr, ptr %83, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.mmc_command, ptr %91, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = phi i32 [ %95, %93 ], [ 0, %88 ]
  %98 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 6
  store i32 %97, ptr %98, align 4
  %99 = load ptr, ptr %83, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.mmc_command, ptr %99, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  br label %104

104:                                              ; preds = %101, %96
  %105 = phi i32 [ %103, %101 ], [ 0, %96 ]
  %106 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 7
  store i32 %105, ptr %106, align 4
  %107 = load ptr, ptr %83, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.mmc_command, ptr %107, i32 0, i32 4
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %109, %104
  %113 = phi i32 [ %111, %109 ], [ 0, %104 ]
  %114 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 8
  store i32 %113, ptr %114, align 4
  %115 = load ptr, ptr %2, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = load i32, ptr %115, align 4
  br label %119

119:                                              ; preds = %117, %112
  %120 = phi i32 [ %118, %117 ], [ 0, %112 ]
  %121 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 9
  store i32 %120, ptr %121, align 4
  %122 = load ptr, ptr %2, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.mmc_command, ptr %122, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  br label %127

127:                                              ; preds = %124, %119
  %128 = phi i32 [ %126, %124 ], [ 0, %119 ]
  %129 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 10
  store i32 %128, ptr %129, align 4
  %130 = load ptr, ptr %2, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.mmc_command, ptr %130, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  br label %135

135:                                              ; preds = %132, %127
  %136 = phi i32 [ %134, %132 ], [ 0, %127 ]
  %137 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 11
  store i32 %136, ptr %137, align 4
  %138 = load ptr, ptr %2, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.mmc_command, ptr %138, i32 0, i32 4
  %142 = load i32, ptr %141, align 4
  br label %143

143:                                              ; preds = %140, %135
  %144 = phi i32 [ %142, %140 ], [ 0, %135 ]
  %145 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 12
  store i32 %144, ptr %145, align 4
  %146 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 2
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.mmc_data, ptr %147, i32 0, i32 2
  %151 = load i32, ptr %150, align 4
  br label %152

152:                                              ; preds = %149, %143
  %153 = phi i32 [ %151, %149 ], [ 0, %143 ]
  %154 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 15
  store i32 %153, ptr %154, align 4
  %155 = load ptr, ptr %146, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.mmc_data, ptr %155, i32 0, i32 3
  %159 = load i32, ptr %158, align 4
  br label %160

160:                                              ; preds = %157, %152
  %161 = phi i32 [ %159, %157 ], [ 0, %152 ]
  %162 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 13
  store i32 %161, ptr %162, align 4
  %163 = load ptr, ptr %146, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.mmc_data, ptr %163, i32 0, i32 4
  %167 = load i32, ptr %166, align 4
  br label %168

168:                                              ; preds = %165, %160
  %169 = phi i32 [ %167, %165 ], [ 0, %160 ]
  %170 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 14
  store i32 %169, ptr %170, align 4
  %171 = load ptr, ptr %146, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.mmc_data, ptr %171, i32 0, i32 6
  %175 = load i32, ptr %174, align 4
  br label %176

176:                                              ; preds = %173, %168
  %177 = phi i32 [ %175, %173 ], [ 0, %168 ]
  %178 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 16
  store i32 %177, ptr %178, align 4
  %179 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 10
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 17
  store i32 %180, ptr %181, align 4
  %182 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 29
  %183 = load i16, ptr %182, align 8
  %184 = lshr i16 %183, 3
  %185 = and i16 %184, 1
  %186 = zext i16 %185 to i32
  %187 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 18
  store i32 %186, ptr %187, align 4
  %188 = load i16, ptr %182, align 8
  %189 = lshr i16 %188, 4
  %190 = and i16 %189, 1
  %191 = zext i16 %190 to i32
  %192 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 19
  store i32 %191, ptr %192, align 4
  %193 = load i16, ptr %182, align 8
  %194 = lshr i16 %193, 5
  %195 = and i16 %194, 1
  %196 = zext i16 %195 to i32
  %197 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 20
  store i32 %196, ptr %197, align 4
  %198 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 32
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 21
  store i32 %199, ptr %200, align 4
  %201 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 33
  %202 = load i32, ptr %201, align 8
  %203 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 22
  store i32 %202, ptr %203, align 4
  %204 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 34
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 23
  store i32 %205, ptr %206, align 4
  %207 = getelementptr i8, ptr %37, i32 108
  %208 = load ptr, ptr %6, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %215

210:                                              ; preds = %176
  %211 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  %214 = select i1 %213, ptr @.str.9, ptr %212
  br label %215

215:                                              ; preds = %210, %176
  %216 = phi ptr [ %208, %176 ], [ %214, %210 ]
  %217 = call ptr @strcpy(ptr noundef %207, ptr noundef nonnull %216)
  %218 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %37, i32 0, i32 24
  store ptr %2, ptr %218, align 4
  %219 = load i32, ptr %5, align 4
  %220 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %37, i32 noundef %36, i32 noundef %219, ptr noundef %0, i64 noundef 1, ptr noundef %220, ptr noundef %26, ptr noundef null) #18
  br label %221

221:                                              ; preds = %215, %33, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mmc_request_done(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #18
  br i1 %13, label %257, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str.9, ptr %20
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi ptr [ %16, %14 ], [ %22, %18 ]
  %25 = tail call i32 @strlen(ptr noundef nonnull %24) #18
  %26 = add i32 %25, 137
  %27 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %26) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %257, label %29

29:                                               ; preds = %23
  %30 = shl i32 %25, 16
  %31 = add i32 %30, 65672
  %32 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 23
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, ptr %34, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi i32 [ %37, %36 ], [ 0, %29 ]
  %40 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %33, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.mmc_command, ptr %41, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi i32 [ %45, %43 ], [ 0, %38 ]
  %48 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 2
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %33, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.mmc_command, ptr %49, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i32 [ %53, %51 ], [ 0, %46 ]
  %56 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 3
  store i32 %55, ptr %56, align 4
  %57 = load ptr, ptr %33, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = getelementptr %struct.mmc_command, ptr %57, i32 0, i32 2, i32 1
  %61 = load i32, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi i32 [ %61, %59 ], [ 0, %54 ]
  %64 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 3, i32 1
  store i32 %63, ptr %64, align 4
  %65 = load ptr, ptr %33, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = getelementptr %struct.mmc_command, ptr %65, i32 0, i32 2, i32 2
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi i32 [ %69, %67 ], [ 0, %62 ]
  %72 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 3, i32 2
  store i32 %71, ptr %72, align 4
  %73 = load ptr, ptr %33, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = getelementptr %struct.mmc_command, ptr %73, i32 0, i32 2, i32 3
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = phi i32 [ %77, %75 ], [ 0, %70 ]
  %80 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 3, i32 3
  store i32 %79, ptr %80, align 4
  %81 = load ptr, ptr %33, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.mmc_command, ptr %81, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi i32 [ %85, %83 ], [ 0, %78 ]
  %88 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 4
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = load i32, ptr %90, align 4
  br label %94

94:                                               ; preds = %92, %86
  %95 = phi i32 [ %93, %92 ], [ 0, %86 ]
  %96 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 5
  store i32 %95, ptr %96, align 4
  %97 = load ptr, ptr %89, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.mmc_command, ptr %97, i32 0, i32 5
  %101 = load i32, ptr %100, align 4
  br label %102

102:                                              ; preds = %99, %94
  %103 = phi i32 [ %101, %99 ], [ 0, %94 ]
  %104 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 6
  store i32 %103, ptr %104, align 4
  %105 = load ptr, ptr %89, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.mmc_command, ptr %105, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  br label %110

110:                                              ; preds = %107, %102
  %111 = phi i32 [ %109, %107 ], [ 0, %102 ]
  %112 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 7
  store i32 %111, ptr %112, align 4
  %113 = load ptr, ptr %89, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = getelementptr %struct.mmc_command, ptr %113, i32 0, i32 2, i32 1
  %117 = load i32, ptr %116, align 4
  br label %118

118:                                              ; preds = %115, %110
  %119 = phi i32 [ %117, %115 ], [ 0, %110 ]
  %120 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 7, i32 1
  store i32 %119, ptr %120, align 4
  %121 = load ptr, ptr %89, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = getelementptr %struct.mmc_command, ptr %121, i32 0, i32 2, i32 2
  %125 = load i32, ptr %124, align 4
  br label %126

126:                                              ; preds = %123, %118
  %127 = phi i32 [ %125, %123 ], [ 0, %118 ]
  %128 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 7, i32 2
  store i32 %127, ptr %128, align 4
  %129 = load ptr, ptr %89, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = getelementptr %struct.mmc_command, ptr %129, i32 0, i32 2, i32 3
  %133 = load i32, ptr %132, align 4
  br label %134

134:                                              ; preds = %131, %126
  %135 = phi i32 [ %133, %131 ], [ 0, %126 ]
  %136 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 7, i32 3
  store i32 %135, ptr %136, align 4
  %137 = load ptr, ptr %89, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.mmc_command, ptr %137, i32 0, i32 4
  %141 = load i32, ptr %140, align 4
  br label %142

142:                                              ; preds = %139, %134
  %143 = phi i32 [ %141, %139 ], [ 0, %134 ]
  %144 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 8
  store i32 %143, ptr %144, align 4
  %145 = load ptr, ptr %2, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %142
  %148 = load i32, ptr %145, align 4
  br label %149

149:                                              ; preds = %147, %142
  %150 = phi i32 [ %148, %147 ], [ 0, %142 ]
  %151 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 9
  store i32 %150, ptr %151, align 4
  %152 = load ptr, ptr %2, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.mmc_command, ptr %152, i32 0, i32 5
  %156 = load i32, ptr %155, align 4
  br label %157

157:                                              ; preds = %154, %149
  %158 = phi i32 [ %156, %154 ], [ 0, %149 ]
  %159 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 10
  store i32 %158, ptr %159, align 4
  %160 = load ptr, ptr %2, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.mmc_command, ptr %160, i32 0, i32 2
  %164 = load i32, ptr %163, align 4
  br label %165

165:                                              ; preds = %162, %157
  %166 = phi i32 [ %164, %162 ], [ 0, %157 ]
  %167 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 11
  store i32 %166, ptr %167, align 4
  %168 = load ptr, ptr %2, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = getelementptr %struct.mmc_command, ptr %168, i32 0, i32 2, i32 1
  %172 = load i32, ptr %171, align 4
  br label %173

173:                                              ; preds = %170, %165
  %174 = phi i32 [ %172, %170 ], [ 0, %165 ]
  %175 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 11, i32 1
  store i32 %174, ptr %175, align 4
  %176 = load ptr, ptr %2, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %173
  %179 = getelementptr %struct.mmc_command, ptr %176, i32 0, i32 2, i32 2
  %180 = load i32, ptr %179, align 4
  br label %181

181:                                              ; preds = %178, %173
  %182 = phi i32 [ %180, %178 ], [ 0, %173 ]
  %183 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 11, i32 2
  store i32 %182, ptr %183, align 4
  %184 = load ptr, ptr %2, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = getelementptr %struct.mmc_command, ptr %184, i32 0, i32 2, i32 3
  %188 = load i32, ptr %187, align 4
  br label %189

189:                                              ; preds = %186, %181
  %190 = phi i32 [ %188, %186 ], [ 0, %181 ]
  %191 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 11, i32 3
  store i32 %190, ptr %191, align 4
  %192 = load ptr, ptr %2, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %197, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.mmc_command, ptr %192, i32 0, i32 4
  %196 = load i32, ptr %195, align 4
  br label %197

197:                                              ; preds = %194, %189
  %198 = phi i32 [ %196, %194 ], [ 0, %189 ]
  %199 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 12
  store i32 %198, ptr %199, align 4
  %200 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 2
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.mmc_data, ptr %201, i32 0, i32 7
  %205 = load i32, ptr %204, align 4
  br label %206

206:                                              ; preds = %203, %197
  %207 = phi i32 [ %205, %203 ], [ 0, %197 ]
  %208 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 13
  store i32 %207, ptr %208, align 4
  %209 = load ptr, ptr %200, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.mmc_data, ptr %209, i32 0, i32 5
  %213 = load i32, ptr %212, align 4
  br label %214

214:                                              ; preds = %211, %206
  %215 = phi i32 [ %213, %211 ], [ 0, %206 ]
  %216 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 14
  store i32 %215, ptr %216, align 4
  %217 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 10
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 15
  store i32 %218, ptr %219, align 4
  %220 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 29
  %221 = load i16, ptr %220, align 8
  %222 = lshr i16 %221, 3
  %223 = and i16 %222, 1
  %224 = zext i16 %223 to i32
  %225 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 16
  store i32 %224, ptr %225, align 4
  %226 = load i16, ptr %220, align 8
  %227 = lshr i16 %226, 4
  %228 = and i16 %227, 1
  %229 = zext i16 %228 to i32
  %230 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 17
  store i32 %229, ptr %230, align 4
  %231 = load i16, ptr %220, align 8
  %232 = lshr i16 %231, 5
  %233 = and i16 %232, 1
  %234 = zext i16 %233 to i32
  %235 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 18
  store i32 %234, ptr %235, align 4
  %236 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 32
  %237 = load i32, ptr %236, align 4
  %238 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 19
  store i32 %237, ptr %238, align 4
  %239 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 33
  %240 = load i32, ptr %239, align 8
  %241 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 20
  store i32 %240, ptr %241, align 4
  %242 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 34
  %243 = load i32, ptr %242, align 4
  %244 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 21
  store i32 %243, ptr %244, align 4
  %245 = getelementptr i8, ptr %27, i32 136
  %246 = load ptr, ptr %15, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %253

248:                                              ; preds = %214
  %249 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  %252 = select i1 %251, ptr @.str.9, ptr %250
  br label %253

253:                                              ; preds = %248, %214
  %254 = phi ptr [ %246, %214 ], [ %252, %248 ]
  %255 = call ptr @strcpy(ptr noundef %245, ptr noundef nonnull %254)
  %256 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %27, i32 0, i32 22
  store ptr %2, ptr %256, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #18
  br label %257

257:                                              ; preds = %253, %23, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mmc_request_done(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr @.str.9, ptr %11
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi ptr [ %7, %3 ], [ %13, %9 ]
  %16 = tail call i32 @strlen(ptr noundef nonnull %15) #18
  %17 = shl i32 %16, 16
  %18 = add i32 %17, 65672
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #15, !srcloc !12
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load volatile ptr, ptr %26, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %277, label %33

33:                                               ; preds = %30, %14
  %34 = add i32 %16, 148
  %35 = and i32 %34, -8
  %36 = add i32 %35, -4
  %37 = call ptr @perf_trace_buf_alloc(i32 noundef %36, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %277, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %4, align 4
  %41 = call ptr @llvm.returnaddress(i32 0) #18
  %42 = ptrtoint ptr %41 to i32
  %43 = getelementptr [18 x i32], ptr %40, i32 0, i32 15
  store i32 %42, ptr %43, align 4
  %44 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %45 = ptrtoint ptr %44 to i32
  %46 = getelementptr [18 x i32], ptr %40, i32 0, i32 11
  store i32 %45, ptr %46, align 4
  %47 = call i32 @llvm.read_register.i32(metadata !0) #18
  %48 = getelementptr [18 x i32], ptr %40, i32 0, i32 13
  store i32 %47, ptr %48, align 4
  %49 = getelementptr [18 x i32], ptr %40, i32 0, i32 16
  store i32 19, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 23
  store i32 %18, ptr %50, align 4
  %51 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %39
  %55 = load i32, ptr %52, align 4
  br label %56

56:                                               ; preds = %54, %39
  %57 = phi i32 [ %55, %54 ], [ 0, %39 ]
  %58 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 1
  store i32 %57, ptr %58, align 4
  %59 = load ptr, ptr %51, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.mmc_command, ptr %59, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = phi i32 [ %63, %61 ], [ 0, %56 ]
  %66 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %51, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.mmc_command, ptr %67, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i32 [ %71, %69 ], [ 0, %64 ]
  %74 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 3
  store i32 %73, ptr %74, align 4
  %75 = load ptr, ptr %51, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = getelementptr %struct.mmc_command, ptr %75, i32 0, i32 2, i32 1
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %72
  %81 = phi i32 [ %79, %77 ], [ 0, %72 ]
  %82 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 3, i32 1
  store i32 %81, ptr %82, align 4
  %83 = load ptr, ptr %51, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = getelementptr %struct.mmc_command, ptr %83, i32 0, i32 2, i32 2
  %87 = load i32, ptr %86, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = phi i32 [ %87, %85 ], [ 0, %80 ]
  %90 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 3, i32 2
  store i32 %89, ptr %90, align 4
  %91 = load ptr, ptr %51, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = getelementptr %struct.mmc_command, ptr %91, i32 0, i32 2, i32 3
  %95 = load i32, ptr %94, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = phi i32 [ %95, %93 ], [ 0, %88 ]
  %98 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 3, i32 3
  store i32 %97, ptr %98, align 4
  %99 = load ptr, ptr %51, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.mmc_command, ptr %99, i32 0, i32 4
  %103 = load i32, ptr %102, align 4
  br label %104

104:                                              ; preds = %101, %96
  %105 = phi i32 [ %103, %101 ], [ 0, %96 ]
  %106 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 4
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %104
  %111 = load i32, ptr %108, align 4
  br label %112

112:                                              ; preds = %110, %104
  %113 = phi i32 [ %111, %110 ], [ 0, %104 ]
  %114 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 5
  store i32 %113, ptr %114, align 4
  %115 = load ptr, ptr %107, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.mmc_command, ptr %115, i32 0, i32 5
  %119 = load i32, ptr %118, align 4
  br label %120

120:                                              ; preds = %117, %112
  %121 = phi i32 [ %119, %117 ], [ 0, %112 ]
  %122 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 6
  store i32 %121, ptr %122, align 4
  %123 = load ptr, ptr %107, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.mmc_command, ptr %123, i32 0, i32 2
  %127 = load i32, ptr %126, align 4
  br label %128

128:                                              ; preds = %125, %120
  %129 = phi i32 [ %127, %125 ], [ 0, %120 ]
  %130 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 7
  store i32 %129, ptr %130, align 4
  %131 = load ptr, ptr %107, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = getelementptr %struct.mmc_command, ptr %131, i32 0, i32 2, i32 1
  %135 = load i32, ptr %134, align 4
  br label %136

136:                                              ; preds = %133, %128
  %137 = phi i32 [ %135, %133 ], [ 0, %128 ]
  %138 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 7, i32 1
  store i32 %137, ptr %138, align 4
  %139 = load ptr, ptr %107, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = getelementptr %struct.mmc_command, ptr %139, i32 0, i32 2, i32 2
  %143 = load i32, ptr %142, align 4
  br label %144

144:                                              ; preds = %141, %136
  %145 = phi i32 [ %143, %141 ], [ 0, %136 ]
  %146 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 7, i32 2
  store i32 %145, ptr %146, align 4
  %147 = load ptr, ptr %107, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = getelementptr %struct.mmc_command, ptr %147, i32 0, i32 2, i32 3
  %151 = load i32, ptr %150, align 4
  br label %152

152:                                              ; preds = %149, %144
  %153 = phi i32 [ %151, %149 ], [ 0, %144 ]
  %154 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 7, i32 3
  store i32 %153, ptr %154, align 4
  %155 = load ptr, ptr %107, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.mmc_command, ptr %155, i32 0, i32 4
  %159 = load i32, ptr %158, align 4
  br label %160

160:                                              ; preds = %157, %152
  %161 = phi i32 [ %159, %157 ], [ 0, %152 ]
  %162 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 8
  store i32 %161, ptr %162, align 4
  %163 = load ptr, ptr %2, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %160
  %166 = load i32, ptr %163, align 4
  br label %167

167:                                              ; preds = %165, %160
  %168 = phi i32 [ %166, %165 ], [ 0, %160 ]
  %169 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 9
  store i32 %168, ptr %169, align 4
  %170 = load ptr, ptr %2, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.mmc_command, ptr %170, i32 0, i32 5
  %174 = load i32, ptr %173, align 4
  br label %175

175:                                              ; preds = %172, %167
  %176 = phi i32 [ %174, %172 ], [ 0, %167 ]
  %177 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 10
  store i32 %176, ptr %177, align 4
  %178 = load ptr, ptr %2, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.mmc_command, ptr %178, i32 0, i32 2
  %182 = load i32, ptr %181, align 4
  br label %183

183:                                              ; preds = %180, %175
  %184 = phi i32 [ %182, %180 ], [ 0, %175 ]
  %185 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 11
  store i32 %184, ptr %185, align 4
  %186 = load ptr, ptr %2, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = getelementptr %struct.mmc_command, ptr %186, i32 0, i32 2, i32 1
  %190 = load i32, ptr %189, align 4
  br label %191

191:                                              ; preds = %188, %183
  %192 = phi i32 [ %190, %188 ], [ 0, %183 ]
  %193 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 11, i32 1
  store i32 %192, ptr %193, align 4
  %194 = load ptr, ptr %2, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %191
  %197 = getelementptr %struct.mmc_command, ptr %194, i32 0, i32 2, i32 2
  %198 = load i32, ptr %197, align 4
  br label %199

199:                                              ; preds = %196, %191
  %200 = phi i32 [ %198, %196 ], [ 0, %191 ]
  %201 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 11, i32 2
  store i32 %200, ptr %201, align 4
  %202 = load ptr, ptr %2, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %199
  %205 = getelementptr %struct.mmc_command, ptr %202, i32 0, i32 2, i32 3
  %206 = load i32, ptr %205, align 4
  br label %207

207:                                              ; preds = %204, %199
  %208 = phi i32 [ %206, %204 ], [ 0, %199 ]
  %209 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 11, i32 3
  store i32 %208, ptr %209, align 4
  %210 = load ptr, ptr %2, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.mmc_command, ptr %210, i32 0, i32 4
  %214 = load i32, ptr %213, align 4
  br label %215

215:                                              ; preds = %212, %207
  %216 = phi i32 [ %214, %212 ], [ 0, %207 ]
  %217 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 12
  store i32 %216, ptr %217, align 4
  %218 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 2
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %224, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.mmc_data, ptr %219, i32 0, i32 7
  %223 = load i32, ptr %222, align 4
  br label %224

224:                                              ; preds = %221, %215
  %225 = phi i32 [ %223, %221 ], [ 0, %215 ]
  %226 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 13
  store i32 %225, ptr %226, align 4
  %227 = load ptr, ptr %218, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.mmc_data, ptr %227, i32 0, i32 5
  %231 = load i32, ptr %230, align 4
  br label %232

232:                                              ; preds = %229, %224
  %233 = phi i32 [ %231, %229 ], [ 0, %224 ]
  %234 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 14
  store i32 %233, ptr %234, align 4
  %235 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 10
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 15
  store i32 %236, ptr %237, align 4
  %238 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 29
  %239 = load i16, ptr %238, align 8
  %240 = lshr i16 %239, 3
  %241 = and i16 %240, 1
  %242 = zext i16 %241 to i32
  %243 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 16
  store i32 %242, ptr %243, align 4
  %244 = load i16, ptr %238, align 8
  %245 = lshr i16 %244, 4
  %246 = and i16 %245, 1
  %247 = zext i16 %246 to i32
  %248 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 17
  store i32 %247, ptr %248, align 4
  %249 = load i16, ptr %238, align 8
  %250 = lshr i16 %249, 5
  %251 = and i16 %250, 1
  %252 = zext i16 %251 to i32
  %253 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 18
  store i32 %252, ptr %253, align 4
  %254 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 32
  %255 = load i32, ptr %254, align 4
  %256 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 19
  store i32 %255, ptr %256, align 4
  %257 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 33
  %258 = load i32, ptr %257, align 8
  %259 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 20
  store i32 %258, ptr %259, align 4
  %260 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 34
  %261 = load i32, ptr %260, align 4
  %262 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 21
  store i32 %261, ptr %262, align 4
  %263 = getelementptr i8, ptr %37, i32 136
  %264 = load ptr, ptr %6, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %271

266:                                              ; preds = %232
  %267 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  %270 = select i1 %269, ptr @.str.9, ptr %268
  br label %271

271:                                              ; preds = %266, %232
  %272 = phi ptr [ %264, %232 ], [ %270, %266 ]
  %273 = call ptr @strcpy(ptr noundef %263, ptr noundef nonnull %272)
  %274 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %37, i32 0, i32 22
  store ptr %2, ptr %274, align 4
  %275 = load i32, ptr %5, align 4
  %276 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %37, i32 noundef %36, i32 noundef %275, ptr noundef %0, i64 noundef 1, ptr noundef %276, ptr noundef %26, ptr noundef null) #18
  br label %277

277:                                              ; preds = %271, %33, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_command_done(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 9
  %4 = load i8, ptr %3, align 4, !range !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 5
  %8 = tail call zeroext i1 @completion_done(ptr noundef %7) #18
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @complete_all(ptr noundef %7) #18
  br label %10

10:                                               ; preds = %9, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_request_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  switch i32 %7, label %8 [
    i32 19, label %46
    i32 21, label %46
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 128
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %8
  %14 = icmp eq i32 %6, -84
  br i1 %14, label %41, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %1, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, -84
  br i1 %21, label %41, label %22

22:                                               ; preds = %18, %15
  %23 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mmc_data, ptr %24, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, -84
  br i1 %29, label %41, label %30

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, -84
  %38 = and i16 %10, 8
  %39 = icmp eq i16 %38, 0
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %46, label %44

41:                                               ; preds = %26, %18, %13
  %42 = and i16 %10, 8
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41, %34
  %45 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 32
  store i32 1, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %41, %34, %30, %8, %2, %2
  %47 = icmp eq i32 %6, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 0, ptr %49, align 4
  br label %63

63:                                               ; preds = %62, %57, %52, %48, %46
  %64 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 56
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, %1
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store ptr null, ptr %64, align 8
  br label %68

68:                                               ; preds = %67, %63
  %69 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 9
  %70 = load i8, ptr %69, align 4, !range !13
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 5
  %74 = tail call zeroext i1 @completion_done(ptr noundef %73) #18
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  tail call void @complete_all(ptr noundef %73) #18
  br label %76

76:                                               ; preds = %75, %72, %68
  %77 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmc_request_done, i32 0, i32 1), align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  %80 = tail call ptr @llvm.thread.pointer() #18
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = lshr i32 %82, 5
  %84 = getelementptr i32, ptr @__cpu_online_mask, i32 %83
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %82, 31
  %87 = shl nuw i32 1, %86
  %88 = and i32 %87, %85
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %79
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !14
  %91 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmc_request_done, i32 0, i32 7), align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %93, %90
  %94 = phi ptr [ %98, %93 ], [ %91, %90 ]
  %95 = load volatile ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.tracepoint_func, ptr %94, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  tail call void %95(ptr noundef %97, ptr noundef %0, ptr noundef %1) #18
  %98 = getelementptr %struct.tracepoint_func, ptr %94, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %93

101:                                              ; preds = %93, %90
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  br label %102

102:                                              ; preds = %101, %79, %76
  br i1 %47, label %116, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %122, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.mmc_card, ptr %109, i32 0, i32 5
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 16
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %111, %103, %102
  %117 = load ptr, ptr %64, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 52
  %121 = load ptr, ptr %120, align 4
  tail call void @led_trigger_event(ptr noundef %121, i32 noundef 0) #18
  br label %122

122:                                              ; preds = %119, %116, %111, %107
  %123 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 6
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  tail call void %124(ptr noundef %1) #18
  br label %127

127:                                              ; preds = %126, %122
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_start_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 5
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %4, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_completion.__key) #18
  tail call void @mmc_retune_hold(ptr noundef %0) #18
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_card, ptr %6, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %8, %2
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19, !prof !11

18:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 349, i32 noundef 9, ptr noundef null) #18
  br label %19

19:                                               ; preds = %18, %13
  %20 = tail call fastcc i32 @mmc_mrq_prep(ptr noundef %0, ptr noundef %1)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 52
  %24 = load ptr, ptr %23, align 4
  tail call void @led_trigger_event(ptr noundef %24, i32 noundef 255) #18
  tail call fastcc void @__mmc_start_request(ptr noundef %0, ptr noundef %1)
  br label %25

25:                                               ; preds = %22, %19, %8
  %26 = phi i32 [ 0, %22 ], [ -123, %8 ], [ %20, %19 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_mrq_prep(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 5
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 8
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 7
  store ptr %11, ptr %13, align 4
  br label %14

14:                                               ; preds = %6, %2
  %15 = load ptr, ptr %1, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 5
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr %1, align 4
  %20 = getelementptr inbounds %struct.mmc_command, ptr %19, i32 0, i32 8
  store ptr %1, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %87, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 24
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %27, %29
  br i1 %30, label %87, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 25
  %35 = load i32, ptr %34, align 8
  %36 = icmp ugt i32 %33, %35
  br i1 %36, label %87, label %37

37:                                               ; preds = %31
  %38 = mul i32 %33, %27
  %39 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 23
  %40 = load i32, ptr %39, align 16
  %41 = icmp ugt i32 %38, %40
  br i1 %41, label %87, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 12
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %49, %46
  %50 = phi ptr [ %57, %49 ], [ %48, %46 ]
  %51 = phi i32 [ %55, %49 ], [ 0, %46 ]
  %52 = phi i32 [ %56, %49 ], [ 0, %46 ]
  %53 = getelementptr inbounds %struct.scatterlist, ptr %50, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %51
  %56 = add nuw i32 %52, 1
  %57 = tail call ptr @sg_next(ptr noundef %50) #18
  %58 = load ptr, ptr %22, align 4
  %59 = getelementptr inbounds %struct.mmc_data, ptr %58, i32 0, i32 10
  %60 = load i32, ptr %59, align 4
  %61 = icmp ult i32 %56, %60
  br i1 %61, label %49, label %62

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.mmc_data, ptr %58, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.mmc_data, ptr %58, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = mul i32 %66, %64
  br label %68

68:                                               ; preds = %62, %42
  %69 = phi i32 [ %67, %62 ], [ %38, %42 ]
  %70 = phi i32 [ %55, %62 ], [ 0, %42 ]
  %71 = phi ptr [ %58, %62 ], [ %23, %42 ]
  %72 = icmp eq i32 %70, %69
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.mmc_data, ptr %71, i32 0, i32 5
  store i32 0, ptr %74, align 4
  %75 = load ptr, ptr %22, align 4
  %76 = getelementptr inbounds %struct.mmc_data, ptr %75, i32 0, i32 9
  store ptr %1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load ptr, ptr %22, align 4
  %82 = getelementptr inbounds %struct.mmc_data, ptr %81, i32 0, i32 8
  store ptr %78, ptr %82, align 4
  %83 = load ptr, ptr %77, align 4
  %84 = getelementptr inbounds %struct.mmc_command, ptr %83, i32 0, i32 5
  store i32 0, ptr %84, align 4
  %85 = load ptr, ptr %77, align 4
  %86 = getelementptr inbounds %struct.mmc_command, ptr %85, i32 0, i32 8
  store ptr %1, ptr %86, align 4
  br label %87

87:                                               ; preds = %80, %73, %68, %37, %31, %25, %21
  %88 = phi i32 [ -22, %37 ], [ -22, %31 ], [ -22, %25 ], [ -22, %68 ], [ 0, %73 ], [ 0, %80 ], [ 0, %21 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__mmc_start_request(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @mmc_retune(ptr noundef %0) #18
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  br i1 %4, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 5
  store i32 %3, ptr %8, align 4
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1)
  br label %85

9:                                                ; preds = %2
  %10 = load i32, ptr %6, align 4
  switch i32 %10, label %38 [
    i32 53, label %16
    i32 52, label %11
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 9
  %15 = and i32 %14, 131071
  switch i32 %15, label %16 [
    i32 12, label %38
    i32 6, label %38
  ]

16:                                               ; preds = %11, %9
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mmc_host_ops, ptr %18, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %16
  %23 = tail call i32 %20(ptr noundef %0) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %29, %22
  %26 = phi i32 [ %27, %29 ], [ 500, %22 ]
  %27 = add nsw i32 %26, -1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr inbounds %struct.mmc_host_ops, ptr %30, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %0) #18
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %25

35:                                               ; preds = %25
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.mmc_command, ptr %36, i32 0, i32 5
  store i32 -16, ptr %37, align 4
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1)
  br label %85

38:                                               ; preds = %29, %22, %16, %11, %11, %9
  %39 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 9
  %40 = load i8, ptr %39, align 4, !range !13
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 56
  store ptr %1, ptr %43, align 8
  %44 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 5
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmc_request_start, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = tail call ptr @llvm.thread.pointer() #18
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 5
  %53 = getelementptr i32, ptr @__cpu_online_mask, i32 %52
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %51, 31
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %60 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmc_request_start, i32 0, i32 7), align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %62, %59
  %63 = phi ptr [ %67, %62 ], [ %60, %59 ]
  %64 = load volatile ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.tracepoint_func, ptr %63, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void %64(ptr noundef %66, ptr noundef %0, ptr noundef %1) #18
  %67 = getelementptr %struct.tracepoint_func, ptr %63, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %62

70:                                               ; preds = %62, %59
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  br label %71

71:                                               ; preds = %70, %48, %45
  %72 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 65
  %73 = load i8, ptr %72, align 1, !range !13
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 61
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %77, i32 0, i32 4
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %0) #18
  br label %80

80:                                               ; preds = %75, %71
  %81 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.mmc_host_ops, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  tail call void %84(ptr noundef %0, ptr noundef %1) #18
  br label %85

85:                                               ; preds = %80, %35, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_wait_for_req_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 4
  tail call void @wait_for_completion(ptr noundef %3) #18
  %4 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 33
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  br label %13

13:                                               ; preds = %34, %9
  %14 = phi ptr [ %6, %9 ], [ %38, %34 ]
  %15 = phi ptr [ %5, %9 ], [ %37, %34 ]
  %16 = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %10, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.mmc_card, ptr %20, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22, %19
  %28 = load i32, ptr %11, align 8
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i16, ptr %12, align 8
  %32 = or i16 %31, 32
  store i16 %32, ptr %12, align 8
  %33 = load i32, ptr %16, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i32 [ %17, %27 ], [ %33, %30 ]
  %36 = add i32 %35, -1
  store i32 %36, ptr %16, align 4
  store i32 0, ptr %14, align 4
  tail call fastcc void @__mmc_start_request(ptr noundef %0, ptr noundef %1)
  tail call void @wait_for_completion(ptr noundef %3) #18
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds %struct.mmc_command, ptr %37, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %13

41:                                               ; preds = %34, %22, %13, %2
  tail call void @mmc_retune_release(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_cqe_start_req(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @mmc_retune(ptr noundef %0) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %42

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 8
  store ptr %0, ptr %6, align 4
  %7 = tail call fastcc i32 @mmc_mrq_prep(ptr noundef %0, ptr noundef %1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 61
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0, ptr noundef %1) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %9
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmc_request_start, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = tail call ptr @llvm.thread.pointer() #18
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %31 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmc_request_start, i32 0, i32 7), align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %33, %30
  %34 = phi ptr [ %38, %33 ], [ %31, %30 ]
  %35 = load volatile ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tracepoint_func, ptr %34, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %35(ptr noundef %37, ptr noundef %0, ptr noundef %1) #18
  %38 = getelementptr %struct.tracepoint_func, ptr %34, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %33

41:                                               ; preds = %33, %30
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  br label %42

42:                                               ; preds = %41, %19, %16, %9, %5, %2
  %43 = phi i32 [ %3, %2 ], [ %7, %5 ], [ %14, %9 ], [ 0, %16 ], [ 0, %19 ], [ 0, %41 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_retune(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_cqe_request_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, -84
  br i1 %9, label %18, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mmc_data, ptr %12, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, -84
  br i1 %17, label %18, label %25

18:                                               ; preds = %14, %6
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 8
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 32
  store i32 1, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %18, %14, %10
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmc_request_done, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = tail call ptr @llvm.thread.pointer() #18
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !14
  %40 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmc_request_done, i32 0, i32 7), align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %42, %39
  %43 = phi ptr [ %47, %42 ], [ %40, %39 ]
  %44 = load volatile ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.tracepoint_func, ptr %43, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void %44(ptr noundef %46, ptr noundef %0, ptr noundef %1) #18
  %47 = getelementptr %struct.tracepoint_func, ptr %43, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %42

50:                                               ; preds = %42, %39
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  br label %51

51:                                               ; preds = %50, %28, %25
  %52 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %1) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_cqe_post_req(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 61
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %0, ptr noundef %1) #18
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_cqe_recovery(ptr noundef %0) #0 {
  %2 = alloca %struct.mmc_request, align 4
  %3 = alloca %struct.mmc_request, align 4
  %4 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, -33
  store i16 %7, ptr %5, align 8
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 33
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = phi ptr [ %16, %14 ], [ %12, %1 ]
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %18) #19
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 61
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %0) #18
  %24 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %24, i8 0, i32 44, i1 false)
  store i32 12, ptr %4, align 4
  %25 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  store i32 25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 6
  store i32 1000, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false) #18
  %27 = load i16, ptr %5, align 8
  %28 = and i16 %27, 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %31, !prof !11

30:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %31

31:                                               ; preds = %30, %17
  %32 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %32, i8 0, i32 16, i1 false) #18
  %33 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 4
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  store ptr %4, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 7
  store ptr null, ptr %35, align 4
  call void @mmc_wait_for_req(ptr noundef %0, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #18
  %36 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %36, i8 0, i32 40, i1 false)
  store i32 48, ptr %4, align 4
  %37 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  store i32 1, ptr %37, align 4
  store i32 25, ptr %25, align 4
  store i32 1000, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i32 68, i1 false) #18
  %38 = load i16, ptr %5, align 8
  %39 = and i16 %38, 2
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %42, !prof !11

41:                                               ; preds = %31
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %42

42:                                               ; preds = %41, %31
  %43 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 5
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %32, i8 0, i32 16, i1 false) #18
  store i32 0, ptr %33, align 4
  %44 = getelementptr inbounds %struct.mmc_request, ptr %2, i32 0, i32 1
  store ptr %4, ptr %44, align 4
  store ptr null, ptr %35, align 4
  call void @mmc_wait_for_req(ptr noundef %0, ptr noundef nonnull %2) #18
  %45 = load i32, ptr %43, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %2) #18
  %46 = load ptr, ptr %20, align 4
  %47 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %46, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  call void %48(ptr noundef %0) #18
  call void @mmc_retune_release(ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  ret i32 %45
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_wait_for_cmd(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.mmc_request, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 0, i32 68, i1 false)
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %11, i8 0, i32 16, i1 false)
  %12 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 4
  store i32 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 1
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  store ptr null, ptr %14, align 4
  call void @mmc_wait_for_req(ptr noundef %0, ptr noundef nonnull %4)
  %15 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #18
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @mmc_is_req_done(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 4
  %4 = tail call zeroext i1 @completion_done(ptr noundef %3) #18
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_wait_for_req(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 56
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 5
  %8 = tail call zeroext i1 @completion_done(ptr noundef %7) #18
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @wait_for_completion(ptr noundef %7) #18
  br label %10

10:                                               ; preds = %9, %6, %2
  %11 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 4
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %12, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_completion.__key) #18
  %13 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 6
  store ptr @mmc_wait_done, ptr %13, align 4
  %14 = tail call i32 @mmc_start_request(ptr noundef %0, ptr noundef %1) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mmc_command, ptr %18, i32 0, i32 5
  store i32 %14, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 9
  %21 = load i8, ptr %20, align 4, !range !13
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 5
  %25 = tail call zeroext i1 @completion_done(ptr noundef %24) #18
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @complete_all(ptr noundef %24) #18
  br label %27

27:                                               ; preds = %26, %23, %16
  tail call void @complete(ptr noundef %11) #18
  br label %28

28:                                               ; preds = %27, %10
  %29 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 9
  %30 = load i8, ptr %29, align 4, !range !13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @mmc_wait_for_req_done(ptr noundef %0, ptr noundef %1)
  br label %33

33:                                               ; preds = %32, %28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @mmc_set_data_timeout(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  store i32 1000000000, ptr %0, align 4
  %7 = getelementptr inbounds %struct.mmc_data, ptr %0, i32 0, i32 1
  store i32 0, ptr %7, align 4
  br label %76

8:                                                ; preds = %2
  %9 = icmp eq i32 %4, 1
  %10 = select i1 %9, i32 100, i32 10
  %11 = getelementptr inbounds %struct.mmc_data, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 20, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = shl i32 %10, %17
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi i32 [ %18, %15 ], [ %10, %8 ]
  %21 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 20, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = mul i32 %22, %20
  store i32 %23, ptr %0, align 4
  %24 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 20, i32 3
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = mul i32 %20, %26
  %28 = getelementptr inbounds %struct.mmc_data, ptr %0, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = load i32, ptr %3, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %52

31:                                               ; preds = %19
  %32 = udiv i32 %23, 1000
  %33 = load ptr, ptr %1, align 8
  %34 = getelementptr inbounds %struct.mmc_host, ptr %33, i32 0, i32 28
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = mul i32 %27, 1000
  %39 = udiv i32 %35, 1000
  %40 = udiv i32 %38, %39
  %41 = add i32 %40, %32
  br label %42

42:                                               ; preds = %37, %31
  %43 = phi i32 [ %41, %37 ], [ %32, %31 ]
  %44 = select i1 %14, i32 100000, i32 3000000
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = mul nuw i32 %44, 1000
  store i32 %47, ptr %0, align 4
  store i32 0, ptr %28, align 4
  br label %52

48:                                               ; preds = %42
  %49 = icmp eq i32 %43, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %48
  %51 = mul nuw i32 %44, 1000
  store i32 %51, ptr %0, align 4
  br label %52

52:                                               ; preds = %50, %48, %46, %19
  %53 = phi i32 [ %47, %46 ], [ %23, %48 ], [ %51, %50 ], [ %23, %19 ]
  %54 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 512
  %57 = icmp eq i32 %56, 0
  %58 = and i32 %12, 512
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  store i32 600000000, ptr %0, align 4
  store i32 0, ptr %28, align 4
  br label %62

62:                                               ; preds = %61, %52
  %63 = phi i32 [ 600000000, %61 ], [ %53, %52 ]
  %64 = load ptr, ptr %1, align 8
  %65 = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 16
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  br i1 %14, label %73, label %70

70:                                               ; preds = %69
  %71 = icmp ult i32 %63, 1000000000
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  store i32 1000000000, ptr %0, align 4
  br label %76

73:                                               ; preds = %69
  %74 = icmp ult i32 %63, 100000000
  br i1 %74, label %75, label %76

75:                                               ; preds = %73
  store i32 100000000, ptr %0, align 4
  br label %76

76:                                               ; preds = %75, %73, %72, %70, %62, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__mmc_claim_host(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = icmp eq ptr %1, null
  %6 = tail call ptr @llvm.thread.pointer() #18
  %7 = select i1 %5, ptr %6, ptr null
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #18
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  store i32 0, ptr %4, align 4
  store ptr %6, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  store ptr @default_wake_function, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 38
  call void @add_wait_queue(ptr noundef %12, ptr noundef nonnull %4) #18
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 27
  %14 = call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #18
  %15 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  %16 = icmp eq ptr %2, null
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 39
  %19 = icmp ne ptr %7, null
  %20 = and i1 %5, %19
  br label %21

21:                                               ; preds = %37, %3
  %22 = phi i32 [ %14, %3 ], [ %38, %37 ]
  store volatile i32 2, ptr %15, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  br i1 %16, label %26, label %23

23:                                               ; preds = %21
  %24 = load volatile i32, ptr %2, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %23, %21
  %27 = load i16, ptr %17, align 8
  %28 = and i16 %27, 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %18, align 8
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  br i1 %20, label %34, label %37

34:                                               ; preds = %33
  %35 = load ptr, ptr %31, align 4
  %36 = icmp eq ptr %35, %7
  br i1 %36, label %40, label %37

37:                                               ; preds = %34, %33
  call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %22) #18
  call void @schedule() #18
  %38 = call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #18
  br label %21

39:                                               ; preds = %26
  store volatile i32 0, ptr %15, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  br label %41

40:                                               ; preds = %34, %30
  store volatile i32 0, ptr %15, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i16, ptr %17, align 8
  %43 = or i16 %42, 2
  store i16 %43, ptr %17, align 8
  %44 = load ptr, ptr %18, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 41
  %48 = select i1 %5, ptr %47, ptr %1
  store ptr %48, ptr %18, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = phi ptr [ %44, %41 ], [ %48, %46 ]
  %51 = icmp eq ptr %7, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store ptr %7, ptr %50, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 40
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  %57 = icmp eq i32 %55, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %22) #18
  call void @remove_wait_queue(ptr noundef %12, ptr noundef nonnull %4) #18
  br i1 %57, label %59, label %62

58:                                               ; preds = %23
  store volatile i32 0, ptr %15, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  call void @__wake_up(ptr noundef %12, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %22) #18
  call void @remove_wait_queue(ptr noundef %12, ptr noundef nonnull %4) #18
  br label %62

59:                                               ; preds = %53
  %60 = load ptr, ptr %0, align 64
  %61 = call i32 @__pm_runtime_resume(ptr noundef %60, i32 noundef 4) #18
  br label %62

62:                                               ; preds = %59, %58, %53
  %63 = phi i32 [ %24, %58 ], [ 0, %59 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #18
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_release_host(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 832, i32 noundef 9, ptr noundef null) #18
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 27
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #18
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 40
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #18
  br label %33

15:                                               ; preds = %7
  %16 = load i16, ptr %2, align 8
  %17 = and i16 %16, -3
  store i16 %17, ptr %2, align 8
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 39
  %19 = load ptr, ptr %18, align 8
  store ptr null, ptr %19, align 4
  store ptr null, ptr %18, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #18
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 38
  tail call void @__wake_up(ptr noundef %20, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  %21 = load ptr, ptr %0, align 64
  %22 = tail call i64 @ktime_get_mono_fast_ns() #18
  %23 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 11, i32 22
  store volatile i64 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 2097152
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr %0, align 64
  br i1 %27, label %31, label %29

29:                                               ; preds = %15
  %30 = tail call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 4) #18
  br label %33

31:                                               ; preds = %15
  %32 = tail call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #18
  br label %33

33:                                               ; preds = %31, %29, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_get_card(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #18
  %5 = load ptr, ptr %0, align 8
  %6 = tail call i32 @__mmc_claim_host(ptr noundef %5, ptr noundef %1, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_put_card(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 39
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %10, label %9, !prof !10

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 872, i32 noundef 9, ptr noundef null) #18
  br label %10

10:                                               ; preds = %9, %5, %2
  tail call void @mmc_release_host(ptr noundef %3)
  %11 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1
  %12 = tail call i64 @ktime_get_mono_fast_ns() #18
  %13 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1, i32 11, i32 22
  store volatile i64 %12, ptr %13, align 8
  %14 = tail call i32 @__pm_runtime_suspend(ptr noundef %11, i32 noundef 13) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_set_chip_select(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 4
  store i8 %3, ptr %4, align 1
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_host_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, ptr noundef %5) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_set_clock(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 912, i32 noundef 9, ptr noundef null) #18
  br label %9

9:                                                ; preds = %8, %4, %2
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 16
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %1)
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mmc_host_ops, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef %0, ptr noundef %13) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_execute_tuning(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_host_ops, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 65
  %10 = load i8, ptr %9, align 1, !range !13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 61
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %2) #18
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.mmc_host_ops, ptr %17, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %12, %8
  %21 = phi ptr [ %19, %12 ], [ %6, %8 ]
  %22 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 21, i32 19
  %26 = tail call i32 %21(ptr noundef %2, i32 noundef %25) #18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 29
  %30 = load i16, ptr %29, align 8
  %31 = and i16 %30, -33
  store i16 %31, ptr %29, align 8
  %32 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 32
  store i32 0, ptr %32, align 4
  tail call void @mmc_retune_enable(ptr noundef %2) #18
  br label %47

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 43
  %35 = load i32, ptr %34, align 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 1, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi ptr [ %43, %41 ], [ %39, %37 ]
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %45, i32 noundef %26) #19
  br label %47

47:                                               ; preds = %44, %33, %28, %1
  %48 = phi i32 [ 0, %28 ], [ 0, %1 ], [ %26, %44 ], [ %26, %33 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_set_bus_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 3
  store i8 %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_host_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, ptr noundef %5) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_set_bus_width(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 6
  store i8 %3, ptr %4, align 1
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_host_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, ptr noundef %5) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_set_initial_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 65
  %3 = load i8, ptr %2, align 1, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 61
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0) #18
  br label %10

10:                                               ; preds = %5, %1
  tail call void @mmc_retune_disable(ptr noundef %0) #18
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %12 = load i32, ptr %11, align 8
  %13 = trunc i32 %12 to i8
  %14 = lshr i8 %13, 4
  %15 = and i8 %14, 1
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 4
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 3
  store i8 2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 6
  store i8 0, ptr %19, align 1
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 7
  store i8 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 9
  store i8 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 10
  store i8 0, ptr %22, align 1
  %23 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1048576
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mmc_host_ops, ptr %29, i32 0, i32 18
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void %31(ptr noundef %0, ptr noundef %17) #18
  br label %34

34:                                               ; preds = %33, %27, %10
  %35 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mmc_host_ops, ptr %36, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %0, ptr noundef %17) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i32 @mmc_vddrange_to_ocrmask(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp slt i32 %1, %0
  %4 = add i32 %1, -3601
  %5 = icmp ult i32 %4, -1951
  %6 = or i1 %3, %5
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = icmp ult i32 %1, 1951
  br i1 %8, label %17, label %9

9:                                                ; preds = %7
  %10 = icmp ugt i32 %1, 3599
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = trunc i32 %1 to i16
  %13 = add nsw i16 %12, -2000
  %14 = sdiv i16 %13, 100
  %15 = add nuw nsw i16 %14, 8
  %16 = zext i16 %15 to i32
  br label %17

17:                                               ; preds = %11, %9, %7
  %18 = phi i32 [ 23, %9 ], [ 7, %7 ], [ %16, %11 ]
  %19 = add i32 %0, -3601
  %20 = icmp ult i32 %19, -1951
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = icmp ult i32 %0, 1951
  %23 = trunc i32 %0 to i16
  %24 = add nsw i16 %23, -2001
  %25 = sdiv i16 %24, 100
  %26 = add nuw nsw i16 %25, 8
  %27 = zext i16 %26 to i32
  %28 = select i1 %22, i32 7, i32 %27
  %29 = icmp ult i32 %18, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %30, %21
  %31 = phi i32 [ %35, %30 ], [ 0, %21 ]
  %32 = phi i32 [ %33, %30 ], [ %18, %21 ]
  %33 = add nsw i32 %32, -1
  %34 = shl nuw i32 1, %32
  %35 = or i32 %31, %34
  %36 = icmp sgt i32 %32, %28
  br i1 %36, label %30, label %37

37:                                               ; preds = %30, %21, %17, %2
  %38 = phi i32 [ 0, %2 ], [ 0, %17 ], [ 0, %21 ], [ %35, %30 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mmc_of_find_child_device(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @of_get_next_child(ptr noundef nonnull %8, ptr noundef null) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %21, %10
  %14 = phi ptr [ %25, %21 ], [ %11, %10 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 0, ptr %3, align 4, !annotation !9
  %15 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.53, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #18
  %16 = call i32 @llvm.smin.i32(i32 %15, i32 0) #18
  %17 = icmp slt i32 %15, 0
  %18 = load i32, ptr %3, align 4
  %19 = select i1 %17, i32 %16, i32 %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %0, align 64
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = call ptr @of_get_next_child(ptr noundef %24, ptr noundef nonnull %14) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %13

27:                                               ; preds = %21, %13, %10, %6, %2
  %28 = phi ptr [ null, %6 ], [ null, %2 ], [ null, %10 ], [ %14, %13 ], [ null, %21 ]
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_select_voltage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, 127
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.3) #19
  %7 = and i32 %1, -128
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ %1, %2 ]
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, %9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.4) #19
  br label %36

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @llvm.cttz.i32(i32 %12, i1 true), !range !20
  %23 = shl i32 3, %22
  %24 = and i32 %23, %12
  tail call void @mmc_power_off(ptr noundef %0) #18
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  tail call void @mmc_power_up(ptr noundef %0, i32 noundef %24) #18
  br label %36

25:                                               ; preds = %16
  %26 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #18, !range !20
  %27 = xor i32 %26, 31
  %28 = shl i32 3, %27
  %29 = and i32 %28, %12
  %30 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 1
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = icmp eq i32 %27, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.5) #19
  br label %36

36:                                               ; preds = %34, %25, %21, %14
  %37 = phi i32 [ 0, %14 ], [ %24, %21 ], [ %29, %34 ], [ %29, %25 ]
  ret i32 %37
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_power_cycle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @mmc_power_off(ptr noundef %0)
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  tail call void @mmc_power_up(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_set_signal_voltage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 8
  %4 = load i8, ptr %3, align 1
  %5 = trunc i32 %1 to i8
  store i8 %5, ptr %3, align 1
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_host_ops, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  %13 = tail call i32 %9(ptr noundef %0, ptr noundef %12) #18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i8 %4, ptr %3, align 1
  br label %16

16:                                               ; preds = %15, %11, %2
  %17 = phi i32 [ %13, %15 ], [ 0, %11 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_set_initial_signal_voltage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 8
  %3 = load i8, ptr %2, align 1
  store i8 0, ptr %2, align 1
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_host_ops, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  %11 = tail call i32 %7(ptr noundef %0, ptr noundef %10) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  store i8 1, ptr %2, align 1
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.mmc_host_ops, ptr %14, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = tail call i32 %16(ptr noundef %0, ptr noundef %10) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  store i8 2, ptr %2, align 1
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.mmc_host_ops, ptr %22, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = tail call i32 %24(ptr noundef %0, ptr noundef %10) #18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i8 %3, ptr %2, align 1
  br label %30

30:                                               ; preds = %29, %26, %21, %18, %13, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_host_set_uhs_voltage(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  %3 = load i32, ptr %2, align 4
  store i32 0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_host_ops, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0, ptr noundef %2) #18
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 8
  %9 = load i8, ptr %8, align 1
  store i8 1, ptr %8, align 1
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.mmc_host_ops, ptr %10, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = tail call i32 %12(ptr noundef %0, ptr noundef %2) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i8 %9, ptr %8, align 1
  br label %22

18:                                               ; preds = %14, %1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12500, i32 noundef 2) #18
  store i32 %3, ptr %2, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.mmc_host_ops, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %0, ptr noundef %2) #18
  br label %22

22:                                               ; preds = %18, %17
  %23 = phi i32 [ 0, %18 ], [ -11, %17 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_set_uhs_voltage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mmc_request, align 4
  %4 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  %5 = getelementptr inbounds i8, ptr %4, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 16, i1 false)
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_host_ops, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %89, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mmc_host_ops, ptr %7, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %21, %19 ], [ %17, %15 ]
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %23) #19
  br label %25

25:                                               ; preds = %22, %11
  store i32 11, ptr %4, align 4
  %26 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  store i32 21, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false) #18
  %28 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %29 = load i16, ptr %28, align 8
  %30 = and i16 %29, 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %33, !prof !11

32:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %33

33:                                               ; preds = %32, %25
  %34 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %34, i8 0, i32 16, i1 false) #18
  %35 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 4
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  store ptr %4, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 7
  store ptr null, ptr %37, align 4
  call void @mmc_wait_for_req(ptr noundef %0, ptr noundef nonnull %3) #18
  %38 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #18
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, ptr %34, align 4
  %48 = and i32 %47, 524288
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %89

50:                                               ; preds = %46, %41
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  %51 = load ptr, ptr %6, align 4
  %52 = getelementptr inbounds %struct.mmc_host_ops, ptr %51, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = call i32 %53(ptr noundef %0) #18
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %87, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %6, align 4
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi ptr [ %59, %58 ], [ %51, %50 ]
  %62 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  %63 = load i32, ptr %62, align 4
  store i32 0, ptr %62, align 4
  %64 = getelementptr inbounds %struct.mmc_host_ops, ptr %61, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  call void %65(ptr noundef %0, ptr noundef %62) #18
  %66 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 8
  %67 = load i8, ptr %66, align 1
  store i8 1, ptr %66, align 1
  %68 = load ptr, ptr %6, align 4
  %69 = getelementptr inbounds %struct.mmc_host_ops, ptr %68, i32 0, i32 10
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %60
  %73 = call i32 %70(ptr noundef %0, ptr noundef %62) #18
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i8 %67, ptr %66, align 1
  br label %87

76:                                               ; preds = %72, %60
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12500, i32 noundef 2) #18
  store i32 %63, ptr %62, align 4
  %77 = load ptr, ptr %6, align 4
  %78 = getelementptr inbounds %struct.mmc_host_ops, ptr %77, i32 0, i32 4
  %79 = load ptr, ptr %78, align 4
  call void %79(ptr noundef %0, ptr noundef %62) #18
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  %80 = load ptr, ptr %6, align 4
  %81 = getelementptr inbounds %struct.mmc_host_ops, ptr %80, i32 0, i32 11
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %76
  %85 = call i32 %82(ptr noundef %0) #18
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84, %75, %55, %33
  %88 = phi i32 [ -11, %84 ], [ -11, %75 ], [ -11, %55 ], [ %39, %33 ]
  call void @mmc_power_off(ptr noundef %0) #18
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  call void @mmc_power_up(ptr noundef %0, i32 noundef %1) #18
  br label %89

89:                                               ; preds = %87, %84, %76, %46, %2
  %90 = phi i32 [ -1, %2 ], [ -5, %46 ], [ %88, %87 ], [ 0, %76 ], [ 0, %84 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_set_timing(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 7
  store i8 %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_host_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, ptr noundef %5) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_set_driver_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 9
  store i8 %3, ptr %4, align 2
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_host_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, ptr noundef %5) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_select_drive_strength(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8
  store i32 0, ptr %3, align 4
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_host_ops, ptr %7, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 16
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 8388608
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 1, i32 3
  %17 = lshr i32 %13, 22
  %18 = and i32 %17, 12
  %19 = or i32 %18, %16
  %20 = tail call i32 %9(ptr noundef %0, i32 noundef %1, i32 noundef %19, i32 noundef %2, ptr noundef %3) #18
  br label %21

21:                                               ; preds = %11, %4
  %22 = phi i32 [ %20, %11 ], [ 0, %4 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_power_up(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 5
  %4 = load i8, ptr %3, align 2
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %96, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  tail call void @mmc_pwrseq_pre_power_on(ptr noundef %0) #18
  %8 = icmp eq i32 %1, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 false) #18, !range !20
  %10 = trunc i32 %9 to i16
  %11 = sub nsw i16 31, %10
  %12 = select i1 %8, i16 -1, i16 %11
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 1
  store i16 %12, ptr %13, align 4
  store i8 1, ptr %3, align 2
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 65
  %15 = load i8, ptr %14, align 1, !range !13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 61
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %0) #18
  br label %22

22:                                               ; preds = %17, %6
  tail call void @mmc_retune_disable(ptr noundef %0) #18
  %23 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i8
  %26 = lshr i8 %25, 4
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 4
  store i8 %27, ptr %28, align 1
  %29 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 3
  store i8 2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 6
  store i8 0, ptr %30, align 1
  %31 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 7
  store i8 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 9
  store i8 0, ptr %32, align 2
  %33 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 10
  store i8 0, ptr %33, align 1
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1048576
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mmc_host_ops, ptr %40, i32 0, i32 18
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call void %42(ptr noundef %0, ptr noundef %7) #18
  br label %45

45:                                               ; preds = %44, %38, %22
  %46 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mmc_host_ops, ptr %47, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %0, ptr noundef %7) #18
  %50 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 8
  %51 = load i8, ptr %50, align 1
  store i8 0, ptr %50, align 1
  %52 = load ptr, ptr %46, align 4
  %53 = getelementptr inbounds %struct.mmc_host_ops, ptr %52, i32 0, i32 10
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %76, label %56

56:                                               ; preds = %45
  %57 = tail call i32 %54(ptr noundef %0, ptr noundef %7) #18
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %56
  store i8 1, ptr %50, align 1
  %60 = load ptr, ptr %46, align 4
  %61 = getelementptr inbounds %struct.mmc_host_ops, ptr %60, i32 0, i32 10
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %59
  %65 = tail call i32 %62(ptr noundef %0, ptr noundef %7) #18
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  store i8 2, ptr %50, align 1
  %68 = load ptr, ptr %46, align 4
  %69 = getelementptr inbounds %struct.mmc_host_ops, ptr %68, i32 0, i32 10
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = tail call i32 %70(ptr noundef %0, ptr noundef %7) #18
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i8 %51, ptr %50, align 1
  br label %76

76:                                               ; preds = %75, %72, %67, %64, %59, %56, %45
  %77 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = icmp ult i32 %78, 21
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = mul nuw nsw i32 %78, 1000
  %82 = mul nuw nsw i32 %78, 1250
  tail call void @usleep_range_state(i32 noundef %81, i32 noundef %82, i32 noundef 2) #18
  br label %84

83:                                               ; preds = %76
  tail call void @msleep(i32 noundef %78) #18
  br label %84

84:                                               ; preds = %83, %80
  tail call void @mmc_pwrseq_post_power_on(ptr noundef %0) #18
  %85 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %7, align 4
  store i8 2, ptr %3, align 2
  %87 = load ptr, ptr %46, align 4
  %88 = getelementptr inbounds %struct.mmc_host_ops, ptr %87, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  tail call void %89(ptr noundef %0, ptr noundef %7) #18
  %90 = load i32, ptr %77, align 4
  %91 = icmp ult i32 %90, 21
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = mul nuw nsw i32 %90, 1000
  %94 = mul nuw nsw i32 %90, 1250
  tail call void @usleep_range_state(i32 noundef %93, i32 noundef %94, i32 noundef 2) #18
  br label %96

95:                                               ; preds = %84
  tail call void @msleep(i32 noundef %90) #18
  br label %96

96:                                               ; preds = %95, %92, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_pwrseq_pre_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_pwrseq_post_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_power_off(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 5
  %3 = load i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28
  tail call void @mmc_pwrseq_power_off(ptr noundef %0) #18
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 1
  store i16 0, ptr %7, align 4
  store i8 0, ptr %2, align 2
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 65
  %9 = load i8, ptr %8, align 1, !range !13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 61
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0) #18
  br label %16

16:                                               ; preds = %11, %5
  tail call void @mmc_retune_disable(ptr noundef %0) #18
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %18 = load i32, ptr %17, align 8
  %19 = trunc i32 %18 to i8
  %20 = lshr i8 %19, 4
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 4
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 3
  store i8 2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 6
  store i8 0, ptr %24, align 1
  %25 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 7
  store i8 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 9
  store i8 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 10
  store i8 0, ptr %27, align 1
  %28 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1048576
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mmc_host_ops, ptr %34, i32 0, i32 18
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  tail call void %36(ptr noundef %0, ptr noundef %6) #18
  br label %39

39:                                               ; preds = %38, %32, %16
  %40 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.mmc_host_ops, ptr %41, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %0, ptr noundef %6) #18
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #18
  br label %44

44:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_pwrseq_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mmc_attach_bus(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 45
  store ptr %1, ptr %3, align 32
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mmc_detach_bus(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 45
  store ptr null, ptr %2, align 32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_mmc_detect_change(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  br i1 %2, label %4, label %12

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 12
  %11 = load ptr, ptr %10, align 8
  tail call void @pm_wakeup_ws_event(ptr noundef %11, i32 noundef 5000, i1 noundef zeroext false) #18
  br label %12

12:                                               ; preds = %9, %4, %3
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 43
  store i32 1, ptr %13, align 16
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 42
  %15 = load ptr, ptr @system_freezable_wq, align 4
  %16 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %14, i32 noundef %1) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_detect_change(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 12
  %9 = load ptr, ptr %8, align 8
  tail call void @pm_wakeup_ws_event(ptr noundef %9, i32 noundef 5000, i1 noundef zeroext false) #18
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 43
  store i32 1, ptr %11, align 16
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 42
  %13 = load ptr, ptr @system_freezable_wq, align 4
  %14 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %13, ptr noundef %12, i32 noundef %1) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @mmc_init_erase(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.ctpop.i32(i32 %3) #18, !range !20
  %6 = icmp eq i32 %5, 1
  %7 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true), !range !20
  %8 = select i1 %6, i32 %7, i32 0
  %9 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 10
  store i32 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 23
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 11
  store i32 %15, ptr %18, align 4
  %19 = tail call i32 @llvm.cttz.i32(i32 %15, i1 true), !range !20
  store i32 %19, ptr %9, align 8
  br label %53

20:                                               ; preds = %13, %1
  br i1 %4, label %51, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -9
  %27 = shl i32 %23, %26
  %28 = icmp ult i32 %27, 262144
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 11
  store i32 1024, ptr %30, align 4
  br label %40

31:                                               ; preds = %21
  %32 = icmp ult i32 %27, 1048576
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 11
  store i32 2048, ptr %34, align 4
  br label %40

35:                                               ; preds = %31
  %36 = icmp ult i32 %27, 2097152
  %37 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 11
  br i1 %36, label %38, label %39

38:                                               ; preds = %35
  store i32 4096, ptr %37, align 4
  br label %40

39:                                               ; preds = %35
  store i32 8192, ptr %37, align 4
  br label %40

40:                                               ; preds = %39, %38, %33, %29
  %41 = phi i32 [ 2048, %33 ], [ 8192, %39 ], [ 4096, %38 ], [ 1024, %29 ]
  %42 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 11
  %43 = icmp ult i32 %41, %3
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 %3, ptr %42, align 4
  br label %53

45:                                               ; preds = %40
  %46 = urem i32 %41, %3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = add i32 %41, %3
  %50 = sub i32 %49, %46
  store i32 %50, ptr %42, align 4
  br label %53

51:                                               ; preds = %20
  %52 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 11
  store i32 0, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %48, %45, %44, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_erase(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = add i32 %2, %1
  %6 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 2
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %105, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %105, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 1
  %18 = icmp ugt i32 %3, 1
  %19 = and i1 %18, %17
  br i1 %19, label %105, label %20

20:                                               ; preds = %14
  %21 = icmp ne i32 %16, 0
  %22 = icmp sgt i32 %3, -1
  %23 = or i1 %22, %21
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 2
  %26 = load i8, ptr %25, align 2
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %105, label %29

29:                                               ; preds = %24, %20
  %30 = and i32 %3, 32769
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %31, %21
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 2
  %35 = load i8, ptr %34, align 2
  %36 = and i8 %35, 16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %105, label %38

38:                                               ; preds = %33, %29
  switch i32 %3, label %78 [
    i32 -2147483648, label %39
    i32 0, label %45
  ]

39:                                               ; preds = %38
  %40 = urem i32 %1, %12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %105

42:                                               ; preds = %39
  %43 = urem i32 %2, %12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %78, label %105

45:                                               ; preds = %38
  %46 = tail call i32 @llvm.ctpop.i32(i32 %12) #18, !range !20
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = add i32 %1, -1
  %50 = add i32 %12, -1
  %51 = or i32 %50, %49
  %52 = add i32 %51, 1
  %53 = sub i32 %52, %1
  %54 = icmp ult i32 %53, %2
  %55 = sub i32 %2, %53
  %56 = sub i32 0, %12
  %57 = and i32 %55, %56
  br i1 %54, label %72, label %105

58:                                               ; preds = %45
  %59 = urem i32 %1, %12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = sub i32 %12, %59
  %63 = icmp ult i32 %62, %2
  br i1 %63, label %64, label %105

64:                                               ; preds = %61
  %65 = add i32 %62, %1
  %66 = sub i32 %2, %62
  br label %67

67:                                               ; preds = %64, %58
  %68 = phi i32 [ %65, %64 ], [ %1, %58 ]
  %69 = phi i32 [ %66, %64 ], [ %2, %58 ]
  %70 = urem i32 %69, %12
  %71 = sub i32 %69, %70
  br label %72

72:                                               ; preds = %67, %48
  %73 = phi i32 [ %52, %48 ], [ %68, %67 ]
  %74 = phi i32 [ %57, %48 ], [ %71, %67 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %105, label %76

76:                                               ; preds = %72
  %77 = add i32 %74, %73
  br label %80

78:                                               ; preds = %42, %38
  %79 = icmp eq i32 %2, 0
  br i1 %79, label %105, label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %74, %76 ], [ %2, %78 ]
  %82 = phi i32 [ %77, %76 ], [ %5, %78 ]
  %83 = phi i32 [ %73, %76 ], [ %1, %78 ]
  %84 = icmp ugt i32 %82, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %80
  %86 = add i32 %82, -1
  %87 = urem i32 %83, %12
  %88 = sub i32 %12, %87
  br i1 %31, label %102, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 12
  %91 = load i32, ptr %90, align 8
  %92 = icmp ne i32 %91, 0
  %93 = icmp ugt i32 %81, %88
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = add i32 %88, %83
  %97 = add i32 %96, -1
  %98 = tail call fastcc i32 @mmc_do_erase(ptr noundef %0, i32 noundef %83, i32 noundef %97, i32 noundef %3)
  %99 = icmp eq i32 %98, 0
  %100 = icmp ugt i32 %86, %96
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %102, label %105

102:                                              ; preds = %95, %89, %85
  %103 = phi i32 [ %83, %85 ], [ %96, %95 ], [ %83, %89 ]
  %104 = tail call fastcc i32 @mmc_do_erase(ptr noundef %0, i32 noundef %103, i32 noundef %86, i32 noundef %3)
  br label %105

105:                                              ; preds = %102, %95, %80, %78, %72, %61, %48, %42, %39, %33, %24, %14, %10, %4
  %106 = phi i32 [ %104, %102 ], [ -95, %4 ], [ -95, %10 ], [ -95, %14 ], [ -95, %24 ], [ -95, %33 ], [ -22, %42 ], [ -22, %39 ], [ 0, %78 ], [ -22, %80 ], [ %98, %95 ], [ 0, %48 ], [ 0, %61 ], [ 0, %72 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_do_erase(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.mmc_request, align 4
  %6 = alloca %struct.mmc_request, align 4
  %7 = alloca %struct.mmc_request, align 4
  %8 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #18
  %9 = getelementptr inbounds i8, ptr %8, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %9, i8 0, i32 16, i1 false)
  %10 = load ptr, ptr %0, align 8
  tail call void @mmc_retune_hold(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = lshr i32 %2, %12
  %16 = lshr i32 %1, %12
  %17 = sub nsw i32 %15, %16
  %18 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  br label %32

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = sub i32 %2, %1
  br label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = udiv i32 %2, %28
  %30 = udiv i32 %1, %28
  %31 = sub i32 %29, %30
  br label %32

32:                                               ; preds = %26, %24, %14
  %33 = phi i32 [ %19, %14 ], [ 1, %24 ], [ %22, %26 ]
  %34 = phi i32 [ %17, %14 ], [ %25, %24 ], [ %31, %26 ]
  %35 = add i32 %34, 1
  %36 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  %40 = shl i32 %1, 9
  %41 = shl i32 %2, 9
  %42 = select i1 %39, i32 %41, i32 %2
  %43 = select i1 %39, i32 %40, i32 %1
  %44 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %45 = icmp eq i32 %33, 1
  %46 = select i1 %45, i32 32, i32 35
  store i32 %46, ptr %8, align 4
  %47 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 1
  store i32 %43, ptr %47, align 4
  %48 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 3
  store i32 149, ptr %48, align 4
  %49 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %7) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %7, i8 0, i32 68, i1 false) #18
  %50 = getelementptr inbounds %struct.mmc_host, ptr %49, i32 0, i32 29
  %51 = load i16, ptr %50, align 8
  %52 = and i16 %51, 2
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %55, !prof !11

54:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %55

55:                                               ; preds = %54, %32
  %56 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %56, i8 0, i32 16, i1 false) #18
  %57 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 4
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.mmc_request, ptr %7, i32 0, i32 1
  store ptr %8, ptr %58, align 4
  %59 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 7
  store ptr null, ptr %59, align 4
  call void @mmc_wait_for_req(ptr noundef %49, ptr noundef nonnull %7) #18
  %60 = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %7) #18
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = load i32, ptr %56, align 4
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %61, i32 noundef %64) #19
  br label %115

66:                                               ; preds = %55
  %67 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %67, i8 0, i32 40, i1 false)
  %68 = load i32, ptr %44, align 8
  %69 = icmp eq i32 %68, 1
  %70 = select i1 %69, i32 33, i32 36
  store i32 %70, ptr %8, align 4
  store i32 %42, ptr %47, align 4
  store i32 149, ptr %48, align 4
  %71 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %6) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %6, i8 0, i32 68, i1 false) #18
  %72 = getelementptr inbounds %struct.mmc_host, ptr %71, i32 0, i32 29
  %73 = load i16, ptr %72, align 8
  %74 = and i16 %73, 2
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %77, !prof !11

76:                                               ; preds = %66
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %77

77:                                               ; preds = %76, %66
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %56, i8 0, i32 16, i1 false) #18
  store i32 0, ptr %57, align 4
  %78 = getelementptr inbounds %struct.mmc_request, ptr %6, i32 0, i32 1
  store ptr %8, ptr %78, align 4
  store ptr null, ptr %59, align 4
  call void @mmc_wait_for_req(ptr noundef %71, ptr noundef nonnull %6) #18
  %79 = load i32, ptr %60, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %6) #18
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i32, ptr %56, align 4
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %79, i32 noundef %82) #19
  br label %115

84:                                               ; preds = %77
  %85 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %85, i8 0, i32 40, i1 false)
  store i32 38, ptr %8, align 4
  store i32 %3, ptr %47, align 4
  %86 = call fastcc i32 @mmc_erase_timeout(ptr noundef %0, i32 noundef %3, i32 noundef %35)
  %87 = load ptr, ptr %0, align 8
  %88 = call zeroext i1 @mmc_prepare_busy_cmd(ptr noundef %87, ptr noundef nonnull %8, i32 noundef %86) #18
  %89 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false) #18
  %90 = getelementptr inbounds %struct.mmc_host, ptr %89, i32 0, i32 29
  %91 = load i16, ptr %90, align 8
  %92 = and i16 %91, 2
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %95, !prof !11

94:                                               ; preds = %84
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %95

95:                                               ; preds = %94, %84
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %56, i8 0, i32 16, i1 false) #18
  store i32 0, ptr %57, align 4
  %96 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 1
  store ptr %8, ptr %96, align 4
  store ptr null, ptr %59, align 4
  call void @mmc_wait_for_req(ptr noundef %89, ptr noundef nonnull %5) #18
  %97 = load i32, ptr %60, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #18
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i32, ptr %56, align 4
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %97, i32 noundef %100) #19
  br label %115

102:                                              ; preds = %95
  %103 = load ptr, ptr %0, align 8
  %104 = getelementptr inbounds %struct.mmc_host, ptr %103, i32 0, i32 16
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = and i32 %105, 512
  %110 = icmp eq i32 %109, 0
  %111 = xor i1 %88, true
  %112 = select i1 %110, i1 true, i1 %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i32 @mmc_poll_for_busy(ptr noundef %0, i32 noundef %86, i1 noundef zeroext false, i32 noundef 1) #18
  br label %115

115:                                              ; preds = %113, %108, %102, %99, %81, %63
  %116 = phi i32 [ -5, %63 ], [ -5, %81 ], [ -5, %99 ], [ 0, %102 ], [ %114, %113 ], [ 0, %108 ]
  %117 = load ptr, ptr %0, align 8
  call void @mmc_retune_release(ptr noundef %117) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #18
  ret i32 %116
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_can_erase(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 2
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, 32
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi i32 [ 0, %10 ], [ 1, %6 ]
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_can_trim(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 2
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 4096
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi i32 [ 0, %11 ], [ 1, %6 ]
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_can_discard(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 76
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_can_sanitize(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 2
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 4096
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 2
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, 32
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16, %6
  %21 = lshr i8 %3, 6
  %22 = and i8 %21, 1
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %20, %16, %11
  %25 = phi i32 [ %23, %20 ], [ 0, %11 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_can_secure_erase_trim(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 2
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi i32 [ 0, %11 ], [ 1, %6 ]
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_erase_group_aligned(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #10 {
  %4 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = urem i32 %1, %5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = urem i32 %2, %5
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %10, %7, %3
  %15 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_calc_max_discard(ptr nocapture noundef %0) #11 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  br label %34

13:                                               ; preds = %5, %1
  %14 = tail call fastcc i32 @mmc_do_calc_max_discard(ptr noundef %0, i32 noundef 0)
  %15 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 2
  %16 = load i8, ptr %15, align 2
  %17 = and i8 %16, 16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 4096
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = tail call fastcc i32 @mmc_do_calc_max_discard(ptr noundef %0, i32 noundef 1)
  %26 = add i32 %14, -1
  %27 = icmp ult i32 %26, %25
  %28 = select i1 %27, i32 %14, i32 %25
  br label %34

29:                                               ; preds = %19, %13
  %30 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %14, %31
  %33 = select i1 %32, i32 0, i32 %14
  br label %34

34:                                               ; preds = %29, %24, %10
  %35 = phi i32 [ %12, %10 ], [ %33, %29 ], [ %28, %24 ]
  ret i32 %35
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_do_calc_max_discard(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 26
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 60000, i32 %5
  %8 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = lshr i32 -1, %9
  %13 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, %9
  br label %30

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  br label %30

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = udiv i32 -1, %25
  %27 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = udiv i32 %28, %25
  br label %30

30:                                               ; preds = %23, %20, %11
  %31 = phi i32 [ %12, %11 ], [ -1, %20 ], [ %26, %23 ]
  %32 = phi i32 [ %15, %11 ], [ %22, %20 ], [ %29, %23 ]
  %33 = icmp eq i32 %31, 0
  %34 = add i32 %31, -1
  br label %35

35:                                               ; preds = %66, %30
  %36 = phi i32 [ 0, %30 ], [ %69, %66 ]
  %37 = phi i32 [ 0, %30 ], [ %68, %66 ]
  %38 = icmp ult i32 %34, %36
  %39 = select i1 %33, i1 true, i1 %38
  br i1 %39, label %71, label %40

40:                                               ; preds = %35
  %41 = add i32 %36, 1
  %42 = tail call fastcc i32 @mmc_erase_timeout(ptr noundef %0, i32 noundef %1, i32 noundef %41)
  %43 = icmp ugt i32 %41, %32
  %44 = icmp ugt i32 %42, %7
  %45 = select i1 %43, i1 %44, i1 false
  %46 = icmp ult i32 %42, %37
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %66, label %48

48:                                               ; preds = %58, %40
  %49 = phi i32 [ %60, %58 ], [ %42, %40 ]
  %50 = phi i32 [ %51, %58 ], [ 1, %40 ]
  %51 = shl i32 %50, 1
  %52 = icmp eq i32 %51, 0
  %53 = icmp ult i32 %31, %51
  %54 = select i1 %52, i1 true, i1 %53
  %55 = sub i32 %31, %51
  %56 = icmp ult i32 %55, %36
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %48
  %59 = add i32 %51, %36
  %60 = tail call fastcc i32 @mmc_erase_timeout(ptr noundef %0, i32 noundef %1, i32 noundef %59)
  %61 = icmp ugt i32 %59, %32
  %62 = icmp ugt i32 %60, %7
  %63 = select i1 %61, i1 %62, i1 false
  %64 = icmp ult i32 %60, %49
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %66, label %48

66:                                               ; preds = %58, %48, %40
  %67 = phi i32 [ 0, %40 ], [ %50, %48 ], [ %50, %58 ]
  %68 = phi i32 [ %37, %40 ], [ %49, %48 ], [ %49, %58 ]
  %69 = add i32 %67, %36
  %70 = icmp eq i32 %67, 0
  br i1 %70, label %71, label %35

71:                                               ; preds = %66, %35
  %72 = phi i32 [ %69, %66 ], [ %36, %35 ]
  switch i32 %72, label %75 [
    i32 0, label %91
    i32 1, label %73
  ]

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 12
  store i32 1, ptr %74, align 8
  br label %77

75:                                               ; preds = %71
  %76 = add i32 %72, -1
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ 1, %73 ], [ %76, %75 ]
  br i1 %10, label %81, label %79

79:                                               ; preds = %77
  %80 = shl i32 %78, %9
  br label %91

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %83 = load i32, ptr %82, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = add nuw i32 %78, 1
  br label %91

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 9
  %89 = load i32, ptr %88, align 4
  %90 = mul i32 %89, %78
  br label %91

91:                                               ; preds = %87, %85, %79, %71
  %92 = phi i32 [ %72, %71 ], [ %80, %79 ], [ %86, %85 ], [ %90, %87 ]
  ret i32 %92
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mmc_card_is_blockaddr(ptr noundef readonly %0) #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp ne i32 %6, 0
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i1 [ %7, %3 ], [ false, %1 ]
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_set_blocklen(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.mmc_request, align 4
  %4 = alloca %struct.mmc_command, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  %5 = getelementptr inbounds i8, ptr %4, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 16, i1 false)
  %6 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 28, i32 7
  %13 = load i8, ptr %12, align 4
  switch i8 %13, label %14 [
    i8 8, label %33
    i8 10, label %33
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 28, i32 10
  %16 = load i8, ptr %15, align 1, !range !13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  store i32 16, ptr %4, align 4
  %19 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  store i32 149, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false) #18
  %21 = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 29
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 2
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %26, !prof !11

25:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 626, i32 noundef 9, ptr noundef null) #18
  br label %26

26:                                               ; preds = %25, %18
  %27 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %27, i8 0, i32 16, i1 false) #18
  %28 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 4
  store i32 5, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  store ptr %4, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 7
  store ptr null, ptr %30, align 4
  call void @mmc_wait_for_req(ptr noundef %11, ptr noundef nonnull %3) #18
  %31 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #18
  br label %33

33:                                               ; preds = %26, %14, %10, %10, %2
  %34 = phi i32 [ %32, %26 ], [ 0, %14 ], [ 0, %10 ], [ 0, %2 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_hw_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 32
  %4 = getelementptr inbounds %struct.mmc_bus_ops, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0) #18
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %14, %12 ], [ %10, %8 ]
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %16, i32 noundef %6) #19
  br label %18

18:                                               ; preds = %15, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_sw_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 32
  %4 = getelementptr inbounds %struct.mmc_bus_ops, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %0) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %16, %14 ], [ %12, %10 ]
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %18, i32 noundef %8) #19
  br label %20

20:                                               ; preds = %17, %7, %1
  %21 = phi i32 [ -95, %1 ], [ %8, %17 ], [ 0, %7 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_mmc_detect_card_removed(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 45
  %12 = load ptr, ptr %11, align 32
  %13 = getelementptr inbounds %struct.mmc_bus_ops, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mmc_host_ops, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %17
  %24 = tail call i32 %21(ptr noundef %0) #18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 12
  %33 = load ptr, ptr %32, align 8
  tail call void @pm_wakeup_ws_event(ptr noundef %33, i32 noundef 5000, i1 noundef zeroext false) #18
  br label %34

34:                                               ; preds = %31, %26
  %35 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 43
  store i32 1, ptr %35, align 16
  %36 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 42
  %37 = load ptr, ptr @system_freezable_wq, align 4
  %38 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %37, ptr noundef %36, i32 noundef 20) #18
  br label %44

39:                                               ; preds = %10
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.mmc_card, ptr %40, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 16
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %39, %34, %23, %17, %5, %1
  %45 = phi i32 [ 1, %5 ], [ 1, %1 ], [ 0, %17 ], [ 0, %23 ], [ 0, %34 ], [ %15, %39 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_detect_card_removed(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 29
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2120, i32 noundef 9, ptr noundef null) #18
  br label %9

9:                                                ; preds = %8, %1
  %10 = icmp eq ptr %3, null
  br i1 %10, label %80, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %80

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 16
  %20 = lshr exact i32 %19, 4
  %21 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 43
  %22 = load i32, ptr %21, align 16
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %13, 32
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %80, label %27

27:                                               ; preds = %16
  %28 = icmp eq i32 %19, 0
  store i32 0, ptr %21, align 16
  br i1 %28, label %29, label %80

29:                                               ; preds = %27
  %30 = load ptr, ptr %2, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %71, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.mmc_card, ptr %30, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 45
  %39 = load ptr, ptr %38, align 32
  %40 = getelementptr inbounds %struct.mmc_bus_ops, ptr %39, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %0) #18
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.mmc_host_ops, ptr %46, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %80, label %50

50:                                               ; preds = %44
  %51 = tail call i32 %48(ptr noundef %0) #18
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load i32, ptr %12, align 8
  %55 = and i32 %54, 32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 12
  %59 = load ptr, ptr %58, align 8
  tail call void @pm_wakeup_ws_event(ptr noundef %59, i32 noundef 5000, i1 noundef zeroext false) #18
  br label %60

60:                                               ; preds = %57, %53
  store i32 1, ptr %21, align 16
  %61 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 42
  %62 = load ptr, ptr @system_freezable_wq, align 4
  %63 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %62, ptr noundef %61, i32 noundef 20) #18
  br label %80

64:                                               ; preds = %37
  %65 = load ptr, ptr %2, align 8
  %66 = getelementptr inbounds %struct.mmc_card, ptr %65, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = or i32 %67, 16
  store i32 %68, ptr %66, align 4
  %69 = load i32, ptr %12, align 8
  %70 = and i32 %69, 32
  br label %71

71:                                               ; preds = %64, %32, %29
  %72 = phi i32 [ %70, %64 ], [ %24, %32 ], [ %24, %29 ]
  %73 = phi i32 [ %42, %64 ], [ 1, %32 ], [ 1, %29 ]
  %74 = icmp eq i32 %72, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 42
  %77 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %76) #18
  store i32 1, ptr %21, align 16
  %78 = load ptr, ptr @system_freezable_wq, align 4
  %79 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %78, ptr noundef %76, i32 noundef 0) #18
  br label %80

80:                                               ; preds = %75, %71, %60, %50, %44, %27, %16, %11, %9
  %81 = phi i32 [ 1, %9 ], [ 0, %11 ], [ %20, %27 ], [ %73, %75 ], [ %73, %71 ], [ 0, %44 ], [ 0, %50 ], [ 0, %60 ], [ %20, %16 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_card_alternative_gpt_sector(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 268435456
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21
  %10 = load i8, ptr %9, align 8
  %11 = icmp ult i8 %10, 3
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = icmp eq ptr %0, null
  %17 = or i1 %16, %15
  br i1 %17, label %38, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 256
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 61
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = mul nsw i32 %31, -512
  %33 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 19
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, -1
  %36 = add i32 %35, %32
  %37 = zext i32 %36 to i64
  store i64 %37, ptr %1, align 8
  br label %38

38:                                               ; preds = %28, %23, %18, %12, %8, %2
  %39 = phi i32 [ 0, %28 ], [ -95, %2 ], [ -2, %23 ], [ -2, %18 ], [ -2, %12 ], [ -2, %8 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_rescan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -676
  %3 = getelementptr i8, ptr %0, i32 -72
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %156

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -140
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 -68
  %13 = load i32, ptr %12, align 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %156

15:                                               ; preds = %11, %6
  %16 = getelementptr i8, ptr %0, i32 -68
  store i32 1, ptr %16, align 32
  %17 = getelementptr i8, ptr %0, i32 -32
  %18 = load i8, ptr %17, align 4, !range !13
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %0, i32 -192
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mmc_host_ops, ptr %22, i32 0, i32 21
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = tail call i32 @__mmc_claim_host(ptr noundef %2, ptr noundef null, ptr noundef null) #18
  %28 = load ptr, ptr %21, align 4
  %29 = getelementptr inbounds %struct.mmc_host_ops, ptr %28, i32 0, i32 21
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %2) #18
  tail call void @mmc_release_host(ptr noundef %2)
  store i8 0, ptr %17, align 4
  br label %31

31:                                               ; preds = %26, %20, %15
  %32 = getelementptr i8, ptr %0, i32 60
  %33 = load ptr, ptr %32, align 32
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %0, i32 44
  store i32 0, ptr %36, align 16
  br label %43

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.mmc_bus_ops, ptr %33, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %2) #18
  %40 = load ptr, ptr %32, align 32
  %41 = getelementptr i8, ptr %0, i32 44
  store i32 0, ptr %41, align 16
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %149

43:                                               ; preds = %37, %35
  %44 = tail call i32 @__mmc_claim_host(ptr noundef %2, ptr noundef null, ptr noundef null) #18
  %45 = load i32, ptr %7, align 8
  %46 = and i32 %45, 256
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = getelementptr i8, ptr %0, i32 -192
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.mmc_host_ops, ptr %50, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = tail call i32 %52(ptr noundef %2) #18
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void @mmc_power_off(ptr noundef %2)
  br label %148

58:                                               ; preds = %54, %48, %43
  %59 = getelementptr i8, ptr %0, i32 -80
  %60 = load i8, ptr %59, align 4
  %61 = add i8 %60, -11
  %62 = icmp ult i8 %61, 2
  br i1 %62, label %148, label %63

63:                                               ; preds = %58
  %64 = getelementptr i8, ptr %0, i32 -180
  %65 = getelementptr i8, ptr %0, i32 -184
  %66 = getelementptr i8, ptr %0, i32 -176
  %67 = getelementptr i8, ptr %0, i32 -172
  %68 = getelementptr i8, ptr %0, i32 -192
  %69 = getelementptr i8, ptr %0, i32 -136
  br label %70

70:                                               ; preds = %146, %63
  %71 = phi i32 [ 0, %63 ], [ %147, %146 ]
  %72 = getelementptr [4 x i32], ptr @freqs, i32 0, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = load i32, ptr %64, align 16
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = icmp ult i32 %71, 3
  br i1 %77, label %143, label %78

78:                                               ; preds = %76, %70
  %79 = phi i32 [ %73, %70 ], [ %74, %76 ]
  %80 = load i32, ptr %65, align 4
  %81 = tail call i32 @llvm.umax.i32(i32 %79, i32 %80)
  store i32 %81, ptr %66, align 4
  %82 = load i32, ptr %67, align 8
  tail call void @mmc_power_up(ptr noundef %2, i32 noundef %82) #18
  tail call void @mmc_pwrseq_reset(ptr noundef %2) #18
  %83 = load i32, ptr %7, align 8
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %91, label %85

85:                                               ; preds = %78
  %86 = load ptr, ptr %68, align 4
  %87 = getelementptr inbounds %struct.mmc_host_ops, ptr %86, i32 0, i32 20
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  tail call void %88(ptr noundef %2) #18
  br label %91

91:                                               ; preds = %90, %85, %78
  %92 = load i32, ptr %69, align 4
  %93 = and i32 %92, 524288
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = tail call i32 @sdio_reset(ptr noundef %2) #18
  br label %97

97:                                               ; preds = %95, %91
  %98 = tail call i32 @mmc_go_idle(ptr noundef %2) #18
  %99 = load i32, ptr %69, align 4
  %100 = and i32 %99, 2097152
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load i32, ptr %67, align 8
  %104 = tail call i32 @mmc_send_if_cond_pcie(ptr noundef %2, i32 noundef %103) #18
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %102
  %107 = load i8, ptr %59, align 4
  %108 = add i8 %107, -11
  %109 = icmp ult i8 %108, 2
  br i1 %109, label %148, label %110

110:                                              ; preds = %106
  %111 = load i32, ptr %69, align 4
  br label %112

112:                                              ; preds = %110, %97
  %113 = phi i32 [ %111, %110 ], [ %99, %97 ]
  %114 = and i32 %113, 524288
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = tail call i32 @mmc_attach_sdio(ptr noundef %2) #18
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %148, label %119

119:                                              ; preds = %116
  %120 = load i32, ptr %69, align 4
  br label %121

121:                                              ; preds = %119, %112
  %122 = phi i32 [ %120, %119 ], [ %113, %112 ]
  %123 = and i32 %122, 2097152
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = tail call i32 @mmc_attach_sd(ptr noundef %2) #18
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %148, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %69, align 4
  br label %130

130:                                              ; preds = %128, %121
  %131 = phi i32 [ %129, %128 ], [ %122, %121 ]
  %132 = and i32 %131, 4194304
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = tail call i32 @mmc_attach_mmc(ptr noundef %2) #18
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %134, %130, %102
  tail call void @mmc_power_off(ptr noundef %2) #18
  %138 = load i32, ptr %65, align 4
  %139 = icmp ule i32 %73, %138
  %140 = add nuw nsw i32 %71, 1
  %141 = icmp eq i32 %140, 4
  %142 = select i1 %139, i1 true, i1 %141
  br i1 %142, label %148, label %146

143:                                              ; preds = %76
  %144 = add nuw nsw i32 %71, 1
  %145 = icmp eq i32 %144, 4
  br i1 %145, label %148, label %146

146:                                              ; preds = %143, %137
  %147 = phi i32 [ %144, %143 ], [ %140, %137 ]
  br label %70

148:                                              ; preds = %143, %137, %134, %125, %116, %106, %58, %57
  tail call void @mmc_release_host(ptr noundef %2)
  br label %149

149:                                              ; preds = %148, %37
  %150 = load i32, ptr %7, align 8
  %151 = and i32 %150, 32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr @system_freezable_wq, align 4
  %155 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %154, ptr noundef %0, i32 noundef 100) #18
  br label %156

156:                                              ; preds = %153, %149, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_start_host(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 16
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 400000)
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %4, i32 %6)
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 7
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 30
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 17
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #18
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 8
  %17 = load i32, ptr %16, align 8
  tail call void @mmc_power_up(ptr noundef %0, i32 noundef %17)
  tail call void @mmc_release_host(ptr noundef %0)
  br label %18

18:                                               ; preds = %14, %1
  tail call void @mmc_gpiod_request_cd_irq(ptr noundef %0) #18
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 43
  store i32 1, ptr %19, align 16
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 42
  %21 = load ptr, ptr @system_freezable_wq, align 4
  %22 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %21, ptr noundef %20, i32 noundef 0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_gpiod_request_cd_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__mmc_stop_host(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %0, i1 noundef zeroext false) #18
  %7 = load i32, ptr %2, align 4
  tail call void @disable_irq(i32 noundef %7) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 30
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 42
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_set_cd_wake(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_stop_host(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 44
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %0, i1 noundef zeroext false) #18
  %7 = load i32, ptr %2, align 4
  tail call void @disable_irq(i32 noundef %7) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 30
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 42
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #18
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 51
  store i32 0, ptr %12, align 32
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 45
  %14 = load ptr, ptr %13, align 32
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %14, align 4
  tail call void %17(ptr noundef %0) #18
  %18 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #18
  store ptr null, ptr %13, align 32
  br label %21

19:                                               ; preds = %8
  %20 = tail call i32 @__mmc_claim_host(ptr noundef %0, ptr noundef null, ptr noundef null) #18
  br label %21

21:                                               ; preds = %19, %16
  tail call void @mmc_power_off(ptr noundef %0)
  tail call void @mmc_release_host(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mmc_exit() #12 section ".exit.text" {
  tail call void @sdio_unregister_bus() #18
  tail call void @mmc_unregister_host_class() #18
  tail call void @mmc_unregister_bus() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_bus() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_unregister_host_class() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_unregister_bus() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mmc_init() #12 section ".init.text" {
  %1 = tail call i32 @mmc_register_bus() #18
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = tail call i32 @mmc_register_host_class() #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 @sdio_register_bus() #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  tail call void @mmc_unregister_host_class() #18
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi i32 [ %4, %3 ], [ %7, %9 ]
  tail call void @mmc_unregister_bus() #18
  br label %12

12:                                               ; preds = %10, %6, %0
  %13 = phi i32 [ %11, %10 ], [ %1, %0 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mmc_request_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #18
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %63

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 25
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 24
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 13
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 15
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 14
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 16
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 17
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 18
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 19
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 20
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 21
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 22
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.trace_event_raw_mmc_request_start, ptr %5, i32 0, i32 23
  %61 = load i32, ptr %60, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61) #18
  %62 = tail call i32 @trace_handle_return(ptr noundef %9) #18
  br label %63

63:                                               ; preds = %8, %3
  %64 = phi i32 [ %62, %8 ], [ %6, %3 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mmc_request_done(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #18
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %77

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 23
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 22
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 3, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 3, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 3, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 7, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 7, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 7, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 9
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 11, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 11, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 11, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 12
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 13
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 14
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 15
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 16
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 17
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 18
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 19
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 20
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.trace_event_raw_mmc_request_done, ptr %5, i32 0, i32 21
  %75 = load i32, ptr %74, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75) #18
  %76 = tail call i32 @trace_handle_return(ptr noundef %9) #18
  br label %77

77:                                               ; preds = %8, %3
  %78 = phi i32 [ %76, %8 ], [ %6, %3 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_wait_done(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_request, ptr %0, i32 0, i32 4
  tail call void @complete(ptr noundef %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_ws_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @mmc_erase_timeout(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #17 {
  %4 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = icmp eq i32 %1, 1
  br i1 %8, label %97, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 23, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = mul i32 %11, %2
  %15 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 23, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, %14
  br label %20

18:                                               ; preds = %9
  %19 = mul i32 %2, 250
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ %17, %13 ], [ %19, %18 ]
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 1000) #18
  br label %97

23:                                               ; preds = %3
  switch i32 %1, label %36 [
    i32 3, label %28
    i32 1, label %24
  ]

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21
  %26 = load i8, ptr %25, align 8
  %27 = icmp ugt i8 %26, 5
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %23
  %29 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 24
  %30 = load i32, ptr %29, align 4
  br label %86

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %47, label %41

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %47, label %44

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 24
  %43 = load i32, ptr %42, align 4
  br label %86

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 21
  %46 = load i32, ptr %45, align 8
  br label %73

47:                                               ; preds = %36, %31
  %48 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 6
  %49 = load i32, ptr %48, align 8
  %50 = shl i32 10, %49
  %51 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 3
  %52 = load i16, ptr %51, align 4
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = icmp ult i32 %55, 1000000
  %57 = mul i32 %55, %50
  %58 = udiv i32 %57, 1000
  %59 = udiv i32 %55, 1000
  %60 = mul i32 %59, %50
  %61 = select i1 %56, i32 %58, i32 %60
  %62 = mul i32 %50, 2000
  %63 = mul i32 %62, %53
  %64 = load ptr, ptr %0, align 8
  %65 = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 28
  %66 = load i32, ptr %65, align 4
  %67 = udiv i32 %66, 1000
  %68 = udiv i32 %63, %67
  %69 = add i32 %61, %68
  %70 = udiv i32 %69, 1000
  %71 = icmp ult i32 %69, 1000
  %72 = select i1 %71, i32 1, i32 %70
  br label %73

73:                                               ; preds = %47, %44
  %74 = phi i32 [ %46, %44 ], [ %72, %47 ]
  %75 = icmp sgt i32 %1, -1
  br i1 %75, label %86, label %76

76:                                               ; preds = %73
  %77 = icmp eq i32 %1, -2147483648
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 23
  %80 = load i32, ptr %79, align 8
  %81 = mul i32 %80, %74
  br label %86

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 22
  %84 = load i32, ptr %83, align 4
  %85 = mul i32 %84, %74
  br label %86

86:                                               ; preds = %82, %78, %73, %41, %28
  %87 = phi i32 [ %81, %78 ], [ %85, %82 ], [ %74, %73 ], [ %30, %28 ], [ %43, %41 ]
  %88 = mul i32 %87, %2
  %89 = load ptr, ptr %0, align 8
  %90 = getelementptr inbounds %struct.mmc_host, ptr %89, i32 0, i32 16
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 16
  %93 = icmp ne i32 %92, 0
  %94 = icmp ult i32 %88, 1000
  %95 = select i1 %93, i1 %94, i1 false
  %96 = select i1 %95, i32 1000, i32 %88
  br label %97

97:                                               ; preds = %86, %20, %7
  %98 = phi i32 [ %96, %86 ], [ %22, %20 ], [ 250, %7 ]
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_prepare_busy_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_poll_for_busy(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_go_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_if_cond_pcie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_attach_sdio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_attach_sd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_attach_mmc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_pwrseq_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_register_bus() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_register_host_class() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_bus() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind readonly }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 523531}
!13 = !{i8 0, i8 2}
!14 = !{i64 2154004071}
!15 = !{i64 2154004233}
!16 = !{i64 2153987622}
!17 = !{i64 2153987786}
!18 = !{i64 2155082884}
!19 = !{i64 2155086062}
!20 = !{i32 0, i32 33}
