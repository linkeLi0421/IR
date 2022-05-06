; ModuleID = '/llk/IR/block/blk-mq.c_pt.bc'
source_filename = "../block/blk-mq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_freeze_queue_start:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_freeze_queue_start\22\09\09\09\09\09"
module asm "__kstrtabns_blk_freeze_queue_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_freeze_queue_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_freeze_queue_wait\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_freeze_queue_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_freeze_queue_wait_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_freeze_queue_wait_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_freeze_queue_wait_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_freeze_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_freeze_queue\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_freeze_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_unfreeze_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_unfreeze_queue\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_unfreeze_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_quiesce_queue_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_quiesce_queue_nowait\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_quiesce_queue_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_wait_quiesce_done:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_wait_quiesce_done\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_wait_quiesce_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_quiesce_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_quiesce_queue\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_quiesce_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_unquiesce_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_unquiesce_queue\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_unquiesce_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_init\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_alloc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_alloc_request\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_alloc_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_alloc_request_hctx:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_alloc_request_hctx\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_alloc_request_hctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_free_request:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_free_request\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_free_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_dump_rq_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_dump_rq_flags\22\09\09\09\09\09"
module asm "__kstrtabns_blk_dump_rq_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_update_request:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_update_request\22\09\09\09\09\09"
module asm "__kstrtabns_blk_update_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blk_mq_end_request:\09\09\09\09\09"
module asm "\09.asciz \09\22__blk_mq_end_request\22\09\09\09\09\09"
module asm "__kstrtabns___blk_mq_end_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_end_request:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_end_request\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_end_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_end_request_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_end_request_batch\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_end_request_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_complete_request_remote:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_complete_request_remote\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_complete_request_remote:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_complete_request:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_complete_request\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_complete_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_start_request:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_start_request\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_start_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_execute_rq_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_execute_rq_nowait\22\09\09\09\09\09"
module asm "__kstrtabns_blk_execute_rq_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_execute_rq:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_execute_rq\22\09\09\09\09\09"
module asm "__kstrtabns_blk_execute_rq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_requeue_request:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_requeue_request\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_requeue_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_kick_requeue_list:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_kick_requeue_list\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_kick_requeue_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_delay_kick_requeue_list:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_delay_kick_requeue_list\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_delay_kick_requeue_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_queue_inflight:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_queue_inflight\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_queue_inflight:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_flush_busy_ctxs:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_flush_busy_ctxs\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_flush_busy_ctxs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_delay_run_hw_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_delay_run_hw_queue\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_delay_run_hw_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_run_hw_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_run_hw_queue\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_run_hw_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_run_hw_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_run_hw_queues\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_run_hw_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_delay_run_hw_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_delay_run_hw_queues\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_delay_run_hw_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_queue_stopped:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_queue_stopped\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_queue_stopped:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_stop_hw_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_stop_hw_queue\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_stop_hw_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_stop_hw_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_stop_hw_queues\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_stop_hw_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_start_hw_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_start_hw_queue\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_start_hw_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_start_hw_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_start_hw_queues\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_start_hw_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_start_stopped_hw_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_start_stopped_hw_queue\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_start_stopped_hw_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_start_stopped_hw_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_start_stopped_hw_queues\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_start_stopped_hw_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_insert_cloned_request:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_insert_cloned_request\22\09\09\09\09\09"
module asm "__kstrtabns_blk_insert_cloned_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_unprep_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_unprep_clone\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_unprep_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_prep_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_prep_clone\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_prep_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_steal_bios:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_steal_bios\22\09\09\09\09\09"
module asm "__kstrtabns_blk_steal_bios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_init_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_init_queue\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_init_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blk_mq_alloc_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22__blk_mq_alloc_disk\22\09\09\09\09\09"
module asm "__kstrtabns___blk_mq_alloc_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_init_allocated_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_init_allocated_queue\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_init_allocated_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_alloc_tag_set:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_alloc_tag_set\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_alloc_tag_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_alloc_sq_tag_set:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_alloc_sq_tag_set\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_alloc_sq_tag_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_free_tag_set:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_free_tag_set\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_free_tag_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_update_nr_hw_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_update_nr_hw_queues\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_update_nr_hw_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_rq_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_rq_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_rq_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.llist_head = type { ptr }
%struct.mq_inflight = type { ptr, [2 x i32] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.66, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.72, %union.anon.73, %union.anon.74, %union.anon.79, ptr, ptr }
%union.anon.66 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { %struct.rb_node }
%union.anon.74 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, %struct.list_head, ptr }
%union.anon.79 = type { i64, [8 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.1 = type { %struct.spinlock, %struct.list_head, i32, [48 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.blk_mq_hw_ctx = type { %struct.anon.1, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [16 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.blk_mq_alloc_data = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.blk_mq_ctx = type { %struct.anon, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [60 x i8] }
%struct.anon = type { %struct.spinlock, [3 x %struct.list_head], [36 x i8] }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.36, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.36 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.disk_stats = type { [4 x i64], [4 x i32], [4 x i32], [4 x i32], i32, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic_t }
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, ptr, ptr, i32, ptr, ptr, ptr, %struct.callback_head }
%struct.io_comp_batch = type { ptr, i8, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sbitmap_word = type { i32, [60 x i8], i32, [60 x i8], i32, [60 x i8] }
%struct.blk_mq_queue_data = type { ptr, i8 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [48 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.64, %struct.atomic_t }
%union.anon.2 = type { %struct.anon.3 }
%union.anon.64 = type { %struct.atomic_t }
%struct.blk_mq_ctxs = type { %struct.kobject, ptr }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.blk_flush_queue = type { i8, i8, i32, [2 x %struct.list_head], %struct.list_head, ptr, %struct.spinlock }
%struct.blk_mq_qe_pair = type { %struct.list_head, ptr, ptr }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.rq_iter_data = type { ptr, i8 }

@__kstrtab_blk_freeze_queue_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_freeze_queue_start = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_freeze_queue_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_freeze_queue_start to i32), ptr @__kstrtab_blk_freeze_queue_start, ptr @__kstrtabns_blk_freeze_queue_start }, section "___ksymtab_gpl+blk_freeze_queue_start", align 4
@__kstrtab_blk_mq_freeze_queue_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_freeze_queue_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_freeze_queue_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_freeze_queue_wait to i32), ptr @__kstrtab_blk_mq_freeze_queue_wait, ptr @__kstrtabns_blk_mq_freeze_queue_wait }, section "___ksymtab_gpl+blk_mq_freeze_queue_wait", align 4
@__kstrtab_blk_mq_freeze_queue_wait_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_freeze_queue_wait_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_freeze_queue_wait_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_freeze_queue_wait_timeout to i32), ptr @__kstrtab_blk_mq_freeze_queue_wait_timeout, ptr @__kstrtabns_blk_mq_freeze_queue_wait_timeout }, section "___ksymtab_gpl+blk_mq_freeze_queue_wait_timeout", align 4
@__kstrtab_blk_mq_freeze_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_freeze_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_freeze_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_freeze_queue to i32), ptr @__kstrtab_blk_mq_freeze_queue, ptr @__kstrtabns_blk_mq_freeze_queue }, section "___ksymtab_gpl+blk_mq_freeze_queue", align 4
@__blk_mq_unfreeze_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [15 x i8] c"block/blk-mq.c\00", align 1
@__kstrtab_blk_mq_unfreeze_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_unfreeze_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_unfreeze_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_unfreeze_queue to i32), ptr @__kstrtab_blk_mq_unfreeze_queue, ptr @__kstrtabns_blk_mq_unfreeze_queue }, section "___ksymtab_gpl+blk_mq_unfreeze_queue", align 4
@__kstrtab_blk_mq_quiesce_queue_nowait = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_quiesce_queue_nowait = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_quiesce_queue_nowait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_quiesce_queue_nowait to i32), ptr @__kstrtab_blk_mq_quiesce_queue_nowait, ptr @__kstrtabns_blk_mq_quiesce_queue_nowait }, section "___ksymtab_gpl+blk_mq_quiesce_queue_nowait", align 4
@__kstrtab_blk_mq_wait_quiesce_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_wait_quiesce_done = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_wait_quiesce_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_wait_quiesce_done to i32), ptr @__kstrtab_blk_mq_wait_quiesce_done, ptr @__kstrtabns_blk_mq_wait_quiesce_done }, section "___ksymtab_gpl+blk_mq_wait_quiesce_done", align 4
@__kstrtab_blk_mq_quiesce_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_quiesce_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_quiesce_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_quiesce_queue to i32), ptr @__kstrtab_blk_mq_quiesce_queue, ptr @__kstrtabns_blk_mq_quiesce_queue }, section "___ksymtab_gpl+blk_mq_quiesce_queue", align 4
@blk_mq_unquiesce_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_blk_mq_unquiesce_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_unquiesce_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_unquiesce_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_unquiesce_queue to i32), ptr @__kstrtab_blk_mq_unquiesce_queue, ptr @__kstrtabns_blk_mq_unquiesce_queue }, section "___ksymtab_gpl+blk_mq_unquiesce_queue", align 4
@__kstrtab_blk_rq_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_init = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_init to i32), ptr @__kstrtab_blk_rq_init, ptr @__kstrtabns_blk_rq_init }, section "___ksymtab+blk_rq_init", align 4
@__kstrtab_blk_mq_alloc_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_alloc_request = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_alloc_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_alloc_request to i32), ptr @__kstrtab_blk_mq_alloc_request, ptr @__kstrtabns_blk_mq_alloc_request }, section "___ksymtab+blk_mq_alloc_request", align 4
@blk_mq_alloc_request_hctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_blk_mq_alloc_request_hctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_alloc_request_hctx = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_alloc_request_hctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_alloc_request_hctx to i32), ptr @__kstrtab_blk_mq_alloc_request_hctx, ptr @__kstrtabns_blk_mq_alloc_request_hctx }, section "___ksymtab_gpl+blk_mq_alloc_request_hctx", align 4
@laptop_mode = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_blk_mq_free_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_free_request = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_free_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_free_request to i32), ptr @__kstrtab_blk_mq_free_request, ptr @__kstrtabns_blk_mq_free_request }, section "___ksymtab_gpl+blk_mq_free_request", align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"\016%s: dev %s: flags=%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\016  sector %llu, nr/cnr %u/%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\016  bio %p, biotail %p, len %u\0A\00", align 1
@__kstrtab_blk_dump_rq_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_dump_rq_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_dump_rq_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_dump_rq_flags to i32), ptr @__kstrtab_blk_dump_rq_flags, ptr @__kstrtabns_blk_dump_rq_flags }, section "___ksymtab+blk_dump_rq_flags", align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"request botched\00", align 1
@__kstrtab_blk_update_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_update_request = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_update_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_update_request to i32), ptr @__kstrtab_blk_update_request, ptr @__kstrtabns_blk_update_request }, section "___ksymtab_gpl+blk_update_request", align 4
@__kstrtab___blk_mq_end_request = external dso_local constant [0 x i8], align 1
@__kstrtabns___blk_mq_end_request = external dso_local constant [0 x i8], align 1
@__ksymtab___blk_mq_end_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blk_mq_end_request to i32), ptr @__kstrtab___blk_mq_end_request, ptr @__kstrtabns___blk_mq_end_request }, section "___ksymtab+__blk_mq_end_request", align 4
@__kstrtab_blk_mq_end_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_end_request = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_end_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_end_request to i32), ptr @__kstrtab_blk_mq_end_request, ptr @__kstrtabns_blk_mq_end_request }, section "___ksymtab+blk_mq_end_request", align 4
@__kstrtab_blk_mq_end_request_batch = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_end_request_batch = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_end_request_batch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_end_request_batch to i32), ptr @__kstrtab_blk_mq_end_request_batch, ptr @__kstrtabns_blk_mq_end_request_batch }, section "___ksymtab_gpl+blk_mq_end_request_batch", align 4
@__kstrtab_blk_mq_complete_request_remote = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_complete_request_remote = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_complete_request_remote = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_complete_request_remote to i32), ptr @__kstrtab_blk_mq_complete_request_remote, ptr @__kstrtabns_blk_mq_complete_request_remote }, section "___ksymtab_gpl+blk_mq_complete_request_remote", align 4
@__kstrtab_blk_mq_complete_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_complete_request = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_complete_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_complete_request to i32), ptr @__kstrtab_blk_mq_complete_request, ptr @__kstrtabns_blk_mq_complete_request }, section "___ksymtab+blk_mq_complete_request", align 4
@blk_mq_start_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_blk_mq_start_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_start_request = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_start_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_start_request to i32), ptr @__kstrtab_blk_mq_start_request, ptr @__kstrtabns_blk_mq_start_request }, section "___ksymtab+blk_mq_start_request", align 4
@__kstrtab_blk_execute_rq_nowait = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_execute_rq_nowait = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_execute_rq_nowait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_execute_rq_nowait to i32), ptr @__kstrtab_blk_execute_rq_nowait, ptr @__kstrtabns_blk_execute_rq_nowait }, section "___ksymtab_gpl+blk_execute_rq_nowait", align 4
@__kstrtab_blk_execute_rq = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_execute_rq = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_execute_rq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_execute_rq to i32), ptr @__kstrtab_blk_execute_rq, ptr @__kstrtabns_blk_execute_rq }, section "___ksymtab+blk_execute_rq", align 4
@__kstrtab_blk_mq_requeue_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_requeue_request = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_requeue_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_requeue_request to i32), ptr @__kstrtab_blk_mq_requeue_request, ptr @__kstrtabns_blk_mq_requeue_request }, section "___ksymtab+blk_mq_requeue_request", align 4
@__kstrtab_blk_mq_kick_requeue_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_kick_requeue_list = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_kick_requeue_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_kick_requeue_list to i32), ptr @__kstrtab_blk_mq_kick_requeue_list, ptr @__kstrtabns_blk_mq_kick_requeue_list }, section "___ksymtab+blk_mq_kick_requeue_list", align 4
@__kstrtab_blk_mq_delay_kick_requeue_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_delay_kick_requeue_list = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_delay_kick_requeue_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_delay_kick_requeue_list to i32), ptr @__kstrtab_blk_mq_delay_kick_requeue_list, ptr @__kstrtabns_blk_mq_delay_kick_requeue_list }, section "___ksymtab+blk_mq_delay_kick_requeue_list", align 4
@__kstrtab_blk_mq_queue_inflight = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_queue_inflight = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_queue_inflight = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_queue_inflight to i32), ptr @__kstrtab_blk_mq_queue_inflight, ptr @__kstrtabns_blk_mq_queue_inflight }, section "___ksymtab_gpl+blk_mq_queue_inflight", align 4
@__kstrtab_blk_mq_flush_busy_ctxs = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_flush_busy_ctxs = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_flush_busy_ctxs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_flush_busy_ctxs to i32), ptr @__kstrtab_blk_mq_flush_busy_ctxs, ptr @__kstrtabns_blk_mq_flush_busy_ctxs }, section "___ksymtab_gpl+blk_mq_flush_busy_ctxs", align 4
@blk_mq_dispatch_rq_list.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_blk_mq_delay_run_hw_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_delay_run_hw_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_delay_run_hw_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_delay_run_hw_queue to i32), ptr @__kstrtab_blk_mq_delay_run_hw_queue, ptr @__kstrtabns_blk_mq_delay_run_hw_queue }, section "___ksymtab+blk_mq_delay_run_hw_queue", align 4
@__kstrtab_blk_mq_run_hw_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_run_hw_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_run_hw_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_run_hw_queue to i32), ptr @__kstrtab_blk_mq_run_hw_queue, ptr @__kstrtabns_blk_mq_run_hw_queue }, section "___ksymtab+blk_mq_run_hw_queue", align 4
@__kstrtab_blk_mq_run_hw_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_run_hw_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_run_hw_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_run_hw_queues to i32), ptr @__kstrtab_blk_mq_run_hw_queues, ptr @__kstrtabns_blk_mq_run_hw_queues }, section "___ksymtab+blk_mq_run_hw_queues", align 4
@__kstrtab_blk_mq_delay_run_hw_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_delay_run_hw_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_delay_run_hw_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_delay_run_hw_queues to i32), ptr @__kstrtab_blk_mq_delay_run_hw_queues, ptr @__kstrtabns_blk_mq_delay_run_hw_queues }, section "___ksymtab+blk_mq_delay_run_hw_queues", align 4
@__kstrtab_blk_mq_queue_stopped = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_queue_stopped = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_queue_stopped = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_queue_stopped to i32), ptr @__kstrtab_blk_mq_queue_stopped, ptr @__kstrtabns_blk_mq_queue_stopped }, section "___ksymtab+blk_mq_queue_stopped", align 4
@__kstrtab_blk_mq_stop_hw_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_stop_hw_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_stop_hw_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_stop_hw_queue to i32), ptr @__kstrtab_blk_mq_stop_hw_queue, ptr @__kstrtabns_blk_mq_stop_hw_queue }, section "___ksymtab+blk_mq_stop_hw_queue", align 4
@__kstrtab_blk_mq_stop_hw_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_stop_hw_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_stop_hw_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_stop_hw_queues to i32), ptr @__kstrtab_blk_mq_stop_hw_queues, ptr @__kstrtabns_blk_mq_stop_hw_queues }, section "___ksymtab+blk_mq_stop_hw_queues", align 4
@__kstrtab_blk_mq_start_hw_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_start_hw_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_start_hw_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_start_hw_queue to i32), ptr @__kstrtab_blk_mq_start_hw_queue, ptr @__kstrtabns_blk_mq_start_hw_queue }, section "___ksymtab+blk_mq_start_hw_queue", align 4
@__kstrtab_blk_mq_start_hw_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_start_hw_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_start_hw_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_start_hw_queues to i32), ptr @__kstrtab_blk_mq_start_hw_queues, ptr @__kstrtabns_blk_mq_start_hw_queues }, section "___ksymtab+blk_mq_start_hw_queues", align 4
@__kstrtab_blk_mq_start_stopped_hw_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_start_stopped_hw_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_start_stopped_hw_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_start_stopped_hw_queue to i32), ptr @__kstrtab_blk_mq_start_stopped_hw_queue, ptr @__kstrtabns_blk_mq_start_stopped_hw_queue }, section "___ksymtab_gpl+blk_mq_start_stopped_hw_queue", align 4
@__kstrtab_blk_mq_start_stopped_hw_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_start_stopped_hw_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_start_stopped_hw_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_start_stopped_hw_queues to i32), ptr @__kstrtab_blk_mq_start_stopped_hw_queues, ptr @__kstrtabns_blk_mq_start_stopped_hw_queues }, section "___ksymtab+blk_mq_start_stopped_hw_queues", align 4
@__kstrtab_blk_insert_cloned_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_insert_cloned_request = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_insert_cloned_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_insert_cloned_request to i32), ptr @__kstrtab_blk_insert_cloned_request, ptr @__kstrtabns_blk_insert_cloned_request }, section "___ksymtab_gpl+blk_insert_cloned_request", align 4
@__kstrtab_blk_rq_unprep_clone = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_unprep_clone = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_unprep_clone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_unprep_clone to i32), ptr @__kstrtab_blk_rq_unprep_clone, ptr @__kstrtabns_blk_rq_unprep_clone }, section "___ksymtab_gpl+blk_rq_unprep_clone", align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@__kstrtab_blk_rq_prep_clone = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_prep_clone = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_prep_clone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_prep_clone to i32), ptr @__kstrtab_blk_rq_prep_clone, ptr @__kstrtabns_blk_rq_prep_clone }, section "___ksymtab_gpl+blk_rq_prep_clone", align 4
@__kstrtab_blk_steal_bios = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_steal_bios = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_steal_bios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_steal_bios to i32), ptr @__kstrtab_blk_steal_bios, ptr @__kstrtabns_blk_steal_bios }, section "___ksymtab_gpl+blk_steal_bios", align 4
@blk_mq_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_blk_mq_init_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_init_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_init_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_init_queue to i32), ptr @__kstrtab_blk_mq_init_queue, ptr @__kstrtabns_blk_mq_init_queue }, section "___ksymtab+blk_mq_init_queue", align 4
@__kstrtab___blk_mq_alloc_disk = external dso_local constant [0 x i8], align 1
@__kstrtabns___blk_mq_alloc_disk = external dso_local constant [0 x i8], align 1
@__ksymtab___blk_mq_alloc_disk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blk_mq_alloc_disk to i32), ptr @__kstrtab___blk_mq_alloc_disk, ptr @__kstrtabns___blk_mq_alloc_disk }, section "___ksymtab+__blk_mq_alloc_disk", align 4
@blk_mq_init_allocated_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_blk_mq_init_allocated_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_init_allocated_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_init_allocated_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_init_allocated_queue to i32), ptr @__kstrtab_blk_mq_init_allocated_queue, ptr @__kstrtabns_blk_mq_init_allocated_queue }, section "___ksymtab+blk_mq_init_allocated_queue", align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"\016blk-mq: reduced tag depth to %u\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@blk_mq_alloc_tag_set.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"&set->tag_list_lock\00", align 1
@__kstrtab_blk_mq_alloc_tag_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_alloc_tag_set = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_alloc_tag_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_alloc_tag_set to i32), ptr @__kstrtab_blk_mq_alloc_tag_set, ptr @__kstrtabns_blk_mq_alloc_tag_set }, section "___ksymtab+blk_mq_alloc_tag_set", align 4
@__kstrtab_blk_mq_alloc_sq_tag_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_alloc_sq_tag_set = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_alloc_sq_tag_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_alloc_sq_tag_set to i32), ptr @__kstrtab_blk_mq_alloc_sq_tag_set, ptr @__kstrtabns_blk_mq_alloc_sq_tag_set }, section "___ksymtab_gpl+blk_mq_alloc_sq_tag_set", align 4
@__kstrtab_blk_mq_free_tag_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_free_tag_set = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_free_tag_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_free_tag_set to i32), ptr @__kstrtab_blk_mq_free_tag_set, ptr @__kstrtabns_blk_mq_free_tag_set }, section "___ksymtab+blk_mq_free_tag_set", align 4
@__kstrtab_blk_mq_update_nr_hw_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_update_nr_hw_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_update_nr_hw_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_update_nr_hw_queues to i32), ptr @__kstrtab_blk_mq_update_nr_hw_queues, ptr @__kstrtabns_blk_mq_update_nr_hw_queues }, section "___ksymtab_gpl+blk_mq_update_nr_hw_queues", align 4
@__kstrtab_blk_mq_rq_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_rq_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_rq_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_rq_cpu to i32), ptr @__kstrtab_blk_mq_rq_cpu, ptr @__kstrtabns_blk_mq_rq_cpu }, section "___ksymtab+blk_mq_rq_cpu", align 4
@__initcall__kmod_blk_mq__344_4774_blk_mq_init4 = internal global ptr @blk_mq_init, section ".initcall4.init", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@req_ref_put_and_test.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"block/blk.h\00", align 1
@__tracepoint_block_rq_complete = external dso_local global %struct.tracepoint, align 4
@blk_print_req_error._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.blk_print_req_error = private unnamed_addr constant [20 x i8] c"blk_print_req_error\00", align 1
@.str.10 = private unnamed_addr constant [83 x i8] c"\013%s error, dev %s, sector %llu op 0x%x:(%s) flags 0x%x phys_seg %u prio class %u\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@force_irqthreads_key = external dso_local global %struct.static_key_false, align 4
@blk_cpu_done = internal global %struct.llist_head zeroinitializer, section ".data..percpu", align 4
@__tracepoint_block_rq_issue = external dso_local global %struct.tracepoint, align 4
@blk_rq_is_poll.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_block_rq_requeue = external dso_local global %struct.tracepoint, align 4
@__blk_mq_run_hw_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"include/linux/srcu.h\00", align 1
@__tracepoint_block_rq_insert = external dso_local global %struct.tracepoint, align 4
@__tracepoint_block_unplug = external dso_local global %struct.tracepoint, align 4
@max_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_block_getrq = external dso_local global %struct.tracepoint, align 4
@__tracepoint_block_plug = external dso_local global %struct.tracepoint, align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"\013%s: over max size limit. (%u > %u)\0A\00", align 1
@__func__.blk_cloned_rq_check_limits = private unnamed_addr constant [27 x i8] c"blk_cloned_rq_check_limits\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"\013%s: over max segments limit. (%hu > %hu)\0A\00", align 1
@blk_mq_clear_rq_mapping.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.16 = private unnamed_addr constant [80 x i8] c"\014Allocate new hctx on node %d fails,\09\09\09\09\09\09fallback to previous one on node %d\0A\00", align 1
@blk_mq_clear_flush_rq_mapping.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@blk_mq_rq_timed_out.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\013blk-mq: failed to allocate request map\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"\016blk-mq: reduced tag depth (%u -> %u)\0A\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"\014Increasing nr_hw_queues to %d fails, fallback to %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"block/softirq:dead\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"block/mq:dead\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"block/mq:online\00", align 1
@llvm.compiler.used = appending global [52 x ptr] [ptr @__initcall__kmod_blk_mq__344_4774_blk_mq_init4, ptr @__ksymtab___blk_mq_alloc_disk, ptr @__ksymtab___blk_mq_end_request, ptr @__ksymtab_blk_dump_rq_flags, ptr @__ksymtab_blk_execute_rq, ptr @__ksymtab_blk_execute_rq_nowait, ptr @__ksymtab_blk_freeze_queue_start, ptr @__ksymtab_blk_insert_cloned_request, ptr @__ksymtab_blk_mq_alloc_request, ptr @__ksymtab_blk_mq_alloc_request_hctx, ptr @__ksymtab_blk_mq_alloc_sq_tag_set, ptr @__ksymtab_blk_mq_alloc_tag_set, ptr @__ksymtab_blk_mq_complete_request, ptr @__ksymtab_blk_mq_complete_request_remote, ptr @__ksymtab_blk_mq_delay_kick_requeue_list, ptr @__ksymtab_blk_mq_delay_run_hw_queue, ptr @__ksymtab_blk_mq_delay_run_hw_queues, ptr @__ksymtab_blk_mq_end_request, ptr @__ksymtab_blk_mq_end_request_batch, ptr @__ksymtab_blk_mq_flush_busy_ctxs, ptr @__ksymtab_blk_mq_free_request, ptr @__ksymtab_blk_mq_free_tag_set, ptr @__ksymtab_blk_mq_freeze_queue, ptr @__ksymtab_blk_mq_freeze_queue_wait, ptr @__ksymtab_blk_mq_freeze_queue_wait_timeout, ptr @__ksymtab_blk_mq_init_allocated_queue, ptr @__ksymtab_blk_mq_init_queue, ptr @__ksymtab_blk_mq_kick_requeue_list, ptr @__ksymtab_blk_mq_queue_inflight, ptr @__ksymtab_blk_mq_queue_stopped, ptr @__ksymtab_blk_mq_quiesce_queue, ptr @__ksymtab_blk_mq_quiesce_queue_nowait, ptr @__ksymtab_blk_mq_requeue_request, ptr @__ksymtab_blk_mq_rq_cpu, ptr @__ksymtab_blk_mq_run_hw_queue, ptr @__ksymtab_blk_mq_run_hw_queues, ptr @__ksymtab_blk_mq_start_hw_queue, ptr @__ksymtab_blk_mq_start_hw_queues, ptr @__ksymtab_blk_mq_start_request, ptr @__ksymtab_blk_mq_start_stopped_hw_queue, ptr @__ksymtab_blk_mq_start_stopped_hw_queues, ptr @__ksymtab_blk_mq_stop_hw_queue, ptr @__ksymtab_blk_mq_stop_hw_queues, ptr @__ksymtab_blk_mq_unfreeze_queue, ptr @__ksymtab_blk_mq_unquiesce_queue, ptr @__ksymtab_blk_mq_update_nr_hw_queues, ptr @__ksymtab_blk_mq_wait_quiesce_done, ptr @__ksymtab_blk_rq_init, ptr @__ksymtab_blk_rq_prep_clone, ptr @__ksymtab_blk_rq_unprep_clone, ptr @__ksymtab_blk_steal_bios, ptr @__ksymtab_blk_update_request], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_in_flight(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.mq_inflight, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mq_inflight, ptr %3, i32 0, i32 1
  store i64 0, ptr %4, align 4
  call void @blk_mq_queue_tag_busy_iter(ptr noundef %0, ptr noundef nonnull @blk_mq_check_inflight, ptr noundef nonnull %3) #22
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mq_inflight, ptr %3, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_queue_tag_busy_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @blk_mq_check_inflight(ptr noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) #4 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 15
  %6 = load i8, ptr %5, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 13
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %12, label %23

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 20
  %14 = load volatile i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = getelementptr %struct.mq_inflight, ptr %1, i32 0, i32 1, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %16, %12, %8
  ret i1 true
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_in_flight_rw(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.mq_inflight, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mq_inflight, ptr %4, i32 0, i32 1
  store i64 0, ptr %5, align 4
  call void @blk_mq_queue_tag_busy_iter(ptr noundef %0, ptr noundef nonnull @blk_mq_check_inflight, ptr noundef nonnull %4) #22
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.mq_inflight, ptr %4, i32 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i32, ptr %2, i32 1
  store i32 %8, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_freeze_queue_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 47
  tail call void @mutex_lock(ptr noundef %2) #22
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 44
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 2
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %8, ptr noundef null) #22
  tail call void @mutex_unlock(ptr noundef %2) #22
  %9 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  tail call void @blk_mq_run_hw_queues(ptr noundef %0, i1 noundef zeroext false)
  br label %14

13:                                               ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #22
  br label %14

14:                                               ; preds = %13, %12, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_run_hw_queues(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.elevator_type, ptr %7, i32 0, i32 1, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.elevator_type, ptr %7, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = tail call ptr @llvm.thread.pointer() #22
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 49
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i32, ptr %24, i32 %19
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr ptr, ptr %21, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 2
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr %28, ptr null
  br label %34

34:                                               ; preds = %16, %11, %6, %2
  %35 = phi ptr [ %33, %16 ], [ null, %2 ], [ null, %6 ], [ null, %11 ]
  %36 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %67, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %41 = icmp eq ptr %35, null
  br label %42

42:                                               ; preds = %63, %39
  %43 = phi i32 [ 0, %39 ], [ %64, %63 ]
  %44 = load ptr, ptr %40, align 4
  %45 = getelementptr ptr, ptr %44, i32 %43
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.anon.1, ptr %46, i32 0, i32 2
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %42
  %52 = icmp eq ptr %35, %46
  %53 = or i1 %41, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.anon.1, ptr %46, i32 0, i32 1
  %56 = load volatile ptr, ptr %55, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !9
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.anon.1, ptr %46, i32 0, i32 1, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %55
  br i1 %61, label %63, label %62

62:                                               ; preds = %58, %54, %51
  tail call void @blk_mq_run_hw_queue(ptr noundef %46, i1 noundef zeroext %1)
  br label %63

63:                                               ; preds = %62, %58, %42
  %64 = add nuw i32 %43, 1
  %65 = load i32, ptr %36, align 8
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %42, label %67

67:                                               ; preds = %63, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_freeze_queue_wait(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 2
  %4 = tail call zeroext i1 @percpu_ref_is_zero(ptr noundef %3) #22
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #22
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 46
  %7 = call i32 @prepare_to_wait_event(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 2) #22
  %8 = call zeroext i1 @percpu_ref_is_zero(ptr noundef %3) #22
  br i1 %8, label %12, label %9

9:                                                ; preds = %9, %5
  call void @schedule() #22
  %10 = call i32 @prepare_to_wait_event(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 2) #22
  %11 = call zeroext i1 @percpu_ref_is_zero(ptr noundef %3) #22
  br i1 %11, label %12, label %9

12:                                               ; preds = %9, %5
  call void @finish_wait(ptr noundef %6, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #22
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @percpu_ref_is_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_freeze_queue_wait_timeout(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 2
  %5 = tail call zeroext i1 @percpu_ref_is_zero(ptr noundef %4) #22
  %6 = icmp eq i32 %1, 0
  %7 = and i1 %6, %5
  %8 = select i1 %7, i32 1, i32 %1
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %5, i1 true, i1 %9
  br i1 %10, label %32, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #22
  %12 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 46
  %13 = call i32 @prepare_to_wait_event(ptr noundef %12, ptr noundef nonnull %3, i32 noundef 2) #22
  %14 = call zeroext i1 @percpu_ref_is_zero(ptr noundef %4) #22
  %15 = and i1 %14, %6
  %16 = select i1 %15, i32 1, i32 %1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %14, i1 true, i1 %17
  br i1 %18, label %30, label %19

19:                                               ; preds = %19, %11
  %20 = phi i32 [ %27, %19 ], [ %16, %11 ]
  %21 = call i32 @schedule_timeout(i32 noundef %20) #22
  %22 = call i32 @prepare_to_wait_event(ptr noundef %12, ptr noundef nonnull %3, i32 noundef 2) #22
  %23 = call zeroext i1 @percpu_ref_is_zero(ptr noundef %4) #22
  %24 = xor i1 %23, true
  %25 = icmp ne i32 %21, 0
  %26 = select i1 %24, i1 true, i1 %25
  %27 = select i1 %26, i32 %21, i32 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %23, i1 true, i1 %28
  br i1 %29, label %30, label %19

30:                                               ; preds = %19, %11
  %31 = phi i32 [ %16, %11 ], [ %27, %19 ]
  call void @finish_wait(ptr noundef %12, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #22
  br label %32

32:                                               ; preds = %30, %2
  %33 = phi i32 [ %8, %2 ], [ %31, %30 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_freeze_queue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 47
  tail call void @mutex_lock(ptr noundef %2) #22
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 44
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 2
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %8, ptr noundef null) #22
  tail call void @mutex_unlock(ptr noundef %2) #22
  %9 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  tail call void @blk_mq_run_hw_queues(ptr noundef %0, i1 noundef zeroext false) #22
  br label %14

13:                                               ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #22
  br label %14

14:                                               ; preds = %13, %12, %7
  tail call void @blk_mq_freeze_queue_wait(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_freeze_queue(ptr noundef %0) #0 {
  tail call void @blk_freeze_queue(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__blk_mq_unfreeze_queue(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 47
  tail call void @mutex_lock(ptr noundef %3) #22
  br i1 %1, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.percpu_ref_data, ptr %6, i32 0, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = or i8 %8, 1
  store i8 %9, ptr %7, align 4
  br label %10

10:                                               ; preds = %4, %2
  %11 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 44
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 4
  %14 = icmp slt i32 %13, 0
  %15 = load i1, ptr @__blk_mq_unfreeze_queue.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %20, !prof !11

18:                                               ; preds = %10
  store i1 true, ptr @__blk_mq_unfreeze_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 224, i32 noundef 9, ptr noundef null) #22
  %19 = load i32, ptr %11, align 4
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi i32 [ %19, %18 ], [ %13, %10 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 2
  tail call void @percpu_ref_resurrect(ptr noundef %24) #22
  %25 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 46
  tail call void @__wake_up(ptr noundef %25, i32 noundef 3, i32 noundef 0, ptr noundef null) #22
  br label %26

26:                                               ; preds = %23, %20
  tail call void @mutex_unlock(ptr noundef %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_resurrect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_unfreeze_queue(ptr noundef %0) #0 {
  tail call void @__blk_mq_unfreeze_queue(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_quiesce_queue_nowait(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 14
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #22
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 48
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @blk_queue_flag_set(i32 noundef 24, ptr noundef %0) #22
  br label %9

9:                                                ; preds = %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_wait_quiesce_done(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 58
  tail call void @synchronize_srcu(ptr noundef %7) #22
  br label %9

8:                                                ; preds = %1
  tail call void @synchronize_rcu() #22
  br label %9

9:                                                ; preds = %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_quiesce_queue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 14
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #22
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 48
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @blk_queue_flag_set(i32 noundef 24, ptr noundef %0) #22
  br label %9

9:                                                ; preds = %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #22
  %10 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 58
  tail call void @synchronize_srcu(ptr noundef %15) #22
  br label %17

16:                                               ; preds = %9
  tail call void @synchronize_rcu() #22
  br label %17

17:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_unquiesce_queue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 14
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #22
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 48
  %5 = load i32, ptr %4, align 8
  %6 = icmp slt i32 %5, 1
  %7 = load i1, ptr @blk_mq_unquiesce_queue.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %1
  store i1 true, ptr @blk_mq_unquiesce_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 298, i32 noundef 9, ptr noundef null) #22
  br label %11

11:                                               ; preds = %10, %1
  br i1 %6, label %17, label %12

12:                                               ; preds = %11
  %13 = load i32, ptr %4, align 8
  %14 = add i32 %13, -1
  store i32 %14, ptr %4, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  tail call void @blk_queue_flag_clear(i32 noundef 24, ptr noundef %0) #22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #22
  tail call void @blk_mq_run_hw_queues(ptr noundef %0, i1 noundef zeroext true)
  br label %19

17:                                               ; preds = %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #22
  br label %19

18:                                               ; preds = %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #22
  br label %19

19:                                               ; preds = %18, %17, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_wake_waiters(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %7

7:                                                ; preds = %22, %5
  %8 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %9 = phi i32 [ 0, %5 ], [ %24, %22 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr ptr, ptr %10, i32 %9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 14
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 19
  %18 = load ptr, ptr %17, align 16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  tail call void @blk_mq_tag_wakeup_all(ptr noundef nonnull %18, i1 noundef zeroext true) #22
  %21 = load i32, ptr %2, align 8
  br label %22

22:                                               ; preds = %20, %16, %7
  %23 = phi i32 [ %8, %7 ], [ %8, %16 ], [ %21, %20 ]
  %24 = add nuw i32 %9, 1
  %25 = icmp ult i32 %24, %23
  br i1 %25, label %7, label %26

26:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tag_wakeup_all(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_rq_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(168) %1, i8 0, i32 168, i1 false)
  %3 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 12
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 12, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  store ptr %0, ptr %1, align 8
  %5 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  store i64 -1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 23
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 23, i32 0, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %8 to i32
  store i32 %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 5
  store i32 -1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 6
  store i32 -1, ptr %11, align 8
  %12 = tail call i64 @ktime_get() #22
  %13 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 14
  store i64 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 13
  store ptr null, ptr %14, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @blk_mq_alloc_request(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.blk_mq_alloc_data, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #22
  store ptr %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %4, i32 0, i32 1
  store i32 %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %4, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %4, i32 0, i32 3
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %4, i32 0, i32 4
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %4, i32 0, i32 5
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %4, i32 0, i32 6
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %4, i32 0, i32 7
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %4, i32 0, i32 8
  store ptr null, ptr %12, align 4
  %13 = tail call i32 @blk_queue_enter(ptr noundef %0, i32 noundef %2) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = inttoptr i32 %13 to ptr
  br label %26

17:                                               ; preds = %3
  %18 = call fastcc ptr @__blk_mq_alloc_requests(ptr noundef nonnull %4)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.request, ptr %18, i32 0, i32 8
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.request, ptr %18, i32 0, i32 9
  store i64 -1, ptr %22, align 8
  %23 = getelementptr inbounds %struct.request, ptr %18, i32 0, i32 11
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.request, ptr %18, i32 0, i32 10
  store ptr null, ptr %24, align 8
  br label %26

25:                                               ; preds = %17
  call void @blk_queue_exit(ptr noundef %0) #22
  br label %26

26:                                               ; preds = %25, %20, %15
  %27 = phi ptr [ %16, %15 ], [ %18, %20 ], [ inttoptr (i32 -11 to ptr), %25 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #22
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_queue_enter(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__blk_mq_alloc_requests(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2097152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 1
  store i32 %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 4194304
  store i32 %19, ptr %17, align 4
  %20 = and i32 %5, 393216
  %21 = icmp ne i32 %20, 0
  %22 = and i32 %5, 254
  %23 = icmp eq i32 %22, 34
  %24 = or i1 %21, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %16
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr inbounds %struct.elevator_type, ptr %26, i32 0, i32 1, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void %28(i32 noundef %5, ptr noundef %0) #22
  br label %36

36:                                               ; preds = %35, %30, %25, %16, %12
  %37 = tail call ptr @llvm.thread.pointer() #22
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 6
  %40 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 7
  %41 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 8
  %42 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 4
  %43 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 5
  %44 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 1
  br label %46

46:                                               ; preds = %154, %36
  %47 = load i32, ptr %38, align 8
  %48 = load ptr, ptr %39, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %49
  %53 = inttoptr i32 %52 to ptr
  store ptr %53, ptr %40, align 4
  %54 = load i32, ptr %4, align 4
  %55 = and i32 %54, 16777216
  %56 = icmp eq i32 %55, 0
  %57 = and i32 %54, 255
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = select i1 %56, i32 %59, i32 2
  %61 = getelementptr %struct.blk_mq_ctx, ptr %53, i32 0, i32 3, i32 %60
  %62 = load ptr, ptr %61, align 4
  store ptr %62, ptr %41, align 4
  %63 = load i32, ptr %42, align 4
  %64 = and i32 %63, 4194304
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %46
  %67 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %62, i32 0, i32 5
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = call zeroext i1 @__blk_mq_tag_busy(ptr noundef %62) #22
  br label %73

73:                                               ; preds = %71, %66, %46
  %74 = load i32, ptr %43, align 4
  %75 = icmp ugt i32 %74, 1
  br i1 %75, label %76, label %147

76:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  store i32 0, ptr %2, align 4, !annotation !10
  %77 = call i32 @blk_mq_get_tags(ptr noundef %0, i32 noundef %74, ptr noundef nonnull %2) #22
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %146, label %79, !prof !11

79:                                               ; preds = %76
  %80 = load i32, ptr %42, align 4
  %81 = and i32 %80, 4194304
  %82 = icmp eq i32 %81, 0
  %83 = load ptr, ptr %41, align 4
  %84 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %83, i32 0, i32 20
  %85 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %83, i32 0, i32 19
  %86 = select i1 %82, ptr %85, ptr %84
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.blk_mq_tags, ptr %87, i32 0, i32 6
  br label %89

89:                                               ; preds = %110, %79
  %90 = phi i32 [ 0, %79 ], [ %112, %110 ]
  %91 = phi i32 [ 0, %79 ], [ %113, %110 ]
  %92 = phi i32 [ %77, %79 ], [ %111, %110 ]
  %93 = shl nuw i32 1, %91
  %94 = and i32 %93, %92
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %89
  %97 = load i32, ptr %2, align 4
  %98 = add i32 %97, %91
  %99 = load ptr, ptr %88, align 4
  %100 = getelementptr ptr, ptr %99, i32 %98
  %101 = load ptr, ptr %100, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %101) #22, !srcloc !12
  %102 = xor i32 %93, -1
  %103 = and i32 %92, %102
  %104 = call fastcc ptr @blk_mq_rq_ctx_init(ptr noundef %0, ptr noundef %87, i32 noundef %98) #22
  %105 = load ptr, ptr %44, align 4
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.request, ptr %104, i32 0, i32 12
  store ptr %106, ptr %107, align 8
  %108 = load ptr, ptr %44, align 4
  store ptr %104, ptr %108, align 4
  %109 = add i32 %90, 1
  br label %110

110:                                              ; preds = %96, %89
  %111 = phi i32 [ %103, %96 ], [ %92, %89 ]
  %112 = phi i32 [ %109, %96 ], [ %90, %89 ]
  %113 = add i32 %91, 1
  %114 = icmp eq i32 %111, 0
  br i1 %114, label %115, label %89

115:                                              ; preds = %110
  %116 = load ptr, ptr %0, align 4
  %117 = getelementptr inbounds %struct.request_queue, ptr %116, i32 0, i32 2
  %118 = add i32 %112, -1
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  %119 = load volatile i32, ptr %117, align 4
  %120 = and i32 %119, 3
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %131, !prof !14

122:                                              ; preds = %115
  %123 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !15
  %124 = call i32 @llvm.read_register.i32(metadata !0) #22
  %125 = inttoptr i32 %124 to ptr
  %126 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %125) #16, !srcloc !16
  %127 = add i32 %126, %119
  %128 = inttoptr i32 %127 to ptr
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %129, %118
  store i32 %130, ptr %128, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %123) #22, !srcloc !17
  br label %135

131:                                              ; preds = %115
  %132 = getelementptr inbounds %struct.request_queue, ptr %116, i32 0, i32 2, i32 1
  %133 = load ptr, ptr %132, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %133) #22, !srcloc !18
  %134 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %133, ptr %133, i32 %118, ptr elementtype(i32) %133) #22, !srcloc !19
  br label %135

135:                                              ; preds = %131, %122
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  %136 = load i32, ptr %43, align 4
  %137 = sub i32 %136, %112
  store i32 %137, ptr %43, align 4
  %138 = load ptr, ptr %44, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr %138, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.request, ptr %141, i32 0, i32 12
  %145 = load ptr, ptr %144, align 8
  store ptr %145, ptr %138, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  br label %165

146:                                              ; preds = %140, %135, %76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  store i32 1, ptr %43, align 4
  br label %147

147:                                              ; preds = %146, %73
  %148 = call i32 @blk_mq_get_tag(ptr noundef %0) #22
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, ptr %45, align 4
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  call void @msleep(i32 noundef 3) #22
  br label %46

155:                                              ; preds = %147
  %156 = load i32, ptr %42, align 4
  %157 = and i32 %156, 4194304
  %158 = icmp eq i32 %157, 0
  %159 = load ptr, ptr %41, align 4
  %160 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %159, i32 0, i32 20
  %161 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %159, i32 0, i32 19
  %162 = select i1 %158, ptr %161, ptr %160
  %163 = load ptr, ptr %162, align 4
  %164 = call fastcc ptr @blk_mq_rq_ctx_init(ptr noundef %0, ptr noundef %163, i32 noundef %148)
  br label %165

165:                                              ; preds = %155, %150, %143
  %166 = phi ptr [ %164, %155 ], [ %141, %143 ], [ null, %150 ]
  ret ptr %166
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @blk_mq_alloc_request_hctx(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.blk_mq_alloc_data, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #22
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %5, i32 0, i32 1
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %5, i32 0, i32 2
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %5, i32 0, i32 3
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %5, i32 0, i32 4
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %5, i32 0, i32 5
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %5, i32 0, i32 6
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %5, i32 0, i32 7
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %5, i32 0, i32 8
  %14 = and i32 %2, 3
  %15 = icmp eq i32 %14, 0
  %16 = load i1, ptr @blk_mq_alloc_request_hctx.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %4
  store i1 true, ptr @blk_mq_alloc_request_hctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 561, i32 noundef 9, ptr noundef null) #22
  br label %20

20:                                               ; preds = %19, %4
  br i1 %15, label %84, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %23 = load i32, ptr %22, align 8
  %24 = icmp ugt i32 %23, %3
  br i1 %24, label %25, label %84

25:                                               ; preds = %21
  %26 = tail call i32 @blk_queue_enter(ptr noundef %0, i32 noundef %2) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = inttoptr i32 %26 to ptr
  br label %84

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr ptr, ptr %32, i32 %3
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %13, align 4
  %35 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %34, i32 0, i32 14
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %82, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %34, i32 0, i32 19
  %40 = load ptr, ptr %39, align 16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %82, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %34, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr @__cpu_online_mask, align 4
  %46 = and i32 %44, 65535
  %47 = and i32 %46, %45
  %48 = icmp eq i32 %47, 0
  %49 = tail call i32 @llvm.cttz.i32(i32 %47, i1 true) #22, !range !21
  %50 = select i1 %48, i32 16, i32 %49
  %51 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %53
  %57 = inttoptr i32 %56 to ptr
  store ptr %57, ptr %12, align 4
  %58 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %42
  %62 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %34, i32 0, i32 5
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = tail call zeroext i1 @__blk_mq_tag_busy(ptr noundef %34) #22
  br label %69

68:                                               ; preds = %42
  store i32 4194304, ptr %9, align 4
  br label %69

69:                                               ; preds = %68, %66, %61
  %70 = call i32 @blk_mq_get_tag(ptr noundef nonnull %5) #22
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %9, align 4
  %74 = and i32 %73, 4194304
  %75 = icmp eq i32 %74, 0
  %76 = load ptr, ptr %13, align 4
  %77 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %76, i32 0, i32 20
  %78 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %76, i32 0, i32 19
  %79 = select i1 %75, ptr %78, ptr %77
  %80 = load ptr, ptr %79, align 4
  %81 = call fastcc ptr @blk_mq_rq_ctx_init(ptr noundef nonnull %5, ptr noundef %80, i32 noundef %70)
  br label %84

82:                                               ; preds = %69, %38, %30
  %83 = phi ptr [ inttoptr (i32 -11 to ptr), %69 ], [ inttoptr (i32 -18 to ptr), %38 ], [ inttoptr (i32 -18 to ptr), %30 ]
  call void @blk_queue_exit(ptr noundef %0) #22
  br label %84

84:                                               ; preds = %82, %72, %28, %21, %20
  %85 = phi ptr [ %29, %28 ], [ %83, %82 ], [ %81, %72 ], [ inttoptr (i32 -22 to ptr), %20 ], [ inttoptr (i32 -5 to ptr), %21 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #22
  ret ptr %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_get_tag(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @blk_mq_rq_ctx_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr ptr, ptr %10, i32 %2
  %12 = load ptr, ptr %11, align 4
  store ptr %8, ptr %12, align 8
  %13 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 1
  store ptr %5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 2
  store ptr %7, ptr %14, align 8
  %15 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 32768
  store i32 %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %22, %3
  %27 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 11
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  br i1 %30, label %35, label %33

33:                                               ; preds = %26
  %34 = or i32 %32, 8192
  store i32 %34, ptr %31, align 4
  br label %35

35:                                               ; preds = %33, %26
  %36 = phi i32 [ %34, %33 ], [ %32, %26 ]
  %37 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %0, i32 0, i32 4
  %38 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 4
  store i32 %36, ptr %38, align 8
  %39 = load i32, ptr %37, align 4
  %40 = and i32 %39, 4194304
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 %2, i32 -1
  %43 = select i1 %41, i32 -1, i32 %2
  %44 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 5
  store i32 %42, ptr %44, align 4
  %45 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 6
  store i32 %43, ptr %45, align 8
  %46 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 7
  store i32 0, ptr %46, align 4
  %47 = and i32 %36, 4333568
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %35
  %50 = tail call i64 @ktime_get() #22
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi i64 [ %50, %49 ], [ 0, %35 ]
  %53 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 14
  store i64 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 13
  store ptr null, ptr %54, align 8
  %55 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 15
  store i64 0, ptr %55, align 8
  %56 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 16
  store i16 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 17
  store i16 0, ptr %57, align 2
  %58 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 27
  store ptr null, ptr %58, align 8
  %59 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 28
  store ptr null, ptr %59, align 4
  %60 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 12
  store volatile ptr %60, ptr %60, align 4
  %61 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 12, i32 0, i32 1
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 22
  store volatile i32 0, ptr %62, align 8
  %63 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 21
  store volatile i32 1, ptr %63, align 4
  %64 = load i32, ptr %38, align 8
  %65 = and i32 %64, 4194304
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %51
  %68 = load ptr, ptr %0, align 4
  %69 = getelementptr inbounds %struct.request_queue, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 23
  store ptr null, ptr %71, align 4
  %72 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 23, i32 0, i32 1
  store ptr null, ptr %72, align 4
  %73 = getelementptr inbounds %struct.request, ptr %12, i32 0, i32 24
  %74 = ptrtoint ptr %73 to i32
  store i32 %74, ptr %73, align 4
  %75 = load i32, ptr %15, align 4
  %76 = and i32 %75, 393216
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %67
  %79 = load ptr, ptr %70, align 4
  %80 = getelementptr inbounds %struct.elevator_type, ptr %79, i32 0, i32 1, i32 11
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  tail call void %81(ptr noundef %12) #22
  %84 = load i32, ptr %38, align 8
  %85 = or i32 %84, 4096
  store i32 %85, ptr %38, align 8
  br label %86

86:                                               ; preds = %83, %78, %67, %51
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_free_request(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 4096
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.elevator_type, ptr %12, i32 0, i32 1, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  tail call void %14(ptr noundef %0) #22
  %17 = load i32, ptr %5, align 8
  br label %18

18:                                               ; preds = %16, %9, %1
  %19 = phi i32 [ %17, %16 ], [ %6, %9 ], [ %6, %1 ]
  %20 = and i32 %19, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 7
  %29 = load ptr, ptr %28, align 64
  %30 = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #22, !srcloc !18
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #22, !srcloc !22
  br label %35

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #22, !srcloc !18
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #22, !srcloc !22
  br label %35

35:                                               ; preds = %32, %27, %18
  %36 = load i32, ptr @laptop_mode, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 254
  %42 = icmp eq i32 %41, 34
  br i1 %42, label %48, label %43, !prof !14

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 15
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.gendisk, ptr %45, i32 0, i32 15
  %47 = load ptr, ptr %46, align 4
  tail call void @laptop_io_completion(ptr noundef %47) #22
  br label %48

48:                                               ; preds = %43, %38, %35
  %49 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @__rq_qos_done(ptr noundef nonnull %50, ptr noundef %0) #22
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 20
  store volatile i32 0, ptr %54, align 8
  %55 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 21
  %56 = load volatile i32, ptr %55, align 4
  %57 = add i32 %56, 127
  %58 = icmp ult i32 %57, 128
  %59 = load i1, ptr @req_ref_put_and_test.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !11

62:                                               ; preds = %53
  store i1 true, ptr @req_ref_put_and_test.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 495, i32 noundef 9, ptr noundef null) #22
  br label %63

63:                                               ; preds = %62, %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #22, !srcloc !18
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #22, !srcloc !24
  %65 = extractvalue { i32, i32 } %64, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !25
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call fastcc void @__blk_mq_free_request(ptr noundef %0)
  br label %68

68:                                               ; preds = %67, %63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @laptop_io_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__blk_mq_free_request(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 32768
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = tail call i64 @ktime_get_mono_fast_ns() #22
  %19 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 22
  store volatile i64 %18, ptr %19, align 8
  br label %20

20:                                               ; preds = %17, %12, %1
  store ptr null, ptr %5, align 8
  %21 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %6, i32 0, i32 19
  %26 = load ptr, ptr %25, align 16
  tail call void @blk_mq_put_tag(ptr noundef %26, ptr noundef %4, i32 noundef %22) #22
  br label %27

27:                                               ; preds = %24, %20
  %28 = icmp eq i32 %8, -1
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %6, i32 0, i32 20
  %31 = load ptr, ptr %30, align 4
  tail call void @blk_mq_put_tag(ptr noundef %31, ptr noundef %4, i32 noundef %8) #22
  br label %32

32:                                               ; preds = %29, %27
  %33 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 2
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void @__blk_mq_sched_restart(ptr noundef %6) #22
  br label %38

38:                                               ; preds = %37, %32
  tail call void @blk_queue_exit(ptr noundef %2) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_free_plug_rqs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.blk_plug, ptr %0, i32 0, i32 1
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %11, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.request, ptr %8, i32 0, i32 12
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 4
  tail call void @blk_mq_free_request(ptr noundef nonnull %8)
  %11 = load ptr, ptr %2, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_dump_rq_flags(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 3
  %8 = select i1 %6, ptr @.str.2, ptr %7
  %9 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %8, i64 noundef %11) #23
  %13 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 9
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 8, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = trunc i32 %26 to i8
  switch i8 %27, label %28 [
    i8 3, label %45
    i8 5, label %45
    i8 9, label %45
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 8, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.bio_vec, ptr %30, i32 %32, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 8, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %34
  %38 = getelementptr %struct.bio_vec, ptr %30, i32 %32, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %39, %36
  %41 = tail call i32 @llvm.umin.i32(i32 %22, i32 %40) #22
  %42 = and i32 %37, 4095
  %43 = sub nuw nsw i32 4096, %42
  %44 = tail call i32 @llvm.umin.i32(i32 %41, i32 %43) #22
  br label %45

45:                                               ; preds = %28, %24, %24, %24, %20, %2
  %46 = phi i32 [ %44, %28 ], [ 0, %2 ], [ %22, %24 ], [ %22, %24 ], [ %22, %24 ], [ 0, %20 ]
  %47 = lshr i32 %16, 9
  %48 = ashr i32 %46, 9
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i64 noundef %14, i32 noundef %47, i32 noundef %48) #23
  %50 = load ptr, ptr %17, align 8
  %51 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 11
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %15, align 8
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %50, ptr noundef %52, i32 noundef %53) #23
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_update_request(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_complete, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #22
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !26
  %18 = tail call i32 @__traceiter_block_rq_complete(ptr noundef null, ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  br label %19

19:                                               ; preds = %17, %6, %3
  %20 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %241, label %23

23:                                               ; preds = %19
  %24 = icmp eq i8 %1, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 254
  %29 = icmp eq i32 %28, 34
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 2048
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36, !prof !11

35:                                               ; preds = %30
  tail call fastcc void @blk_print_req_error(ptr noundef %0, i8 noundef zeroext %1)
  br label %36

36:                                               ; preds = %35, %30, %25, %23
  %37 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 13
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %91, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 8192
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %91, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr inbounds %struct.request_queue, ptr %46, i32 0, i32 15
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %91, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 3
  %55 = and i32 %52, 1
  %56 = select i1 %54, i32 2, i32 %55
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !28
  %57 = lshr i32 %2, 9
  %58 = load ptr, ptr %37, align 8
  %59 = getelementptr inbounds %struct.block_device, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr %struct.disk_stats, ptr %60, i32 0, i32 1, i32 %56
  %62 = ptrtoint ptr %61 to i32
  %63 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %64 = inttoptr i32 %63 to ptr
  %65 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %64) #16, !srcloc !16
  %66 = add i32 %65, %62
  %67 = inttoptr i32 %66 to ptr
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, %57
  store i32 %69, ptr %67, align 4
  %70 = load ptr, ptr %37, align 8
  %71 = getelementptr inbounds %struct.block_device, ptr %70, i32 0, i32 15
  %72 = load i8, ptr %71, align 8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %50
  %75 = getelementptr inbounds %struct.block_device, ptr %70, i32 0, i32 17
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.gendisk, ptr %76, i32 0, i32 7
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.block_device, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr %struct.disk_stats, ptr %80, i32 0, i32 1, i32 %56
  %82 = ptrtoint ptr %81 to i32
  %83 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %84 = inttoptr i32 %83 to ptr
  %85 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %84) #16, !srcloc !16
  %86 = add i32 %85, %82
  %87 = inttoptr i32 %86 to ptr
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, %57
  store i32 %89, ptr %87, align 4
  br label %90

90:                                               ; preds = %74, %50
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !29
  br label %91

91:                                               ; preds = %90, %45, %40, %36
  %92 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %93 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 9
  %94 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  br label %95

95:                                               ; preds = %145, %91
  %96 = phi i32 [ 0, %91 ], [ %146, %145 ]
  %97 = phi i32 [ %2, %91 ], [ %147, %145 ]
  %98 = load ptr, ptr %20, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %152, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.bio, ptr %98, i32 0, i32 8, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = tail call i32 @llvm.umin.i32(i32 %102, i32 %97)
  %104 = icmp ugt i32 %102, %97
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load ptr, ptr %98, align 4
  store ptr %106, ptr %20, align 8
  br label %107

107:                                              ; preds = %105, %100
  %108 = getelementptr inbounds %struct.bio, ptr %98, i32 0, i32 3
  %109 = load i16, ptr %108, align 4
  %110 = and i16 %109, -257
  store i16 %110, ptr %108, align 4
  br i1 %24, label %113, label %111, !prof !14

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.bio, ptr %98, i32 0, i32 6
  store i8 %1, ptr %112, align 2
  br label %125

113:                                              ; preds = %107
  %114 = load i32, ptr %92, align 4
  %115 = and i32 %114, 255
  %116 = icmp eq i32 %115, 13
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i32, ptr %101, align 4
  %119 = icmp eq i32 %118, %103
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.bio, ptr %98, i32 0, i32 6
  store i8 10, ptr %121, align 2
  br label %125

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.bio, ptr %98, i32 0, i32 8
  %124 = load i64, ptr %93, align 8
  store i64 %124, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %120, %113, %111
  %126 = load i32, ptr %101, align 4
  %127 = icmp eq i32 %126, %103
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 0, ptr %101, align 4
  br label %130

129:                                              ; preds = %125
  tail call void @__bio_advance(ptr noundef nonnull %98, i32 noundef %103) #22
  br label %130

130:                                              ; preds = %129, %128
  %131 = load i32, ptr %94, align 8
  %132 = and i32 %131, 2048
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134, !prof !14

134:                                              ; preds = %130
  %135 = load i16, ptr %108, align 4
  %136 = or i16 %135, 16
  store i16 %136, ptr %108, align 4
  br label %137

137:                                              ; preds = %134, %130
  %138 = load i32, ptr %101, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32, ptr %94, align 8
  %142 = and i32 %141, 16
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  tail call void @bio_endio(ptr noundef nonnull %98) #22
  br label %145

145:                                              ; preds = %144, %140, %137
  %146 = add i32 %103, %96
  %147 = sub i32 %97, %103
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %95

149:                                              ; preds = %145
  %150 = load ptr, ptr %20, align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %149, %95
  %153 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  store i32 0, ptr %153, align 8
  br label %241

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  %156 = load i32, ptr %155, align 8
  %157 = sub i32 %156, %146
  store i32 %157, ptr %155, align 8
  %158 = load i32, ptr %92, align 4
  %159 = and i32 %158, 254
  %160 = icmp eq i32 %159, 34
  br i1 %160, label %166, label %161

161:                                              ; preds = %154
  %162 = ashr i32 %146, 9
  %163 = sext i32 %162 to i64
  %164 = load i64, ptr %93, align 8
  %165 = add i64 %164, %163
  store i64 %165, ptr %93, align 8
  br label %166

166:                                              ; preds = %161, %154
  %167 = load i32, ptr %94, align 8
  %168 = and i32 %167, 32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %166
  %171 = and i32 %158, -1793
  store i32 %171, ptr %92, align 4
  %172 = getelementptr inbounds %struct.bio, ptr %150, i32 0, i32 2
  %173 = load i32, ptr %172, align 4
  %174 = and i32 %173, 1792
  %175 = or i32 %174, %171
  store i32 %175, ptr %92, align 4
  br label %176

176:                                              ; preds = %170, %166
  %177 = and i32 %167, 262144
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %241

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.bio, ptr %150, i32 0, i32 8, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %237, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.bio, ptr %150, i32 0, i32 2
  %185 = load i32, ptr %184, align 4
  %186 = trunc i32 %185 to i8
  switch i8 %186, label %187 [
    i8 3, label %204
    i8 5, label %204
    i8 9, label %204
  ]

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.bio, ptr %150, i32 0, i32 16
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.bio, ptr %150, i32 0, i32 8, i32 2
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr %struct.bio_vec, ptr %189, i32 %191, i32 2
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds %struct.bio, ptr %150, i32 0, i32 8, i32 3
  %195 = load i32, ptr %194, align 4
  %196 = add i32 %195, %193
  %197 = getelementptr %struct.bio_vec, ptr %189, i32 %191, i32 1
  %198 = load i32, ptr %197, align 4
  %199 = sub i32 %198, %195
  %200 = tail call i32 @llvm.umin.i32(i32 %181, i32 %199) #22
  %201 = and i32 %196, 4095
  %202 = sub nuw nsw i32 4096, %201
  %203 = tail call i32 @llvm.umin.i32(i32 %200, i32 %202) #22
  br label %204

204:                                              ; preds = %187, %183, %183, %183
  %205 = phi i32 [ %203, %187 ], [ %181, %183 ], [ %181, %183 ], [ %181, %183 ]
  %206 = icmp ult i32 %157, %205
  br i1 %206, label %207, label %237

207:                                              ; preds = %204
  tail call void @blk_dump_rq_flags(ptr noundef %0, ptr noundef nonnull @.str.5)
  %208 = load ptr, ptr %20, align 8
  %209 = icmp eq ptr %208, null
  br i1 %209, label %235, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.bio, ptr %208, i32 0, i32 8, i32 1
  %212 = load i32, ptr %211, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %235, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.bio, ptr %208, i32 0, i32 2
  %216 = load i32, ptr %215, align 4
  %217 = trunc i32 %216 to i8
  switch i8 %217, label %218 [
    i8 3, label %235
    i8 5, label %235
    i8 9, label %235
  ]

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.bio, ptr %208, i32 0, i32 16
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.bio, ptr %208, i32 0, i32 8, i32 2
  %222 = load i32, ptr %221, align 4
  %223 = getelementptr %struct.bio_vec, ptr %220, i32 %222, i32 2
  %224 = load i32, ptr %223, align 4
  %225 = getelementptr inbounds %struct.bio, ptr %208, i32 0, i32 8, i32 3
  %226 = load i32, ptr %225, align 4
  %227 = add i32 %226, %224
  %228 = getelementptr %struct.bio_vec, ptr %220, i32 %222, i32 1
  %229 = load i32, ptr %228, align 4
  %230 = sub i32 %229, %226
  %231 = tail call i32 @llvm.umin.i32(i32 %212, i32 %230) #22
  %232 = and i32 %227, 4095
  %233 = sub nuw nsw i32 4096, %232
  %234 = tail call i32 @llvm.umin.i32(i32 %231, i32 %233) #22
  br label %235

235:                                              ; preds = %218, %214, %214, %214, %210, %207
  %236 = phi i32 [ %234, %218 ], [ 0, %207 ], [ %212, %214 ], [ %212, %214 ], [ %212, %214 ], [ 0, %210 ]
  store i32 %236, ptr %155, align 8
  br label %237

237:                                              ; preds = %235, %204, %179
  %238 = tail call i32 @blk_recalc_rq_segments(ptr noundef %0) #22
  %239 = trunc i32 %238 to i16
  %240 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 17
  store i16 %239, ptr %240, align 2
  br label %241

241:                                              ; preds = %237, %176, %152, %19
  %242 = phi i1 [ false, %152 ], [ false, %19 ], [ true, %237 ], [ true, %176 ]
  ret i1 %242
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @blk_print_req_error(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call i32 @___ratelimit(ptr noundef nonnull @blk_print_req_error._rs, ptr noundef nonnull @__func__.blk_print_req_error) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @blk_status_to_str(i8 noundef zeroext %1) #22
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 3
  %12 = select i1 %10, ptr @.str.2, ptr %11
  %13 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 9
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 255
  %18 = tail call ptr @blk_op_str(i32 noundef %17) #22
  %19 = load i32, ptr %15, align 4
  %20 = and i32 %19, -256
  %21 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 17
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 19
  %25 = load i16, ptr %24, align 2
  %26 = lshr i16 %25, 13
  %27 = zext i16 %26 to i32
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %6, ptr noundef %12, i64 noundef %14, i32 noundef %17, ptr noundef %18, i32 noundef %20, i32 noundef %23, i32 noundef %27) #23
  br label %29

29:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_recalc_rq_segments(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__blk_mq_end_request(ptr noundef %0, i8 noundef zeroext %1) #6 {
  %3 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 4333568
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @ktime_get() #22
  %9 = load i32, ptr %3, align 8
  %10 = and i32 %9, 131072
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 26
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.blk_stat_callback, ptr %19, i32 0, i32 1, i32 0, i32 1
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.blk_stat_callback, ptr %19, i32 0, i32 1
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = add i32 %25, 10
  %27 = tail call i32 @mod_timer(ptr noundef %24, i32 noundef %26) #22
  br label %28

28:                                               ; preds = %23, %17, %12
  tail call void @blk_stat_add(ptr noundef %0, i64 noundef %8) #22
  %29 = load i32, ptr %3, align 8
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi i32 [ %29, %28 ], [ %9, %7 ]
  %32 = and i32 %31, 4194304
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr inbounds %struct.request_queue, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.elevator_type, ptr %38, i32 0, i32 1, i32 16
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  tail call void %40(ptr noundef %0, i64 noundef %8) #22
  br label %43

43:                                               ; preds = %42, %34, %30
  tail call fastcc void @blk_account_io_done(ptr noundef %0, i64 noundef %8) #22
  br label %44

44:                                               ; preds = %43, %2
  %45 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 27
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr inbounds %struct.request_queue, ptr %49, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  tail call void @__rq_qos_done(ptr noundef nonnull %51, ptr noundef %0) #22
  %54 = load ptr, ptr %45, align 8
  br label %55

55:                                               ; preds = %53, %48
  %56 = phi ptr [ %46, %48 ], [ %54, %53 ]
  tail call void %56(ptr noundef %0, i8 noundef zeroext %1) #22
  br label %58

57:                                               ; preds = %44
  tail call void @blk_mq_free_request(ptr noundef %0)
  br label %58

58:                                               ; preds = %57, %55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_end_request(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = tail call zeroext i1 @blk_update_request(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %4)
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-mq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 933, 0\0A.popsection", ""() #22, !srcloc !30
  unreachable

7:                                                ; preds = %2
  tail call void @__blk_mq_end_request(ptr noundef %0, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_end_request_batch(ptr noundef %0) #0 {
  %2 = alloca [32 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %2, i8 0, i32 128, i1 false), !annotation !10
  %3 = getelementptr inbounds %struct.io_comp_batch, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4, !range !31
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i64 @ktime_get() #22
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i64 [ %7, %6 ], [ 0, %1 ]
  %10 = icmp eq ptr %0, null
  br i1 %10, label %298, label %11

11:                                               ; preds = %246, %8
  %12 = phi i32 [ %251, %246 ], [ 0, %8 ]
  %13 = phi ptr [ %247, %246 ], [ null, %8 ]
  br label %14

14:                                               ; preds = %176, %11
  %15 = load ptr, ptr %0, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %253, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 12
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %0, align 4
  %20 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 10
  %21 = load ptr, ptr %20, align 8
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %21) #22, !srcloc !12
  %22 = load ptr, ptr %18, align 8
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %22) #22, !srcloc !12
  %23 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 8
  %28 = load i32, ptr %27, align 8
  %29 = load ptr, ptr %20, align 8
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_complete, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %17
  %33 = tail call ptr @llvm.thread.pointer() #22
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !26
  %44 = call i32 @__traceiter_block_rq_complete(ptr noundef null, ptr noundef nonnull %15, i8 noundef zeroext 0, i32 noundef %28) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  br label %45

45:                                               ; preds = %43, %32, %17
  %46 = icmp eq ptr %29, null
  br i1 %46, label %121, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 13
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %101, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %23, align 8
  %53 = and i32 %52, 8192
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %101, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %15, align 8
  %57 = getelementptr inbounds %struct.request_queue, ptr %56, i32 0, i32 15
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %101, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 255
  %64 = icmp eq i32 %63, 3
  %65 = and i32 %62, 1
  %66 = select i1 %64, i32 2, i32 %65
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !28
  %67 = lshr i32 %28, 9
  %68 = load ptr, ptr %48, align 8
  %69 = getelementptr inbounds %struct.block_device, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr %struct.disk_stats, ptr %70, i32 0, i32 1, i32 %66
  %72 = ptrtoint ptr %71 to i32
  %73 = call i32 @llvm.read_register.i32(metadata !0) #22
  %74 = inttoptr i32 %73 to ptr
  %75 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %74) #16, !srcloc !16
  %76 = add i32 %75, %72
  %77 = inttoptr i32 %76 to ptr
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %67
  store i32 %79, ptr %77, align 4
  %80 = load ptr, ptr %48, align 8
  %81 = getelementptr inbounds %struct.block_device, ptr %80, i32 0, i32 15
  %82 = load i8, ptr %81, align 8
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %60
  %85 = getelementptr inbounds %struct.block_device, ptr %80, i32 0, i32 17
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.gendisk, ptr %86, i32 0, i32 7
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.block_device, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr %struct.disk_stats, ptr %90, i32 0, i32 1, i32 %66
  %92 = ptrtoint ptr %91 to i32
  %93 = call i32 @llvm.read_register.i32(metadata !0) #22
  %94 = inttoptr i32 %93 to ptr
  %95 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %94) #16, !srcloc !16
  %96 = add i32 %95, %92
  %97 = inttoptr i32 %96 to ptr
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, %67
  store i32 %99, ptr %97, align 4
  br label %100

100:                                              ; preds = %84, %60
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !29
  br label %101

101:                                              ; preds = %100, %55, %51, %47
  %102 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 3
  %103 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 9
  br label %104

104:                                              ; preds = %118, %101
  %105 = phi ptr [ %29, %101 ], [ %106, %118 ]
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.bio, ptr %105, i32 0, i32 3
  %108 = load i16, ptr %107, align 4
  %109 = and i16 %108, -257
  store i16 %109, ptr %107, align 4
  %110 = load i32, ptr %102, align 4
  %111 = and i32 %110, 255
  %112 = icmp eq i32 %111, 13
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = load i64, ptr %103, align 8
  %115 = getelementptr inbounds %struct.bio, ptr %105, i32 0, i32 8
  store i64 %114, ptr %115, align 4
  br label %116

116:                                              ; preds = %113, %104
  br i1 %26, label %117, label %118

117:                                              ; preds = %116
  call void @bio_endio(ptr noundef nonnull %105) #22
  br label %118

118:                                              ; preds = %117, %116
  %119 = icmp eq ptr %106, null
  br i1 %119, label %120, label %104

120:                                              ; preds = %118
  store ptr null, ptr %20, align 8
  store i32 0, ptr %27, align 8
  br label %121

121:                                              ; preds = %120, %45
  %122 = load i8, ptr %3, align 4, !range !31
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %160, label %124

124:                                              ; preds = %121
  %125 = load i32, ptr %23, align 8
  %126 = and i32 %125, 131072
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %146, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %15, align 8
  %130 = getelementptr inbounds %struct.request_queue, ptr %129, i32 0, i32 26
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %144, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.request_queue, ptr %129, i32 0, i32 25
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.blk_stat_callback, ptr %135, i32 0, i32 1, i32 0, i32 1
  %137 = load volatile ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.blk_stat_callback, ptr %135, i32 0, i32 1
  %141 = load volatile i32, ptr @jiffies, align 64
  %142 = add i32 %141, 10
  %143 = call i32 @mod_timer(ptr noundef %140, i32 noundef %142) #22
  br label %144

144:                                              ; preds = %139, %133, %128
  call void @blk_stat_add(ptr noundef %15, i64 noundef %9) #22
  %145 = load i32, ptr %23, align 8
  br label %146

146:                                              ; preds = %144, %124
  %147 = phi i32 [ %145, %144 ], [ %125, %124 ]
  %148 = and i32 %147, 4194304
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr %15, align 8
  %152 = getelementptr inbounds %struct.request_queue, ptr %151, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.elevator_type, ptr %154, i32 0, i32 1, i32 16
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %150
  call void %156(ptr noundef %15, i64 noundef %9) #22
  br label %159

159:                                              ; preds = %158, %150, %146
  call fastcc void @blk_account_io_done(ptr noundef %15, i64 noundef %9) #22
  br label %160

160:                                              ; preds = %159, %121
  %161 = load ptr, ptr %15, align 8
  %162 = getelementptr inbounds %struct.request_queue, ptr %161, i32 0, i32 4
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  call void @__rq_qos_done(ptr noundef nonnull %163, ptr noundef %15) #22
  br label %166

166:                                              ; preds = %165, %160
  %167 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 20
  store volatile i32 0, ptr %167, align 8
  %168 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 21
  %169 = load volatile i32, ptr %168, align 4
  %170 = add i32 %169, 127
  %171 = icmp ult i32 %170, 128
  %172 = load i1, ptr @req_ref_put_and_test.__already_done, align 1
  %173 = xor i1 %172, true
  %174 = select i1 %171, i1 %173, i1 false
  br i1 %174, label %175, label %176, !prof !11

175:                                              ; preds = %166
  store i1 true, ptr @req_ref_put_and_test.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 495, i32 noundef 9, ptr noundef null) #22
  br label %176

176:                                              ; preds = %175, %166
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #22, !srcloc !18
  %177 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 1, ptr elementtype(i32) %168) #22, !srcloc !24
  %178 = extractvalue { i32, i32 } %177, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !25
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %14

180:                                              ; preds = %176
  %181 = load ptr, ptr %15, align 8
  %182 = getelementptr inbounds %struct.request_queue, ptr %181, i32 0, i32 18
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %192, label %185

185:                                              ; preds = %180
  %186 = load i32, ptr %23, align 8
  %187 = and i32 %186, 32768
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = call i64 @ktime_get_mono_fast_ns() #22
  %191 = getelementptr inbounds %struct.device, ptr %183, i32 0, i32 11, i32 22
  store volatile i64 %190, ptr %191, align 8
  br label %192

192:                                              ; preds = %189, %185, %180
  %193 = icmp eq i32 %12, 32
  br i1 %193, label %198, label %194

194:                                              ; preds = %192
  %195 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 2
  %196 = load ptr, ptr %195, align 8
  %197 = icmp eq ptr %13, %196
  br i1 %197, label %246, label %198

198:                                              ; preds = %194, %192
  %199 = icmp eq ptr %13, null
  br i1 %199, label %243, label %200

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 7
  %202 = load ptr, ptr %201, align 64
  %203 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 5
  %204 = load i32, ptr %203, align 8
  %205 = and i32 %204, 2
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %216, label %207

207:                                              ; preds = %200
  %208 = and i32 %204, 8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.request_queue, ptr %202, i32 0, i32 29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %211) #22, !srcloc !18
  %212 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %211, ptr %211, i32 %12, ptr elementtype(i32) %211) #22, !srcloc !22
  br label %216

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %214) #22, !srcloc !18
  %215 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %214, ptr %214, i32 %12, ptr elementtype(i32) %214) #22, !srcloc !22
  br label %216

216:                                              ; preds = %213, %210, %200
  %217 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 19
  %218 = load ptr, ptr %217, align 16
  call void @blk_mq_put_tags(ptr noundef %218, ptr noundef nonnull %2, i32 noundef %12) #22
  %219 = getelementptr inbounds %struct.request_queue, ptr %202, i32 0, i32 2
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  %220 = load volatile i32, ptr %219, align 4
  %221 = and i32 %220, 3
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %232, !prof !14

223:                                              ; preds = %216
  %224 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !15
  %225 = call i32 @llvm.read_register.i32(metadata !0) #22
  %226 = inttoptr i32 %225 to ptr
  %227 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %226) #16, !srcloc !16
  %228 = add i32 %227, %220
  %229 = inttoptr i32 %228 to ptr
  %230 = load i32, ptr %229, align 4
  %231 = sub i32 %230, %12
  store i32 %231, ptr %229, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %224) #22, !srcloc !17
  br label %242

232:                                              ; preds = %216
  %233 = getelementptr inbounds %struct.request_queue, ptr %202, i32 0, i32 2, i32 1
  %234 = load ptr, ptr %233, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %234) #22, !srcloc !18
  %235 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %234, ptr %234, i32 %12, ptr elementtype(i32) %234) #22, !srcloc !24
  %236 = extractvalue { i32, i32 } %235, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !25
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %242, !prof !11

238:                                              ; preds = %232
  %239 = load ptr, ptr %233, align 4
  %240 = getelementptr inbounds %struct.percpu_ref_data, ptr %239, i32 0, i32 1
  %241 = load ptr, ptr %240, align 4
  call void %241(ptr noundef %219) #22
  br label %242

242:                                              ; preds = %238, %232, %223
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %243

243:                                              ; preds = %242, %198
  %244 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 2
  %245 = load ptr, ptr %244, align 8
  br label %246

246:                                              ; preds = %243, %194
  %247 = phi ptr [ %245, %243 ], [ %13, %194 ]
  %248 = phi i32 [ 0, %243 ], [ %12, %194 ]
  %249 = getelementptr inbounds %struct.request, ptr %15, i32 0, i32 5
  %250 = load i32, ptr %249, align 4
  %251 = add i32 %248, 1
  %252 = getelementptr [32 x i32], ptr %2, i32 0, i32 %248
  store i32 %250, ptr %252, align 4
  br i1 %10, label %298, label %11

253:                                              ; preds = %14
  %254 = icmp eq i32 %12, 0
  br i1 %254, label %298, label %255

255:                                              ; preds = %253
  %256 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 7
  %257 = load ptr, ptr %256, align 64
  %258 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 5
  %259 = load i32, ptr %258, align 8
  %260 = and i32 %259, 2
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %271, label %262

262:                                              ; preds = %255
  %263 = and i32 %259, 8
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.request_queue, ptr %257, i32 0, i32 29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %266) #22, !srcloc !18
  %267 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %266, ptr %266, i32 %12, ptr elementtype(i32) %266) #22, !srcloc !22
  br label %271

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %269) #22, !srcloc !18
  %270 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %269, ptr %269, i32 %12, ptr elementtype(i32) %269) #22, !srcloc !22
  br label %271

271:                                              ; preds = %268, %265, %255
  %272 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 19
  %273 = load ptr, ptr %272, align 16
  call void @blk_mq_put_tags(ptr noundef %273, ptr noundef nonnull %2, i32 noundef %12) #22
  %274 = getelementptr inbounds %struct.request_queue, ptr %257, i32 0, i32 2
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  %275 = load volatile i32, ptr %274, align 4
  %276 = and i32 %275, 3
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %287, !prof !14

278:                                              ; preds = %271
  %279 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !15
  %280 = call i32 @llvm.read_register.i32(metadata !0) #22
  %281 = inttoptr i32 %280 to ptr
  %282 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %281) #16, !srcloc !16
  %283 = add i32 %282, %275
  %284 = inttoptr i32 %283 to ptr
  %285 = load i32, ptr %284, align 4
  %286 = sub i32 %285, %12
  store i32 %286, ptr %284, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %279) #22, !srcloc !17
  br label %297

287:                                              ; preds = %271
  %288 = getelementptr inbounds %struct.request_queue, ptr %257, i32 0, i32 2, i32 1
  %289 = load ptr, ptr %288, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %289) #22, !srcloc !18
  %290 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %289, ptr %289, i32 %12, ptr elementtype(i32) %289) #22, !srcloc !24
  %291 = extractvalue { i32, i32 } %290, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !25
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %297, !prof !11

293:                                              ; preds = %287
  %294 = load ptr, ptr %288, align 4
  %295 = getelementptr inbounds %struct.percpu_ref_data, ptr %294, i32 0, i32 1
  %296 = load ptr, ptr %295, align 4
  call void %296(ptr noundef %274) #22
  br label %297

297:                                              ; preds = %293, %287, %278
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %298

298:                                              ; preds = %297, %253, %246, %8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_mq_complete_request_remote(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 20
  store volatile i32 2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 16777216
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %71

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #22
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %56, label %16

16:                                               ; preds = %7
  %17 = load volatile i32, ptr @force_irqthreads_key, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %56, label %19, !prof !11

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.blk_mq_ctx, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 64
  %24 = icmp eq i32 %10, %23
  br i1 %24, label %56, label %25

25:                                               ; preds = %19
  %26 = load volatile i32, ptr %12, align 4
  %27 = and i32 %26, 4096
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = tail call zeroext i1 @cpus_share_cache(i32 noundef %10, i32 noundef %23) #22
  br i1 %30, label %56, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %20, align 4
  %33 = getelementptr inbounds %struct.blk_mq_ctx, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 64
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i32 [ %34, %31 ], [ %23, %25 ]
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %35
  %45 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, ptrtoint (ptr @blk_cpu_done to i32)
  %48 = inttoptr i32 %47 to ptr
  %49 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 23
  %50 = tail call zeroext i1 @llist_add_batch(ptr noundef %49, ptr noundef %49, ptr noundef %48) #22
  br i1 %50, label %51, label %71

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 26
  store i64 0, ptr %52, align 8
  %53 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 26, i32 1
  store ptr @__blk_mq_complete_request_remote, ptr %53, align 8
  %54 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 26, i32 1, i32 4
  store ptr %0, ptr %54, align 4
  %55 = tail call i32 @smp_call_function_single_async(i32 noundef %36, ptr noundef %52) #22
  br label %71

56:                                               ; preds = %35, %29, %19, %16, %7
  %57 = load ptr, ptr %0, align 8
  %58 = getelementptr inbounds %struct.request_queue, ptr %57, i32 0, i32 9
  %59 = load i32, ptr %58, align 8
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !32
  %62 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %63 = inttoptr i32 %62 to ptr
  %64 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %63) #16, !srcloc !16
  %65 = add i32 %64, ptrtoint (ptr @blk_cpu_done to i32)
  %66 = inttoptr i32 %65 to ptr
  %67 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 23
  %68 = tail call zeroext i1 @llist_add_batch(ptr noundef %67, ptr noundef %67, ptr noundef %66) #22
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  tail call void @raise_softirq(i32 noundef 4) #22
  br label %70

70:                                               ; preds = %69, %61
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !33
  br label %71

71:                                               ; preds = %70, %56, %51, %44, %1
  %72 = phi i1 [ true, %70 ], [ false, %1 ], [ false, %56 ], [ true, %44 ], [ true, %51 ]
  ret i1 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_complete_request(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @blk_mq_complete_request_remote(ptr noundef %0)
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.blk_mq_ops, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %0) #22
  br label %9

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_start_request(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_issue, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #22
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !34
  %17 = tail call i32 @__traceiter_block_rq_issue(ptr noundef null, ptr noundef %0) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !35
  br label %18

18:                                               ; preds = %16, %5, %1
  %19 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 11
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1048576
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = tail call i64 @ktime_get() #22
  %25 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 15
  store i64 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 9
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 16
  store i16 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = or i32 %32, 131072
  store i32 %33, ptr %31, align 8
  %34 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %23
  tail call void @__rq_qos_issue(ptr noundef nonnull %35, ptr noundef %0) #22
  br label %38

38:                                               ; preds = %37, %23, %18
  %39 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 20
  %40 = load volatile i32, ptr %39, align 8
  %41 = icmp ne i32 %40, 0
  %42 = load i1, ptr @blk_mq_start_request.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !11

45:                                               ; preds = %38
  store i1 true, ptr @blk_mq_start_request.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1138, i32 noundef 9, ptr noundef null) #22
  br label %46

46:                                               ; preds = %45, %38
  tail call void @blk_add_timer(ptr noundef %0) #22
  store volatile i32 1, ptr %39, align 8
  %47 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %72, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 16777216
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %57, i32 0, i32 24
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 6
  %65 = load i32, ptr %64, align 8
  %66 = or i32 %65, -2147483648
  br label %67

67:                                               ; preds = %63, %55
  %68 = phi i32 [ %66, %63 ], [ %61, %55 ]
  %69 = shl i32 %59, 16
  %70 = or i32 %68, %69
  %71 = getelementptr inbounds %struct.bio, ptr %48, i32 0, i32 9
  store volatile i32 %70, ptr %71, align 4
  br label %72

72:                                               ; preds = %67, %50, %46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_execute_rq_nowait(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #22, !srcloc !36
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !14

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1185, i32 noundef 9, ptr noundef null) #22
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 254
  %12 = icmp eq i32 %11, 34
  br i1 %12, label %14, label %13, !prof !14

13:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1186, i32 noundef 9, ptr noundef null) #22
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 27
  store ptr %2, ptr %15, align 8
  %16 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 8192
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 15
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bio, ptr %27, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi ptr [ %35, %33 ], [ %31, %29 ]
  %38 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 13
  store ptr %37, ptr %38, align 8
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !37
  %39 = load ptr, ptr %38, align 8
  %40 = load volatile i32, ptr @jiffies, align 64
  tail call void @update_io_ticks(ptr noundef %39, i32 noundef %40, i1 noundef zeroext false) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !38
  br label %41

41:                                               ; preds = %36, %20, %14
  tail call void @blk_mq_sched_insert_request(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext true, i1 noundef zeroext false) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_insert_request(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @blk_execute_rq(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca %struct.completion, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1, i32 1
  store i64 0, ptr %3, align 8
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1, i32 1, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 28
  store ptr %3, ptr %6, align 4
  call void @blk_execute_rq_nowait(ptr noundef %0, i1 noundef zeroext %1, ptr noundef nonnull @blk_end_sync_rq)
  %7 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %8, i32 0, i32 13
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = load i1, ptr @blk_rq_is_poll.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !11

21:                                               ; preds = %14
  store i1 true, ptr @blk_rq_is_poll.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1206, i32 noundef 9, ptr noundef null) #22
  br label %22

22:                                               ; preds = %21, %14
  br i1 %17, label %28, label %23

23:                                               ; preds = %23, %22
  %24 = load ptr, ptr %15, align 8
  %25 = call i32 @bio_poll(ptr noundef %24, ptr noundef null, i32 noundef 0) #22
  %26 = call i32 @__cond_resched() #22
  %27 = call zeroext i1 @completion_done(ptr noundef nonnull %3) #22
  br i1 %27, label %29, label %23

28:                                               ; preds = %22, %10, %2
  call void @wait_for_completion_io(ptr noundef nonnull %3) #22
  br label %29

29:                                               ; preds = %28, %23
  %30 = load ptr, ptr %6, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = trunc i32 %31 to i8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret i8 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_end_sync_rq(ptr nocapture noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 28
  %4 = load ptr, ptr %3, align 4
  %5 = zext i8 %1 to i32
  %6 = inttoptr i32 %5 to ptr
  store ptr %6, ptr %3, align 4
  tail call void @complete(ptr noundef %4) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion_io(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_requeue_request(ptr noundef %0, i1 noundef zeroext %1) #0 {
  tail call fastcc void @__blk_mq_requeue_request(ptr noundef %0)
  %3 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 4198400
  %6 = icmp eq i32 %5, 4198400
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.elevator_type, ptr %11, i32 0, i32 1, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  tail call void %13(ptr noundef %0) #22
  %16 = load i32, ptr %3, align 8
  br label %17

17:                                               ; preds = %15, %7, %2
  %18 = phi i32 [ %4, %2 ], [ %4, %7 ], [ %16, %15 ]
  %19 = load ptr, ptr %0, align 8
  %20 = and i32 %18, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !14

22:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-mq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1326, 0\0A.popsection", ""() #22, !srcloc !39
  unreachable

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 38
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #22
  %26 = load i32, ptr %3, align 8
  %27 = or i32 %26, 8
  store i32 %27, ptr %3, align 8
  %28 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 12
  %29 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 37
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %28, ptr %31, align 4
  store ptr %30, ptr %28, align 4
  %32 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 12, i32 0, i32 1
  store ptr %29, ptr %32, align 4
  store volatile ptr %28, ptr %29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #22
  br i1 %1, label %33, label %36

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 39
  %35 = tail call i32 @kblockd_mod_delayed_work_on(i32 noundef 16, ptr noundef %34, i32 noundef 0) #22
  br label %36

36:                                               ; preds = %33, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__blk_mq_requeue_request(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 19
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @blk_mq_put_tag(ptr noundef %14, ptr noundef %16, i32 noundef %4) #22
  store i32 -1, ptr %3, align 4
  %17 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %10
  %22 = and i32 %18, -65
  store i32 %22, ptr %17, align 8
  %23 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 7
  %29 = load ptr, ptr %28, align 64
  %30 = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #22, !srcloc !18
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #22, !srcloc !22
  br label %35

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #22, !srcloc !18
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #22, !srcloc !22
  br label %35

35:                                               ; preds = %32, %27, %10, %6, %1
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_requeue, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = tail call ptr @llvm.thread.pointer() #22
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
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !40
  %50 = tail call i32 @__traceiter_block_rq_requeue(ptr noundef null, ptr noundef %0) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !41
  br label %51

51:                                               ; preds = %49, %38, %35
  %52 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @__rq_qos_requeue(ptr noundef nonnull %53, ptr noundef %0) #22
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 20
  %58 = load volatile i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  store volatile i32 0, ptr %57, align 8
  %61 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, -2097153
  store i32 %63, ptr %61, align 8
  br label %64

64:                                               ; preds = %60, %56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_add_to_requeue_list(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !14

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-mq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1326, 0\0A.popsection", ""() #22, !srcloc !39
  unreachable

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 38
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #22
  br i1 %1, label %13, label %21

13:                                               ; preds = %10
  %14 = load i32, ptr %5, align 8
  %15 = or i32 %14, 8
  store i32 %15, ptr %5, align 8
  %16 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 12
  %17 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 37
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %16, ptr %19, align 4
  store ptr %18, ptr %16, align 4
  %20 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 12, i32 0, i32 1
  store ptr %17, ptr %20, align 4
  store volatile ptr %16, ptr %17, align 4
  br label %27

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 12
  %23 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 37
  %24 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 37, i32 1
  %25 = load ptr, ptr %24, align 4
  store ptr %22, ptr %24, align 4
  store ptr %23, ptr %22, align 4
  %26 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 12, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  store volatile ptr %22, ptr %25, align 4
  br label %27

27:                                               ; preds = %21, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #22
  br i1 %2, label %28, label %31

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 39
  %30 = tail call i32 @kblockd_mod_delayed_work_on(i32 noundef 16, ptr noundef %29, i32 noundef 0) #22
  br label %31

31:                                               ; preds = %28, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_kick_requeue_list(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 39
  %3 = tail call i32 @kblockd_mod_delayed_work_on(i32 noundef 16, ptr noundef %2, i32 noundef 0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kblockd_mod_delayed_work_on(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_delay_kick_requeue_list(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #22
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 39
  %5 = tail call i32 @kblockd_mod_delayed_work_on(i32 noundef 16, ptr noundef %4, i32 noundef %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_mq_queue_inflight(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1
  call void @blk_mq_queue_tag_busy_iter(ptr noundef %0, ptr noundef nonnull @blk_mq_rq_inflight, ptr noundef nonnull %2) #22
  %3 = load i8, ptr %2, align 1, !range !31
  %4 = icmp ne i8 %3, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @blk_mq_rq_inflight(ptr noundef %0, ptr nocapture noundef writeonly %1, i1 noundef zeroext %2) #7 {
  %4 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 20
  %5 = load volatile i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  store i8 1, ptr %1, align 1
  br label %8

8:                                                ; preds = %7, %3
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_put_rq_ref(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i1 @is_flush_rq(ptr noundef %0) #22
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef %0, i8 noundef zeroext 0) #22
  br label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 21
  %8 = load volatile i32, ptr %7, align 4
  %9 = add i32 %8, 127
  %10 = icmp ult i32 %9, 128
  %11 = load i1, ptr @req_ref_put_and_test.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %6
  store i1 true, ptr @req_ref_put_and_test.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 495, i32 noundef 9, ptr noundef null) #22
  br label %15

15:                                               ; preds = %14, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #22, !srcloc !18
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #22, !srcloc !24
  %17 = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !25
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call fastcc void @__blk_mq_free_request(ptr noundef %0)
  br label %20

20:                                               ; preds = %19, %15, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_flush_rq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_flush_busy_ctxs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10, i32 1
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %72, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10, i32 4
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10, i32 2
  %11 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 15
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 13
  %13 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  br label %14

14:                                               ; preds = %65, %8
  %15 = phi i32 [ %6, %8 ], [ %70, %65 ]
  %16 = phi i32 [ 0, %8 ], [ %69, %65 ]
  %17 = phi i32 [ 0, %8 ], [ %23, %65 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store i32 0, ptr %3, align 4, !annotation !10
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr %struct.sbitmap_word, ptr %18, i32 %16
  %20 = load i32, ptr %19, align 64
  %21 = sub i32 %15, %17
  %22 = call i32 @llvm.umin.i32(i32 %20, i32 %21) #22
  %23 = add i32 %22, %17
  %24 = getelementptr %struct.sbitmap_word, ptr %18, i32 %16, i32 2
  %25 = load i32, ptr %24, align 64
  %26 = getelementptr %struct.sbitmap_word, ptr %18, i32 %16, i32 4
  %27 = load i32, ptr %26, align 64
  %28 = xor i32 %27, -1
  %29 = and i32 %25, %28
  store i32 %29, ptr %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %65, label %31

31:                                               ; preds = %14
  %32 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %22, i32 noundef 0) #22
  %33 = icmp ult i32 %32, %22
  br i1 %33, label %47, label %65

34:                                               ; preds = %60, %47
  %35 = load i32, ptr %5, align 4
  %36 = shl nsw i32 -1, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %51, %37
  %39 = load ptr, ptr %9, align 4
  %40 = lshr i32 %51, %35
  %41 = getelementptr %struct.sbitmap_word, ptr %39, i32 %40, i32 2
  call void @_clear_bit(i32 noundef %38, ptr noundef %41) #22
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %42 = load i16, ptr %54, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %54, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  %44 = add nuw i32 %48, 1
  %45 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %22, i32 noundef %44) #22
  %46 = icmp ult i32 %45, %22
  br i1 %46, label %47, label %65

47:                                               ; preds = %34, %31
  %48 = phi i32 [ %45, %34 ], [ %32, %31 ]
  %49 = load i32, ptr %5, align 4
  %50 = shl i32 %16, %49
  %51 = add i32 %50, %48
  %52 = load ptr, ptr %11, align 16
  %53 = getelementptr ptr, ptr %52, i32 %51
  %54 = load ptr, ptr %53, align 4
  %55 = load i16, ptr %12, align 4
  %56 = zext i16 %55 to i32
  call void @_raw_spin_lock(ptr noundef %54) #22
  %57 = getelementptr %struct.anon, ptr %54, i32 0, i32 1, i32 %56
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %34, label %60

60:                                               ; preds = %47
  %61 = load ptr, ptr %13, align 4
  %62 = getelementptr %struct.anon, ptr %54, i32 0, i32 1, i32 %56, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %61, ptr %64, align 4
  store ptr %58, ptr %61, align 4
  store ptr %1, ptr %63, align 4
  store ptr %63, ptr %13, align 4
  store volatile ptr %57, ptr %57, align 4
  store ptr %57, ptr %62, align 4
  br label %34

65:                                               ; preds = %34, %31, %14
  %66 = add i32 %16, 1
  %67 = load i32, ptr %10, align 4
  %68 = icmp ult i32 %66, %67
  %69 = select i1 %68, i32 %66, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  %70 = load i32, ptr %4, align 4
  %71 = icmp ugt i32 %70, %23
  br i1 %71, label %14, label %72

72:                                               ; preds = %65, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @blk_mq_dequeue_from_ctx(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 13
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr %struct.blk_mq_ctx, ptr %1, i32 0, i32 2, i32 %8
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi i32 [ %11, %5 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10
  %15 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10, i32 1
  %16 = load i32, ptr %14, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %99, label %18

18:                                               ; preds = %12
  %19 = icmp ugt i32 %16, %13
  %20 = select i1 %19, i32 %13, i32 0
  %21 = load i32, ptr %15, align 4
  %22 = shl nsw i32 -1, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %20, %23
  %25 = lshr i32 %20, %21
  %26 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10, i32 4
  %27 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10, i32 2
  %28 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 15
  %29 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 13
  br label %30

30:                                               ; preds = %92, %18
  %31 = phi i32 [ %16, %18 ], [ %97, %92 ]
  %32 = phi i32 [ %25, %18 ], [ %96, %92 ]
  %33 = phi i32 [ %24, %18 ], [ 0, %92 ]
  %34 = phi i32 [ 0, %18 ], [ %41, %92 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store i32 0, ptr %3, align 4, !annotation !10
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr %struct.sbitmap_word, ptr %35, i32 %32
  %37 = load i32, ptr %36, align 64
  %38 = sub i32 %37, %33
  %39 = sub i32 %31, %34
  %40 = call i32 @llvm.umin.i32(i32 %38, i32 %39) #22
  %41 = add i32 %40, %34
  %42 = getelementptr %struct.sbitmap_word, ptr %35, i32 %32, i32 2
  %43 = load i32, ptr %42, align 64
  %44 = getelementptr %struct.sbitmap_word, ptr %35, i32 %32, i32 4
  %45 = load i32, ptr %44, align 64
  %46 = xor i32 %45, -1
  %47 = and i32 %43, %46
  store i32 %47, ptr %3, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %92, label %49

49:                                               ; preds = %30
  %50 = add i32 %40, %33
  %51 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %50, i32 noundef %33) #22
  %52 = icmp ult i32 %51, %50
  br i1 %52, label %57, label %92

53:                                               ; preds = %86
  %54 = add nuw i32 %58, 1
  %55 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %50, i32 noundef %54) #22
  %56 = icmp ult i32 %55, %50
  br i1 %56, label %57, label %92

57:                                               ; preds = %53, %49
  %58 = phi i32 [ %55, %53 ], [ %51, %49 ]
  %59 = load i32, ptr %15, align 4
  %60 = shl i32 %32, %59
  %61 = add i32 %60, %58
  %62 = load ptr, ptr %28, align 16
  %63 = getelementptr ptr, ptr %62, i32 %61
  %64 = load ptr, ptr %63, align 4
  %65 = load i16, ptr %29, align 4
  %66 = zext i16 %65 to i32
  call void @_raw_spin_lock(ptr noundef %64) #22
  %67 = getelementptr %struct.anon, ptr %64, i32 0, i32 1, i32 %66
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %86, label %70

70:                                               ; preds = %57
  %71 = getelementptr i8, ptr %68, i32 -56
  %72 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %68, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %73, ptr %75, align 4
  store volatile ptr %74, ptr %73, align 4
  store volatile ptr %68, ptr %68, align 4
  store ptr %68, ptr %72, align 4
  %76 = load volatile ptr, ptr %67, align 4
  %77 = icmp eq ptr %76, %67
  br i1 %77, label %78, label %86

78:                                               ; preds = %70
  %79 = load i32, ptr %15, align 4
  %80 = shl nsw i32 -1, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %61, %81
  %83 = load ptr, ptr %26, align 4
  %84 = lshr i32 %61, %79
  %85 = getelementptr %struct.sbitmap_word, ptr %83, i32 %84, i32 2
  call void @_clear_bit(i32 noundef %82, ptr noundef %85) #22
  br label %86

86:                                               ; preds = %78, %70, %57
  %87 = phi ptr [ null, %57 ], [ %71, %78 ], [ %71, %70 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %88 = load i16, ptr %64, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %64, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  %90 = icmp eq ptr %87, null
  br i1 %90, label %53, label %91

91:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  br label %99

92:                                               ; preds = %53, %49, %30
  %93 = add i32 %32, 1
  %94 = load i32, ptr %27, align 4
  %95 = icmp ult i32 %93, %94
  %96 = select i1 %95, i32 %93, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  %97 = load i32, ptr %14, align 4
  %98 = icmp ugt i32 %97, %41
  br i1 %98, label %30, label %99

99:                                               ; preds = %92, %91, %12
  %100 = phi ptr [ null, %12 ], [ %87, %91 ], [ null, %92 ]
  ret ptr %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__blk_mq_get_driver_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %87

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr inbounds %struct.blk_mq_tags, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %8, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = tail call zeroext i1 @__blk_mq_tag_busy(ptr noundef %8) #22
  %19 = load ptr, ptr %7, align 8
  br label %20

20:                                               ; preds = %17, %6
  %21 = phi ptr [ %8, %6 ], [ %19, %17 ]
  %22 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %21, i32 0, i32 20
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.blk_mq_tags, ptr %23, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, %25
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %21, i32 0, i32 19
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr inbounds %struct.blk_mq_tags, ptr %31, i32 0, i32 4
  br label %80

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.blk_mq_tags, ptr %10, i32 0, i32 3
  %35 = icmp eq ptr %21, null
  br i1 %35, label %80, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %21, i32 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %80, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %34, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %80, label %44

44:                                               ; preds = %41
  %45 = and i32 %38, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %21, i32 0, i32 7
  %49 = load ptr, ptr %48, align 64
  %50 = getelementptr inbounds %struct.request_queue, ptr %49, i32 0, i32 11
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 268435456
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %80, label %59

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.anon.1, ptr %21, i32 0, i32 2
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %54, %47
  %60 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %21, i32 0, i32 19
  %61 = load ptr, ptr %60, align 16
  %62 = getelementptr inbounds %struct.blk_mq_tags, ptr %61, i32 0, i32 2
  %63 = load volatile i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %59
  %66 = add i32 %42, -1
  %67 = add i32 %66, %63
  %68 = udiv i32 %67, %63
  %69 = tail call i32 @llvm.umax.i32(i32 %68, i32 4) #22
  br i1 %46, label %74, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %21, i32 0, i32 7
  %72 = load ptr, ptr %71, align 64
  %73 = getelementptr inbounds %struct.request_queue, ptr %72, i32 0, i32 29
  br label %76

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %21, i32 0, i32 25
  br label %76

76:                                               ; preds = %74, %70
  %77 = phi ptr [ %73, %70 ], [ %75, %74 ]
  %78 = load volatile i32, ptr %77, align 4
  %79 = icmp ult i32 %78, %69
  br i1 %79, label %80, label %117

80:                                               ; preds = %76, %59, %54, %47, %41, %36, %33, %29
  %81 = phi ptr [ %32, %29 ], [ %34, %76 ], [ %34, %47 ], [ %34, %36 ], [ %34, %33 ], [ %34, %41 ], [ %34, %54 ], [ %34, %59 ]
  %82 = phi i32 [ 0, %29 ], [ %12, %76 ], [ %12, %47 ], [ %12, %36 ], [ %12, %33 ], [ %12, %41 ], [ %12, %54 ], [ %12, %59 ]
  %83 = tail call i32 @__sbitmap_queue_get(ptr noundef %81) #22
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %117, label %85

85:                                               ; preds = %80
  %86 = add i32 %83, %82
  store i32 %86, ptr %3, align 4
  br label %87

87:                                               ; preds = %85, %2
  %88 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 5
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %110, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 64
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = or i32 %94, 64
  store i32 %98, ptr %93, align 8
  %99 = load i32, ptr %88, align 8
  %100 = and i32 %99, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %104 = load ptr, ptr %103, align 64
  %105 = getelementptr inbounds %struct.request_queue, ptr %104, i32 0, i32 29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #22, !srcloc !18
  %106 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 1, ptr elementtype(i32) %105) #22, !srcloc !19
  br label %110

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %108) #22, !srcloc !18
  %109 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %108, ptr %108, i32 1, ptr elementtype(i32) %108) #22, !srcloc !19
  br label %110

110:                                              ; preds = %107, %102, %92, %87
  %111 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 19
  %112 = load ptr, ptr %111, align 16
  %113 = getelementptr inbounds %struct.blk_mq_tags, ptr %112, i32 0, i32 5
  %114 = load ptr, ptr %113, align 4
  %115 = load i32, ptr %3, align 4
  %116 = getelementptr ptr, ptr %114, i32 %115
  store ptr %1, ptr %116, align 4
  br label %117

117:                                              ; preds = %110, %80, %76
  %118 = phi i1 [ true, %110 ], [ false, %76 ], [ false, %80 ]
  ret i1 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_mq_dispatch_rq_list(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.blk_mq_queue_data, align 8
  %6 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr %4, ptr %4, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %8, align 4
  %9 = load volatile ptr, ptr %1, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %441, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.blk_mq_queue_data, ptr %5, i32 0, i32 1
  %13 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 5
  br label %14

14:                                               ; preds = %325, %11
  %15 = phi ptr [ %329, %325 ], [ %9, %11 ]
  %16 = phi i32 [ %326, %325 ], [ 0, %11 ]
  %17 = phi i32 [ %327, %325 ], [ 0, %11 ]
  %18 = phi i1 [ %328, %325 ], [ false, %11 ]
  %19 = phi i32 [ %261, %325 ], [ %2, %11 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store i64 0, ptr %5, align 8, !annotation !10
  %20 = getelementptr i8, ptr %15, i32 -56
  %21 = getelementptr i8, ptr %15, i32 -48
  %22 = load ptr, ptr %21, align 8
  %23 = icmp ne ptr %22, %0
  %24 = load i1, ptr @blk_mq_dispatch_rq_list.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %29, !prof !11

27:                                               ; preds = %14
  store i1 true, ptr @blk_mq_dispatch_rq_list.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1829, i32 noundef 9, ptr noundef null) #22
  %28 = load ptr, ptr %21, align 8
  br label %29

29:                                               ; preds = %27, %14
  %30 = phi ptr [ %28, %27 ], [ %22, %14 ]
  %31 = icmp eq i32 %19, 0
  br i1 %31, label %32, label %85

32:                                               ; preds = %29
  %33 = load ptr, ptr %20, align 8
  %34 = getelementptr inbounds %struct.request_queue, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.blk_mq_ops, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %78, label %39

39:                                               ; preds = %32
  %40 = call i32 %37(ptr noundef %33) #22
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %20, align 8
  %44 = getelementptr inbounds %struct.request_queue, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 8
  br label %78

46:                                               ; preds = %39
  %47 = getelementptr i8, ptr %15, i32 -36
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %321, label %50

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %15, i32 -32
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %321, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %21, align 8
  %56 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %55, i32 0, i32 19
  %57 = load ptr, ptr %56, align 16
  %58 = getelementptr i8, ptr %15, i32 -52
  %59 = load ptr, ptr %58, align 4
  call void @blk_mq_put_tag(ptr noundef %57, ptr noundef %59, i32 noundef %48) #22
  store i32 -1, ptr %47, align 4
  %60 = getelementptr i8, ptr %15, i32 -40
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 64
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %321, label %64

64:                                               ; preds = %54
  %65 = and i32 %61, -65
  store i32 %65, ptr %60, align 8
  %66 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %55, i32 0, i32 5
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %55, i32 0, i32 7
  %72 = load ptr, ptr %71, align 64
  %73 = getelementptr inbounds %struct.request_queue, ptr %72, i32 0, i32 29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #22, !srcloc !18
  %74 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 1, ptr elementtype(i32) %73) #22, !srcloc !22
  br label %321

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %55, i32 0, i32 25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #22, !srcloc !18
  %77 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %76, ptr %76, i32 1, ptr elementtype(i32) %76) #22, !srcloc !22
  br label %321

78:                                               ; preds = %42, %32
  %79 = phi ptr [ %45, %42 ], [ %35, %32 ]
  %80 = phi i32 [ %40, %42 ], [ 0, %32 ]
  %81 = getelementptr inbounds %struct.blk_mq_ops, ptr %79, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  call void %82(ptr noundef %20, i32 noundef %80) #22
  br label %85

85:                                               ; preds = %84, %78, %29
  %86 = phi i32 [ -1, %29 ], [ %80, %78 ], [ %80, %84 ]
  %87 = load ptr, ptr %21, align 8
  %88 = getelementptr i8, ptr %15, i32 -36
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %102, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %87, i32 0, i32 5
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %87, i32 0, i32 19
  %98 = load ptr, ptr %97, align 16
  %99 = getelementptr inbounds %struct.blk_mq_tags, ptr %98, i32 0, i32 5
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr ptr, ptr %100, i32 %89
  store ptr %20, ptr %101, align 4
  br label %227

102:                                              ; preds = %91, %85
  %103 = call zeroext i1 @__blk_mq_get_driver_tag(ptr noundef %87, ptr noundef %20) #22
  br i1 %103, label %227, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %30, i32 0, i32 19
  %106 = load ptr, ptr %105, align 16
  %107 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %30, i32 0, i32 5
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 2
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %104
  call void @blk_mq_sched_mark_restart_hctx(ptr noundef %30) #22
  %112 = load ptr, ptr %21, align 8
  %113 = load i32, ptr %88, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %214, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %112, i32 0, i32 5
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %214

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %112, i32 0, i32 19
  %122 = load ptr, ptr %121, align 16
  %123 = getelementptr inbounds %struct.blk_mq_tags, ptr %122, i32 0, i32 5
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr ptr, ptr %124, i32 %113
  store ptr %20, ptr %125, align 4
  br label %227

126:                                              ; preds = %104
  %127 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %30, i32 0, i32 17
  %128 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %30, i32 0, i32 17, i32 3
  %129 = load volatile ptr, ptr %128, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !9
  %130 = icmp eq ptr %129, %128
  br i1 %130, label %131, label %213

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %30, i32 0, i32 17, i32 3, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, %128
  br i1 %134, label %135, label %213

135:                                              ; preds = %131
  %136 = icmp eq ptr %30, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.blk_mq_tags, ptr %106, i32 0, i32 3, i32 3
  %139 = load ptr, ptr %138, align 4
  br label %154

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %30, i32 0, i32 18
  %142 = getelementptr inbounds %struct.blk_mq_tags, ptr %106, i32 0, i32 3, i32 3
  %143 = load ptr, ptr %142, align 4
  %144 = load volatile i32, ptr %141, align 4
  %145 = load volatile i32, ptr %141, align 4
  %146 = add i32 %145, 1
  %147 = and i32 %146, 7
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !46
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #22, !srcloc !18
  br label %148

148:                                              ; preds = %148, %140
  %149 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 %145, i32 %147, ptr elementtype(i32) %141) #22, !srcloc !47
  %150 = extractvalue { i32, i32 } %149, 0
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %148

152:                                              ; preds = %148
  %153 = getelementptr %struct.sbq_wait_state, ptr %143, i32 %144
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !48
  br label %154

154:                                              ; preds = %152, %137
  %155 = phi ptr [ %153, %152 ], [ %139, %137 ]
  %156 = getelementptr inbounds %struct.sbq_wait_state, ptr %155, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %156) #22
  %157 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %30, i32 0, i32 16
  call void @_raw_spin_lock(ptr noundef %157) #22
  %158 = load volatile ptr, ptr %128, align 4
  %159 = icmp eq ptr %158, %128
  br i1 %159, label %165, label %160

160:                                              ; preds = %154
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %161 = load i16, ptr %157, align 4
  %162 = add i16 %161, 1
  store i16 %162, ptr %157, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %163 = load i16, ptr %156, align 4
  %164 = add i16 %163, 1
  store i16 %164, ptr %156, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !49
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !50
  br label %213

165:                                              ; preds = %154
  %166 = getelementptr inbounds %struct.blk_mq_tags, ptr %106, i32 0, i32 3, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %166) #22, !srcloc !18
  %167 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %166, ptr %166, i32 1, ptr elementtype(i32) %166) #22, !srcloc !19
  %168 = load i32, ptr %127, align 4
  %169 = and i32 %168, -2
  store i32 %169, ptr %127, align 4
  %170 = getelementptr inbounds %struct.sbq_wait_state, ptr %155, i32 0, i32 1, i32 1
  br label %171

171:                                              ; preds = %175, %165
  %172 = phi ptr [ %170, %165 ], [ %173, %175 ]
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, %170
  br i1 %174, label %180, label %175

175:                                              ; preds = %171
  %176 = getelementptr i8, ptr %173, i32 -12
  %177 = load i32, ptr %176, align 4
  %178 = and i32 %177, 32
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %171

180:                                              ; preds = %175, %171
  %181 = phi ptr [ %173, %175 ], [ %170, %171 ]
  %182 = getelementptr inbounds %struct.list_head, ptr %181, i32 0, i32 1
  store ptr %128, ptr %182, align 4
  store ptr %181, ptr %128, align 4
  store ptr %172, ptr %132, align 4
  store volatile ptr %128, ptr %172, align 4
  %183 = load ptr, ptr %21, align 8
  %184 = load i32, ptr %88, align 4
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %197, label %186

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %183, i32 0, i32 5
  %188 = load i32, ptr %187, align 8
  %189 = and i32 %188, 2
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %183, i32 0, i32 19
  %193 = load ptr, ptr %192, align 16
  %194 = getelementptr inbounds %struct.blk_mq_tags, ptr %193, i32 0, i32 5
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr ptr, ptr %195, i32 %184
  store ptr %20, ptr %196, align 4
  br label %204

197:                                              ; preds = %186, %180
  %198 = call zeroext i1 @__blk_mq_get_driver_tag(ptr noundef %183, ptr noundef %20) #22
  br i1 %198, label %204, label %199

199:                                              ; preds = %197
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %200 = load i16, ptr %157, align 4
  %201 = add i16 %200, 1
  store i16 %201, ptr %157, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %202 = load i16, ptr %156, align 4
  %203 = add i16 %202, 1
  store i16 %203, ptr %156, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !49
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !50
  br label %213

204:                                              ; preds = %197, %191
  %205 = load ptr, ptr %132, align 4
  %206 = load ptr, ptr %128, align 4
  %207 = getelementptr inbounds %struct.list_head, ptr %206, i32 0, i32 1
  store ptr %205, ptr %207, align 4
  store volatile ptr %206, ptr %205, align 4
  store volatile ptr %128, ptr %128, align 4
  store ptr %128, ptr %132, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %166) #22, !srcloc !18
  %208 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %166, ptr %166, i32 1, ptr elementtype(i32) %166) #22, !srcloc !22
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %209 = load i16, ptr %157, align 4
  %210 = add i16 %209, 1
  store i16 %210, ptr %157, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %211 = load i16, ptr %156, align 4
  %212 = add i16 %211, 1
  store i16 %212, ptr %156, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !49
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !50
  br label %227

213:                                              ; preds = %199, %160, %131, %126
  br i1 %31, label %218, label %321

214:                                              ; preds = %115, %111
  %215 = call zeroext i1 @__blk_mq_get_driver_tag(ptr noundef %112, ptr noundef %20) #22
  %216 = xor i1 %31, true
  %217 = or i1 %215, %216
  br i1 %217, label %226, label %218

218:                                              ; preds = %214, %213
  %219 = load ptr, ptr %20, align 8
  %220 = getelementptr inbounds %struct.request_queue, ptr %219, i32 0, i32 5
  %221 = load ptr, ptr %220, align 8
  %222 = getelementptr inbounds %struct.blk_mq_ops, ptr %221, i32 0, i32 4
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %321, label %225

225:                                              ; preds = %218
  call void %223(ptr noundef %219, i32 noundef %86) #22
  br label %321

226:                                              ; preds = %214
  br i1 %215, label %227, label %321

227:                                              ; preds = %226, %204, %120, %102, %96
  %228 = getelementptr %struct.list_head, ptr %15, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = load ptr, ptr %15, align 4
  %231 = getelementptr inbounds %struct.list_head, ptr %230, i32 0, i32 1
  store ptr %229, ptr %231, align 4
  store volatile ptr %230, ptr %229, align 4
  store volatile ptr %15, ptr %15, align 4
  store ptr %15, ptr %228, align 4
  store ptr %20, ptr %5, align 8
  %232 = load volatile ptr, ptr %1, align 4
  %233 = icmp eq ptr %232, %1
  br i1 %233, label %258, label %234

234:                                              ; preds = %227
  %235 = getelementptr i8, ptr %232, i32 -56
  %236 = getelementptr i8, ptr %232, i32 -48
  %237 = load ptr, ptr %236, align 8
  %238 = getelementptr i8, ptr %232, i32 -36
  %239 = load i32, ptr %238, align 4
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %252, label %241

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %237, i32 0, i32 5
  %243 = load i32, ptr %242, align 8
  %244 = and i32 %243, 2
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %237, i32 0, i32 19
  %248 = load ptr, ptr %247, align 16
  %249 = getelementptr inbounds %struct.blk_mq_tags, ptr %248, i32 0, i32 5
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr ptr, ptr %250, i32 %239
  store ptr %235, ptr %251, align 4
  br label %254

252:                                              ; preds = %241, %234
  %253 = call zeroext i1 @__blk_mq_get_driver_tag(ptr noundef %237, ptr noundef %235) #22
  br label %254

254:                                              ; preds = %252, %246
  %255 = phi i1 [ %253, %252 ], [ true, %246 ]
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i8
  br label %258

258:                                              ; preds = %254, %227
  %259 = phi i8 [ %257, %254 ], [ 1, %227 ]
  store i8 %259, ptr %12, align 4
  %260 = add i32 %19, -1
  %261 = select i1 %31, i32 0, i32 %260
  %262 = load ptr, ptr %13, align 8
  %263 = load ptr, ptr %262, align 4
  %264 = call zeroext i8 %263(ptr noundef %0, ptr noundef nonnull %5) #22
  switch i8 %264, label %314 [
    i8 0, label %265
    i8 9, label %268
    i8 13, label %267
    i8 14, label %311
  ]

265:                                              ; preds = %258
  %266 = add i32 %17, 1
  br label %325

267:                                              ; preds = %258
  br label %268

268:                                              ; preds = %267, %258
  %269 = phi i1 [ %18, %267 ], [ true, %258 ]
  %270 = load volatile ptr, ptr %1, align 4
  %271 = icmp eq ptr %270, %1
  %272 = getelementptr i8, ptr %270, i32 -56
  %273 = icmp eq ptr %272, null
  %274 = or i1 %271, %273
  br i1 %274, label %308, label %275

275:                                              ; preds = %268
  %276 = getelementptr i8, ptr %270, i32 -36
  %277 = load i32, ptr %276, align 4
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %308, label %279

279:                                              ; preds = %275
  %280 = getelementptr i8, ptr %270, i32 -32
  %281 = load i32, ptr %280, align 8
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %308, label %283

283:                                              ; preds = %279
  %284 = getelementptr i8, ptr %270, i32 -48
  %285 = load ptr, ptr %284, align 8
  %286 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %285, i32 0, i32 19
  %287 = load ptr, ptr %286, align 16
  %288 = getelementptr i8, ptr %270, i32 -52
  %289 = load ptr, ptr %288, align 4
  call void @blk_mq_put_tag(ptr noundef %287, ptr noundef %289, i32 noundef %277) #22
  store i32 -1, ptr %276, align 4
  %290 = getelementptr i8, ptr %270, i32 -40
  %291 = load i32, ptr %290, align 8
  %292 = and i32 %291, 64
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %308, label %294

294:                                              ; preds = %283
  %295 = and i32 %291, -65
  store i32 %295, ptr %290, align 8
  %296 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %285, i32 0, i32 5
  %297 = load i32, ptr %296, align 8
  %298 = and i32 %297, 8
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %294
  %301 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %285, i32 0, i32 7
  %302 = load ptr, ptr %301, align 64
  %303 = getelementptr inbounds %struct.request_queue, ptr %302, i32 0, i32 29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %303) #22, !srcloc !18
  %304 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %303, ptr %303, i32 1, ptr elementtype(i32) %303) #22, !srcloc !22
  br label %308

305:                                              ; preds = %294
  %306 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %285, i32 0, i32 25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %306) #22, !srcloc !18
  %307 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %306, ptr %306, i32 1, ptr elementtype(i32) %306) #22, !srcloc !22
  br label %308

308:                                              ; preds = %305, %300, %283, %279, %275, %268
  %309 = load ptr, ptr %1, align 4
  %310 = getelementptr inbounds %struct.list_head, ptr %309, i32 0, i32 1
  store ptr %15, ptr %310, align 4
  store ptr %309, ptr %15, align 4
  store ptr %1, ptr %228, align 4
  store volatile ptr %15, ptr %1, align 4
  call fastcc void @__blk_mq_requeue_request(ptr noundef %20) #22
  br label %321

311:                                              ; preds = %258
  %312 = load ptr, ptr %4, align 8
  %313 = getelementptr inbounds %struct.list_head, ptr %312, i32 0, i32 1
  store ptr %15, ptr %313, align 4
  store ptr %312, ptr %15, align 4
  store ptr %4, ptr %228, align 4
  store volatile ptr %15, ptr %4, align 8
  call fastcc void @__blk_mq_requeue_request(ptr noundef %20) #22
  br label %325

314:                                              ; preds = %258
  %315 = getelementptr i8, ptr %15, i32 -24
  %316 = load i32, ptr %315, align 8
  %317 = call zeroext i1 @blk_update_request(ptr noundef %20, i8 noundef zeroext %264, i32 noundef %316) #22
  br i1 %317, label %318, label %319

318:                                              ; preds = %314
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-mq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 933, 0\0A.popsection", ""() #22, !srcloc !30
  unreachable

319:                                              ; preds = %314
  %320 = add i32 %16, 1
  call void @__blk_mq_end_request(ptr noundef %20, i8 noundef zeroext %264) #22
  br label %325

321:                                              ; preds = %308, %226, %225, %218, %213, %75, %70, %54, %50, %46
  %322 = phi i32 [ 0, %308 ], [ 1, %225 ], [ 1, %218 ], [ 1, %213 ], [ 2, %75 ], [ 2, %70 ], [ 2, %54 ], [ 2, %50 ], [ 2, %46 ], [ 1, %226 ]
  %323 = phi i1 [ %269, %308 ], [ %18, %225 ], [ %18, %218 ], [ %18, %213 ], [ %18, %75 ], [ %18, %70 ], [ %18, %54 ], [ %18, %50 ], [ %18, %46 ], [ %18, %226 ]
  %324 = phi i32 [ %261, %308 ], [ %19, %225 ], [ %19, %218 ], [ %19, %213 ], [ 0, %75 ], [ 0, %70 ], [ 0, %54 ], [ 0, %50 ], [ 0, %46 ], [ %19, %226 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %331

325:                                              ; preds = %319, %311, %265
  %326 = phi i32 [ %16, %265 ], [ %16, %311 ], [ %320, %319 ]
  %327 = phi i32 [ %266, %265 ], [ %17, %311 ], [ %17, %319 ]
  %328 = phi i1 [ %18, %265 ], [ true, %311 ], [ %18, %319 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  %329 = load volatile ptr, ptr %1, align 4
  %330 = icmp eq ptr %329, %1
  br i1 %330, label %331, label %14

331:                                              ; preds = %325, %321
  %332 = phi i32 [ %324, %321 ], [ %261, %325 ]
  %333 = phi i1 [ %323, %321 ], [ %328, %325 ]
  %334 = phi i32 [ %17, %321 ], [ %327, %325 ]
  %335 = phi i32 [ %16, %321 ], [ %326, %325 ]
  %336 = phi i32 [ %322, %321 ], [ 0, %325 ]
  %337 = load volatile ptr, ptr %4, align 8
  %338 = icmp eq ptr %337, %4
  br i1 %338, label %347, label %339

339:                                              ; preds = %331
  %340 = load volatile ptr, ptr %4, align 8
  %341 = icmp eq ptr %340, %4
  br i1 %341, label %347, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %344 = load ptr, ptr %343, align 4
  %345 = load ptr, ptr %8, align 4
  %346 = getelementptr inbounds %struct.list_head, ptr %340, i32 0, i32 1
  store ptr %344, ptr %346, align 4
  store ptr %340, ptr %344, align 4
  store ptr %1, ptr %345, align 4
  store ptr %345, ptr %343, align 4
  store volatile ptr %4, ptr %4, align 8
  store ptr %4, ptr %8, align 4
  br label %347

347:                                              ; preds = %342, %339, %331
  %348 = load volatile ptr, ptr %1, align 4
  %349 = icmp ne ptr %348, %1
  %350 = icmp ne i32 %335, 0
  %351 = select i1 %349, i1 true, i1 %350
  br i1 %351, label %352, label %360

352:                                              ; preds = %347
  %353 = load ptr, ptr %13, align 8
  %354 = getelementptr inbounds %struct.blk_mq_ops, ptr %353, i32 0, i32 1
  %355 = load ptr, ptr %354, align 4
  %356 = icmp ne ptr %355, null
  %357 = icmp ne i32 %334, 0
  %358 = select i1 %356, i1 %357, i1 false
  br i1 %358, label %359, label %360

359:                                              ; preds = %352
  call void %355(ptr noundef %0) #22
  br label %360

360:                                              ; preds = %359, %352, %347
  %361 = load volatile ptr, ptr %1, align 4
  %362 = icmp eq ptr %361, %1
  br i1 %362, label %431, label %363

363:                                              ; preds = %360
  %364 = icmp eq i32 %336, 1
  br i1 %364, label %365, label %370

365:                                              ; preds = %363
  %366 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 5
  %367 = load i32, ptr %366, align 8
  %368 = and i32 %367, 2
  %369 = icmp ne i32 %368, 0
  br label %370

370:                                              ; preds = %365, %363
  %371 = phi i1 [ false, %363 ], [ %369, %365 ]
  %372 = icmp eq i32 %332, 0
  br i1 %372, label %394, label %373

373:                                              ; preds = %391, %370
  %374 = phi ptr [ %392, %391 ], [ %361, %370 ]
  %375 = getelementptr i8, ptr %374, i32 -56
  %376 = load ptr, ptr %375, align 8
  %377 = getelementptr inbounds %struct.request_queue, ptr %376, i32 0, i32 5
  %378 = load ptr, ptr %377, align 8
  %379 = getelementptr inbounds %struct.blk_mq_ops, ptr %378, i32 0, i32 6
  %380 = load ptr, ptr %379, align 4
  %381 = icmp eq ptr %380, null
  br i1 %381, label %391, label %382

382:                                              ; preds = %373
  %383 = call i32 %380(ptr noundef %375) #22
  %384 = icmp sgt i32 %383, -1
  br i1 %384, label %385, label %391

385:                                              ; preds = %382
  %386 = load ptr, ptr %13, align 8
  %387 = getelementptr inbounds %struct.blk_mq_ops, ptr %386, i32 0, i32 4
  %388 = load ptr, ptr %387, align 4
  %389 = icmp eq ptr %388, null
  br i1 %389, label %391, label %390

390:                                              ; preds = %385
  call void %388(ptr noundef %7, i32 noundef %383) #22
  br label %391

391:                                              ; preds = %390, %385, %382, %373
  %392 = load ptr, ptr %374, align 4
  %393 = icmp eq ptr %392, %1
  br i1 %393, label %394, label %373

394:                                              ; preds = %391, %370
  call void @_raw_spin_lock(ptr noundef %0) #22
  %395 = load volatile ptr, ptr %1, align 4
  %396 = icmp eq ptr %395, %1
  br i1 %396, label %404, label %397

397:                                              ; preds = %394
  %398 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 1
  %399 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 1, i32 1
  %400 = load ptr, ptr %399, align 4
  %401 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %402 = load ptr, ptr %401, align 4
  %403 = getelementptr inbounds %struct.list_head, ptr %395, i32 0, i32 1
  store ptr %400, ptr %403, align 4
  store ptr %395, ptr %400, align 4
  store ptr %398, ptr %402, align 4
  store ptr %402, ptr %399, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %401, align 4
  br label %404

404:                                              ; preds = %397, %394
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %405 = load i16, ptr %0, align 4
  %406 = add i16 %405, 1
  store i16 %406, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !51
  %407 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 2
  %408 = load volatile i32, ptr %407, align 4
  %409 = and i32 %408, 4
  %410 = icmp eq i32 %409, 0
  %411 = icmp eq i32 %336, 2
  %412 = select i1 %411, i1 true, i1 %333
  br i1 %410, label %422, label %413

413:                                              ; preds = %404
  br i1 %371, label %414, label %423

414:                                              ; preds = %413
  %415 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 17, i32 3
  %416 = load volatile ptr, ptr %415, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !9
  %417 = icmp eq ptr %416, %415
  br i1 %417, label %418, label %423

418:                                              ; preds = %414
  %419 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 17, i32 3, i32 1
  %420 = load ptr, ptr %419, align 4
  %421 = icmp eq ptr %420, %415
  br i1 %421, label %422, label %423

422:                                              ; preds = %418, %404
  call void @blk_mq_run_hw_queue(ptr noundef %0, i1 noundef zeroext true)
  br label %425

423:                                              ; preds = %418, %414, %413
  br i1 %412, label %424, label %425

424:                                              ; preds = %423
  call fastcc void @__blk_mq_delay_run_hw_queue(ptr noundef %0, i1 noundef zeroext true, i32 noundef 3) #22
  br label %425

425:                                              ; preds = %424, %423, %422
  %426 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 12
  %427 = load i32, ptr %426, align 8
  %428 = mul i32 %427, 7
  %429 = add i32 %428, 16
  %430 = lshr i32 %429, 3
  store i32 %430, ptr %426, align 8
  br label %441

431:                                              ; preds = %360
  %432 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 12
  %433 = load i32, ptr %432, align 8
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %431
  %436 = mul i32 %433, 7
  %437 = lshr i32 %436, 3
  store i32 %437, ptr %432, align 8
  br label %438

438:                                              ; preds = %435, %431
  %439 = sub i32 0, %335
  %440 = icmp ne i32 %334, %439
  br label %441

441:                                              ; preds = %438, %425, %3
  %442 = phi i1 [ %440, %438 ], [ false, %425 ], [ false, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i1 %442
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_run_hw_queue(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 11
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  %10 = load ptr, ptr %3, align 64
  %11 = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 11
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 16777216
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %78

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 1
  %17 = load volatile ptr, ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !9
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %19, label %77

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %16
  br i1 %22, label %23, label %77

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10
  %25 = tail call zeroext i1 @sbitmap_any_bit_set(ptr noundef %24) #22
  br i1 %25, label %77, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %3, align 64
  %28 = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %78, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.elevator_type, ptr %32, i32 0, i32 1, i32 15
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %78, label %79

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 58
  %38 = tail call i32 @__srcu_read_lock(ptr noundef %37) #22
  %39 = load ptr, ptr %3, align 64
  %40 = getelementptr inbounds %struct.request_queue, ptr %39, i32 0, i32 11
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 16777216
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 1
  %46 = load volatile ptr, ptr %45, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !9
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 1, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %45
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10
  %54 = tail call zeroext i1 @sbitmap_any_bit_set(ptr noundef %53) #22
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %3, align 64
  %57 = getelementptr inbounds %struct.request_queue, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %58, align 4
  %62 = getelementptr inbounds %struct.elevator_type, ptr %61, i32 0, i32 1, i32 15
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = tail call zeroext i1 %63(ptr noundef %0) #22
  br label %67

67:                                               ; preds = %65, %60, %55, %52, %48, %44, %36
  %68 = phi i1 [ false, %36 ], [ true, %52 ], [ true, %48 ], [ %66, %65 ], [ false, %60 ], [ false, %55 ], [ true, %44 ]
  %69 = load ptr, ptr %3, align 64
  %70 = getelementptr inbounds %struct.request_queue, ptr %69, i32 0, i32 58
  %71 = icmp ugt i32 %38, 1
  %72 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %73 = xor i1 %72, true
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %76, !prof !11

75:                                               ; preds = %67
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 189, i32 noundef 9, ptr noundef null) #22
  br label %76

76:                                               ; preds = %75, %67
  tail call void @__srcu_read_unlock(ptr noundef %70, i32 noundef %38) #22
  br i1 %68, label %81, label %82

77:                                               ; preds = %23, %19, %15
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %81

78:                                               ; preds = %31, %26, %9
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %82

79:                                               ; preds = %31
  %80 = tail call zeroext i1 %34(ptr noundef %0) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br i1 %80, label %81, label %82

81:                                               ; preds = %79, %77, %76
  tail call fastcc void @__blk_mq_delay_run_hw_queue(ptr noundef %0, i1 noundef zeroext %1, i32 noundef 0)
  br label %82

82:                                               ; preds = %81, %79, %78, %76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_delay_run_hw_queue(ptr noundef %0, i32 noundef %1) #0 {
  tail call fastcc void @__blk_mq_delay_run_hw_queue(ptr noundef %0, i1 noundef zeroext true, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__blk_mq_delay_run_hw_queue(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %79, !prof !14

8:                                                ; preds = %3
  br i1 %1, label %28, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !52
  %15 = tail call ptr @llvm.thread.pointer() #22
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 2
  %19 = lshr i32 %17, 5
  %20 = getelementptr i32, ptr %18, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %17, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !53
  br label %28

27:                                               ; preds = %14
  tail call fastcc void @__blk_mq_run_hw_queue(ptr noundef %0)
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !54
  br label %79

28:                                               ; preds = %26, %9, %8
  %29 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 3
  %30 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %31 = load ptr, ptr %30, align 64
  %32 = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 9
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %74, label %35

35:                                               ; preds = %28
  %36 = load i32, ptr %29, align 16
  %37 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, -1
  store i32 %39, ptr %37, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %61

41:                                               ; preds = %71, %35
  %42 = phi i1 [ false, %35 ], [ true, %71 ]
  %43 = phi i32 [ %36, %35 ], [ %63, %71 ]
  %44 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 2
  %45 = tail call i32 @cpumask_next_and(i32 noundef %43, ptr noundef %44, ptr noundef nonnull @__cpu_online_mask) #24
  %46 = load i32, ptr @nr_cpu_ids, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %59, label %48

48:                                               ; preds = %41
  %49 = load i32, ptr %44, align 4
  %50 = load i32, ptr @__cpu_online_mask, align 4
  %51 = and i32 %49, 65535
  %52 = and i32 %51, %50
  %53 = icmp eq i32 %52, 0
  %54 = tail call i32 @llvm.cttz.i32(i32 %52, i1 true) #22, !range !21
  %55 = select i1 %53, i32 16, i32 %54
  %56 = icmp ult i32 %55, %46
  br i1 %56, label %59, label %57

57:                                               ; preds = %48
  %58 = tail call i32 @_find_first_bit_le(ptr noundef %44, i32 noundef 16) #22
  br label %59

59:                                               ; preds = %57, %48, %41
  %60 = phi i32 [ %45, %41 ], [ %58, %57 ], [ %55, %48 ]
  store i32 8, ptr %37, align 4
  br label %61

61:                                               ; preds = %59, %35
  %62 = phi i1 [ %42, %59 ], [ false, %35 ]
  %63 = phi i32 [ %60, %59 ], [ %36, %35 ]
  %64 = lshr i32 %63, 5
  %65 = getelementptr i32, ptr @__cpu_online_mask, i32 %64
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %63, 31
  %68 = shl nuw i32 1, %67
  %69 = and i32 %68, %66
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  br i1 %62, label %72, label %41

72:                                               ; preds = %71
  store i32 %63, ptr %29, align 16
  store i32 1, ptr %37, align 4
  br label %74

73:                                               ; preds = %61
  store i32 %63, ptr %29, align 16
  br label %74

74:                                               ; preds = %73, %72, %28
  %75 = phi i32 [ %63, %73 ], [ 16, %72 ], [ 16, %28 ]
  %76 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 1
  %77 = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #22
  %78 = tail call i32 @kblockd_mod_delayed_work_on(i32 noundef %75, ptr noundef %76, i32 noundef %77) #22
  br label %79

79:                                               ; preds = %74, %27, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_delay_run_hw_queues(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.elevator_type, ptr %7, i32 0, i32 1, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.elevator_type, ptr %7, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = tail call ptr @llvm.thread.pointer() #22
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 49
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i32, ptr %24, i32 %19
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr ptr, ptr %21, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 2
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr %28, ptr null
  br label %34

34:                                               ; preds = %16, %11, %6, %2
  %35 = phi ptr [ %33, %16 ], [ null, %2 ], [ null, %6 ], [ null, %11 ]
  %36 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %67, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %41 = icmp eq ptr %35, null
  br label %42

42:                                               ; preds = %63, %39
  %43 = phi i32 [ 0, %39 ], [ %64, %63 ]
  %44 = load ptr, ptr %40, align 4
  %45 = getelementptr ptr, ptr %44, i32 %43
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.anon.1, ptr %46, i32 0, i32 2
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %42
  %52 = icmp eq ptr %35, %46
  %53 = or i1 %41, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.anon.1, ptr %46, i32 0, i32 1
  %56 = load volatile ptr, ptr %55, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !9
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.anon.1, ptr %46, i32 0, i32 1, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %55
  br i1 %61, label %63, label %62

62:                                               ; preds = %58, %54, %51
  tail call fastcc void @__blk_mq_delay_run_hw_queue(ptr noundef %46, i1 noundef zeroext true, i32 noundef %1) #22
  br label %63

63:                                               ; preds = %62, %58, %42
  %64 = add nuw i32 %43, 1
  %65 = load i32, ptr %36, align 8
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %42, label %67

67:                                               ; preds = %63, %34
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_mq_queue_stopped(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 2
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %17, %5
  %14 = phi i32 [ %15, %17 ], [ 0, %5 ]
  %15 = add nuw i32 %14, 1
  %16 = icmp eq i32 %15, %3
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr ptr, ptr %7, i32 %15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.anon.1, ptr %19, i32 0, i32 2
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %13, label %24

24:                                               ; preds = %17, %13
  %25 = icmp ult i32 %15, %3
  br label %26

26:                                               ; preds = %24, %5, %1
  %27 = phi i1 [ false, %1 ], [ true, %5 ], [ %25, %24 ]
  ret i1 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_stop_hw_queue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 1
  %3 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %2) #22
  %4 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_stop_hw_queues(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %15, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %11, i32 0, i32 1
  %13 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %12) #22
  %14 = getelementptr inbounds %struct.anon.1, ptr %11, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %14) #22
  %15 = add nuw i32 %8, 1
  %16 = load i32, ptr %2, align 8
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %7, label %18

18:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_start_hw_queue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %2) #22
  tail call void @blk_mq_run_hw_queue(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_start_hw_queues(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.anon.1, ptr %11, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %12) #22
  tail call void @blk_mq_run_hw_queue(ptr noundef %11, i1 noundef zeroext false) #22
  %13 = add nuw i32 %8, 1
  %14 = load i32, ptr %2, align 8
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %7, label %16

16:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_start_stopped_hw_queue(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 2
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %3) #22
  tail call void @blk_mq_run_hw_queue(ptr noundef %0, i1 noundef zeroext %1)
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_start_stopped_hw_queues(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %8

8:                                                ; preds = %20, %6
  %9 = phi i32 [ %4, %6 ], [ %21, %20 ]
  %10 = phi i32 [ 0, %6 ], [ %22, %20 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.anon.1, ptr %13, i32 0, i32 2
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %14) #22
  tail call void @blk_mq_run_hw_queue(ptr noundef %13, i1 noundef zeroext %1) #22
  %19 = load i32, ptr %3, align 8
  br label %20

20:                                               ; preds = %18, %8
  %21 = phi i32 [ %9, %8 ], [ %19, %18 ]
  %22 = add nuw i32 %10, 1
  %23 = icmp ult i32 %22, %21
  br i1 %23, label %8, label %24

24:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__blk_mq_insert_request(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 13
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_insert, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = tail call ptr @llvm.thread.pointer() #22
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !55
  %23 = tail call i32 @__traceiter_block_rq_insert(ptr noundef null, ptr noundef %1) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !56
  br label %24

24:                                               ; preds = %22, %11, %3
  %25 = getelementptr %struct.anon, ptr %5, i32 0, i32 1, i32 %8
  br i1 %2, label %26, label %29

26:                                               ; preds = %24
  %27 = load ptr, ptr %25, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  br label %32

29:                                               ; preds = %24
  %30 = getelementptr %struct.anon, ptr %5, i32 0, i32 1, i32 %8, i32 1
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi ptr [ %30, %29 ], [ %28, %26 ]
  %34 = phi ptr [ %25, %29 ], [ %27, %26 ]
  %35 = phi ptr [ %31, %29 ], [ %25, %26 ]
  %36 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 12
  store ptr %36, ptr %33, align 4
  store ptr %34, ptr %36, align 4
  %37 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 12, i32 0, i32 1
  store ptr %35, ptr %37, align 4
  store volatile ptr %36, ptr %35, align 4
  %38 = load i16, ptr %6, align 4
  %39 = zext i16 %38 to i32
  %40 = getelementptr %struct.blk_mq_ctx, ptr %5, i32 0, i32 2, i32 %39
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = shl nsw i32 -1, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %46, %42
  %48 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = lshr i32 %42, %44
  %51 = getelementptr %struct.sbitmap_word, ptr %49, i32 %50, i32 2
  %52 = lshr i32 %47, 5
  %53 = getelementptr i32, ptr %51, i32 %52
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %47, 31
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %32
  tail call void @_set_bit(i32 noundef %47, ptr noundef %51) #22
  br label %60

60:                                               ; preds = %59, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_request_bypass_insert(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  tail call void @_raw_spin_lock(ptr noundef %5) #22
  %6 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 12
  %7 = getelementptr inbounds %struct.anon.1, ptr %5, i32 0, i32 1
  br i1 %1, label %8, label %11

8:                                                ; preds = %3
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.anon.1, ptr %5, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %12, %11 ], [ %10, %8 ]
  %16 = phi ptr [ %7, %11 ], [ %9, %8 ]
  %17 = phi ptr [ %13, %11 ], [ %7, %8 ]
  store ptr %6, ptr %15, align 4
  store ptr %16, ptr %6, align 4
  %18 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 12, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %6, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %19 = load i16, ptr %5, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  br i1 %2, label %21, label %22

21:                                               ; preds = %14
  tail call void @blk_mq_run_hw_queue(ptr noundef %5, i1 noundef zeroext false)
  br label %22

22:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_insert_requests(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 13
  %5 = load i16, ptr %4, align 4
  %6 = load ptr, ptr %2, align 4
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %34, label %8

8:                                                ; preds = %31, %3
  %9 = phi ptr [ %32, %31 ], [ %6, %3 ]
  %10 = getelementptr i8, ptr %9, i32 -56
  %11 = getelementptr i8, ptr %9, i32 -52
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %15, label %14, !prof !14

14:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-mq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2370, 0\0A.popsection", ""() #22, !srcloc !57
  unreachable

15:                                               ; preds = %8
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_insert, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = tail call ptr @llvm.thread.pointer() #22
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !55
  %30 = tail call i32 @__traceiter_block_rq_insert(ptr noundef null, ptr noundef %10) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !56
  br label %31

31:                                               ; preds = %29, %18, %15
  %32 = load ptr, ptr %9, align 4
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %34, label %8

34:                                               ; preds = %31, %3
  tail call void @_raw_spin_lock(ptr noundef %1) #22
  %35 = load volatile ptr, ptr %2, align 4
  %36 = icmp eq ptr %35, %2
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = zext i16 %5 to i32
  %39 = getelementptr %struct.anon, ptr %1, i32 0, i32 1, i32 %38
  %40 = getelementptr %struct.anon, ptr %1, i32 0, i32 1, i32 %38, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %41, ptr %44, align 4
  store ptr %35, ptr %41, align 4
  store ptr %39, ptr %43, align 4
  store ptr %43, ptr %40, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %42, align 4
  br label %45

45:                                               ; preds = %37, %34
  %46 = load i16, ptr %4, align 4
  %47 = zext i16 %46 to i32
  %48 = getelementptr %struct.blk_mq_ctx, ptr %1, i32 0, i32 2, i32 %47
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = shl nsw i32 -1, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %54, %50
  %56 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = lshr i32 %50, %52
  %59 = getelementptr %struct.sbitmap_word, ptr %57, i32 %58, i32 2
  %60 = lshr i32 %55, 5
  %61 = getelementptr i32, ptr %59, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %55, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %45
  tail call void @_set_bit(i32 noundef %55, ptr noundef %59) #22
  br label %68

68:                                               ; preds = %67, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %69 = load i16, ptr %1, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_flush_plug_list(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %166, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.blk_plug, ptr %0, i32 0, i32 3
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.blk_plug, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 4, !range !31
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %85

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.blk_plug, ptr %0, i32 0, i32 5
  %14 = load i8, ptr %13, align 1, !range !31
  %15 = icmp ne i8 %14, 0
  %16 = or i1 %15, %1
  br i1 %16, label %85, label %17

17:                                               ; preds = %12
  %18 = icmp eq ptr %0, null
  %19 = select i1 %18, ptr null, ptr %5
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.blk_mq_ops, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %67, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.request, ptr %19, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %28, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 11
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  %39 = load volatile i32, ptr %34, align 4
  %40 = and i32 %39, 16777216
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load ptr, ptr %21, align 8
  %44 = getelementptr inbounds %struct.blk_mq_ops, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  call void %45(ptr noundef %0) #22
  br label %46

46:                                               ; preds = %42, %38
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %64

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 58
  %49 = call i32 @__srcu_read_lock(ptr noundef %48) #22
  %50 = load volatile i32, ptr %34, align 4
  %51 = and i32 %50, 16777216
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load ptr, ptr %21, align 8
  %55 = getelementptr inbounds %struct.blk_mq_ops, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  call void %56(ptr noundef %0) #22
  br label %57

57:                                               ; preds = %53, %47
  %58 = icmp ugt i32 %49, 1
  %59 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !11

62:                                               ; preds = %57
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 189, i32 noundef 9, ptr noundef null) #22
  br label %63

63:                                               ; preds = %62, %57
  call void @__srcu_read_unlock(ptr noundef %48, i32 noundef %49) #22
  br label %64

64:                                               ; preds = %63, %46
  %65 = load ptr, ptr %0, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %166, label %67

67:                                               ; preds = %64, %26, %17
  %68 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 11
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  call fastcc void @blk_mq_plug_issue_direct(ptr noundef %0)
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %82

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 58
  %75 = call i32 @__srcu_read_lock(ptr noundef %74) #22
  call fastcc void @blk_mq_plug_issue_direct(ptr noundef %0)
  %76 = icmp ugt i32 %75, 1
  %77 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %78 = xor i1 %77, true
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %81, !prof !11

80:                                               ; preds = %73
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 189, i32 noundef 9, ptr noundef null) #22
  br label %81

81:                                               ; preds = %80, %73
  call void @__srcu_read_unlock(ptr noundef %74, i32 noundef %75) #22
  br label %82

82:                                               ; preds = %81, %72
  %83 = load ptr, ptr %0, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %166, label %85

85:                                               ; preds = %82, %12, %7
  %86 = phi ptr [ %5, %12 ], [ %83, %82 ], [ %5, %7 ]
  %87 = icmp eq ptr %0, null
  %88 = xor i1 %1, true
  br label %89

89:                                               ; preds = %133, %85
  %90 = phi ptr [ %86, %85 ], [ %142, %133 ]
  %91 = phi i32 [ 0, %85 ], [ %141, %133 ]
  %92 = phi ptr [ null, %85 ], [ %135, %133 ]
  %93 = phi ptr [ null, %85 ], [ %136, %133 ]
  br i1 %87, label %97, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.request, ptr %90, i32 0, i32 12
  %96 = load ptr, ptr %95, align 8
  store ptr %96, ptr %0, align 4
  br label %97

97:                                               ; preds = %94, %89
  %98 = phi ptr [ %90, %94 ], [ null, %89 ]
  %99 = icmp eq ptr %93, null
  %100 = getelementptr inbounds %struct.request, ptr %98, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8
  br i1 %99, label %128, label %102

102:                                              ; preds = %97
  %103 = icmp eq ptr %93, %101
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.request, ptr %98, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %92, %106
  br i1 %107, label %133, label %108

108:                                              ; preds = %104, %102
  %109 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %93, i32 0, i32 7
  %110 = load ptr, ptr %109, align 64
  %111 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_unplug, i32 0, i32 1), align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = tail call ptr @llvm.thread.pointer() #22
  %115 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = lshr i32 %116, 5
  %118 = getelementptr i32, ptr @__cpu_online_mask, i32 %117
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %116, 31
  %121 = shl nuw i32 1, %120
  %122 = and i32 %121, %119
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %113
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !58
  %125 = call i32 @__traceiter_block_unplug(ptr noundef null, ptr noundef %110, i32 noundef %91, i1 noundef zeroext %88) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !59
  br label %126

126:                                              ; preds = %124, %113, %108
  call void @blk_mq_sched_insert_requests(ptr noundef nonnull %93, ptr noundef %92, ptr noundef nonnull %3, i1 noundef zeroext %1) #22
  %127 = load ptr, ptr %100, align 8
  br label %128

128:                                              ; preds = %126, %97
  %129 = phi i32 [ 0, %126 ], [ %91, %97 ]
  %130 = phi ptr [ %127, %126 ], [ %101, %97 ]
  %131 = getelementptr inbounds %struct.request, ptr %98, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  br label %133

133:                                              ; preds = %128, %104
  %134 = phi i32 [ %91, %104 ], [ %129, %128 ]
  %135 = phi ptr [ %92, %104 ], [ %132, %128 ]
  %136 = phi ptr [ %93, %104 ], [ %130, %128 ]
  %137 = getelementptr inbounds %struct.request, ptr %98, i32 0, i32 12
  %138 = load ptr, ptr %3, align 8
  %139 = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  store ptr %137, ptr %139, align 4
  store ptr %138, ptr %137, align 4
  %140 = getelementptr inbounds %struct.request, ptr %98, i32 0, i32 12, i32 0, i32 1
  store ptr %3, ptr %140, align 4
  store volatile ptr %137, ptr %3, align 8
  %141 = add i32 %134, 1
  %142 = load ptr, ptr %0, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %89

144:                                              ; preds = %133
  %145 = load volatile ptr, ptr %3, align 8
  %146 = icmp eq ptr %145, %3
  br i1 %146, label %166, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %136, i32 0, i32 7
  %149 = load ptr, ptr %148, align 64
  %150 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_unplug, i32 0, i32 1), align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %147
  %153 = tail call ptr @llvm.thread.pointer() #22
  %154 = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 2
  %155 = load i32, ptr %154, align 8
  %156 = lshr i32 %155, 5
  %157 = getelementptr i32, ptr @__cpu_online_mask, i32 %156
  %158 = load volatile i32, ptr %157, align 4
  %159 = and i32 %155, 31
  %160 = shl nuw i32 1, %159
  %161 = and i32 %160, %158
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %152
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !58
  %164 = call i32 @__traceiter_block_unplug(ptr noundef null, ptr noundef %149, i32 noundef %141, i1 noundef zeroext %88) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !59
  br label %165

165:                                              ; preds = %163, %152, %147
  call void @blk_mq_sched_insert_requests(ptr noundef %136, ptr noundef %135, ptr noundef nonnull %3, i1 noundef zeroext %1) #22
  br label %166

166:                                              ; preds = %165, %144, %82, %64, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @blk_mq_plug_issue_direct(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %145, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %109, label %6

6:                                                ; preds = %104, %3
  %7 = phi ptr [ %107, %104 ], [ %4, %3 ]
  %8 = phi i32 [ %105, %104 ], [ 0, %3 ]
  %9 = phi i32 [ %106, %104 ], [ 0, %3 ]
  %10 = phi ptr [ %52, %104 ], [ null, %3 ]
  %11 = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 12
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %0, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %10, %15
  br i1 %16, label %51, label %17

17:                                               ; preds = %6
  %18 = icmp eq ptr %10, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %10, i32 0, i32 7
  %21 = load ptr, ptr %20, align 64
  %22 = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.blk_mq_ops, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %19
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_unplug, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.thread.pointer() #22
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !58
  %42 = tail call i32 @__traceiter_block_unplug(ptr noundef null, ptr noundef %21, i32 noundef %8, i1 noundef zeroext true) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !59
  %43 = load ptr, ptr %20, align 64
  %44 = getelementptr inbounds %struct.request_queue, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.blk_mq_ops, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %41, %30, %27
  %49 = phi ptr [ %25, %27 ], [ %25, %30 ], [ %47, %41 ]
  tail call void %49(ptr noundef nonnull %10) #22
  %50 = load ptr, ptr %14, align 8
  br label %51

51:                                               ; preds = %48, %19, %17, %6
  %52 = phi ptr [ %10, %6 ], [ %15, %17 ], [ %15, %19 ], [ %50, %48 ]
  %53 = phi i32 [ %8, %6 ], [ %8, %17 ], [ 0, %19 ], [ 0, %48 ]
  %54 = tail call fastcc zeroext i8 @__blk_mq_try_issue_directly(ptr noundef %52, ptr noundef nonnull %7, i1 noundef zeroext true, i1 noundef zeroext %13) #22
  switch i8 %54, label %97 [
    i8 0, label %55
    i8 9, label %57
    i8 13, label %57
  ]

55:                                               ; preds = %51
  %56 = add i32 %53, 1
  br label %104

57:                                               ; preds = %51, %51
  %58 = load ptr, ptr %14, align 8
  tail call void @_raw_spin_lock(ptr noundef %58) #22
  %59 = getelementptr inbounds %struct.anon.1, ptr %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.anon.1, ptr %58, i32 0, i32 1, i32 1
  %61 = load ptr, ptr %60, align 4
  store ptr %11, ptr %60, align 4
  store ptr %59, ptr %11, align 4
  %62 = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 12, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  store volatile ptr %11, ptr %61, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %63 = load i16, ptr %58, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %58, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  br i1 %13, label %65, label %66

65:                                               ; preds = %57
  tail call void @blk_mq_run_hw_queue(ptr noundef %58, i1 noundef zeroext false) #22
  br label %66

66:                                               ; preds = %65, %57
  %67 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %52, i32 0, i32 7
  %68 = load ptr, ptr %67, align 64
  %69 = getelementptr inbounds %struct.request_queue, ptr %68, i32 0, i32 5
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.blk_mq_ops, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %145, label %74

74:                                               ; preds = %66
  %75 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_unplug, i32 0, i32 1), align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = tail call ptr @llvm.thread.pointer() #22
  %79 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 5
  %82 = getelementptr i32, ptr @__cpu_online_mask, i32 %81
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %80, 31
  %85 = shl nuw i32 1, %84
  %86 = and i32 %85, %83
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %77
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !58
  %89 = tail call i32 @__traceiter_block_unplug(ptr noundef null, ptr noundef %68, i32 noundef %53, i1 noundef zeroext true) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !59
  %90 = load ptr, ptr %67, align 64
  %91 = getelementptr inbounds %struct.request_queue, ptr %90, i32 0, i32 5
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.blk_mq_ops, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  br label %95

95:                                               ; preds = %88, %77, %74
  %96 = phi ptr [ %72, %74 ], [ %72, %77 ], [ %94, %88 ]
  tail call void %96(ptr noundef %52) #22
  br label %145

97:                                               ; preds = %51
  %98 = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 8
  %99 = load i32, ptr %98, align 8
  %100 = tail call zeroext i1 @blk_update_request(ptr noundef nonnull %7, i8 noundef zeroext %54, i32 noundef %99) #22
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-mq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 933, 0\0A.popsection", ""() #22, !srcloc !30
  unreachable

102:                                              ; preds = %97
  tail call void @__blk_mq_end_request(ptr noundef nonnull %7, i8 noundef zeroext %54) #22
  %103 = add i32 %9, 1
  br label %104

104:                                              ; preds = %102, %55
  %105 = phi i32 [ %53, %102 ], [ %56, %55 ]
  %106 = phi i32 [ %103, %102 ], [ %9, %55 ]
  %107 = load ptr, ptr %0, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %6

109:                                              ; preds = %104, %3
  %110 = phi ptr [ null, %3 ], [ %52, %104 ]
  %111 = phi i32 [ 0, %3 ], [ %106, %104 ]
  %112 = phi i32 [ 0, %3 ], [ %105, %104 ]
  %113 = icmp eq i32 %111, 0
  br i1 %113, label %145, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %110, i32 0, i32 7
  %116 = load ptr, ptr %115, align 64
  %117 = getelementptr inbounds %struct.request_queue, ptr %116, i32 0, i32 5
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.blk_mq_ops, ptr %118, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %145, label %122

122:                                              ; preds = %114
  %123 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_unplug, i32 0, i32 1), align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %122
  %126 = tail call ptr @llvm.thread.pointer() #22
  %127 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 8
  %129 = lshr i32 %128, 5
  %130 = getelementptr i32, ptr @__cpu_online_mask, i32 %129
  %131 = load volatile i32, ptr %130, align 4
  %132 = and i32 %128, 31
  %133 = shl nuw i32 1, %132
  %134 = and i32 %133, %131
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %125
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !58
  %137 = tail call i32 @__traceiter_block_unplug(ptr noundef null, ptr noundef %116, i32 noundef %112, i1 noundef zeroext true) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !59
  %138 = load ptr, ptr %115, align 64
  %139 = getelementptr inbounds %struct.request_queue, ptr %138, i32 0, i32 5
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.blk_mq_ops, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  br label %143

143:                                              ; preds = %136, %125, %122
  %144 = phi ptr [ %120, %122 ], [ %120, %125 ], [ %142, %136 ]
  tail call void %144(ptr noundef %110) #22
  br label %145

145:                                              ; preds = %143, %114, %109, %95, %66, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_insert_requests(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_try_issue_list_directly(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load volatile ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %49, label %5

5:                                                ; preds = %44, %2
  %6 = phi ptr [ %47, %44 ], [ %3, %2 ]
  %7 = phi i32 [ %46, %44 ], [ 0, %2 ]
  %8 = phi i32 [ %45, %44 ], [ 0, %2 ]
  %9 = getelementptr i8, ptr %6, i32 -56
  %10 = getelementptr %struct.list_head, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %10, align 4
  %14 = load volatile ptr, ptr %1, align 4
  %15 = icmp eq ptr %14, %1
  %16 = getelementptr i8, ptr %6, i32 -48
  %17 = load ptr, ptr %16, align 8
  %18 = tail call fastcc zeroext i8 @__blk_mq_try_issue_directly(ptr noundef %17, ptr noundef %9, i1 noundef zeroext true, i1 noundef zeroext %15) #22
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %5
  %21 = and i8 %18, -5
  %22 = icmp eq i8 %21, 9
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = getelementptr %struct.list_head, ptr %6, i32 0, i32 1
  %25 = getelementptr i8, ptr %6, i32 -48
  %26 = load volatile ptr, ptr %1, align 4
  %27 = icmp eq ptr %26, %1
  %28 = load ptr, ptr %25, align 8
  tail call void @_raw_spin_lock(ptr noundef %28) #22
  %29 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  store ptr %6, ptr %30, align 4
  store ptr %29, ptr %6, align 4
  store ptr %31, ptr %24, align 4
  store volatile ptr %6, ptr %31, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %32 = load i16, ptr %28, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  br i1 %27, label %34, label %49

34:                                               ; preds = %23
  tail call void @blk_mq_run_hw_queue(ptr noundef %28, i1 noundef zeroext false) #22
  br label %49

35:                                               ; preds = %20
  %36 = getelementptr i8, ptr %6, i32 -24
  %37 = load i32, ptr %36, align 8
  %38 = tail call zeroext i1 @blk_update_request(ptr noundef %9, i8 noundef zeroext %18, i32 noundef %37) #22
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-mq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 933, 0\0A.popsection", ""() #22, !srcloc !30
  unreachable

40:                                               ; preds = %35
  tail call void @__blk_mq_end_request(ptr noundef %9, i8 noundef zeroext %18) #22
  %41 = add i32 %8, 1
  br label %44

42:                                               ; preds = %5
  %43 = add i32 %7, 1
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %8, %42 ]
  %46 = phi i32 [ %7, %40 ], [ %43, %42 ]
  %47 = load volatile ptr, ptr %1, align 4
  %48 = icmp eq ptr %47, %1
  br i1 %48, label %49, label %5

49:                                               ; preds = %44, %34, %23, %2
  %50 = phi i32 [ %8, %34 ], [ %8, %23 ], [ 0, %2 ], [ %45, %44 ]
  %51 = phi i32 [ %7, %34 ], [ %7, %23 ], [ 0, %2 ], [ %46, %44 ]
  %52 = load volatile ptr, ptr %1, align 4
  %53 = icmp ne ptr %52, %1
  %54 = icmp ne i32 %50, 0
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %58 = load ptr, ptr %57, align 64
  %59 = getelementptr inbounds %struct.request_queue, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.blk_mq_ops, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp ne ptr %62, null
  %64 = icmp ne i32 %51, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  tail call void %62(ptr noundef %0) #22
  br label %67

67:                                               ; preds = %66, %56, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_submit_bio(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.blk_mq_alloc_data, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @llvm.thread.pointer() #22
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 115
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %13, 395264
  %17 = icmp ne i32 %16, 0
  %18 = or i1 %15, %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 1, ptr %4, align 4
  %19 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 32
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 1
  %22 = load i32, ptr @max_low_pfn, align 4
  %23 = load i32, ptr @max_pfn, align 4
  %24 = icmp ult i32 %22, %23
  %25 = select i1 %21, i1 true, i1 %24
  %26 = icmp eq ptr %0, null
  %27 = or i1 %26, %25
  br i1 %27, label %38, label %28

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = trunc i32 %13 to i8
  switch i8 %33, label %34 [
    i8 3, label %38
    i8 5, label %38
    i8 9, label %38
  ]

34:                                               ; preds = %32
  call void @__blk_queue_bounce(ptr noundef %8, ptr noundef nonnull %3) #22
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.bio, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %34, %32, %32, %32, %28, %1
  %39 = phi i32 [ %13, %1 ], [ %13, %28 ], [ %13, %32 ], [ %13, %32 ], [ %13, %32 ], [ %37, %34 ]
  %40 = phi ptr [ %0, %1 ], [ %0, %28 ], [ %0, %32 ], [ %0, %32 ], [ %0, %32 ], [ %35, %34 ]
  %41 = trunc i32 %39 to i8
  switch i8 %41, label %42 [
    i8 3, label %59
    i8 5, label %59
    i8 9, label %59
    i8 7, label %59
  ]

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 32, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bio, ptr %40, i32 0, i32 13
  %48 = load i16, ptr %47, align 4
  %49 = icmp eq i16 %48, 1
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.bio, ptr %40, i32 0, i32 16
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.bio_vec, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.bio_vec, ptr %52, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %54
  %58 = icmp ugt i32 %57, 4096
  br i1 %58, label %59, label %60

59:                                               ; preds = %50, %46, %42, %38, %38, %38, %38
  call void @__blk_queue_split(ptr noundef %8, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  br label %60

60:                                               ; preds = %59, %50
  %61 = load i32, ptr %4, align 4
  %62 = icmp eq ptr %11, null
  br i1 %62, label %124, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.blk_plug, ptr %11, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %124, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %65, align 8
  %69 = icmp eq ptr %68, %8
  br i1 %69, label %70, label %124

70:                                               ; preds = %67
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 11
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %73, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.bio, ptr %71, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 409600
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = call zeroext i1 @blk_attempt_plug_merge(ptr noundef %8, ptr noundef %71, i32 noundef %61) #22
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = call zeroext i1 @blk_mq_sched_bio_merge(ptr noundef %8, ptr noundef %71, i32 noundef %61) #22
  br i1 %84, label %85, label %86

85:                                               ; preds = %83, %81
  store ptr null, ptr %3, align 4
  br label %422

86:                                               ; preds = %83, %76, %70
  %87 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %3, align 4
  %92 = getelementptr inbounds %struct.bio, ptr %91, i32 0, i32 3
  %93 = load i16, ptr %92, align 4
  %94 = or i16 %93, 1024
  store i16 %94, ptr %92, align 4
  %95 = load ptr, ptr %87, align 4
  call void @__rq_qos_throttle(ptr noundef %95, ptr noundef %91) #22
  br label %96

96:                                               ; preds = %90, %86
  %97 = load ptr, ptr %3, align 4
  %98 = getelementptr inbounds %struct.bio, ptr %97, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 16777216
  %101 = icmp eq i32 %100, 0
  %102 = and i32 %99, 255
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = select i1 %101, i32 %104, i32 2
  %106 = getelementptr inbounds %struct.request, ptr %65, i32 0, i32 2
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %107, i32 0, i32 13
  %109 = load i16, ptr %108, align 4
  %110 = zext i16 %109 to i32
  %111 = icmp eq i32 %105, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %96
  %113 = getelementptr inbounds %struct.request, ptr %65, i32 0, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 393216
  %116 = icmp ne i32 %115, 0
  %117 = and i32 %99, 393216
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, %116
  br i1 %119, label %124, label %120

120:                                              ; preds = %112
  store i32 %99, ptr %113, align 4
  %121 = getelementptr inbounds %struct.request, ptr %65, i32 0, i32 12
  %122 = load ptr, ptr %121, align 8
  store ptr %122, ptr %64, align 4
  store volatile ptr %121, ptr %121, align 4
  %123 = getelementptr inbounds %struct.request, ptr %65, i32 0, i32 12, i32 0, i32 1
  store ptr %121, ptr %123, align 4
  br label %223

124:                                              ; preds = %112, %96, %67, %63, %60
  %125 = load ptr, ptr %3, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %422, label %127

127:                                              ; preds = %124
  %128 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #22
  store ptr %8, ptr %2, align 4
  %129 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %2, i32 0, i32 1
  store i32 0, ptr %129, align 4
  %130 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %2, i32 0, i32 2
  store i32 0, ptr %130, align 4
  %131 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %2, i32 0, i32 3
  %132 = getelementptr inbounds %struct.bio, ptr %125, i32 0, i32 2
  %133 = load i32, ptr %132, align 4
  store i32 %133, ptr %131, align 4
  %134 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %2, i32 0, i32 4
  store i32 0, ptr %134, align 4
  %135 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %2, i32 0, i32 5
  store i32 1, ptr %135, align 4
  %136 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %2, i32 0, i32 6
  store ptr null, ptr %136, align 4
  %137 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %2, i32 0, i32 7
  store ptr null, ptr %137, align 4
  %138 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %2, i32 0, i32 8
  store ptr null, ptr %138, align 4
  %139 = getelementptr inbounds %struct.bio, ptr %125, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.block_device, ptr %140, i32 0, i32 18
  %142 = load ptr, ptr %141, align 4
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  %143 = getelementptr inbounds %struct.request_queue, ptr %142, i32 0, i32 2
  %144 = load volatile i32, ptr %143, align 4
  %145 = and i32 %144, 3
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %156, !prof !14

147:                                              ; preds = %127
  %148 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !15
  %149 = call i32 @llvm.read_register.i32(metadata !0) #22
  %150 = inttoptr i32 %149 to ptr
  %151 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %150) #16, !srcloc !16
  %152 = add i32 %151, %144
  %153 = inttoptr i32 %152 to ptr
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, 1
  store i32 %155, ptr %153, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %148) #22, !srcloc !17
  br label %166

156:                                              ; preds = %127
  %157 = and i32 %144, 2
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.request_queue, ptr %142, i32 0, i32 2, i32 1
  %161 = load ptr, ptr %160, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !60
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %161) #22, !srcloc !18
  %162 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %161, ptr %161, i32 0, i32 1, ptr elementtype(i32) %161) #22, !srcloc !61
  %163 = extractvalue { i32, i32, i32 } %162, 0
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %159
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !62
  br label %166

166:                                              ; preds = %165, %147
  %167 = getelementptr inbounds %struct.request_queue, ptr %142, i32 0, i32 12
  %168 = load volatile i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %175

171:                                              ; preds = %166
  call void @blk_queue_exit(ptr noundef %142) #22
  br label %172

172:                                              ; preds = %171, %159, %156
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  %173 = call i32 @__bio_queue_enter(ptr noundef %142, ptr noundef nonnull %125) #22
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %220, !prof !14

175:                                              ; preds = %172, %170
  %176 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 11
  %177 = load volatile i32, ptr %176, align 4
  %178 = and i32 %177, 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load i32, ptr %132, align 4
  %182 = and i32 %181, 409600
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = call zeroext i1 @blk_attempt_plug_merge(ptr noundef %8, ptr noundef nonnull %125, i32 noundef %128) #22
  br i1 %185, label %219, label %186

186:                                              ; preds = %184
  %187 = call zeroext i1 @blk_mq_sched_bio_merge(ptr noundef %8, ptr noundef nonnull %125, i32 noundef %128) #22
  br i1 %187, label %219, label %188

188:                                              ; preds = %186, %180, %175
  %189 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 4
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %197, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.bio, ptr %125, i32 0, i32 3
  %194 = load i16, ptr %193, align 4
  %195 = or i16 %194, 1024
  store i16 %195, ptr %193, align 4
  %196 = load ptr, ptr %189, align 4
  call void @__rq_qos_throttle(ptr noundef %196, ptr noundef nonnull %125) #22
  br label %197

197:                                              ; preds = %192, %188
  br i1 %62, label %203, label %198

198:                                              ; preds = %197
  %199 = getelementptr inbounds %struct.blk_plug, ptr %11, i32 0, i32 2
  %200 = load i16, ptr %199, align 4
  %201 = zext i16 %200 to i32
  store i32 %201, ptr %135, align 4
  store i16 1, ptr %199, align 4
  %202 = getelementptr inbounds %struct.blk_plug, ptr %11, i32 0, i32 1
  store ptr %202, ptr %136, align 4
  br label %203

203:                                              ; preds = %198, %197
  %204 = call fastcc ptr @__blk_mq_alloc_requests(ptr noundef nonnull %2) #22
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %221

206:                                              ; preds = %203
  %207 = load ptr, ptr %189, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  call void @__rq_qos_cleanup(ptr noundef nonnull %207, ptr noundef nonnull %125) #22
  br label %210

210:                                              ; preds = %209, %206
  %211 = load i32, ptr %132, align 4
  %212 = and i32 %211, 2097152
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.bio, ptr %125, i32 0, i32 3
  %216 = load i16, ptr %215, align 4
  %217 = or i16 %216, 16
  store i16 %217, ptr %215, align 4
  %218 = getelementptr inbounds %struct.bio, ptr %125, i32 0, i32 6
  store i8 12, ptr %218, align 2
  call void @bio_endio(ptr noundef nonnull %125) #22
  br label %219

219:                                              ; preds = %214, %210, %186, %184
  call void @blk_queue_exit(ptr noundef %8) #22
  br label %220

220:                                              ; preds = %219, %172
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #22
  br label %422

221:                                              ; preds = %203
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #22
  %222 = load ptr, ptr %3, align 4
  br label %223

223:                                              ; preds = %221, %120
  %224 = phi ptr [ %97, %120 ], [ %222, %221 ]
  %225 = phi ptr [ %65, %120 ], [ %204, %221 ]
  %226 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_getrq, i32 0, i32 1), align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %241

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %230 = load i32, ptr %229, align 8
  %231 = lshr i32 %230, 5
  %232 = getelementptr i32, ptr @__cpu_online_mask, i32 %231
  %233 = load volatile i32, ptr %232, align 4
  %234 = and i32 %230, 31
  %235 = shl nuw i32 1, %234
  %236 = and i32 %235, %233
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %228
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !63
  %239 = call i32 @__traceiter_block_getrq(ptr noundef null, ptr noundef %224) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !64
  %240 = load ptr, ptr %3, align 4
  br label %241

241:                                              ; preds = %238, %228, %223
  %242 = phi ptr [ %224, %223 ], [ %224, %228 ], [ %240, %238 ]
  %243 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 4
  %244 = load ptr, ptr %243, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %241
  call void @__rq_qos_track(ptr noundef nonnull %244, ptr noundef nonnull %225, ptr noundef %242) #22
  %247 = load ptr, ptr %3, align 4
  br label %248

248:                                              ; preds = %246, %241
  %249 = phi ptr [ %242, %241 ], [ %247, %246 ]
  %250 = load i32, ptr %4, align 4
  %251 = getelementptr inbounds %struct.bio, ptr %249, i32 0, i32 2
  %252 = load i32, ptr %251, align 4
  %253 = and i32 %252, 524288
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %248
  %256 = getelementptr inbounds %struct.request, ptr %225, i32 0, i32 3
  %257 = load i32, ptr %256, align 4
  %258 = or i32 %257, 1792
  store i32 %258, ptr %256, align 4
  br label %259

259:                                              ; preds = %255, %248
  %260 = getelementptr inbounds %struct.bio, ptr %249, i32 0, i32 8
  %261 = load i64, ptr %260, align 4
  %262 = getelementptr inbounds %struct.request, ptr %225, i32 0, i32 9
  store i64 %261, ptr %262, align 8
  %263 = getelementptr inbounds %struct.bio, ptr %249, i32 0, i32 5
  %264 = load i16, ptr %263, align 4
  %265 = getelementptr inbounds %struct.request, ptr %225, i32 0, i32 18
  store i16 %264, ptr %265, align 4
  %266 = trunc i32 %250 to i16
  %267 = getelementptr inbounds %struct.request, ptr %225, i32 0, i32 17
  store i16 %266, ptr %267, align 2
  %268 = getelementptr inbounds %struct.bio, ptr %249, i32 0, i32 8, i32 1
  %269 = load i32, ptr %268, align 4
  %270 = getelementptr inbounds %struct.request, ptr %225, i32 0, i32 8
  store i32 %269, ptr %270, align 8
  %271 = getelementptr inbounds %struct.request, ptr %225, i32 0, i32 11
  store ptr %249, ptr %271, align 4
  %272 = getelementptr inbounds %struct.request, ptr %225, i32 0, i32 10
  store ptr %249, ptr %272, align 8
  %273 = getelementptr inbounds %struct.bio, ptr %249, i32 0, i32 4
  %274 = load i16, ptr %273, align 2
  %275 = getelementptr inbounds %struct.request, ptr %225, i32 0, i32 19
  store i16 %274, ptr %275, align 2
  %276 = getelementptr inbounds %struct.request, ptr %225, i32 0, i32 4
  %277 = load i32, ptr %276, align 8
  %278 = and i32 %277, 8192
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %300, label %280

280:                                              ; preds = %259
  %281 = load ptr, ptr %225, align 8
  %282 = getelementptr inbounds %struct.request_queue, ptr %281, i32 0, i32 15
  %283 = load ptr, ptr %282, align 8
  %284 = icmp eq ptr %283, null
  br i1 %284, label %300, label %285

285:                                              ; preds = %280
  %286 = icmp eq ptr %249, null
  br i1 %286, label %291, label %287

287:                                              ; preds = %285
  %288 = getelementptr inbounds %struct.bio, ptr %249, i32 0, i32 1
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %294

291:                                              ; preds = %287, %285
  %292 = getelementptr inbounds %struct.gendisk, ptr %283, i32 0, i32 7
  %293 = load ptr, ptr %292, align 4
  br label %294

294:                                              ; preds = %291, %287
  %295 = phi ptr [ %293, %291 ], [ %289, %287 ]
  %296 = getelementptr inbounds %struct.request, ptr %225, i32 0, i32 13
  store ptr %295, ptr %296, align 8
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !37
  %297 = load ptr, ptr %296, align 8
  %298 = load volatile i32, ptr @jiffies, align 64
  call void @update_io_ticks(ptr noundef %297, i32 noundef %298, i1 noundef zeroext false) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !38
  %299 = load ptr, ptr %3, align 4
  br label %300

300:                                              ; preds = %294, %280, %259
  %301 = phi ptr [ %249, %259 ], [ %249, %280 ], [ %299, %294 ]
  %302 = getelementptr inbounds %struct.bio, ptr %301, i32 0, i32 2
  %303 = load i32, ptr %302, align 4
  %304 = and i32 %303, 393216
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %300
  call void @blk_insert_flush(ptr noundef nonnull %225) #22
  br label %422

307:                                              ; preds = %300
  br i1 %62, label %386, label %308

308:                                              ; preds = %307
  %309 = load ptr, ptr %11, align 4
  %310 = getelementptr inbounds %struct.blk_plug, ptr %11, i32 0, i32 3
  %311 = load i16, ptr %310, align 2
  %312 = icmp eq i16 %311, 0
  br i1 %312, label %313, label %329

313:                                              ; preds = %308
  %314 = load ptr, ptr %225, align 8
  %315 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_plug, i32 0, i32 1), align 4
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %361

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %319 = load i32, ptr %318, align 8
  %320 = lshr i32 %319, 5
  %321 = getelementptr i32, ptr @__cpu_online_mask, i32 %320
  %322 = load volatile i32, ptr %321, align 4
  %323 = and i32 %319, 31
  %324 = shl nuw i32 1, %323
  %325 = and i32 %324, %322
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %361, label %327

327:                                              ; preds = %317
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !65
  %328 = call i32 @__traceiter_block_plug(ptr noundef null, ptr noundef %314) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !66
  br label %361

329:                                              ; preds = %308
  %330 = getelementptr inbounds %struct.blk_plug, ptr %11, i32 0, i32 4
  %331 = load i8, ptr %330, align 4, !range !31
  %332 = icmp eq i8 %331, 0
  %333 = select i1 %332, i16 32, i16 64
  %334 = icmp ult i16 %311, %333
  br i1 %334, label %335, label %345

335:                                              ; preds = %329
  %336 = load ptr, ptr %225, align 8
  %337 = getelementptr inbounds %struct.request_queue, ptr %336, i32 0, i32 11
  %338 = load volatile i32, ptr %337, align 4
  %339 = and i32 %338, 8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %361

341:                                              ; preds = %335
  %342 = getelementptr inbounds %struct.request, ptr %309, i32 0, i32 8
  %343 = load i32, ptr %342, align 8
  %344 = icmp ugt i32 %343, 131071
  br i1 %344, label %345, label %361

345:                                              ; preds = %341, %329
  call void @blk_mq_flush_plug_list(ptr noundef nonnull %11, i1 noundef zeroext false) #22
  %346 = load ptr, ptr %225, align 8
  %347 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_plug, i32 0, i32 1), align 4
  %348 = icmp sgt i32 %347, 0
  br i1 %348, label %349, label %361

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %351 = load i32, ptr %350, align 8
  %352 = lshr i32 %351, 5
  %353 = getelementptr i32, ptr @__cpu_online_mask, i32 %352
  %354 = load volatile i32, ptr %353, align 4
  %355 = and i32 %351, 31
  %356 = shl nuw i32 1, %355
  %357 = and i32 %356, %354
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %361, label %359

359:                                              ; preds = %349
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !65
  %360 = call i32 @__traceiter_block_plug(ptr noundef null, ptr noundef %346) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !66
  br label %361

361:                                              ; preds = %359, %349, %345, %341, %335, %327, %317, %313
  %362 = getelementptr inbounds %struct.blk_plug, ptr %11, i32 0, i32 4
  %363 = load i8, ptr %362, align 4, !range !31
  %364 = icmp eq i8 %363, 0
  %365 = icmp ne ptr %309, null
  %366 = select i1 %364, i1 %365, i1 false
  br i1 %366, label %367, label %372

367:                                              ; preds = %361
  %368 = load ptr, ptr %309, align 8
  %369 = load ptr, ptr %225, align 8
  %370 = icmp eq ptr %368, %369
  br i1 %370, label %372, label %371

371:                                              ; preds = %367
  store i8 1, ptr %362, align 4
  br label %372

372:                                              ; preds = %371, %367, %361
  %373 = getelementptr inbounds %struct.blk_plug, ptr %11, i32 0, i32 5
  %374 = load i8, ptr %373, align 1, !range !31
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %376, label %381

376:                                              ; preds = %372
  %377 = load i32, ptr %276, align 8
  %378 = and i32 %377, 4194304
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %381, label %380

380:                                              ; preds = %376
  store i8 1, ptr %373, align 1
  br label %381

381:                                              ; preds = %380, %376, %372
  %382 = getelementptr inbounds %struct.request, ptr %225, i32 0, i32 12
  store ptr null, ptr %382, align 8
  %383 = load ptr, ptr %11, align 4
  store ptr %383, ptr %382, align 8
  store ptr %225, ptr %11, align 4
  %384 = load i16, ptr %310, align 2
  %385 = add i16 %384, 1
  store i16 %385, ptr %310, align 2
  br label %422

386:                                              ; preds = %307
  %387 = load i32, ptr %276, align 8
  %388 = and i32 %387, 4194304
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %401

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.request, ptr %225, i32 0, i32 2
  %392 = load ptr, ptr %391, align 8
  %393 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %392, i32 0, i32 12
  %394 = load i32, ptr %393, align 8
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %402, label %396

396:                                              ; preds = %390
  %397 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 9
  %398 = load i32, ptr %397, align 8
  %399 = icmp ne i32 %398, 1
  %400 = select i1 %399, i1 %18, i1 false
  br i1 %400, label %402, label %401

401:                                              ; preds = %396, %386
  call void @blk_mq_sched_insert_request(ptr noundef nonnull %225, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #22
  br label %422

402:                                              ; preds = %396, %390
  %403 = load ptr, ptr %225, align 8
  %404 = getelementptr inbounds %struct.request_queue, ptr %403, i32 0, i32 11
  %405 = load volatile i32, ptr %404, align 4
  %406 = and i32 %405, 4
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %402
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  %409 = load ptr, ptr %391, align 8
  call fastcc void @blk_mq_try_issue_directly(ptr noundef %409, ptr noundef nonnull %225)
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %422

410:                                              ; preds = %402
  %411 = getelementptr inbounds %struct.request_queue, ptr %403, i32 0, i32 58
  %412 = call i32 @__srcu_read_lock(ptr noundef %411) #22
  %413 = load ptr, ptr %391, align 8
  call fastcc void @blk_mq_try_issue_directly(ptr noundef %413, ptr noundef nonnull %225)
  %414 = load ptr, ptr %225, align 8
  %415 = getelementptr inbounds %struct.request_queue, ptr %414, i32 0, i32 58
  %416 = icmp ugt i32 %412, 1
  %417 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %418 = xor i1 %417, true
  %419 = select i1 %416, i1 %418, i1 false
  br i1 %419, label %420, label %421, !prof !11

420:                                              ; preds = %410
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 189, i32 noundef 9, ptr noundef null) #22
  br label %421

421:                                              ; preds = %420, %410
  call void @__srcu_read_unlock(ptr noundef %415, i32 noundef %412) #22
  br label %422

422:                                              ; preds = %421, %408, %401, %381, %306, %220, %124, %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_queue_split(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_insert_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @blk_mq_try_issue_directly(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @__blk_mq_try_issue_directly(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true)
  %4 = and i8 %3, -5
  %5 = icmp eq i8 %4, 9
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  tail call void @_raw_spin_lock(ptr noundef %8) #22
  %9 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 12
  %10 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 1
  %11 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  store ptr %9, ptr %11, align 4
  store ptr %10, ptr %9, align 4
  %13 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 12, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %9, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %14 = load i16, ptr %8, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  tail call void @blk_mq_run_hw_queue(ptr noundef %8, i1 noundef zeroext false) #22
  br label %24

16:                                               ; preds = %2
  %17 = icmp eq i8 %3, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = tail call zeroext i1 @blk_update_request(ptr noundef %1, i8 noundef zeroext %3, i32 noundef %20) #22
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-mq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 933, 0\0A.popsection", ""() #22, !srcloc !30
  unreachable

23:                                               ; preds = %18
  tail call void @__blk_mq_end_request(ptr noundef %1, i8 noundef zeroext %3) #22
  br label %24

24:                                               ; preds = %23, %16, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @blk_insert_cloned_request(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %16 [
    i8 5, label %6
    i8 3, label %6
    i8 7, label %10
    i8 9, label %13
  ], !prof !67

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 8388607) #22
  br label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 15
  %12 = load i32, ptr %11, align 4
  br label %19

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 16
  %15 = load i32, ptr %14, align 4
  br label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 6
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %13, %10, %6
  %20 = phi i32 [ %9, %6 ], [ %12, %10 ], [ %15, %13 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 9
  %24 = icmp ugt i32 %23, %20
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %96, label %27

27:                                               ; preds = %25
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.blk_cloned_rq_check_limits, i32 noundef %23, i32 noundef %20) #23
  br label %96

29:                                               ; preds = %19
  %30 = tail call i32 @blk_recalc_rq_segments(ptr noundef %1) #22
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 17
  store i16 %31, ptr %32, align 2
  %33 = and i32 %30, 65535
  %34 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 21
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = icmp ugt i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.blk_cloned_rq_check_limits, i32 noundef %33, i32 noundef %36) #23
  br label %96

40:                                               ; preds = %29
  %41 = load ptr, ptr %1, align 8
  %42 = getelementptr inbounds %struct.request_queue, ptr %41, i32 0, i32 15
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 8192
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i1 true, i1 %44
  br i1 %49, label %67, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 10
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds %struct.gendisk, ptr %43, i32 0, i32 7
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi ptr [ %60, %58 ], [ %56, %54 ]
  %63 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 13
  store ptr %62, ptr %63, align 8
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !37
  %64 = load ptr, ptr %63, align 8
  %65 = load volatile i32, ptr @jiffies, align 64
  tail call void @update_io_ticks(ptr noundef %64, i32 noundef %65, i1 noundef zeroext false) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !38
  %66 = load ptr, ptr %1, align 8
  br label %67

67:                                               ; preds = %61, %40
  %68 = phi ptr [ %41, %40 ], [ %66, %61 ]
  %69 = getelementptr inbounds %struct.request_queue, ptr %68, i32 0, i32 11
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  %74 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = tail call fastcc zeroext i8 @__blk_mq_try_issue_directly(ptr noundef %75, ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %91

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.request_queue, ptr %68, i32 0, i32 58
  %79 = tail call i32 @__srcu_read_lock(ptr noundef %78) #22
  %80 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8
  %82 = tail call fastcc zeroext i8 @__blk_mq_try_issue_directly(ptr noundef %81, ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true) #22
  %83 = load ptr, ptr %1, align 8
  %84 = getelementptr inbounds %struct.request_queue, ptr %83, i32 0, i32 58
  %85 = icmp ugt i32 %79, 1
  %86 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %87 = xor i1 %86, true
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %90, !prof !11

89:                                               ; preds = %77
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 189, i32 noundef 9, ptr noundef null) #22
  br label %90

90:                                               ; preds = %89, %77
  tail call void @__srcu_read_unlock(ptr noundef %84, i32 noundef %79) #22
  br label %91

91:                                               ; preds = %90, %73
  %92 = phi i8 [ %82, %90 ], [ %76, %73 ]
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = tail call i64 @ktime_get() #22
  tail call fastcc void @blk_account_io_done(ptr noundef %1, i64 noundef %95)
  br label %96

96:                                               ; preds = %94, %91, %38, %27, %25
  %97 = phi i8 [ %92, %94 ], [ 0, %91 ], [ 1, %25 ], [ 10, %38 ], [ 10, %27 ]
  ret i8 %97
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @blk_account_io_done(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 8192
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %100, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %100, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  %16 = and i32 %4, 16
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %100

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 255
  %23 = icmp eq i32 %22, 3
  %24 = and i32 %21, 1
  %25 = select i1 %23, i32 2, i32 %24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !68
  %26 = load ptr, ptr %13, align 8
  %27 = load volatile i32, ptr @jiffies, align 64
  tail call void @update_io_ticks(ptr noundef %26, i32 noundef %27, i1 noundef zeroext true) #22
  %28 = load ptr, ptr %13, align 8
  %29 = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr %struct.disk_stats, ptr %30, i32 0, i32 2, i32 %25
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %34) #16, !srcloc !16
  %36 = add i32 %35, %32
  %37 = inttoptr i32 %36 to ptr
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 4
  %40 = load ptr, ptr %13, align 8
  %41 = getelementptr inbounds %struct.block_device, ptr %40, i32 0, i32 15
  %42 = load i8, ptr %41, align 8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %19
  %45 = getelementptr inbounds %struct.block_device, ptr %40, i32 0, i32 17
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.gendisk, ptr %46, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.block_device, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr %struct.disk_stats, ptr %50, i32 0, i32 2, i32 %25
  %52 = ptrtoint ptr %51 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %54 = inttoptr i32 %53 to ptr
  %55 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %54) #16, !srcloc !16
  %56 = add i32 %55, %52
  %57 = inttoptr i32 %56 to ptr
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 4
  %60 = load ptr, ptr %13, align 8
  br label %61

61:                                               ; preds = %44, %19
  %62 = phi ptr [ %40, %19 ], [ %60, %44 ]
  %63 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 14
  %64 = load i64, ptr %63, align 8
  %65 = sub i64 %1, %64
  %66 = getelementptr inbounds %struct.block_device, ptr %62, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr [4 x i64], ptr %67, i32 0, i32 %25
  %69 = ptrtoint ptr %68 to i32
  %70 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %71) #16, !srcloc !16
  %73 = add i32 %72, %69
  %74 = inttoptr i32 %73 to ptr
  %75 = load i64, ptr %74, align 8
  %76 = add i64 %65, %75
  store i64 %76, ptr %74, align 8
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr inbounds %struct.block_device, ptr %77, i32 0, i32 15
  %79 = load i8, ptr %78, align 8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %61
  %82 = load i64, ptr %63, align 8
  %83 = sub i64 %1, %82
  %84 = getelementptr inbounds %struct.block_device, ptr %77, i32 0, i32 17
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.gendisk, ptr %85, i32 0, i32 7
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.block_device, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr [4 x i64], ptr %89, i32 0, i32 %25
  %91 = ptrtoint ptr %90 to i32
  %92 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %93 = inttoptr i32 %92 to ptr
  %94 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %93) #16, !srcloc !16
  %95 = add i32 %94, %91
  %96 = inttoptr i32 %95 to ptr
  %97 = load i64, ptr %96, align 8
  %98 = add i64 %83, %97
  store i64 %98, ptr %96, align 8
  br label %99

99:                                               ; preds = %81, %61
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !69
  br label %100

100:                                              ; preds = %99, %12, %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_rq_unprep_clone(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %2, align 8
  tail call void @bio_put(ptr noundef nonnull %6) #22
  %8 = load ptr, ptr %2, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_rq_prep_clone(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4, ptr noundef %5) #0 {
  %7 = icmp eq ptr %2, null
  %8 = select i1 %7, ptr @fs_bio_set, ptr %2
  %9 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %6
  %13 = icmp eq ptr %4, null
  %14 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %15 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 11
  br label %16

16:                                               ; preds = %36, %12
  %17 = phi ptr [ %10, %12 ], [ %37, %36 ]
  %18 = tail call ptr @bio_clone_fast(ptr noundef nonnull %17, i32 noundef %3, ptr noundef %8) #22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %64, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 15
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  br i1 %13, label %30, label %27

27:                                               ; preds = %20
  %28 = tail call i32 %4(ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef %5) #22
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %27, %20
  %31 = load ptr, ptr %14, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %15, align 4
  store ptr %18, ptr %34, align 4
  store ptr %18, ptr %15, align 4
  br label %36

35:                                               ; preds = %30
  store ptr %18, ptr %15, align 4
  store ptr %18, ptr %14, align 8
  br label %36

36:                                               ; preds = %35, %33
  %37 = load ptr, ptr %17, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %16

39:                                               ; preds = %36, %6
  %40 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 9
  store i64 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  store i32 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 262144
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %52 = load i32, ptr %51, align 8
  %53 = or i32 %52, 262144
  store i32 %53, ptr %51, align 8
  %54 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 24
  %55 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %54, ptr noundef align 4 dereferenceable(12) %55, i32 12, i1 false)
  br label %56

56:                                               ; preds = %50, %39
  %57 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 17
  %58 = load i16, ptr %57, align 2
  %59 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 17
  store i16 %58, ptr %59, align 2
  %60 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 19
  %61 = load i16, ptr %60, align 2
  %62 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 19
  store i16 %61, ptr %62, align 2
  br label %72

63:                                               ; preds = %27
  tail call void @bio_put(ptr noundef nonnull %18) #22
  br label %64

64:                                               ; preds = %63, %16
  %65 = load ptr, ptr %14, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %67, %64
  %68 = phi ptr [ %70, %67 ], [ %65, %64 ]
  %69 = load ptr, ptr %68, align 4
  store ptr %69, ptr %14, align 8
  tail call void @bio_put(ptr noundef nonnull %68) #22
  %70 = load ptr, ptr %14, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %67

72:                                               ; preds = %67, %64, %56
  %73 = phi i32 [ 0, %56 ], [ -12, %64 ], [ -12, %67 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_clone_fast(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @blk_steal_bios(ptr nocapture noundef %0, ptr nocapture noundef %1) #10 {
  %3 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bio_list, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr %0, ptr %8
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %7, align 4
  store ptr null, ptr %3, align 8
  store ptr null, ptr %11, align 4
  br label %13

13:                                               ; preds = %6, %2
  %14 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  store i32 0, ptr %14, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_free_rqs(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 12
  br label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr ptr, ptr %12, i32 %2
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi ptr [ %9, %8 ], [ %13, %10 ]
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %49, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.blk_mq_ops, ptr %22, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %1, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %47, %26
  %30 = phi i32 [ %44, %47 ], [ %27, %26 ]
  %31 = phi ptr [ %48, %47 ], [ %18, %26 ]
  %32 = phi i32 [ %45, %47 ], [ 0, %26 ]
  %33 = getelementptr ptr, ptr %31, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %21, align 4
  %38 = getelementptr inbounds %struct.blk_mq_ops, ptr %37, i32 0, i32 13
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %0, ptr noundef nonnull %34, i32 noundef %2) #22
  %40 = load ptr, ptr %17, align 4
  %41 = getelementptr ptr, ptr %40, i32 %32
  store ptr null, ptr %41, align 4
  %42 = load i32, ptr %1, align 4
  br label %43

43:                                               ; preds = %36, %29
  %44 = phi i32 [ %30, %29 ], [ %42, %36 ]
  %45 = add nuw i32 %32, 1
  %46 = icmp ult i32 %45, %44
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load ptr, ptr %17, align 4
  br label %29

49:                                               ; preds = %43, %26, %20, %14
  %50 = icmp eq ptr %16, %1
  br i1 %50, label %106, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %103, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.blk_mq_tags, ptr %16, i32 0, i32 5
  br label %60

57:                                               ; preds = %99, %60
  %58 = load ptr, ptr %61, align 4
  %59 = icmp eq ptr %58, %52
  br i1 %59, label %103, label %60

60:                                               ; preds = %57, %55
  %61 = phi ptr [ %53, %55 ], [ %58, %57 ]
  %62 = getelementptr i8, ptr %61, i32 -4
  %63 = tail call ptr @page_address(ptr noundef %62) #22
  %64 = ptrtoint ptr %63 to i32
  %65 = getelementptr inbounds %struct.anon.3, ptr %61, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = shl i32 4096, %66
  %68 = add i32 %67, %64
  %69 = load i32, ptr %16, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %57, label %71

71:                                               ; preds = %99, %60
  %72 = phi i32 [ %100, %99 ], [ %69, %60 ]
  %73 = phi i32 [ %101, %99 ], [ 0, %60 ]
  %74 = load ptr, ptr %56, align 4
  %75 = getelementptr ptr, ptr %74, i32 %73
  %76 = load ptr, ptr %75, align 4
  %77 = ptrtoint ptr %76 to i32
  %78 = icmp uge ptr %76, %63
  %79 = icmp ugt i32 %68, %77
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %99

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.request, ptr %76, i32 0, i32 21
  %83 = load volatile i32, ptr %82, align 4
  %84 = icmp ne i32 %83, 0
  %85 = load i1, ptr @blk_mq_clear_rq_mapping.__already_done, align 1
  %86 = xor i1 %85, true
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %90, !prof !11

88:                                               ; preds = %81
  store i1 true, ptr @blk_mq_clear_rq_mapping.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3081, i32 noundef 9, ptr noundef null) #22
  %89 = load ptr, ptr %56, align 4
  br label %90

90:                                               ; preds = %88, %81
  %91 = phi ptr [ %89, %88 ], [ %74, %81 ]
  %92 = getelementptr ptr, ptr %91, i32 %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !70
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #22, !srcloc !18
  br label %93

93:                                               ; preds = %93, %90
  %94 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %92, i32 %77, i32 0) #22, !srcloc !71
  %95 = extractvalue { i32, i32 } %94, 0
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %93

97:                                               ; preds = %93
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !72
  %98 = load i32, ptr %16, align 4
  br label %99

99:                                               ; preds = %97, %71
  %100 = phi i32 [ %98, %97 ], [ %72, %71 ]
  %101 = add nuw i32 %73, 1
  %102 = icmp ult i32 %101, %100
  br i1 %102, label %71, label %57

103:                                              ; preds = %57, %51
  %104 = getelementptr inbounds %struct.blk_mq_tags, ptr %16, i32 0, i32 8
  %105 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %104) #22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %104, i32 noundef %105) #22
  br label %106

106:                                              ; preds = %103, %49
  %107 = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 7
  %108 = load volatile ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %107
  br i1 %109, label %122, label %110

110:                                              ; preds = %110, %106
  %111 = phi ptr [ %120, %110 ], [ %108, %106 ]
  %112 = getelementptr i8, ptr %111, i32 -4
  %113 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %111, align 4
  %116 = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  store ptr %114, ptr %116, align 4
  store volatile ptr %115, ptr %114, align 4
  store volatile ptr %111, ptr %111, align 4
  store ptr %111, ptr %113, align 4
  %117 = tail call ptr @page_address(ptr noundef %112) #22
  %118 = getelementptr inbounds %struct.anon.3, ptr %111, i32 0, i32 3
  %119 = load i32, ptr %118, align 4
  tail call void @__free_pages(ptr noundef %112, i32 noundef %119) #22
  %120 = load volatile ptr, ptr %107, align 4
  %121 = icmp eq ptr %120, %107
  br i1 %121, label %122, label %110

122:                                              ; preds = %110, %106
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_free_rq_map(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #22
  store ptr null, ptr %2, align 4
  %4 = getelementptr inbounds %struct.blk_mq_tags, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #22
  store ptr null, ptr %4, align 4
  tail call void @blk_mq_free_tags(ptr noundef %0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tags(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @blk_mq_alloc_map_and_rqs(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @blk_mq_hw_queue_to_node(ptr noundef %0, i32 noundef %1) #22
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %10, %8 ], [ %6, %3 ]
  %13 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 8
  %16 = and i32 %15, 1
  %17 = tail call ptr @blk_mq_init_tags(i32 noundef %2, i32 noundef %5, i32 noundef %12, i32 noundef %16) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %153, label %19

19:                                               ; preds = %11
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #22
  %21 = extractvalue { i32, i1 } %20, 1
  %22 = extractvalue { i32, i1 } %20, 0
  br i1 %21, label %23, label %25, !prof !11

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.blk_mq_tags, ptr %17, i32 0, i32 5
  store ptr null, ptr %24, align 4
  br label %152

25:                                               ; preds = %19
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 77056) #25
  %27 = getelementptr inbounds %struct.blk_mq_tags, ptr %17, i32 0, i32 5
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %152, label %29

29:                                               ; preds = %25
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 77056) #25
  %31 = getelementptr inbounds %struct.blk_mq_tags, ptr %17, i32 0, i32 6
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %34) #22
  br label %152

35:                                               ; preds = %29
  %36 = tail call i32 @blk_mq_hw_queue_to_node(ptr noundef %0, i32 noundef %1) #22
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %40, %38 ], [ %36, %35 ]
  %43 = getelementptr inbounds %struct.blk_mq_tags, ptr %17, i32 0, i32 7
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr inbounds %struct.blk_mq_tags, ptr %17, i32 0, i32 7, i32 1
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 167
  %48 = or i32 %47, 63
  %49 = add i32 %48, 1
  %50 = icmp eq i32 %2, 0
  br i1 %50, label %153, label %51

51:                                               ; preds = %41
  %52 = mul i32 %49, %2
  %53 = icmp eq i32 %42, -1
  %54 = select i1 %53, i32 0, i32 %42
  %55 = getelementptr inbounds %struct.blk_mq_tags, ptr %17, i32 0, i32 6
  %56 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 2
  br label %60

57:                                               ; preds = %143, %111
  %58 = phi i32 [ %61, %111 ], [ %127, %143 ]
  %59 = icmp ult i32 %58, %2
  br i1 %59, label %60, label %153

60:                                               ; preds = %57, %51
  %61 = phi i32 [ 0, %51 ], [ %58, %57 ]
  %62 = phi i32 [ %52, %51 ], [ %124, %57 ]
  %63 = icmp ult i32 %62, 32768
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = icmp ult i32 %62, 16384
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = icmp ult i32 %62, 8192
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = icmp ugt i32 %62, 4095
  %70 = zext i1 %69 to i32
  br label %71

71:                                               ; preds = %68, %66, %64, %60
  %72 = phi i32 [ %70, %68 ], [ 2, %66 ], [ 3, %64 ], [ 4, %60 ]
  %73 = tail call ptr @__alloc_pages(i32 noundef 77056, i32 noundef %72, i32 noundef %54, ptr noundef null) #22
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %111

75:                                               ; preds = %71
  %76 = add nsw i32 %72, -1
  %77 = icmp eq i32 %72, 0
  %78 = shl i32 4096, %76
  %79 = icmp ult i32 %78, %49
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %148, label %81

81:                                               ; preds = %75
  %82 = tail call ptr @__alloc_pages(i32 noundef 77056, i32 noundef %76, i32 noundef %54, ptr noundef null) #22
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %111

84:                                               ; preds = %81
  %85 = add nsw i32 %72, -2
  %86 = icmp eq i32 %76, 0
  %87 = shl i32 4096, %85
  %88 = icmp ult i32 %87, %49
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %148, label %90

90:                                               ; preds = %84
  %91 = tail call ptr @__alloc_pages(i32 noundef 77056, i32 noundef %85, i32 noundef %54, ptr noundef null) #22
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = add nsw i32 %72, -3
  %95 = icmp eq i32 %85, 0
  %96 = shl i32 4096, %94
  %97 = icmp ult i32 %96, %49
  %98 = select i1 %95, i1 true, i1 %97
  br i1 %98, label %148, label %99

99:                                               ; preds = %93
  %100 = tail call ptr @__alloc_pages(i32 noundef 77056, i32 noundef %94, i32 noundef %54, ptr noundef null) #22
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = add nsw i32 %72, -4
  %104 = icmp eq i32 %94, 0
  %105 = shl i32 4096, %103
  %106 = icmp ult i32 %105, %49
  %107 = select i1 %104, i1 true, i1 %106
  br i1 %107, label %148, label %108

108:                                              ; preds = %102
  %109 = tail call ptr @__alloc_pages(i32 noundef 77056, i32 noundef %103, i32 noundef %54, ptr noundef null) #22
  %110 = icmp eq ptr %109, null
  br i1 %110, label %148, label %111

111:                                              ; preds = %108, %99, %90, %81, %71
  %112 = phi i32 [ %72, %71 ], [ %76, %81 ], [ %85, %90 ], [ %94, %99 ], [ %103, %108 ]
  %113 = phi ptr [ %73, %71 ], [ %82, %81 ], [ %91, %90 ], [ %100, %99 ], [ %109, %108 ]
  %114 = getelementptr inbounds %struct.page, ptr %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.page, ptr %113, i32 0, i32 1, i32 0, i32 3
  store i32 %112, ptr %115, align 4
  %116 = load ptr, ptr %44, align 4
  store ptr %114, ptr %44, align 4
  store ptr %43, ptr %114, align 4
  %117 = getelementptr inbounds %struct.page, ptr %113, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %116, ptr %117, align 4
  store volatile ptr %114, ptr %116, align 4
  %118 = tail call ptr @page_address(ptr noundef nonnull %113) #22
  %119 = shl i32 4096, %112
  %120 = udiv i32 %119, %49
  %121 = sub i32 %2, %61
  %122 = tail call i32 @llvm.umin.i32(i32 %120, i32 %121) #22
  %123 = mul i32 %122, %49
  %124 = sub i32 %62, %123
  %125 = icmp eq i32 %122, 0
  br i1 %125, label %57, label %126

126:                                              ; preds = %111
  %127 = add i32 %122, %61
  br label %128

128:                                              ; preds = %143, %126
  %129 = phi i32 [ %146, %143 ], [ %61, %126 ]
  %130 = phi ptr [ %145, %143 ], [ %118, %126 ]
  %131 = load ptr, ptr %55, align 4
  %132 = getelementptr ptr, ptr %131, i32 %129
  store ptr %130, ptr %132, align 4
  %133 = load ptr, ptr %56, align 4
  %134 = getelementptr inbounds %struct.blk_mq_ops, ptr %133, i32 0, i32 12
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %128
  %138 = tail call i32 %135(ptr noundef %0, ptr noundef %130, i32 noundef %1, i32 noundef %42) #22
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %55, align 4
  %142 = getelementptr ptr, ptr %141, i32 %129
  store ptr null, ptr %142, align 4
  br label %148

143:                                              ; preds = %137, %128
  %144 = getelementptr inbounds %struct.request, ptr %130, i32 0, i32 20
  store volatile i32 0, ptr %144, align 8
  %145 = getelementptr i8, ptr %130, i32 %49
  %146 = add i32 %129, 1
  %147 = icmp eq i32 %146, %127
  br i1 %147, label %57, label %128

148:                                              ; preds = %140, %108, %102, %93, %84, %75
  tail call void @blk_mq_free_rqs(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %1) #22
  %149 = getelementptr inbounds %struct.blk_mq_tags, ptr %17, i32 0, i32 5
  %150 = load ptr, ptr %149, align 4
  tail call void @kfree(ptr noundef %150) #22
  store ptr null, ptr %149, align 4
  %151 = load ptr, ptr %55, align 4
  tail call void @kfree(ptr noundef %151) #22
  store ptr null, ptr %55, align 4
  br label %152

152:                                              ; preds = %148, %33, %25, %23
  tail call void @blk_mq_free_tags(ptr noundef nonnull %17) #22
  br label %153

153:                                              ; preds = %152, %57, %41, %11
  %154 = phi ptr [ null, %11 ], [ %17, %41 ], [ null, %152 ], [ %17, %57 ]
  ret ptr %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_free_map_and_rqs(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  tail call void @blk_mq_free_rqs(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2)
  %6 = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #22
  store ptr null, ptr %6, align 4
  %8 = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #22
  store ptr null, ptr %8, align 4
  tail call void @blk_mq_free_tags(ptr noundef nonnull %1) #22
  br label %10

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %7

7:                                                ; preds = %23, %5
  %8 = phi i32 [ %3, %5 ], [ %24, %23 ]
  %9 = phi i32 [ 0, %5 ], [ %25, %23 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr ptr, ptr %10, i32 %9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %12, i32 0, i32 31
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  %18 = load i1, ptr @blk_mq_release.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %23, !prof !11

21:                                               ; preds = %14
  store i1 true, ptr @blk_mq_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3860, i32 noundef 9, ptr noundef null) #22
  %22 = load i32, ptr %2, align 8
  br label %23

23:                                               ; preds = %21, %14, %7
  %24 = phi i32 [ %8, %7 ], [ %22, %21 ], [ %8, %14 ]
  %25 = add nuw i32 %9, 1
  %26 = icmp ult i32 %25, %24
  br i1 %26, label %7, label %27

27:                                               ; preds = %23, %1
  %28 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 42
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %39, label %31

31:                                               ; preds = %31, %27
  %32 = phi ptr [ %33, %31 ], [ %29, %27 ]
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %33, ptr %35, align 4
  store volatile ptr %32, ptr %32, align 4
  store ptr %32, ptr %34, align 4
  %37 = getelementptr i8, ptr %32, i32 -44
  tail call void @kobject_put(ptr noundef %37) #22
  %38 = icmp eq ptr %33, %28
  br i1 %38, label %39, label %31

39:                                               ; preds = %31, %27
  %40 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  tail call void @kfree(ptr noundef %41) #22
  tail call void @blk_mq_sysfs_deinit(ptr noundef %0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sysfs_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @blk_mq_init_queue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32
  %7 = icmp ne i32 %6, 0
  %8 = tail call ptr @blk_alloc_queue(i32 noundef %3, i1 noundef zeroext %7) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 10
  store ptr null, ptr %11, align 4
  %12 = tail call i32 @blk_mq_init_allocated_queue(ptr noundef %0, ptr noundef nonnull %8) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  tail call void @blk_cleanup_queue(ptr noundef nonnull %8) #22
  %15 = inttoptr i32 %12 to ptr
  br label %16

16:                                               ; preds = %14, %10, %1
  %17 = phi ptr [ %15, %14 ], [ %8, %10 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__blk_mq_alloc_disk(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp ne i32 %8, 0
  %10 = tail call ptr @blk_alloc_queue(i32 noundef %5, i1 noundef zeroext %9) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 10
  store ptr %1, ptr %13, align 4
  %14 = tail call i32 @blk_mq_init_allocated_queue(ptr noundef %0, ptr noundef nonnull %10) #22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  tail call void @blk_cleanup_queue(ptr noundef nonnull %10) #22
  %17 = inttoptr i32 %14 to ptr
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %17, %16 ], [ %10, %12 ]
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %4, align 4
  %23 = tail call ptr @__alloc_disk_node(ptr noundef %19, i32 noundef %22, ptr noundef %2) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @blk_cleanup_queue(ptr noundef %19) #22
  br label %26

26:                                               ; preds = %25, %21, %18, %3
  %27 = phi ptr [ inttoptr (i32 -12 to ptr), %25 ], [ %23, %21 ], [ %19, %18 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_disk_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_init_allocated_queue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = lshr i32 %4, 2
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 5
  %9 = xor i32 %8, %5
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  %12 = load i1, ptr @blk_mq_init_allocated_queue.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !11

15:                                               ; preds = %2
  store i1 true, ptr @blk_mq_init_allocated_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4033, i32 noundef 9, ptr noundef null) #22
  br label %16

16:                                               ; preds = %15, %2
  %17 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 5
  store ptr %18, ptr %19, align 8
  %20 = tail call ptr @blk_stat_alloc_callback(ptr noundef nonnull @blk_mq_poll_stats_fn, ptr noundef nonnull @blk_mq_poll_stats_bkt, i32 noundef 16, ptr noundef %1) #22
  %21 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 25
  store ptr %20, ptr %21, align 8
  %22 = icmp eq ptr %20, null
  br i1 %22, label %207, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 40) #26
  %26 = icmp eq ptr %25, null
  br i1 %26, label %205, label %27

27:                                               ; preds = %23
  %28 = tail call noalias ptr @__alloc_percpu(i32 noundef 192, i32 noundef 64) #25
  %29 = getelementptr inbounds %struct.blk_mq_ctxs, ptr %25, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #24
  %34 = icmp ult i32 %33, %32
  br i1 %34, label %35, label %48

35:                                               ; preds = %35, %31
  %36 = phi ptr [ %46, %35 ], [ %28, %31 ]
  %37 = phi i32 [ %44, %35 ], [ %33, %31 ]
  %38 = ptrtoint ptr %36 to i32
  %39 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %38
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.blk_mq_ctx, ptr %42, i32 0, i32 5
  store ptr %25, ptr %43, align 4
  %44 = tail call i32 @cpumask_next(i32 noundef %37, ptr noundef nonnull @__cpu_possible_mask) #24
  %45 = icmp ult i32 %44, %32
  %46 = load ptr, ptr %29, align 4
  br i1 %45, label %35, label %48

47:                                               ; preds = %27
  tail call void @kfree(ptr noundef nonnull %25) #22
  br label %205

48:                                               ; preds = %35, %31
  %49 = phi ptr [ %28, %31 ], [ %46, %35 ]
  %50 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 17
  store ptr %25, ptr %50, align 8
  %51 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 6
  store ptr %49, ptr %51, align 4
  tail call void @blk_mq_sysfs_init(ptr noundef %1) #22
  %52 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 42
  store volatile ptr %52, ptr %52, align 4
  %53 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 42, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 43
  store i32 0, ptr %54, align 8
  tail call fastcc void @blk_mq_realloc_hw_ctxs(ptr noundef %0, ptr noundef %1)
  %55 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 9
  %56 = load i32, ptr %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %202, label %58

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 28
  store i32 -32, ptr %59, align 4
  %60 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 28, i32 1
  store volatile ptr %60, ptr %60, align 4
  %61 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 28, i32 1, i32 1
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 28, i32 2
  store ptr @blk_mq_timeout_work, ptr %62, align 4
  %63 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 3000, i32 %64
  tail call void @blk_queue_rq_timeout(ptr noundef %1, i32 noundef %66) #22
  %67 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 49
  store ptr %0, ptr %67, align 4
  %68 = load i32, ptr %3, align 8
  %69 = or i32 %68, 536871056
  store i32 %69, ptr %3, align 8
  %70 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %71, 2
  br i1 %72, label %73, label %78

73:                                               ; preds = %58
  %74 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %0, i32 0, i32 2, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  tail call void @blk_queue_flag_set(i32 noundef 16, ptr noundef %1) #22
  br label %78

78:                                               ; preds = %77, %73, %58
  %79 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 39
  store i32 -32, ptr %79, align 4
  %80 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 39, i32 0, i32 1
  store volatile ptr %80, ptr %80, align 4
  %81 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 39, i32 0, i32 1, i32 1
  store ptr %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 39, i32 0, i32 2
  store ptr @blk_mq_requeue_work, ptr %82, align 4
  %83 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 39, i32 1
  tail call void @init_timer_key(ptr noundef %83, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #22
  %84 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37
  store volatile ptr %84, ptr %84, align 4
  %85 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 1
  store ptr %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 38
  store i32 0, ptr %86, align 8
  %87 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 20
  store i32 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 24
  store i32 -1, ptr %90, align 4
  %91 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #24
  %92 = load i32, ptr @nr_cpu_ids, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %144

94:                                               ; preds = %78
  %95 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = load ptr, ptr %67, align 4
  %98 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %97, i32 0, i32 1
  %99 = icmp ugt i32 %96, 1
  %100 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 8
  br label %105

101:                                              ; preds = %140, %105
  %102 = tail call i32 @cpumask_next(i32 noundef %106, ptr noundef nonnull @__cpu_possible_mask) #24
  %103 = load i32, ptr @nr_cpu_ids, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %144

105:                                              ; preds = %101, %94
  %106 = phi i32 [ %91, %94 ], [ %102, %101 ]
  %107 = load ptr, ptr %51, align 4
  %108 = ptrtoint ptr %107 to i32
  %109 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %106
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, %108
  %112 = inttoptr i32 %111 to ptr
  %113 = getelementptr inbounds %struct.blk_mq_ctx, ptr %112, i32 0, i32 1
  store i32 %106, ptr %113, align 64
  store i32 0, ptr %112, align 64
  %114 = getelementptr %struct.anon, ptr %112, i32 0, i32 1, i32 0
  store volatile ptr %114, ptr %114, align 4
  %115 = getelementptr %struct.anon, ptr %112, i32 0, i32 1, i32 0, i32 1
  store ptr %114, ptr %115, align 4
  %116 = getelementptr %struct.anon, ptr %112, i32 0, i32 1, i32 1
  store volatile ptr %116, ptr %116, align 4
  %117 = getelementptr %struct.anon, ptr %112, i32 0, i32 1, i32 1, i32 1
  store ptr %116, ptr %117, align 4
  %118 = getelementptr %struct.anon, ptr %112, i32 0, i32 1, i32 2
  store volatile ptr %118, ptr %118, align 4
  %119 = getelementptr %struct.anon, ptr %112, i32 0, i32 1, i32 2, i32 1
  store ptr %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.blk_mq_ctx, ptr %112, i32 0, i32 4
  store ptr %1, ptr %120, align 8
  %121 = load i32, ptr %98, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %101, label %123

123:                                              ; preds = %140, %105
  %124 = phi i32 [ %141, %140 ], [ %121, %105 ]
  %125 = phi i32 [ %142, %140 ], [ 0, %105 ]
  br i1 %99, label %126, label %140

126:                                              ; preds = %123
  %127 = load ptr, ptr %100, align 4
  %128 = load ptr, ptr %67, align 4
  %129 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %128, i32 0, i32 %125
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr i32, ptr %130, i32 %106
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr ptr, ptr %127, i32 %132
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %134, i32 0, i32 23
  %136 = load i32, ptr %135, align 32
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %140

138:                                              ; preds = %126
  store i32 0, ptr %135, align 32
  %139 = load i32, ptr %98, align 4
  br label %140

140:                                              ; preds = %138, %126, %123
  %141 = phi i32 [ %124, %123 ], [ %124, %126 ], [ %139, %138 ]
  %142 = add nuw i32 %125, 1
  %143 = icmp ult i32 %142, %141
  br i1 %143, label %123, label %101

144:                                              ; preds = %101, %78
  %145 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %145) #22
  %146 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 14
  %147 = load volatile ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, %146
  br i1 %148, label %177, label %149

149:                                              ; preds = %144
  %150 = load i32, ptr %6, align 4
  %151 = and i32 %150, 2
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %177

153:                                              ; preds = %149
  %154 = or i32 %150, 2
  store i32 %154, ptr %6, align 4
  br label %155

155:                                              ; preds = %174, %153
  %156 = phi ptr [ %175, %174 ], [ %147, %153 ]
  %157 = getelementptr i8, ptr %156, i32 -488
  tail call void @blk_freeze_queue(ptr noundef %157) #22
  %158 = getelementptr i8, ptr %156, i32 -448
  %159 = load i32, ptr %158, align 8
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %174, label %161

161:                                              ; preds = %155
  %162 = getelementptr i8, ptr %156, i32 -452
  br label %163

163:                                              ; preds = %163, %161
  %164 = phi i32 [ 0, %161 ], [ %171, %163 ]
  %165 = load ptr, ptr %162, align 4
  %166 = getelementptr ptr, ptr %165, i32 %164
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %167, i32 0, i32 5
  %169 = load i32, ptr %168, align 8
  %170 = or i32 %169, 2
  store i32 %170, ptr %168, align 8
  %171 = add nuw i32 %164, 1
  %172 = load i32, ptr %158, align 8
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %163, label %174

174:                                              ; preds = %163, %155
  tail call void @__blk_mq_unfreeze_queue(ptr noundef %157, i1 noundef zeroext false) #22
  %175 = load ptr, ptr %156, align 4
  %176 = icmp eq ptr %175, %146
  br i1 %176, label %177, label %155

177:                                              ; preds = %174, %149, %144
  %178 = load i32, ptr %6, align 4
  %179 = and i32 %178, 2
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %197, label %181

181:                                              ; preds = %177
  %182 = load i32, ptr %55, align 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %197, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 8
  br label %186

186:                                              ; preds = %186, %184
  %187 = phi i32 [ 0, %184 ], [ %194, %186 ]
  %188 = load ptr, ptr %185, align 4
  %189 = getelementptr ptr, ptr %188, i32 %187
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %190, i32 0, i32 5
  %192 = load i32, ptr %191, align 8
  %193 = or i32 %192, 2
  store i32 %193, ptr %191, align 8
  %194 = add nuw i32 %187, 1
  %195 = load i32, ptr %55, align 8
  %196 = icmp ult i32 %194, %195
  br i1 %196, label %186, label %197

197:                                              ; preds = %186, %181, %177
  %198 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 50
  %199 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 14, i32 1
  %200 = load ptr, ptr %199, align 4
  store ptr %198, ptr %199, align 4
  store ptr %146, ptr %198, align 4
  %201 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 50, i32 1
  store ptr %200, ptr %201, align 4
  store volatile ptr %198, ptr %200, align 4
  tail call void @mutex_unlock(ptr noundef %145) #22
  tail call fastcc void @blk_mq_map_swqueue(ptr noundef %1)
  br label %208

202:                                              ; preds = %48
  %203 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 8
  %204 = load ptr, ptr %203, align 4
  tail call void @kfree(ptr noundef %204) #22
  store i32 0, ptr %55, align 8
  tail call void @blk_mq_sysfs_deinit(ptr noundef %1) #22
  br label %205

205:                                              ; preds = %202, %47, %23
  %206 = load ptr, ptr %21, align 8
  tail call void @blk_stat_free_callback(ptr noundef %206) #22
  store ptr null, ptr %21, align 8
  br label %207

207:                                              ; preds = %205, %16
  store ptr null, ptr %19, align 8
  br label %208

208:                                              ; preds = %207, %197
  %209 = phi i32 [ -12, %207 ], [ 0, %197 ]
  ret i32 %209
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_stat_alloc_callback(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_mq_poll_stats_fn(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.blk_stat_callback, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.blk_stat_callback, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 26
  br label %6

6:                                                ; preds = %16, %1
  %7 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr %struct.blk_rq_stat, ptr %8, i32 %7, i32 3
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr %struct.blk_rq_stat, ptr %8, i32 %7
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr %struct.blk_rq_stat, ptr %14, i32 %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %15, ptr noundef align 8 dereferenceable(40) %13, i32 40, i1 false)
  br label %16

16:                                               ; preds = %12, %6
  %17 = add nuw nsw i32 %7, 1
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %19, label %6

19:                                               ; preds = %16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @blk_mq_poll_stats_bkt(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 16
  %5 = load i16, ptr %4, align 8
  %6 = icmp eq i16 %5, 0
  %7 = zext i16 %5 to i32
  %8 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 false) #22, !range !21
  %9 = and i32 %3, 1
  %10 = mul nsw i32 %8, -2
  %11 = add nsw i32 %10, 62
  %12 = select i1 %6, i32 -2, i32 %11
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, 15
  %15 = or i32 %9, 14
  %16 = select i1 %14, i32 %15, i32 %13
  %17 = icmp sgt i32 %13, -1
  %18 = select i1 %17, i32 %16, i32 -1
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sysfs_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @blk_mq_realloc_hw_ctxs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 9
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #22
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %230, label %13, !prof !11

13:                                               ; preds = %10
  %14 = extractvalue { i32, i1 } %11, 0
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #25
  %16 = icmp eq ptr %15, null
  br i1 %16, label %230, label %17

17:                                               ; preds = %13
  %18 = icmp eq ptr %4, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = load i32, ptr %5, align 8
  %21 = shl i32 %20, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %15, ptr nonnull align 4 %4, i32 %21, i1 false)
  br label %22

22:                                               ; preds = %19, %17
  store ptr %15, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #22
  br label %23

23:                                               ; preds = %22, %2
  %24 = phi ptr [ %15, %22 ], [ %4, %2 ]
  %25 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 40
  tail call void @mutex_lock(ptr noundef %25) #22
  %26 = load i32, ptr %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %213, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 43
  %30 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 42
  %31 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 7
  %32 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 9
  %33 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 11
  %35 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 2
  %36 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 10
  br label %37

37:                                               ; preds = %203, %28
  %38 = phi i32 [ 0, %28 ], [ %204, %203 ]
  %39 = tail call i32 @blk_mq_hw_queue_to_node(ptr noundef %0, i32 noundef %38) #22
  %40 = getelementptr ptr, ptr %24, i32 %38
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %41, i32 0, i32 23
  %45 = load i32, ptr %44, align 32
  %46 = icmp eq i32 %45, %39
  br i1 %46, label %203, label %47

47:                                               ; preds = %43, %37
  tail call void @_raw_spin_lock(ptr noundef %29) #22
  br label %48

48:                                               ; preds = %52, %47
  %49 = phi ptr [ %30, %47 ], [ %50, %52 ]
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, %30
  br i1 %51, label %66, label %52

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %50, i32 -72
  %54 = load i32, ptr %53, align 32
  %55 = icmp eq i32 %54, %39
  br i1 %55, label %56, label %48

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %50, i32 -296
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %50, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %62, ptr %61, align 4
  store volatile ptr %50, ptr %50, align 4
  store ptr %50, ptr %60, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %64 = load i16, ptr %29, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  br label %131

66:                                               ; preds = %56, %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %67 = load i16, ptr %29, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  %69 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %70 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 77056, i32 noundef 320) #26
  %71 = icmp eq ptr %70, null
  br i1 %71, label %194, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 2
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 25
  store volatile i32 0, ptr %74, align 8
  %75 = icmp eq i32 %39, -1
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, ptr %31, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi i32 [ %77, %76 ], [ %39, %72 ]
  %80 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 23
  store i32 %79, ptr %80, align 32
  %81 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 1
  store i32 -32, ptr %81, align 64
  %82 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %82, ptr %82, align 4
  %83 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 1, i32 0, i32 1, i32 1
  store ptr %82, ptr %83, align 8
  %84 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 1, i32 0, i32 2
  store ptr @blk_mq_run_work_fn, ptr %84, align 4
  %85 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %85, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #22
  store i32 0, ptr %70, align 64
  %86 = getelementptr inbounds %struct.anon.1, ptr %70, i32 0, i32 1
  store volatile ptr %86, ptr %86, align 4
  %87 = getelementptr inbounds %struct.anon.1, ptr %70, i32 0, i32 1, i32 1
  store ptr %86, ptr %87, align 8
  %88 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 7
  store ptr %1, ptr %88, align 64
  %89 = load i32, ptr %32, align 4
  %90 = and i32 %89, -3
  %91 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 5
  store i32 %90, ptr %91, align 8
  %92 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 31
  store volatile ptr %92, ptr %92, align 8
  %93 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 31, i32 1
  store ptr %92, ptr %93, align 4
  %94 = load i32, ptr @nr_cpu_ids, align 4
  %95 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %94, i32 4) #22
  %96 = extractvalue { i32, i1 } %95, 1
  br i1 %96, label %97, label %99, !prof !11

97:                                               ; preds = %78
  %98 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 15
  store ptr null, ptr %98, align 16
  br label %130

99:                                               ; preds = %78
  %100 = extractvalue { i32, i1 } %95, 0
  %101 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %100, i32 noundef 76800) #25
  %102 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 15
  store ptr %101, ptr %102, align 16
  %103 = icmp eq ptr %101, null
  br i1 %103, label %130, label %104

104:                                              ; preds = %99
  %105 = load i32, ptr @nr_cpu_ids, align 4
  %106 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 10
  %107 = tail call i32 @sbitmap_init_node(ptr noundef %106, i32 noundef %105, i32 noundef 3, i32 noundef 76800, i32 noundef %79, i1 noundef zeroext false, i1 noundef zeroext false) #22
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 14
  store i16 0, ptr %110, align 2
  %111 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 16
  store i32 0, ptr %111, align 4
  %112 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 17
  store i32 0, ptr %112, align 8
  %113 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 17, i32 1
  store ptr null, ptr %113, align 4
  %114 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 17, i32 2
  store ptr @blk_mq_dispatch_wake, ptr %114, align 8
  %115 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 17, i32 3
  store volatile ptr %115, ptr %115, align 4
  %116 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 17, i32 3, i32 1
  store ptr %115, ptr %116, align 8
  %117 = load i32, ptr %80, align 32
  %118 = load i32, ptr %33, align 4
  %119 = tail call ptr @blk_alloc_flush_queue(i32 noundef %117, i32 noundef %118, i32 noundef 76800) #22
  %120 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 8
  store ptr %119, ptr %120, align 4
  %121 = icmp eq ptr %119, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %109
  tail call void @blk_mq_hctx_kobj_init(ptr noundef nonnull %70) #22
  br label %131

123:                                              ; preds = %109
  %124 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 10, i32 5
  %125 = load ptr, ptr %124, align 8
  tail call void @free_percpu(ptr noundef %125) #22
  %126 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %70, i32 0, i32 10, i32 4
  %127 = load ptr, ptr %126, align 4
  tail call void @kfree(ptr noundef %127) #22
  store ptr null, ptr %126, align 4
  br label %128

128:                                              ; preds = %123, %104
  %129 = load ptr, ptr %102, align 16
  tail call void @kfree(ptr noundef %129) #22
  br label %130

130:                                              ; preds = %128, %99, %97
  tail call void @kfree(ptr noundef nonnull %70) #22
  br label %194

131:                                              ; preds = %122, %59
  %132 = phi ptr [ %57, %59 ], [ %70, %122 ]
  %133 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %132, i32 0, i32 24
  store i32 %38, ptr %133, align 4
  %134 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %132, i32 0, i32 5
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %132, i32 0, i32 26
  %140 = tail call i32 @__cpuhp_state_add_instance(i32 noundef 156, ptr noundef %139, i1 noundef zeroext false) #22
  br label %141

141:                                              ; preds = %138, %131
  %142 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %132, i32 0, i32 27
  %143 = tail call i32 @__cpuhp_state_add_instance(i32 noundef 26, ptr noundef %142, i1 noundef zeroext false) #22
  %144 = load ptr, ptr %34, align 4
  %145 = getelementptr ptr, ptr %144, i32 %38
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %132, i32 0, i32 19
  store ptr %146, ptr %147, align 16
  %148 = load ptr, ptr %35, align 4
  %149 = getelementptr inbounds %struct.blk_mq_ops, ptr %148, i32 0, i32 10
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %141
  %153 = load ptr, ptr %36, align 4
  %154 = tail call i32 %150(ptr noundef nonnull %132, ptr noundef %153, i32 noundef %38) #22
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %178

156:                                              ; preds = %152
  %157 = load ptr, ptr %35, align 4
  br label %158

158:                                              ; preds = %156, %141
  %159 = phi ptr [ %157, %156 ], [ %148, %141 ]
  %160 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %132, i32 0, i32 8
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.blk_flush_queue, ptr %161, i32 0, i32 5
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.blk_mq_ops, ptr %159, i32 0, i32 12
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %188, label %167

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %132, i32 0, i32 23
  %169 = load i32, ptr %168, align 32
  %170 = tail call i32 %165(ptr noundef %0, ptr noundef %163, i32 noundef %38, i32 noundef %169) #22
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %188, label %172

172:                                              ; preds = %167
  %173 = load ptr, ptr %35, align 4
  %174 = getelementptr inbounds %struct.blk_mq_ops, ptr %173, i32 0, i32 11
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %172
  tail call void %175(ptr noundef nonnull %132, i32 noundef %38) #22
  br label %178

178:                                              ; preds = %177, %172, %152
  %179 = load i32, ptr %134, align 8
  %180 = and i32 %179, 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %132, i32 0, i32 26
  %184 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 156, ptr noundef %183, i1 noundef zeroext false) #22
  br label %185

185:                                              ; preds = %182, %178
  %186 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 26, ptr noundef %142, i1 noundef zeroext false) #22
  %187 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %132, i32 0, i32 28
  tail call void @kobject_put(ptr noundef %187) #22
  br label %194

188:                                              ; preds = %167, %158
  %189 = getelementptr inbounds %struct.request, ptr %163, i32 0, i32 20
  store volatile i32 0, ptr %189, align 8
  %190 = load ptr, ptr %40, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %188
  tail call fastcc void @blk_mq_exit_hctx(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %190, i32 noundef %38)
  br label %193

193:                                              ; preds = %192, %188
  store ptr %132, ptr %40, align 4
  br label %203

194:                                              ; preds = %185, %130, %66
  %195 = load ptr, ptr %40, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = load i32, ptr %7, align 4
  br label %207

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %195, i32 0, i32 23
  %201 = load i32, ptr %200, align 32
  %202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %39, i32 noundef %201) #23
  br label %203

203:                                              ; preds = %199, %193, %43
  %204 = add nuw i32 %38, 1
  %205 = load i32, ptr %7, align 4
  %206 = icmp ult i32 %204, %205
  br i1 %206, label %37, label %207

207:                                              ; preds = %203, %197
  %208 = phi i32 [ %198, %197 ], [ %205, %203 ]
  %209 = phi i32 [ %38, %197 ], [ %204, %203 ]
  %210 = icmp eq i32 %209, %208
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = load i32, ptr %5, align 8
  br label %216

213:                                              ; preds = %207, %23
  %214 = phi i32 [ %208, %207 ], [ 0, %23 ]
  %215 = load i32, ptr %5, align 8
  store i32 %214, ptr %5, align 8
  br label %216

216:                                              ; preds = %213, %211
  %217 = phi i32 [ %212, %211 ], [ %214, %213 ]
  %218 = phi i32 [ %209, %211 ], [ %215, %213 ]
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %226, %216
  %221 = phi i32 [ %227, %226 ], [ %217, %216 ]
  %222 = getelementptr ptr, ptr %24, i32 %221
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %220
  tail call fastcc void @blk_mq_exit_hctx(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %223, i32 noundef %221)
  store ptr null, ptr %222, align 4
  br label %226

226:                                              ; preds = %225, %220
  %227 = add i32 %221, 1
  %228 = icmp eq i32 %227, %218
  br i1 %228, label %229, label %220

229:                                              ; preds = %226, %216
  tail call void @mutex_unlock(ptr noundef %25) #22
  br label %230

230:                                              ; preds = %229, %13, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_mq_timeout_work(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  store i32 0, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -156
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17, !prof !14

8:                                                ; preds = %1
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !15
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #16, !srcloc !16
  %13 = add i32 %12, %5
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #22, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %25

17:                                               ; preds = %1
  %18 = getelementptr i8, ptr %0, i32 -152
  %19 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !60
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #22, !srcloc !18
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 0, i32 1, ptr elementtype(i32) %19) #22, !srcloc !61
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !62
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %25

24:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %62

25:                                               ; preds = %23, %8
  call void @blk_mq_queue_tag_busy_iter(ptr noundef %3, ptr noundef nonnull @blk_mq_check_expired, ptr noundef nonnull %2) #22
  %26 = load i32, ptr %2, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %0, i32 -124
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %61, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 -128
  br label %37

34:                                               ; preds = %25
  %35 = getelementptr i8, ptr %0, i32 -20
  %36 = call i32 @mod_timer(ptr noundef %35, i32 noundef %26) #22
  br label %61

37:                                               ; preds = %57, %32
  %38 = phi i32 [ %30, %32 ], [ %58, %57 ]
  %39 = phi i32 [ 0, %32 ], [ %59, %57 ]
  %40 = load ptr, ptr %33, align 4
  %41 = getelementptr ptr, ptr %40, i32 %39
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %42, i32 0, i32 14
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %42, i32 0, i32 19
  %48 = load ptr, ptr %47, align 16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %42, i32 0, i32 5
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  call void @__blk_mq_tag_idle(ptr noundef %42) #22
  %56 = load i32, ptr %29, align 8
  br label %57

57:                                               ; preds = %55, %50, %46, %37
  %58 = phi i32 [ %38, %37 ], [ %56, %55 ], [ %38, %50 ], [ %38, %46 ]
  %59 = add nuw i32 %39, 1
  %60 = icmp ult i32 %59, %58
  br i1 %60, label %37, label %61

61:                                               ; preds = %57, %34, %28
  call void @blk_queue_exit(ptr noundef %3) #22
  br label %62

62:                                               ; preds = %61, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_mq_requeue_work(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  call void @_raw_spin_lock_irq(ptr noundef %4) #22
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr i8, ptr %0, i32 -8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %2, ptr %12, align 4
  store ptr %6, ptr %2, align 8
  store ptr %9, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %10, align 4
  br label %14

14:                                               ; preds = %8, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %15 = load i16, ptr %4, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !49
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !50
  %17 = load ptr, ptr %2, align 8
  %18 = icmp eq ptr %17, %2
  br i1 %18, label %19, label %22

19:                                               ; preds = %47, %14
  %20 = load volatile ptr, ptr %2, align 8
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %58, label %49

22:                                               ; preds = %47, %14
  %23 = phi ptr [ %25, %47 ], [ %17, %14 ]
  %24 = getelementptr i8, ptr %23, i32 -56
  %25 = load ptr, ptr %23, align 8
  %26 = getelementptr i8, ptr %23, i32 -40
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 136
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %22
  %31 = and i32 %27, -9
  store i32 %31, ptr %26, align 8
  %32 = getelementptr %struct.list_head, ptr %23, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %25, ptr %33, align 4
  store volatile ptr %23, ptr %23, align 4
  store ptr %23, ptr %32, align 4
  %35 = load i32, ptr %26, align 8
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = getelementptr i8, ptr %23, i32 -48
  %40 = load ptr, ptr %39, align 8
  call void @_raw_spin_lock(ptr noundef %40) #22
  %41 = getelementptr inbounds %struct.anon.1, ptr %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.anon.1, ptr %40, i32 0, i32 1, i32 1
  %43 = load ptr, ptr %42, align 4
  store ptr %23, ptr %42, align 4
  store ptr %41, ptr %23, align 4
  store ptr %43, ptr %32, align 4
  store volatile ptr %23, ptr %43, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %44 = load i16, ptr %40, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %40, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  br label %47

46:                                               ; preds = %30
  call void @blk_mq_sched_insert_request(ptr noundef %24, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #22
  br label %47

47:                                               ; preds = %46, %38, %22
  %48 = icmp eq ptr %25, %2
  br i1 %48, label %19, label %22

49:                                               ; preds = %49, %19
  %50 = phi ptr [ %56, %49 ], [ %20, %19 ]
  %51 = getelementptr i8, ptr %50, i32 -56
  %52 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %50, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  store volatile ptr %50, ptr %50, align 4
  store ptr %50, ptr %52, align 4
  call void @blk_mq_sched_insert_request(ptr noundef %51, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #22
  %56 = load volatile ptr, ptr %2, align 8
  %57 = icmp eq ptr %56, %2
  br i1 %57, label %58, label %49

58:                                               ; preds = %49, %19
  %59 = getelementptr i8, ptr %0, i32 -340
  call void @blk_mq_run_hw_queues(ptr noundef %59, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @blk_mq_map_swqueue(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 49
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %22

9:                                                ; preds = %22, %1
  %10 = phi i32 [ 0, %1 ], [ %31, %22 ]
  %11 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #24
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %3, i32 0, i32 11
  %18 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %3, i32 0, i32 9
  %19 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %3, i32 0, i32 12
  %20 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %3, i32 0, i32 4
  %21 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %83

22:                                               ; preds = %22, %7
  %23 = phi i32 [ 0, %7 ], [ %30, %22 ]
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr ptr, ptr %24, i32 %23
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %26, i32 0, i32 2
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %26, i32 0, i32 14
  store i16 0, ptr %28, align 2
  %29 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %26, i32 0, i32 11
  store ptr null, ptr %29, align 4
  %30 = add nuw i32 %23, 1
  %31 = load i32, ptr %4, align 8
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %22, label %9

33:                                               ; preds = %177, %97
  %34 = tail call i32 @cpumask_next(i32 noundef %84, ptr noundef nonnull @__cpu_possible_mask) #24
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %83, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %4, align 8
  br label %39

39:                                               ; preds = %37, %9
  %40 = phi i32 [ %38, %37 ], [ %10, %9 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %247, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %44 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %3, i32 0, i32 11
  %45 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %3, i32 0, i32 9
  %46 = load ptr, ptr %43, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %47, i32 0, i32 14
  %49 = load i16, ptr %48, align 2
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %78, label %51

51:                                               ; preds = %42
  %52 = load ptr, ptr %44, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %47, i32 0, i32 19
  store ptr %53, ptr %54, align 16
  %55 = icmp eq ptr %53, null
  br i1 %55, label %56, label %58, !prof !11

56:                                               ; preds = %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3733, i32 noundef 9, ptr noundef null) #22
  %57 = load i16, ptr %48, align 2
  br label %58

58:                                               ; preds = %56, %51
  %59 = phi i16 [ %57, %56 ], [ %49, %51 ]
  %60 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %47, i32 0, i32 10
  %61 = zext i16 %59 to i32
  tail call void @sbitmap_resize(ptr noundef %60, i32 noundef %61) #22
  %62 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %47, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = load i32, ptr @__cpu_online_mask, align 4
  %65 = and i32 %63, 65535
  %66 = and i32 %65, %64
  %67 = icmp eq i32 %66, 0
  %68 = tail call i32 @llvm.cttz.i32(i32 %66, i1 true) #22, !range !21
  %69 = select i1 %67, i32 16, i32 %68
  %70 = load i32, ptr @nr_cpu_ids, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %74, label %72

72:                                               ; preds = %58
  %73 = tail call i32 @_find_first_bit_le(ptr noundef %62, i32 noundef 16) #22
  br label %74

74:                                               ; preds = %72, %58
  %75 = phi i32 [ %73, %72 ], [ %69, %58 ]
  %76 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %47, i32 0, i32 3
  store i32 %75, ptr %76, align 16
  %77 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %47, i32 0, i32 4
  store i32 8, ptr %77, align 4
  br label %80

78:                                               ; preds = %42
  %79 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %47, i32 0, i32 19
  store ptr null, ptr %79, align 16
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32, ptr %4, align 8
  %82 = icmp ugt i32 %81, 1
  br i1 %82, label %189, label %247

83:                                               ; preds = %33, %14
  %84 = phi i32 [ %11, %14 ], [ %34, %33 ]
  %85 = load ptr, ptr %15, align 4
  %86 = ptrtoint ptr %85 to i32
  %87 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, %86
  %90 = inttoptr i32 %89 to ptr
  %91 = load i32, ptr %16, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %83
  %94 = lshr i32 %84, 5
  %95 = and i32 %84, 31
  %96 = shl nuw i32 1, %95
  br label %101

97:                                               ; preds = %173
  %98 = icmp ult i32 %102, 2
  br i1 %98, label %99, label %33

99:                                               ; preds = %97, %83
  %100 = phi i32 [ 0, %83 ], [ %174, %97 ]
  br label %177

101:                                              ; preds = %173, %93
  %102 = phi i32 [ 0, %93 ], [ %174, %173 ]
  %103 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %3, i32 0, i32 %102
  %104 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %3, i32 0, i32 %102, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = load ptr, ptr %21, align 4
  %109 = load ptr, ptr %2, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr i32, ptr %110, i32 %84
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr ptr, ptr %108, i32 %112
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr %struct.blk_mq_ctx, ptr %90, i32 0, i32 3, i32 %102
  store ptr %114, ptr %115, align 4
  br label %173

116:                                              ; preds = %101
  %117 = load ptr, ptr %103, align 4
  %118 = getelementptr i32, ptr %117, i32 %84
  %119 = load i32, ptr %118, align 4
  %120 = load ptr, ptr %17, align 4
  %121 = getelementptr ptr, ptr %120, i32 %119
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %142

124:                                              ; preds = %116
  %125 = load i32, ptr %18, align 4
  %126 = and i32 %125, 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %19, align 4
  store ptr %129, ptr %121, align 4
  br label %142

130:                                              ; preds = %124
  %131 = load i32, ptr %20, align 4
  %132 = tail call ptr @blk_mq_alloc_map_and_rqs(ptr noundef %3, i32 noundef %119, i32 noundef %131) #22
  %133 = load ptr, ptr %17, align 4
  %134 = getelementptr ptr, ptr %133, i32 %119
  store ptr %132, ptr %134, align 4
  %135 = load ptr, ptr %17, align 4
  %136 = getelementptr ptr, ptr %135, i32 %119
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %130
  %140 = load ptr, ptr %103, align 4
  %141 = getelementptr i32, ptr %140, i32 %84
  store i32 0, ptr %141, align 4
  br label %142

142:                                              ; preds = %139, %130, %128, %116
  %143 = load ptr, ptr %21, align 4
  %144 = load ptr, ptr %2, align 4
  %145 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %144, i32 0, i32 %102
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr i32, ptr %146, i32 %84
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr ptr, ptr %143, i32 %148
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr %struct.blk_mq_ctx, ptr %90, i32 0, i32 3, i32 %102
  store ptr %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %150, i32 0, i32 2
  %153 = getelementptr i32, ptr %152, i32 %94
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %154, %96
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %142
  tail call void @_set_bit(i32 noundef %84, ptr noundef %152) #22
  %158 = trunc i32 %102 to i16
  %159 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %150, i32 0, i32 13
  store i16 %158, ptr %159, align 4
  %160 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %150, i32 0, i32 14
  %161 = load i16, ptr %160, align 2
  %162 = and i32 %102, 65535
  %163 = getelementptr %struct.blk_mq_ctx, ptr %90, i32 0, i32 2, i32 %162
  store i16 %161, ptr %163, align 2
  %164 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %150, i32 0, i32 15
  %165 = load ptr, ptr %164, align 16
  %166 = load i16, ptr %160, align 2
  %167 = add i16 %166, 1
  store i16 %167, ptr %160, align 2
  %168 = zext i16 %166 to i32
  %169 = getelementptr ptr, ptr %165, i32 %168
  store ptr %90, ptr %169, align 4
  %170 = load i16, ptr %160, align 2
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %172, label %173, !prof !11

172:                                              ; preds = %157
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-mq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3707, 0\0A.popsection", ""() #22, !srcloc !73
  unreachable

173:                                              ; preds = %157, %142, %107
  %174 = add nuw i32 %102, 1
  %175 = load i32, ptr %16, align 4
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %101, label %97

177:                                              ; preds = %177, %99
  %178 = phi i32 [ %187, %177 ], [ %100, %99 ]
  %179 = load ptr, ptr %21, align 4
  %180 = load ptr, ptr %2, align 4
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr i32, ptr %181, i32 %84
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr ptr, ptr %179, i32 %183
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr %struct.blk_mq_ctx, ptr %90, i32 0, i32 3, i32 %178
  store ptr %185, ptr %186, align 4
  %187 = add i32 %178, 1
  %188 = icmp eq i32 %187, 3
  br i1 %188, label %33, label %177

189:                                              ; preds = %243, %80
  %190 = phi i32 [ %244, %243 ], [ 1, %80 ]
  %191 = load ptr, ptr %43, align 4
  %192 = getelementptr ptr, ptr %191, i32 %190
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %193, i32 0, i32 14
  %195 = load i16, ptr %194, align 2
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %197, label %215

197:                                              ; preds = %189
  %198 = load i32, ptr %45, align 4
  %199 = and i32 %198, 8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %197
  %202 = load ptr, ptr %44, align 4
  %203 = getelementptr ptr, ptr %202, i32 %190
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %211, label %206

206:                                              ; preds = %201
  tail call void @blk_mq_free_rqs(ptr noundef %3, ptr noundef nonnull %204, i32 noundef %190) #22
  %207 = getelementptr inbounds %struct.blk_mq_tags, ptr %204, i32 0, i32 5
  %208 = load ptr, ptr %207, align 4
  tail call void @kfree(ptr noundef %208) #22
  store ptr null, ptr %207, align 4
  %209 = getelementptr inbounds %struct.blk_mq_tags, ptr %204, i32 0, i32 6
  %210 = load ptr, ptr %209, align 4
  tail call void @kfree(ptr noundef %210) #22
  store ptr null, ptr %209, align 4
  tail call void @blk_mq_free_tags(ptr noundef nonnull %204) #22
  br label %211

211:                                              ; preds = %206, %201, %197
  %212 = load ptr, ptr %44, align 4
  %213 = getelementptr ptr, ptr %212, i32 %190
  store ptr null, ptr %213, align 4
  %214 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %193, i32 0, i32 19
  store ptr null, ptr %214, align 16
  br label %243

215:                                              ; preds = %189
  %216 = load ptr, ptr %44, align 4
  %217 = getelementptr ptr, ptr %216, i32 %190
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %193, i32 0, i32 19
  store ptr %218, ptr %219, align 16
  %220 = icmp eq ptr %218, null
  br i1 %220, label %221, label %223, !prof !11

221:                                              ; preds = %215
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3733, i32 noundef 9, ptr noundef null) #22
  %222 = load i16, ptr %194, align 2
  br label %223

223:                                              ; preds = %221, %215
  %224 = phi i16 [ %222, %221 ], [ %195, %215 ]
  %225 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %193, i32 0, i32 10
  %226 = zext i16 %224 to i32
  tail call void @sbitmap_resize(ptr noundef %225, i32 noundef %226) #22
  %227 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %193, i32 0, i32 2
  %228 = load i32, ptr %227, align 4
  %229 = load i32, ptr @__cpu_online_mask, align 4
  %230 = and i32 %228, 65535
  %231 = and i32 %230, %229
  %232 = icmp eq i32 %231, 0
  %233 = tail call i32 @llvm.cttz.i32(i32 %231, i1 true) #22, !range !21
  %234 = select i1 %232, i32 16, i32 %233
  %235 = load i32, ptr @nr_cpu_ids, align 4
  %236 = icmp ult i32 %234, %235
  br i1 %236, label %239, label %237

237:                                              ; preds = %223
  %238 = tail call i32 @_find_first_bit_le(ptr noundef %227, i32 noundef 16) #22
  br label %239

239:                                              ; preds = %237, %223
  %240 = phi i32 [ %238, %237 ], [ %234, %223 ]
  %241 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %193, i32 0, i32 3
  store i32 %240, ptr %241, align 16
  %242 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %193, i32 0, i32 4
  store i32 8, ptr %242, align 4
  br label %243

243:                                              ; preds = %239, %211
  %244 = add nuw i32 %190, 1
  %245 = load i32, ptr %4, align 8
  %246 = icmp ult i32 %244, %245
  br i1 %246, label %189, label %247, !llvm.loop !74

247:                                              ; preds = %243, %80, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_free_callback(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_exit_queue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 49
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i32 %5, 0
  %10 = or i1 %9, %8
  br i1 %10, label %25, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ 0, %11 ], [ %18, %13 ]
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr ptr, ptr %15, i32 %14
  %17 = load ptr, ptr %16, align 4
  tail call void @blk_mq_debugfs_unregister_hctx(ptr noundef %17) #22
  tail call fastcc void @blk_mq_exit_hctx(ptr noundef %0, ptr noundef %3, ptr noundef %17, i32 noundef %14) #22
  %18 = add nuw i32 %14, 1
  %19 = load i32, ptr %6, align 8
  %20 = icmp uge i32 %18, %19
  %21 = icmp eq i32 %18, %5
  %22 = or i1 %21, %20
  br i1 %22, label %23, label %13

23:                                               ; preds = %13
  %24 = load ptr, ptr %2, align 4
  br label %25

25:                                               ; preds = %23, %1
  %26 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %27 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %26, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %27) #22
  %28 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 50
  %29 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 50, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  %33 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %26, i32 0, i32 14
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %72, label %36

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %26, i32 0, i32 14, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %34, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %26, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, -3
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %69, %40
  %45 = phi ptr [ %70, %69 ], [ %34, %40 ]
  %46 = getelementptr i8, ptr %45, i32 -488
  tail call void @blk_freeze_queue(ptr noundef %46) #22
  %47 = getelementptr i8, ptr %45, i32 -448
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %44
  %51 = getelementptr i8, ptr %45, i32 -452
  br label %52

52:                                               ; preds = %63, %50
  %53 = phi i32 [ 0, %50 ], [ %66, %63 ]
  %54 = load ptr, ptr %51, align 4
  %55 = getelementptr ptr, ptr %54, i32 %53
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %56, i32 0, i32 5
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %52
  tail call void @__blk_mq_tag_idle(ptr noundef %56) #22
  %62 = load i32, ptr %57, align 8
  br label %63

63:                                               ; preds = %61, %52
  %64 = phi i32 [ %58, %52 ], [ %62, %61 ]
  %65 = and i32 %64, -3
  store i32 %65, ptr %57, align 8
  %66 = add nuw i32 %53, 1
  %67 = load i32, ptr %47, align 8
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %52, label %69

69:                                               ; preds = %63, %44
  tail call void @__blk_mq_unfreeze_queue(ptr noundef %46, i1 noundef zeroext false) #22
  %70 = load ptr, ptr %45, align 4
  %71 = icmp eq ptr %70, %33
  br i1 %71, label %72, label %44

72:                                               ; preds = %69, %36, %25
  tail call void @mutex_unlock(ptr noundef %27) #22
  store volatile ptr %28, ptr %28, align 4
  store ptr %28, ptr %29, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_alloc_tag_set(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %105, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %105, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %7, %12
  br i1 %13, label %105, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %105, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.blk_mq_ops, ptr %16, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct.blk_mq_ops, ptr %16, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = xor i1 %22, %25
  br i1 %26, label %105, label %27

27:                                               ; preds = %19
  %28 = icmp ugt i32 %7, 10240
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 10240) #23
  store i32 10240, ptr %6, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, ptr %32, align 4
  br label %40

36:                                               ; preds = %31
  %37 = icmp ugt i32 %33, 3
  br i1 %37, label %105, label %38

38:                                               ; preds = %36
  %39 = icmp eq i32 %33, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %38, %35
  %41 = load i32, ptr %2, align 4
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  store i32 %42, ptr %2, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, ptr %2, align 4
  br label %47

47:                                               ; preds = %45, %44, %40
  %48 = phi i32 [ %46, %45 ], [ %42, %44 ], [ %41, %40 ]
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %48, i32 4) #22
  %52 = extractvalue { i32, i1 } %51, 1
  br i1 %52, label %105, label %53, !prof !11

53:                                               ; preds = %50
  %54 = extractvalue { i32, i1 } %51, 0
  %55 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %54, i32 noundef 3520) #25
  %56 = icmp eq ptr %55, null
  br i1 %56, label %105, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  tail call void @kfree(ptr noundef %59) #22
  store ptr %55, ptr %58, align 4
  store i32 %48, ptr %2, align 4
  %60 = load i32, ptr %32, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %57, %47
  br label %63

63:                                               ; preds = %75, %62
  %64 = phi i32 [ %78, %75 ], [ 0, %62 ]
  %65 = load i32, ptr @nr_cpu_ids, align 4
  %66 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %65, i32 4) #22
  %67 = extractvalue { i32, i1 } %66, 1
  br i1 %67, label %68, label %70, !prof !11

68:                                               ; preds = %63
  %69 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %0, i32 0, i32 %64
  store ptr null, ptr %69, align 4
  br label %91

70:                                               ; preds = %63
  %71 = extractvalue { i32, i1 } %66, 0
  %72 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %71, i32 noundef 3520) #25
  %73 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %0, i32 0, i32 %64
  store ptr %72, ptr %73, align 4
  %74 = icmp eq ptr %72, null
  br i1 %74, label %91, label %75

75:                                               ; preds = %70
  %76 = load i32, ptr %2, align 4
  %77 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %0, i32 0, i32 %64, i32 1
  store i32 %76, ptr %77, align 4
  %78 = add nuw i32 %64, 1
  %79 = load i32, ptr %32, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %63, label %81

81:                                               ; preds = %75, %57
  %82 = tail call fastcc i32 @blk_mq_update_queue_map(ptr noundef %0)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = tail call fastcc i32 @blk_mq_alloc_set_map_and_rqs(ptr noundef %0)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %88, ptr noundef nonnull @.str.7, ptr noundef nonnull @blk_mq_alloc_tag_set.__key) #22
  %89 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 14
  store volatile ptr %89, ptr %89, align 4
  %90 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 14, i32 1
  store ptr %89, ptr %90, align 4
  br label %105

91:                                               ; preds = %84, %81, %70, %68
  %92 = phi i32 [ %82, %81 ], [ %85, %84 ], [ -12, %68 ], [ -12, %70 ]
  %93 = load i32, ptr %32, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %95, %91
  %96 = phi i32 [ %99, %95 ], [ 0, %91 ]
  %97 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %0, i32 0, i32 %96
  %98 = load ptr, ptr %97, align 4
  tail call void @kfree(ptr noundef %98) #22
  store ptr null, ptr %97, align 4
  %99 = add nuw i32 %96, 1
  %100 = load i32, ptr %32, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %95, label %102

102:                                              ; preds = %95, %91
  %103 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 11
  %104 = load ptr, ptr %103, align 4
  tail call void @kfree(ptr noundef %104) #22
  store ptr null, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %87, %53, %50, %36, %19, %14, %9, %5, %1
  %106 = phi i32 [ %92, %102 ], [ 0, %87 ], [ -22, %1 ], [ -22, %5 ], [ -22, %9 ], [ -22, %14 ], [ -22, %19 ], [ -22, %36 ], [ -12, %53 ], [ -12, %50 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @blk_mq_update_queue_map(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.blk_mq_ops, ptr %7, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %53, label %20

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %0, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.blk_mq_ops, ptr %16, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %22

20:                                               ; preds = %5
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %20, %11
  %23 = phi ptr [ %6, %20 ], [ %15, %11 ]
  %24 = load i32, ptr @nr_cpu_ids, align 4
  br label %25

25:                                               ; preds = %41, %22
  %26 = phi i32 [ %42, %41 ], [ %3, %22 ]
  %27 = phi i32 [ %43, %41 ], [ %24, %22 ]
  %28 = phi i32 [ %44, %41 ], [ 0, %22 ]
  %29 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %0, i32 0, i32 %28
  %30 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #24
  %31 = icmp ult i32 %30, %27
  br i1 %31, label %32, label %41

32:                                               ; preds = %32, %25
  %33 = phi i32 [ %36, %32 ], [ %30, %25 ]
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr i32, ptr %34, i32 %33
  store i32 0, ptr %35, align 4
  %36 = tail call i32 @cpumask_next(i32 noundef %33, ptr noundef nonnull @__cpu_possible_mask) #24
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %32, label %39

39:                                               ; preds = %32
  %40 = load i32, ptr %2, align 4
  br label %41

41:                                               ; preds = %39, %25
  %42 = phi i32 [ %40, %39 ], [ %26, %25 ]
  %43 = phi i32 [ %37, %39 ], [ %27, %25 ]
  %44 = add nuw i32 %28, 1
  %45 = icmp ult i32 %44, %42
  br i1 %45, label %25, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %23, align 4
  br label %48

48:                                               ; preds = %46, %20
  %49 = phi ptr [ %47, %46 ], [ %7, %20 ]
  %50 = getelementptr inbounds %struct.blk_mq_ops, ptr %49, i32 0, i32 16
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 %51(ptr noundef %0) #22
  br label %58

53:                                               ; preds = %5
  %54 = icmp ugt i32 %3, 1
  br i1 %54, label %55, label %56, !prof !11

55:                                               ; preds = %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/blk-mq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4206, 0\0A.popsection", ""() #22, !srcloc !76
  unreachable

56:                                               ; preds = %53, %11
  %57 = tail call i32 @blk_mq_map_queues(ptr noundef %0) #22
  br label %58

58:                                               ; preds = %56, %48
  %59 = phi i32 [ %57, %56 ], [ %52, %48 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @blk_mq_alloc_set_map_and_rqs(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 9
  %5 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 11
  %8 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 5
  br label %9

9:                                                ; preds = %78, %1
  %10 = phi i32 [ %80, %78 ], [ %3, %1 ]
  %11 = load i32, ptr %4, align 4
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @blk_mq_alloc_map_and_rqs(ptr noundef %0, i32 noundef -1, i32 noundef %10) #22
  store ptr %15, ptr %5, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %78, label %17

17:                                               ; preds = %14, %9
  %18 = load i32, ptr %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %86, label %20

20:                                               ; preds = %41, %17
  %21 = phi i32 [ %43, %41 ], [ 0, %17 ]
  %22 = load i32, ptr %4, align 4
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %5, align 4
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr ptr, ptr %27, i32 %21
  store ptr %26, ptr %28, align 4
  br label %41

29:                                               ; preds = %20
  %30 = load i32, ptr %2, align 4
  %31 = tail call ptr @blk_mq_alloc_map_and_rqs(ptr noundef %0, i32 noundef %21, i32 noundef %30) #22
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr ptr, ptr %32, i32 %21
  store ptr %31, ptr %33, align 4
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr ptr, ptr %34, i32 %21
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = add i32 %21, -1
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %46, label %66

41:                                               ; preds = %29, %25
  %42 = tail call i32 @__cond_resched() #22
  %43 = add nuw i32 %21, 1
  %44 = load i32, ptr %6, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %20, label %86

46:                                               ; preds = %61, %38
  %47 = phi i32 [ %64, %61 ], [ %39, %38 ]
  %48 = load i32, ptr %4, align 4
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr ptr, ptr %52, i32 %47
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  tail call void @blk_mq_free_rqs(ptr noundef %0, ptr noundef nonnull %54, i32 noundef %47) #22
  %57 = getelementptr inbounds %struct.blk_mq_tags, ptr %54, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  tail call void @kfree(ptr noundef %58) #22
  store ptr null, ptr %57, align 4
  %59 = getelementptr inbounds %struct.blk_mq_tags, ptr %54, i32 0, i32 6
  %60 = load ptr, ptr %59, align 4
  tail call void @kfree(ptr noundef %60) #22
  store ptr null, ptr %59, align 4
  tail call void @blk_mq_free_tags(ptr noundef nonnull %54) #22
  br label %61

61:                                               ; preds = %56, %51, %46
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr ptr, ptr %62, i32 %47
  store ptr null, ptr %63, align 4
  %64 = add i32 %47, -1
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %46, label %66

66:                                               ; preds = %61, %38
  %67 = load i32, ptr %4, align 4
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %5, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  tail call void @blk_mq_free_rqs(ptr noundef %0, ptr noundef nonnull %71, i32 noundef -1) #22
  %74 = getelementptr inbounds %struct.blk_mq_tags, ptr %71, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  tail call void @kfree(ptr noundef %75) #22
  store ptr null, ptr %74, align 4
  %76 = getelementptr inbounds %struct.blk_mq_tags, ptr %71, i32 0, i32 6
  %77 = load ptr, ptr %76, align 4
  tail call void @kfree(ptr noundef %77) #22
  store ptr null, ptr %76, align 4
  tail call void @blk_mq_free_tags(ptr noundef nonnull %71) #22
  br label %78

78:                                               ; preds = %73, %70, %66, %14
  %79 = load i32, ptr %2, align 4
  %80 = lshr i32 %79, 1
  store i32 %80, ptr %2, align 4
  %81 = load i32, ptr %8, align 4
  %82 = add i32 %81, 1
  %83 = icmp ult i32 %80, %82
  %84 = icmp ult i32 %79, 2
  %85 = or i1 %84, %83
  br i1 %85, label %89, label %9

86:                                               ; preds = %41, %17
  %87 = load i32, ptr %2, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86, %78
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #23
  br label %95

91:                                               ; preds = %86
  %92 = icmp eq i32 %3, %87
  br i1 %92, label %95, label %93

93:                                               ; preds = %91
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %3, i32 noundef %87) #23
  br label %95

95:                                               ; preds = %93, %91, %89
  %96 = phi i32 [ -12, %89 ], [ 0, %93 ], [ 0, %91 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_alloc_sq_tag_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(112) %0, i8 0, i32 112, i1 false)
  %5 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 2
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 3
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 1
  store i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 4
  store i32 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 7
  store i32 -1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 9
  store i32 %3, ptr %10, align 4
  %11 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %0)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_free_tag_set(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 9
  %7 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 11
  br label %8

8:                                                ; preds = %23, %5
  %9 = phi i32 [ 0, %5 ], [ %26, %23 ]
  %10 = load i32, ptr %6, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr ptr, ptr %14, i32 %9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  tail call void @blk_mq_free_rqs(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %9) #22
  %19 = getelementptr inbounds %struct.blk_mq_tags, ptr %16, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #22
  store ptr null, ptr %19, align 4
  %21 = getelementptr inbounds %struct.blk_mq_tags, ptr %16, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #22
  store ptr null, ptr %21, align 4
  tail call void @blk_mq_free_tags(ptr noundef nonnull %16) #22
  br label %23

23:                                               ; preds = %18, %13, %8
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr ptr, ptr %24, i32 %9
  store ptr null, ptr %25, align 4
  %26 = add nuw i32 %9, 1
  %27 = load i32, ptr %2, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %8, label %29

29:                                               ; preds = %23, %1
  %30 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 12
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  tail call void @blk_mq_free_rqs(ptr noundef %0, ptr noundef nonnull %36, i32 noundef -1) #22
  %39 = getelementptr inbounds %struct.blk_mq_tags, ptr %36, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  tail call void @kfree(ptr noundef %40) #22
  store ptr null, ptr %39, align 4
  %41 = getelementptr inbounds %struct.blk_mq_tags, ptr %36, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  tail call void @kfree(ptr noundef %42) #22
  store ptr null, ptr %41, align 4
  tail call void @blk_mq_free_tags(ptr noundef nonnull %36) #22
  br label %43

43:                                               ; preds = %38, %34, %29
  %44 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %47, %43
  %48 = phi i32 [ %51, %47 ], [ 0, %43 ]
  %49 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %0, i32 0, i32 %48
  %50 = load ptr, ptr %49, align 4
  tail call void @kfree(ptr noundef %50) #22
  store ptr null, ptr %49, align 4
  %51 = add nuw i32 %48, 1
  %52 = load i32, ptr %44, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %47, label %54

54:                                               ; preds = %47, %43
  %55 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 11
  %56 = load ptr, ptr %55, align 4
  tail call void @kfree(ptr noundef %56) #22
  store ptr null, ptr %55, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_update_nr_requests(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 49
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %78, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %78, label %10

10:                                               ; preds = %6
  tail call void @blk_freeze_queue(ptr noundef %0) #22
  %11 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 14
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #22
  %13 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 48
  %14 = load i32, ptr %13, align 8
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @blk_queue_flag_set(i32 noundef 24, ptr noundef %0) #22
  br label %18

18:                                               ; preds = %17, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #22
  %19 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 58
  tail call void @synchronize_srcu(ptr noundef %24) #22
  br label %26

25:                                               ; preds = %18
  tail call void @synchronize_rcu() #22
  br label %26

26:                                               ; preds = %25, %23
  %27 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %32 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  br label %33

33:                                               ; preds = %61, %30
  %34 = phi i32 [ 0, %30 ], [ %62, %61 ]
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr ptr, ptr %35, i32 %34
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %37, i32 0, i32 19
  %39 = load ptr, ptr %38, align 16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %37, i32 0, i32 20
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call i32 @blk_mq_tag_update_depth(ptr noundef %37, ptr noundef %42, i32 noundef %1, i1 noundef zeroext true) #22
  br label %49

47:                                               ; preds = %41
  %48 = tail call i32 @blk_mq_tag_update_depth(ptr noundef %37, ptr noundef %38, i32 noundef %1, i1 noundef zeroext false) #22
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load ptr, ptr %32, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %53, align 4
  %57 = getelementptr inbounds %struct.elevator_type, ptr %56, i32 0, i32 1, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  tail call void %58(ptr noundef %37) #22
  br label %61

61:                                               ; preds = %60, %55, %52, %33
  %62 = add nuw i32 %34, 1
  %63 = load i32, ptr %27, align 8
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %33, label %65

65:                                               ; preds = %61, %26
  store i32 %1, ptr %7, align 4
  %66 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %4, i32 0, i32 9
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @blk_mq_tag_update_sched_shared_tags(ptr noundef %0) #22
  br label %76

75:                                               ; preds = %70
  tail call void @blk_mq_tag_resize_shared_tags(ptr noundef nonnull %4, i32 noundef %1) #22
  br label %76

76:                                               ; preds = %75, %74, %65, %49
  %77 = phi i32 [ 0, %65 ], [ 0, %75 ], [ 0, %74 ], [ %50, %49 ]
  tail call void @blk_mq_unquiesce_queue(ptr noundef %0)
  tail call void @__blk_mq_unfreeze_queue(ptr noundef %0, i1 noundef zeroext false) #22
  br label %78

78:                                               ; preds = %76, %6, %2
  %79 = phi i32 [ %77, %76 ], [ -22, %2 ], [ 0, %6 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_tag_update_depth(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tag_update_sched_shared_tags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tag_resize_shared_tags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_update_nr_hw_queues(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr %3, ptr %3, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 %1) #22
  %11 = select i1 %8, i32 %10, i32 %1
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %178, label %13

13:                                               ; preds = %2
  br i1 %8, label %14, label %18

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %11, %16
  br i1 %17, label %178, label %18

18:                                               ; preds = %14, %13
  %19 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %64, label %25

22:                                               ; preds = %25
  %23 = load ptr, ptr %19, align 4
  %24 = icmp eq ptr %23, %19
  br i1 %24, label %64, label %33

25:                                               ; preds = %25, %18
  %26 = phi ptr [ %28, %25 ], [ %20, %18 ]
  %27 = getelementptr i8, ptr %26, i32 -488
  call void @blk_freeze_queue(ptr noundef %27) #22
  %28 = load ptr, ptr %26, align 4
  %29 = icmp eq ptr %28, %19
  br i1 %29, label %22, label %25

30:                                               ; preds = %56
  %31 = load ptr, ptr %19, align 4
  %32 = icmp eq ptr %31, %19
  br i1 %32, label %64, label %59

33:                                               ; preds = %56, %22
  %34 = phi ptr [ %57, %56 ], [ %23, %22 ]
  %35 = getelementptr i8, ptr %34, i32 -488
  %36 = getelementptr i8, ptr %34, i32 -484
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %56, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %41 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 76800, i32 noundef 16) #26
  %42 = icmp eq ptr %41, null
  br i1 %42, label %142, label %43

43:                                               ; preds = %39
  store volatile ptr %41, ptr %41, align 8
  %44 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %41, ptr %44, align 4
  %45 = getelementptr inbounds %struct.blk_mq_qe_pair, ptr %41, i32 0, i32 1
  store ptr %35, ptr %45, align 8
  %46 = load ptr, ptr %36, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.blk_mq_qe_pair, ptr %41, i32 0, i32 2
  store ptr %47, ptr %48, align 4
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %41, ptr %50, align 4
  store ptr %49, ptr %41, align 8
  store ptr %3, ptr %44, align 4
  store volatile ptr %41, ptr %3, align 8
  %51 = getelementptr i8, ptr %34, i32 -104
  call void @mutex_lock(ptr noundef %51) #22
  %52 = load ptr, ptr %48, align 4
  %53 = getelementptr inbounds %struct.elevator_type, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  call void @__module_get(ptr noundef %54) #22
  %55 = call i32 @elevator_switch_mq(ptr noundef %35, ptr noundef null) #22
  call void @mutex_unlock(ptr noundef %51) #22
  br label %56

56:                                               ; preds = %43, %33
  %57 = load ptr, ptr %34, align 4
  %58 = icmp eq ptr %57, %19
  br i1 %58, label %30, label %33

59:                                               ; preds = %59, %30
  %60 = phi ptr [ %62, %59 ], [ %31, %30 ]
  %61 = getelementptr i8, ptr %60, i32 -488
  call void @blk_mq_debugfs_unregister_hctxs(ptr noundef %61) #22
  call void @blk_mq_sysfs_unregister(ptr noundef %61) #22
  %62 = load ptr, ptr %60, align 4
  %63 = icmp eq ptr %62, %19
  br i1 %63, label %64, label %59

64:                                               ; preds = %59, %30, %22, %18
  %65 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = icmp slt i32 %66, %11
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #22
  %70 = extractvalue { i32, i1 } %69, 1
  br i1 %70, label %133, label %71, !prof !11

71:                                               ; preds = %68
  %72 = extractvalue { i32, i1 } %69, 0
  %73 = call noalias align 64 ptr @__kmalloc(i32 noundef %72, i32 noundef 3520) #25
  %74 = icmp eq ptr %73, null
  br i1 %74, label %133, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 11
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = shl i32 %66, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %73, ptr nonnull align 4 %77, i32 %80, i1 false) #22
  %81 = load ptr, ptr %76, align 4
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi ptr [ %81, %79 ], [ null, %75 ]
  call void @kfree(ptr noundef %83) #22
  store ptr %73, ptr %76, align 4
  br label %84

84:                                               ; preds = %82, %64
  store i32 %11, ptr %65, align 4
  %85 = call fastcc i32 @blk_mq_update_queue_map(ptr noundef %0) #22
  %86 = load ptr, ptr %19, align 4
  %87 = icmp eq ptr %86, %19
  br i1 %87, label %133, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 9
  %90 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %0, i32 0, i32 11
  br label %91

91:                                               ; preds = %131, %88
  %92 = phi ptr [ %86, %88 ], [ %132, %131 ]
  %93 = getelementptr i8, ptr %92, i32 -488
  call fastcc void @blk_mq_realloc_hw_ctxs(ptr noundef %0, ptr noundef %93) #22
  %94 = getelementptr i8, ptr %92, i32 -448
  %95 = load i32, ptr %94, align 8
  %96 = load i32, ptr %65, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %128, label %98

98:                                               ; preds = %91
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %11, i32 noundef %66) #23
  %100 = load i32, ptr %65, align 4
  %101 = icmp ult i32 %66, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %117, %98
  %103 = phi i32 [ %120, %117 ], [ %66, %98 ]
  %104 = load i32, ptr %89, align 4
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load ptr, ptr %90, align 4
  %109 = getelementptr ptr, ptr %108, i32 %103
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  call void @blk_mq_free_rqs(ptr noundef %0, ptr noundef nonnull %110, i32 noundef %103) #22
  %113 = getelementptr inbounds %struct.blk_mq_tags, ptr %110, i32 0, i32 5
  %114 = load ptr, ptr %113, align 4
  call void @kfree(ptr noundef %114) #22
  store ptr null, ptr %113, align 4
  %115 = getelementptr inbounds %struct.blk_mq_tags, ptr %110, i32 0, i32 6
  %116 = load ptr, ptr %115, align 4
  call void @kfree(ptr noundef %116) #22
  store ptr null, ptr %115, align 4
  call void @blk_mq_free_tags(ptr noundef nonnull %110) #22
  br label %117

117:                                              ; preds = %112, %107, %102
  %118 = load ptr, ptr %90, align 4
  %119 = getelementptr ptr, ptr %118, i32 %103
  store ptr null, ptr %119, align 4
  %120 = add nuw i32 %103, 1
  %121 = load i32, ptr %65, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %102, label %123

123:                                              ; preds = %117, %98
  store i32 %66, ptr %65, align 4
  %124 = call i32 @blk_mq_map_queues(ptr noundef %0) #22
  %125 = call fastcc i32 @blk_mq_update_queue_map(ptr noundef %0) #22
  %126 = load ptr, ptr %19, align 4
  %127 = icmp eq ptr %126, %19
  br i1 %127, label %133, label %131

128:                                              ; preds = %91
  call fastcc void @blk_mq_map_swqueue(ptr noundef %93) #22
  %129 = load ptr, ptr %92, align 4
  %130 = icmp eq ptr %129, %19
  br i1 %130, label %133, label %131

131:                                              ; preds = %128, %123
  %132 = phi ptr [ %129, %128 ], [ %126, %123 ]
  br label %91

133:                                              ; preds = %128, %123, %84, %71, %68
  %134 = load ptr, ptr %19, align 4
  %135 = icmp eq ptr %134, %19
  br i1 %135, label %142, label %136

136:                                              ; preds = %136, %133
  %137 = phi ptr [ %140, %136 ], [ %134, %133 ]
  %138 = getelementptr i8, ptr %137, i32 -488
  %139 = call i32 @blk_mq_sysfs_register(ptr noundef %138) #22
  call void @blk_mq_debugfs_register_hctxs(ptr noundef %138) #22
  %140 = load ptr, ptr %137, align 4
  %141 = icmp eq ptr %140, %19
  br i1 %141, label %142, label %136

142:                                              ; preds = %136, %133, %39
  %143 = load ptr, ptr %19, align 4
  %144 = icmp eq ptr %143, %19
  br i1 %144, label %178, label %148

145:                                              ; preds = %170
  %146 = load ptr, ptr %19, align 4
  %147 = icmp eq ptr %146, %19
  br i1 %147, label %178, label %173

148:                                              ; preds = %170, %142
  %149 = phi ptr [ %171, %170 ], [ %143, %142 ]
  %150 = getelementptr i8, ptr %149, i32 -488
  br label %151

151:                                              ; preds = %155, %148
  %152 = phi ptr [ %3, %148 ], [ %153, %155 ]
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, %3
  br i1 %154, label %170, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.blk_mq_qe_pair, ptr %153, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, %150
  br i1 %158, label %159, label %151

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.blk_mq_qe_pair, ptr %153, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %170, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = load ptr, ptr %153, align 4
  %167 = getelementptr inbounds %struct.list_head, ptr %166, i32 0, i32 1
  store ptr %165, ptr %167, align 4
  store volatile ptr %166, ptr %165, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %153, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %164, align 4
  call void @kfree(ptr noundef %153) #22
  %168 = getelementptr i8, ptr %149, i32 -104
  call void @mutex_lock(ptr noundef %168) #22
  %169 = call i32 @elevator_switch_mq(ptr noundef %150, ptr noundef nonnull %161) #22
  call void @mutex_unlock(ptr noundef %168) #22
  br label %170

170:                                              ; preds = %163, %159, %151
  %171 = load ptr, ptr %149, align 4
  %172 = icmp eq ptr %171, %19
  br i1 %172, label %145, label %148

173:                                              ; preds = %173, %145
  %174 = phi ptr [ %176, %173 ], [ %146, %145 ]
  %175 = getelementptr i8, ptr %174, i32 -488
  call void @__blk_mq_unfreeze_queue(ptr noundef %175, i1 noundef zeroext false) #22
  %176 = load ptr, ptr %174, align 4
  %177 = icmp eq ptr %176, %19
  br i1 %177, label %178, label %173

178:                                              ; preds = %173, %145, %142, %14, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @mutex_unlock(ptr noundef %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_poll(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.hrtimer_sleeper, align 8
  %6 = and i32 %3, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %128

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 24
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %128, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = lshr i32 %1, 16
  %16 = and i32 %15, 32767
  %17 = getelementptr ptr, ptr %14, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = and i32 %1, 65535
  %20 = icmp sgt i32 %1, -1
  br i1 %20, label %31, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %18, i32 0, i32 20
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, %19
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.blk_mq_tags, ptr %23, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr ptr, ptr %28, i32 %19
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %30) #22, !srcloc !12
  br label %42

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %18, i32 0, i32 19
  %33 = load ptr, ptr %32, align 16
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %34, %19
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.blk_mq_tags, ptr %33, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr ptr, ptr %38, i32 %19
  %40 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %40) #22, !srcloc !12
  br label %42

41:                                               ; preds = %31, %21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #22
  br label %126

42:                                               ; preds = %36, %26
  %43 = phi ptr [ %37, %36 ], [ %27, %26 ]
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr ptr, ptr %44, i32 %19
  %46 = load ptr, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false) #22, !annotation !10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %126, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.request, ptr %46, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 1048576
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %126

53:                                               ; preds = %48
  %54 = load i32, ptr %9, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %95, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 26
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = tail call zeroext i1 @blk_stats_alloc_enable(ptr noundef %0) #22
  br i1 %61, label %62, label %126

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds %struct.request, ptr %46, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.request, ptr %46, i32 0, i32 16
  %66 = load i16, ptr %65, align 8
  %67 = icmp eq i16 %66, 0
  %68 = zext i16 %66 to i32
  %69 = tail call i32 @llvm.ctlz.i32(i32 %68, i1 false) #22, !range !21
  %70 = and i32 %64, 1
  %71 = mul nsw i32 %69, -2
  %72 = add nsw i32 %71, 62
  %73 = select i1 %67, i32 -2, i32 %72
  %74 = or i32 %73, %70
  %75 = icmp sgt i32 %74, 15
  %76 = or i32 %70, 14
  %77 = select i1 %75, i32 %76, i32 %74
  %78 = icmp sgt i32 %74, -1
  %79 = select i1 %78, i32 %77, i32 -1
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %62
  %82 = load ptr, ptr %57, align 4
  %83 = getelementptr %struct.blk_rq_stat, ptr %82, i32 %79, i32 3
  %84 = load i32, ptr %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %126, label %86

86:                                               ; preds = %81
  %87 = getelementptr %struct.blk_rq_stat, ptr %82, i32 %79
  %88 = load i64, ptr %87, align 8
  %89 = add i64 %88, 1
  %90 = lshr i64 %89, 1
  %91 = trunc i64 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %126, label %93

93:                                               ; preds = %86
  %94 = load i32, ptr %49, align 8
  br label %95

95:                                               ; preds = %93, %53
  %96 = phi i32 [ %94, %93 ], [ %50, %53 ]
  %97 = phi i32 [ %91, %93 ], [ %54, %53 ]
  %98 = or i32 %96, 1048576
  store i32 %98, ptr %49, align 8
  %99 = zext i32 %97 to i64
  call void @hrtimer_init_sleeper(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1) #22
  %100 = getelementptr inbounds %struct.timerqueue_node, ptr %5, i32 0, i32 1
  store i64 %99, ptr %100, align 8
  %101 = getelementptr inbounds %struct.hrtimer, ptr %5, i32 0, i32 1
  store i64 %99, ptr %101, align 8
  %102 = getelementptr inbounds %struct.request, ptr %46, i32 0, i32 20
  %103 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %5, i32 0, i32 1
  %104 = tail call ptr @llvm.thread.pointer() #22
  %105 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 1
  br label %106

106:                                              ; preds = %122, %95
  %107 = phi i32 [ 1, %95 ], [ 0, %122 ]
  %108 = load volatile i32, ptr %102, align 8
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %127, label %110

110:                                              ; preds = %106
  store volatile i32 2, ptr %105, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !77
  call void @hrtimer_sleeper_start_expires(ptr noundef nonnull %5, i32 noundef %107) #22
  %111 = load ptr, ptr %103, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  call void @io_schedule() #22
  br label %114

114:                                              ; preds = %113, %110
  %115 = call i32 @hrtimer_cancel(ptr noundef nonnull %5) #22
  %116 = load ptr, ptr %103, align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %127, label %118

118:                                              ; preds = %114
  %119 = load volatile i32, ptr %104, align 4
  %120 = and i32 %119, 256
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %127, !prof !14

122:                                              ; preds = %118
  %123 = load volatile i32, ptr %104, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %106, label %127

126:                                              ; preds = %86, %81, %62, %60, %48, %42, %41
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #22
  br label %128

127:                                              ; preds = %122, %118, %114, %106
  store volatile i32 0, ptr %105, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #22
  br label %179

128:                                              ; preds = %126, %8, %4
  %129 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  %130 = load ptr, ptr %129, align 4
  %131 = lshr i32 %1, 16
  %132 = and i32 %131, 32767
  %133 = getelementptr ptr, ptr %130, i32 %132
  %134 = load ptr, ptr %133, align 4
  %135 = tail call ptr @llvm.thread.pointer() #22
  %136 = getelementptr inbounds %struct.task_struct, ptr %135, i32 0, i32 1
  %137 = load volatile i32, ptr %136, align 8
  %138 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 5
  %139 = and i32 %137, 257
  %140 = icmp eq i32 %139, 0
  %141 = and i32 %137, 1
  %142 = icmp eq i32 %141, 0
  %143 = getelementptr inbounds %struct.task_struct, ptr %135, i32 0, i32 98, i32 1
  %144 = and i32 %3, 1
  %145 = icmp eq i32 %144, 0
  br label %146

146:                                              ; preds = %173, %128
  %147 = load ptr, ptr %138, align 8
  %148 = getelementptr inbounds %struct.blk_mq_ops, ptr %147, i32 0, i32 8
  %149 = load ptr, ptr %148, align 4
  %150 = tail call i32 %149(ptr noundef %134, ptr noundef %2) #22
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %177, label %152

152:                                              ; preds = %146
  br i1 %140, label %167, label %153

153:                                              ; preds = %152
  %154 = load volatile i32, ptr %135, align 4
  %155 = and i32 %154, 256
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161, !prof !14

157:                                              ; preds = %153
  %158 = load volatile i32, ptr %135, align 4
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %157, %153
  br i1 %142, label %162, label %166

162:                                              ; preds = %161
  %163 = load i32, ptr %143, align 4
  %164 = and i32 %163, 256
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %162, %161
  store volatile i32 0, ptr %136, align 8
  br label %167

167:                                              ; preds = %166, %162, %157, %152
  %168 = load volatile i32, ptr %136, align 8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %167
  %171 = icmp sgt i32 %150, -1
  %172 = and i1 %145, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !78
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #22, !srcloc !79
  %174 = load volatile i32, ptr %135, align 4
  %175 = and i32 %174, 2
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %146, label %177

177:                                              ; preds = %173, %170, %146
  %178 = phi i32 [ %150, %146 ], [ 0, %173 ], [ 0, %170 ]
  store volatile i32 0, ptr %136, align 8
  br label %179

179:                                              ; preds = %177, %167, %127
  %180 = phi i32 [ 1, %127 ], [ %178, %177 ], [ 1, %167 ]
  ret i32 %180
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @blk_mq_rq_cpu(ptr nocapture noundef readonly %0) #13 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.blk_mq_ctx, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 64
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_cancel_work_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 39
  %7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %6) #22
  %8 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ 0, %11 ], [ %20, %13 ]
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr ptr, ptr %15, i32 %14
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %17, i32 0, i32 1
  %19 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %18) #22
  %20 = add nuw i32 %14, 1
  %21 = load i32, ptr %8, align 8
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %13, label %23

23:                                               ; preds = %13, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @blk_mq_init() #14 section ".init.text" {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #24
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %10, %4 ], [ %1, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @blk_cpu_done to i32)
  %9 = inttoptr i32 %8 to ptr
  store ptr null, ptr %9, align 4
  %10 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #24
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %4, label %13

13:                                               ; preds = %4, %0
  tail call void @open_softirq(i32 noundef 4, ptr noundef nonnull @blk_done_softirq) #22
  %14 = tail call i32 @__cpuhp_setup_state(i32 noundef 22, ptr noundef nonnull @.str.20, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @blk_softirq_cpu_dead, i1 noundef zeroext false) #22
  %15 = tail call i32 @__cpuhp_setup_state(i32 noundef 26, ptr noundef nonnull @.str.21, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @blk_mq_hctx_notify_dead, i1 noundef zeroext true) #22
  %16 = tail call i32 @__cpuhp_setup_state(i32 noundef 156, ptr noundef nonnull @.str.22, i1 noundef zeroext false, ptr noundef nonnull @blk_mq_hctx_notify_online, ptr noundef nonnull @blk_mq_hctx_notify_offline, i1 noundef zeroext true) #22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_kill_and_confirm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_get_tags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_mq_tag_busy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_put_tag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_sched_restart(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_rq_complete(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_status_to_str(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_op_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_advance(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_add(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_put_tags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpus_share_cache(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__blk_mq_complete_request_remote(ptr nocapture noundef readnone %0) #0 {
  tail call void @__raise_softirq_irqoff(i32 noundef 4) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single_async(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raise_softirq_irqoff(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_rq_issue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_issue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_io_ticks(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_poll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_rq_requeue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_requeue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_mark_restart_hctx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__blk_mq_run_hw_queue(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #22
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 15728640
  %6 = load volatile i32, ptr %3, align 4
  %7 = and i32 %6, 983040
  %8 = or i32 %7, %5
  %9 = load volatile i32, ptr %3, align 4
  %10 = and i32 %9, 65280
  %11 = or i32 %8, %10
  %12 = icmp ne i32 %11, 0
  %13 = load i1, ptr @__blk_mq_run_hw_queue.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !11

16:                                               ; preds = %1
  store i1 true, ptr @__blk_mq_run_hw_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1970, i32 noundef 9, ptr noundef null) #22
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 64
  %20 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 11
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  tail call void @blk_mq_sched_dispatch_requests(ptr noundef %0) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %36

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 58
  %27 = tail call i32 @__srcu_read_lock(ptr noundef %26) #22
  tail call void @blk_mq_sched_dispatch_requests(ptr noundef %0) #22
  %28 = load ptr, ptr %18, align 64
  %29 = getelementptr inbounds %struct.request_queue, ptr %28, i32 0, i32 58
  %30 = icmp ugt i32 %27, 1
  %31 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !11

34:                                               ; preds = %25
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 189, i32 noundef 9, ptr noundef null) #22
  br label %35

35:                                               ; preds = %34, %25
  tail call void @__srcu_read_unlock(ptr noundef %29, i32 noundef %27) #22
  br label %36

36:                                               ; preds = %35, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_dispatch_requests(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sbitmap_any_bit_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_rq_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_unplug(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @__blk_mq_try_issue_directly(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.blk_mq_queue_data, align 8
  %6 = load ptr, ptr %1, align 8
  %7 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 2
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %97

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 16777216
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %97

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 4194304
  %20 = icmp eq i32 %19, 0
  %21 = or i1 %20, %2
  br i1 %21, label %22, label %96

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.blk_mq_ops, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  %29 = tail call i32 %26(ptr noundef %6) #22
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %96, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %1, align 8
  %33 = getelementptr inbounds %struct.request_queue, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 8
  br label %35

35:                                               ; preds = %31, %22
  %36 = phi ptr [ %34, %31 ], [ %24, %22 ]
  %37 = phi i32 [ %29, %31 ], [ 0, %22 ]
  %38 = getelementptr inbounds %struct.blk_mq_ops, ptr %36, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void %39(ptr noundef %1, i32 noundef %37) #22
  br label %42

42:                                               ; preds = %41, %35
  %43 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %59, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %44, i32 0, i32 5
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %44, i32 0, i32 19
  %55 = load ptr, ptr %54, align 16
  %56 = getelementptr inbounds %struct.blk_mq_tags, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr ptr, ptr %57, i32 %46
  store ptr %1, ptr %58, align 4
  br label %67

59:                                               ; preds = %48, %42
  %60 = tail call zeroext i1 @__blk_mq_get_driver_tag(ptr noundef %44, ptr noundef %1) #22
  br i1 %60, label %67, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %23, align 8
  %63 = getelementptr inbounds %struct.blk_mq_ops, ptr %62, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %96, label %66

66:                                               ; preds = %61
  tail call void %64(ptr noundef %6, i32 noundef %37) #22
  br i1 %2, label %99, label %97

67:                                               ; preds = %59, %53
  %68 = zext i1 %3 to i8
  %69 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store i64 0, ptr %5, align 8, !annotation !10
  store ptr %1, ptr %5, align 8
  %70 = getelementptr inbounds %struct.blk_mq_queue_data, ptr %5, i32 0, i32 1
  store i8 %68, ptr %70, align 4
  %71 = getelementptr inbounds %struct.request_queue, ptr %69, i32 0, i32 5
  %72 = load ptr, ptr %71, align 8
  %73 = load ptr, ptr %72, align 4
  %74 = call zeroext i8 %73(ptr noundef %0, ptr noundef nonnull %5) #22
  switch i8 %74, label %88 [
    i8 0, label %75
    i8 9, label %82
    i8 13, label %82
  ]

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 12
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %75
  %80 = mul i32 %77, 7
  %81 = lshr i32 %80, 3
  store i32 %81, ptr %76, align 8
  br label %95

82:                                               ; preds = %67, %67
  %83 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 12
  %84 = load i32, ptr %83, align 8
  %85 = mul i32 %84, 7
  %86 = add i32 %85, 16
  %87 = lshr i32 %86, 3
  store i32 %87, ptr %83, align 8
  call fastcc void @__blk_mq_requeue_request(ptr noundef %1) #22
  br label %95

88:                                               ; preds = %67
  %89 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 12
  %90 = load i32, ptr %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = mul i32 %90, 7
  %94 = lshr i32 %93, 3
  store i32 %94, ptr %89, align 8
  br label %95

95:                                               ; preds = %92, %88, %82, %79, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %99

96:                                               ; preds = %61, %28, %16
  br i1 %2, label %99, label %97

97:                                               ; preds = %96, %66, %11, %4
  %98 = phi i1 [ true, %96 ], [ true, %66 ], [ false, %11 ], [ false, %4 ]
  tail call void @blk_mq_sched_insert_request(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext %98, i1 noundef zeroext false) #22
  br label %99

99:                                               ; preds = %97, %96, %95, %66
  %100 = phi i8 [ 0, %97 ], [ %74, %95 ], [ 9, %96 ], [ 9, %66 ]
  ret i8 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_queue_bounce(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_attempt_plug_merge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_mq_sched_bio_merge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_throttle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bio_queue_enter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_getrq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_track(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_plug(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_hw_queue_to_node(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_init_tags(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_alloc_queue(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @blk_mq_exit_hctx(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %2, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.blk_flush_queue, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %2, i32 0, i32 14
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %2, i32 0, i32 19
  %14 = load ptr, ptr %13, align 16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %2, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void @__blk_mq_tag_idle(ptr noundef %2) #22
  br label %22

22:                                               ; preds = %21, %16, %12, %4
  %23 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %1, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr ptr, ptr %24, i32 %3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %1, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq ptr %26, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.request, ptr %8, i32 0, i32 21
  %32 = load volatile i32, ptr %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = load i1, ptr @blk_mq_clear_flush_rq_mapping.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !11

37:                                               ; preds = %30
  store i1 true, ptr @blk_mq_clear_flush_rq_mapping.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3415, i32 noundef 9, ptr noundef null) #22
  br label %38

38:                                               ; preds = %37, %30
  %39 = icmp eq i32 %28, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.blk_mq_tags, ptr %26, i32 0, i32 5
  %42 = ptrtoint ptr %8 to i32
  br label %43

43:                                               ; preds = %51, %40
  %44 = phi i32 [ 0, %40 ], [ %52, %51 ]
  %45 = load ptr, ptr %41, align 4
  %46 = getelementptr ptr, ptr %45, i32 %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !80
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #22, !srcloc !18
  br label %47

47:                                               ; preds = %47, %43
  %48 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %46, i32 %42, i32 0) #22, !srcloc !71
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %47

51:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !81
  %52 = add nuw i32 %44, 1
  %53 = icmp eq i32 %52, %28
  br i1 %53, label %54, label %43

54:                                               ; preds = %51, %38
  %55 = getelementptr inbounds %struct.blk_mq_tags, ptr %26, i32 0, i32 8
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %55) #22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %55, i32 noundef %56) #22
  br label %57

57:                                               ; preds = %54, %22
  %58 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %1, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.blk_mq_ops, ptr %59, i32 0, i32 13
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  tail call void %61(ptr noundef %1, ptr noundef %8, i32 noundef %3) #22
  %64 = load ptr, ptr %58, align 4
  br label %65

65:                                               ; preds = %63, %57
  %66 = phi ptr [ %64, %63 ], [ %59, %57 ]
  %67 = getelementptr inbounds %struct.blk_mq_ops, ptr %66, i32 0, i32 11
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  tail call void %68(ptr noundef %2, i32 noundef %3) #22
  br label %71

71:                                               ; preds = %70, %65
  %72 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %2, i32 0, i32 5
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %2, i32 0, i32 26
  %78 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 156, ptr noundef %77, i1 noundef zeroext false) #22
  br label %79

79:                                               ; preds = %76, %71
  %80 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %2, i32 0, i32 27
  %81 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 26, ptr noundef %80, i1 noundef zeroext false) #22
  %82 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %82) #22
  %83 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %2, i32 0, i32 31
  %84 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 42
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %83, ptr %86, align 4
  store ptr %85, ptr %83, align 4
  %87 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %2, i32 0, i32 31, i32 1
  store ptr %84, ptr %87, align 4
  store volatile ptr %83, ptr %84, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %88 = load i16, ptr %82, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %82, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_mq_run_work_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -52
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -64
  tail call fastcc void @__blk_mq_run_hw_queue(ptr noundef %7)
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_init_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_mq_dispatch_wake(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -4
  tail call void @_raw_spin_lock(ptr noundef %5) #22
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %7, ptr %11, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %10, align 4
  %13 = getelementptr i8, ptr %0, i32 24
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.blk_mq_tags, ptr %14, i32 0, i32 3, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #22, !srcloc !18
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #22, !srcloc !22
  br label %17

17:                                               ; preds = %9, %4
  %18 = getelementptr i8, ptr %0, i32 -184
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %19 = load i16, ptr %5, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  tail call void @blk_mq_run_hw_queue(ptr noundef %18, i1 noundef zeroext true)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_alloc_flush_queue(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_hctx_kobj_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_tag_idle(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @blk_mq_check_expired(ptr noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 20
  %5 = load volatile i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %43

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 22
  %14 = load volatile i32, ptr %13, align 8
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = sub i32 %15, %14
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %1, align 4
  %20 = icmp eq i32 %19, 0
  %21 = sub i32 %14, %19
  %22 = icmp slt i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  store i32 %14, ptr %1, align 4
  br label %43

25:                                               ; preds = %12
  %26 = or i32 %9, 2097152
  store i32 %26, ptr %8, align 8
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.blk_mq_ops, ptr %29, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %25
  %34 = tail call i32 %31(ptr noundef %0, i1 noundef zeroext %2) #22
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = icmp ne i32 %34, 1
  %38 = load i1, ptr @blk_mq_rq_timed_out.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !11

41:                                               ; preds = %36
  store i1 true, ptr @blk_mq_rq_timed_out.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1391, i32 noundef 9, ptr noundef null) #22
  br label %42

42:                                               ; preds = %41, %36, %25
  tail call void @blk_add_timer(ptr noundef %0) #22
  br label %43

43:                                               ; preds = %42, %33, %24, %18, %7, %3
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_resize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_unregister_hctx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_map_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_unregister_hctxs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sysfs_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_sysfs_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_register_hctxs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elevator_switch_mq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_sleeper_start_expires(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_stats_alloc_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init_sleeper(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_done_softirq(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #16, !srcloc !16
  %5 = add i32 %4, ptrtoint (ptr @blk_cpu_done to i32)
  %6 = inttoptr i32 %5 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !82
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #22, !srcloc !18
  %7 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %6) #22, !srcloc !83
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = inttoptr i32 %8 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !84
  %10 = tail call ptr @llist_reverse_order(ptr noundef %9) #22
  %11 = getelementptr i8, ptr %10, i32 -108
  %12 = icmp eq ptr %11, inttoptr (i32 -108 to ptr)
  br i1 %12, label %24, label %13

13:                                               ; preds = %13, %1
  %14 = phi ptr [ %22, %13 ], [ %11, %1 ]
  %15 = phi ptr [ %16, %13 ], [ %10, %1 ]
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %14, align 8
  %18 = getelementptr inbounds %struct.request_queue, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.blk_mq_ops, ptr %19, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %14) #22
  %22 = getelementptr i8, ptr %16, i32 -108
  %23 = icmp eq ptr %22, inttoptr (i32 -108 to ptr)
  br i1 %23, label %24, label %13

24:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_softirq_cpu_dead(i32 noundef %0) #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @blk_cpu_done to i32)
  %5 = inttoptr i32 %4 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !82
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #22, !srcloc !18
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %5) #22, !srcloc !83
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = inttoptr i32 %7 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !84
  %9 = tail call ptr @llist_reverse_order(ptr noundef %8) #22
  %10 = getelementptr i8, ptr %9, i32 -108
  %11 = icmp eq ptr %10, inttoptr (i32 -108 to ptr)
  br i1 %11, label %23, label %12

12:                                               ; preds = %12, %1
  %13 = phi ptr [ %21, %12 ], [ %10, %1 ]
  %14 = phi ptr [ %15, %12 ], [ %9, %1 ]
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %13, align 8
  %17 = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.blk_mq_ops, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %13) #22
  %21 = getelementptr i8, ptr %15, i32 -108
  %22 = icmp eq ptr %21, inttoptr (i32 -108 to ptr)
  br i1 %22, label %23, label %12

23:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_mq_hctx_notify_dead(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %1, null
  %6 = getelementptr i8, ptr %1, i32 -244
  %7 = select i1 %5, ptr null, ptr %6
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 2
  %9 = lshr i32 %0, 5
  %10 = getelementptr i32, ptr %8, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %0, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %73, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 7
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 13
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  call void @_raw_spin_lock(ptr noundef %25) #22
  %29 = getelementptr %struct.anon, ptr %25, i32 0, i32 1, i32 %28
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %56, label %32

32:                                               ; preds = %16
  %33 = load volatile ptr, ptr %29, align 4
  %34 = icmp eq ptr %33, %29
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr %struct.anon, ptr %25, i32 0, i32 1, i32 %28, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %3, ptr %39, align 4
  store ptr %33, ptr %3, align 8
  store ptr %36, ptr %38, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %29, ptr %29, align 4
  store ptr %29, ptr %37, align 4
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i16, ptr %26, align 4
  %43 = zext i16 %42 to i32
  %44 = getelementptr %struct.blk_mq_ctx, ptr %25, i32 0, i32 2, i32 %43
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 10, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = shl nsw i32 -1, %48
  %50 = xor i32 %49, -1
  %51 = and i32 %50, %46
  %52 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %7, i32 0, i32 10, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = lshr i32 %46, %48
  %55 = getelementptr %struct.sbitmap_word, ptr %53, i32 %54, i32 2
  call void @_clear_bit(i32 noundef %51, ptr noundef %55) #22
  br label %56

56:                                               ; preds = %41, %16
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %57 = load i16, ptr %25, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  %59 = load volatile ptr, ptr %3, align 8
  %60 = icmp eq ptr %59, %3
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  call void @_raw_spin_lock(ptr noundef %7) #22
  %62 = load volatile ptr, ptr %3, align 8
  %63 = icmp eq ptr %62, %3
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.anon.1, ptr %7, i32 0, i32 1
  %66 = getelementptr inbounds %struct.anon.1, ptr %7, i32 0, i32 1, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store ptr %62, ptr %67, align 4
  store ptr %65, ptr %68, align 4
  store ptr %68, ptr %66, align 4
  store volatile ptr %3, ptr %3, align 8
  store ptr %3, ptr %4, align 4
  br label %70

70:                                               ; preds = %64, %61
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %71 = load i16, ptr %7, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !43
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !44
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  call void @blk_mq_run_hw_queue(ptr noundef %7, i1 noundef zeroext true)
  br label %73

73:                                               ; preds = %70, %56, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_mq_hctx_notify_online(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr i8, ptr %1, i32 -236
  %5 = select i1 %3, ptr null, ptr %4
  %6 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 2
  %7 = lshr i32 %0, 5
  %8 = getelementptr i32, ptr %6, i32 %7
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %0, 31
  %11 = shl nuw i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.anon.1, ptr %5, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %15) #22
  br label %16

16:                                               ; preds = %14, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_mq_hctx_notify_offline(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rq_iter_data, align 8
  %4 = icmp eq ptr %1, null
  %5 = getelementptr i8, ptr %1, i32 -236
  %6 = select i1 %4, ptr null, ptr %5
  %7 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %6, i32 0, i32 2
  %8 = lshr i32 %0, 5
  %9 = getelementptr i32, ptr %7, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %0, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %93, label %15

15:                                               ; preds = %2
  %16 = load i32, ptr %7, align 4
  %17 = load i32, ptr @__cpu_online_mask, align 4
  %18 = and i32 %16, 65535
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  %21 = tail call i32 @llvm.cttz.i32(i32 %19, i1 true) #22, !range !21
  %22 = select i1 %20, i32 16, i32 %21
  %23 = icmp eq i32 %22, %0
  br i1 %23, label %24, label %93

24:                                               ; preds = %15
  %25 = tail call i32 @cpumask_next_and(i32 noundef %0, ptr noundef %7, ptr noundef nonnull @__cpu_online_mask) #24
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %93, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 3, ptr noundef %29) #22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !85
  %30 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %6, i32 0, i32 7
  %31 = load ptr, ptr %30, align 64
  %32 = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45, !prof !14

36:                                               ; preds = %28
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !15
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #16, !srcloc !16
  %41 = add i32 %40, %33
  %42 = inttoptr i32 %41 to ptr
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #22, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %53

45:                                               ; preds = %28
  %46 = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 2, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !60
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #22, !srcloc !18
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 0, i32 1, ptr elementtype(i32) %47) #22, !srcloc !61
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %93

52:                                               ; preds = %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !62
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %53

53:                                               ; preds = %52, %36
  %54 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %6, i32 0, i32 20
  %55 = getelementptr inbounds %struct.rq_iter_data, ptr %3, i32 0, i32 1
  %56 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %6, i32 0, i32 19
  br label %57

57:                                               ; preds = %66, %53
  %58 = load ptr, ptr %54, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load ptr, ptr %56, align 16
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi ptr [ %61, %60 ], [ %58, %57 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store i64 0, ptr %3, align 8, !annotation !10
  store ptr %6, ptr %3, align 8
  call void @blk_mq_all_tag_iter(ptr noundef %63, ptr noundef nonnull @blk_mq_has_request, ptr noundef nonnull %3) #22
  %64 = load i8, ptr %55, align 4, !range !31
  %65 = icmp eq i8 %64, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  call void @msleep(i32 noundef 5) #22
  br label %57

67:                                               ; preds = %62
  %68 = load ptr, ptr %30, align 64
  %69 = getelementptr inbounds %struct.request_queue, ptr %68, i32 0, i32 2
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 3
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82, !prof !14

73:                                               ; preds = %67
  %74 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !15
  %75 = call i32 @llvm.read_register.i32(metadata !0) #22
  %76 = inttoptr i32 %75 to ptr
  %77 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %76) #16, !srcloc !16
  %78 = add i32 %77, %70
  %79 = inttoptr i32 %78 to ptr
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, -1
  store i32 %81, ptr %79, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %74) #22, !srcloc !17
  br label %92

82:                                               ; preds = %67
  %83 = getelementptr inbounds %struct.request_queue, ptr %68, i32 0, i32 2, i32 1
  %84 = load ptr, ptr %83, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #22, !srcloc !18
  %85 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #22, !srcloc !24
  %86 = extractvalue { i32, i32 } %85, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !25
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92, !prof !11

88:                                               ; preds = %82
  %89 = load ptr, ptr %83, align 4
  %90 = getelementptr inbounds %struct.percpu_ref_data, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  call void %91(ptr noundef %69) #22
  br label %92

92:                                               ; preds = %88, %82, %73
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %93

93:                                               ; preds = %92, %51, %24, %15, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llist_reverse_order(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_all_tag_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @blk_mq_has_request(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i1 noundef zeroext %2) #21 {
  %4 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rq_iter_data, ptr %1, i32 0, i32 1
  store i8 1, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %3
  %11 = xor i1 %7, true
  ret i1 %11
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nounwind readonly }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #22 = { nounwind }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind readonly willreturn }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind allocsize(2) }

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
!9 = !{i64 2148601601}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 529496}
!13 = !{i64 2149163951}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 424917, i64 424978}
!16 = !{i64 443617}
!17 = !{i64 427934}
!18 = !{i64 529678, i64 2148019649, i64 2148019675, i64 2148019722, i64 2148019744, i64 2148019772, i64 2148019792}
!19 = !{i64 2148031861, i64 2148031887, i64 2148031916, i64 2148031950, i64 2148031981, i64 2148032004}
!20 = !{i64 2149164168}
!21 = !{i32 0, i32 33}
!22 = !{i64 2148034218, i64 2148034244, i64 2148034273, i64 2148034307, i64 2148034338, i64 2148034361}
!23 = !{i64 2148132516}
!24 = !{i64 2148034902, i64 2148034934, i64 2148034963, i64 2148034997, i64 2148035028, i64 2148035051}
!25 = !{i64 2148132719}
!26 = !{i64 2153902726}
!27 = !{i64 2153902910}
!28 = !{i64 2154379794}
!29 = !{i64 2154393875}
!30 = !{i64 2154429676, i64 2154430155, i64 2154429713, i64 2154429769, i64 2154429803, i64 2154429827, i64 2154429868, i64 2154429889, i64 2154429917, i64 2154429951}
!31 = !{i8 0, i8 2}
!32 = !{i64 2154443672}
!33 = !{i64 2154444450}
!34 = !{i64 2153934500}
!35 = !{i64 2153934644}
!36 = !{i64 427649}
!37 = !{i64 2154427582}
!38 = !{i64 2154427647}
!39 = !{i64 2154477994, i64 2154478474, i64 2154478031, i64 2154478087, i64 2154478121, i64 2154478145, i64 2154478186, i64 2154478207, i64 2154478235, i64 2154478269}
!40 = !{i64 2153886100}
!41 = !{i64 2153886248}
!42 = !{i64 2149045596}
!43 = !{i64 2149041420}
!44 = !{i64 2149041495, i64 2149041522, i64 2149041569, i64 2149041591, i64 2149041619, i64 2149041639}
!45 = !{i64 2149068599}
!46 = !{i64 2148145263}
!47 = !{i64 515741, i64 515765, i64 515786, i64 515803, i64 515820}
!48 = !{i64 2148145463}
!49 = !{i64 425162}
!50 = !{i64 2149069740}
!51 = !{i64 2154505300}
!52 = !{i64 2154508391}
!53 = !{i64 2154508620}
!54 = !{i64 2154508555}
!55 = !{i64 2153918797}
!56 = !{i64 2153918943}
!57 = !{i64 2154534863, i64 2154535343, i64 2154534900, i64 2154534956, i64 2154534990, i64 2154535014, i64 2154535055, i64 2154535076, i64 2154535104, i64 2154535138}
!58 = !{i64 2154089492}
!59 = !{i64 2154089664}
!60 = !{i64 2148031368}
!61 = !{i64 516247, i64 516272, i64 516294, i64 516310, i64 516322, i64 516342, i64 516366, i64 516382, i64 516394}
!62 = !{i64 2148031494}
!63 = !{i64 2154053970}
!64 = !{i64 2154054110}
!65 = !{i64 2154069368}
!66 = !{i64 2154069502}
!67 = !{!"branch_weights", i32 4000000, i32 4004001, i32 4004001, i32 2001, i32 2000}
!68 = !{i64 2154399716}
!69 = !{i64 2154427315}
!70 = !{i64 2154559772}
!71 = !{i64 541849, i64 541870, i64 541893, i64 541912, i64 541931}
!72 = !{i64 2154560158}
!73 = !{i64 2154579836, i64 2154580316, i64 2154579873, i64 2154579929, i64 2154579963, i64 2154579987, i64 2154580028, i64 2154580049, i64 2154580077, i64 2154580111}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.peeled.count", i32 1}
!76 = !{i64 2154606233, i64 2154606713, i64 2154606270, i64 2154606326, i64 2154606360, i64 2154606384, i64 2154606425, i64 2154606446, i64 2154606474, i64 2154606508}
!77 = !{i64 2154651503}
!78 = !{i64 2154665901}
!79 = !{i64 2154665743}
!80 = !{i64 2154573868}
!81 = !{i64 2154574260}
!82 = !{i64 2149023441}
!83 = !{i64 539125, i64 539142, i64 539166, i64 539192, i64 539210}
!84 = !{i64 2149023768}
!85 = !{i64 2154568676}
