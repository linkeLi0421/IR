; ModuleID = '/llk/IR/kernel/trace/ring_buffer.c_pt.bc'
source_filename = "../kernel/trace/ring_buffer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_event_length:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_event_length\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_event_length:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_event_data:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_event_data\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_event_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_time_stamp:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_time_stamp\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_time_stamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_normalize_time_stamp:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_normalize_time_stamp\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_normalize_time_stamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ring_buffer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__ring_buffer_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___ring_buffer_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_free\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_resize\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_change_overwrite:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_change_overwrite\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_change_overwrite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_unlock_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_unlock_commit\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_unlock_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_lock_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_lock_reserve\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_lock_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_discard_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_discard_commit\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_discard_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_write:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_write\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_record_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_record_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_record_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_record_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_record_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_record_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_record_off:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_record_off\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_record_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_record_on:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_record_on\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_record_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_record_disable_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_record_disable_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_record_disable_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_record_enable_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_record_enable_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_record_enable_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_oldest_event_ts:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_oldest_event_ts\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_oldest_event_ts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_bytes_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_bytes_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_bytes_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_entries_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_entries_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_entries_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_overrun_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_overrun_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_overrun_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_commit_overrun_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_commit_overrun_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_commit_overrun_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_dropped_events_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_dropped_events_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_dropped_events_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_read_events_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_read_events_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_read_events_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_entries:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_entries\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_entries:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_overruns:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_overruns\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_overruns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_iter_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_iter_reset\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_iter_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_iter_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_iter_empty\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_iter_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_peek\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_iter_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_iter_peek\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_iter_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_iter_dropped:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_iter_dropped\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_iter_dropped:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_consume:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_consume\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_consume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_read_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_read_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_read_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_read_prepare_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_read_prepare_sync\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_read_prepare_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_read_start:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_read_start\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_read_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_read_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_read_finish\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_read_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_iter_advance:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_iter_advance\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_iter_advance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_size:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_size\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_reset_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_reset_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_reset_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_reset\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_empty\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_empty_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_empty_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_empty_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_alloc_read_page:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_alloc_read_page\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_alloc_read_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_free_read_page:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_free_read_page\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_free_read_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ring_buffer_read_page:\09\09\09\09\09"
module asm "\09.asciz \09\22ring_buffer_read_page\22\09\09\09\09\09"
module asm "__kstrtabns_ring_buffer_read_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.ring_buffer_event = type { i32, [0 x i32] }
%struct.trace_buffer = type { i32, i32, %struct.atomic_t, [1 x %struct.cpumask], ptr, %struct.mutex, ptr, %struct.hlist_node, ptr, %struct.rb_irq_work, i8 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.rb_irq_work = type { %struct.irq_work, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, i8 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ring_buffer_per_cpu = type { i32, %struct.atomic_t, %struct.atomic_t, ptr, %struct.raw_spinlock, %struct.arch_spinlock_t, %struct.lock_class_key, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.local_t, %struct.local_t, %struct.local_t, %struct.local_t, %struct.local_t, %struct.local_t, %struct.local_t, %struct.local_t, %struct.local_t, i32, i32, i32, i32, %struct.rb_time_struct, %struct.rb_time_struct, [5 x i64], i64, i32, %struct.list_head, %struct.work_struct, %struct.completion, %struct.rb_irq_work }
%struct.local_t = type { %struct.atomic_t }
%struct.rb_time_struct = type { %struct.local_t, %struct.local_t, %struct.local_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.buffer_page = type { %struct.list_head, %struct.local_t, i32, %struct.local_t, i32, ptr }
%struct.buffer_data_page = type { i64, %struct.local_t, [0 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rb_event_info = type { i64, i64, i64, i64, i32, ptr, i32 }
%struct.ring_buffer_iter = type { ptr, i32, i32, ptr, ptr, i32, i64, i64, ptr, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.44, %struct.atomic_t }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.44 = type { %struct.atomic_t }

@.str = private unnamed_addr constant [27 x i8] c"# compressed entry header\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\09type_len    :    5 bits\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\09time_delta  :   27 bits\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\09array       :   32 bits\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\09padding     : type == %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"\09time_extend : type == %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\09time_stamp : type == %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"\09data max type_len  == %d\0A\00", align 1
@__kstrtab_ring_buffer_event_length = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_event_length = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_event_length = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_event_length to i32), ptr @__kstrtab_ring_buffer_event_length, ptr @__kstrtabns_ring_buffer_event_length }, section "___ksymtab_gpl+ring_buffer_event_length", align 4
@__kstrtab_ring_buffer_event_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_event_data = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_event_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_event_data to i32), ptr @__kstrtab_ring_buffer_event_data, ptr @__kstrtabns_ring_buffer_event_data }, section "___ksymtab_gpl+ring_buffer_event_data", align 4
@.str.8 = private unnamed_addr constant [54 x i8] c"\09field: u64 timestamp;\09offset:0;\09size:%u;\09signed:%u;\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"\09field: local_t commit;\09offset:%u;\09size:%u;\09signed:%u;\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"\09field: int overwrite;\09offset:%u;\09size:%u;\09signed:%u;\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"\09field: char data;\09offset:%u;\09size:%u;\09signed:%u;\0A\00", align 1
@ring_buffer_event_time_stamp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"kernel/trace/ring_buffer.c\00", align 1
@ring_buffer_event_time_stamp.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"nest (%d) greater than max\00", align 1
@ring_buffer_nr_dirty_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ring_buffer_time_stamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_time_stamp = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_time_stamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_time_stamp to i32), ptr @__kstrtab_ring_buffer_time_stamp, ptr @__kstrtabns_ring_buffer_time_stamp }, section "___ksymtab_gpl+ring_buffer_time_stamp", align 4
@__kstrtab_ring_buffer_normalize_time_stamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_normalize_time_stamp = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_normalize_time_stamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_normalize_time_stamp to i32), ptr @__kstrtab_ring_buffer_normalize_time_stamp, ptr @__kstrtabns_ring_buffer_normalize_time_stamp }, section "___ksymtab_gpl+ring_buffer_normalize_time_stamp", align 4
@__ring_buffer_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"&buffer->irq_work.waiters\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__ring_buffer_alloc.__key.16 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"&buffer->mutex\00", align 1
@__kstrtab___ring_buffer_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___ring_buffer_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___ring_buffer_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ring_buffer_alloc to i32), ptr @__kstrtab___ring_buffer_alloc, ptr @__kstrtabns___ring_buffer_alloc }, section "___ksymtab_gpl+__ring_buffer_alloc", align 4
@__kstrtab_ring_buffer_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_free to i32), ptr @__kstrtab_ring_buffer_free, ptr @__kstrtabns_ring_buffer_free }, section "___ksymtab_gpl+ring_buffer_free", align 4
@__kstrtab_ring_buffer_resize = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_resize = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_resize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_resize to i32), ptr @__kstrtab_ring_buffer_resize, ptr @__kstrtabns_ring_buffer_resize }, section "___ksymtab_gpl+ring_buffer_resize", align 4
@__kstrtab_ring_buffer_change_overwrite = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_change_overwrite = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_change_overwrite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_change_overwrite to i32), ptr @__kstrtab_ring_buffer_change_overwrite, ptr @__kstrtabns_ring_buffer_change_overwrite }, section "___ksymtab_gpl+ring_buffer_change_overwrite", align 4
@__kstrtab_ring_buffer_unlock_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_unlock_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_unlock_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_unlock_commit to i32), ptr @__kstrtab_ring_buffer_unlock_commit, ptr @__kstrtabns_ring_buffer_unlock_commit }, section "___ksymtab_gpl+ring_buffer_unlock_commit", align 4
@__kstrtab_ring_buffer_lock_reserve = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_lock_reserve = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_lock_reserve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_lock_reserve to i32), ptr @__kstrtab_ring_buffer_lock_reserve, ptr @__kstrtabns_ring_buffer_lock_reserve }, section "___ksymtab_gpl+ring_buffer_lock_reserve", align 4
@__kstrtab_ring_buffer_discard_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_discard_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_discard_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_discard_commit to i32), ptr @__kstrtab_ring_buffer_discard_commit, ptr @__kstrtabns_ring_buffer_discard_commit }, section "___ksymtab_gpl+ring_buffer_discard_commit", align 4
@__kstrtab_ring_buffer_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_write = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_write to i32), ptr @__kstrtab_ring_buffer_write, ptr @__kstrtabns_ring_buffer_write }, section "___ksymtab_gpl+ring_buffer_write", align 4
@__kstrtab_ring_buffer_record_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_record_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_record_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_record_disable to i32), ptr @__kstrtab_ring_buffer_record_disable, ptr @__kstrtabns_ring_buffer_record_disable }, section "___ksymtab_gpl+ring_buffer_record_disable", align 4
@__kstrtab_ring_buffer_record_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_record_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_record_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_record_enable to i32), ptr @__kstrtab_ring_buffer_record_enable, ptr @__kstrtabns_ring_buffer_record_enable }, section "___ksymtab_gpl+ring_buffer_record_enable", align 4
@__kstrtab_ring_buffer_record_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_record_off = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_record_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_record_off to i32), ptr @__kstrtab_ring_buffer_record_off, ptr @__kstrtabns_ring_buffer_record_off }, section "___ksymtab_gpl+ring_buffer_record_off", align 4
@__kstrtab_ring_buffer_record_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_record_on = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_record_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_record_on to i32), ptr @__kstrtab_ring_buffer_record_on, ptr @__kstrtabns_ring_buffer_record_on }, section "___ksymtab_gpl+ring_buffer_record_on", align 4
@__kstrtab_ring_buffer_record_disable_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_record_disable_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_record_disable_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_record_disable_cpu to i32), ptr @__kstrtab_ring_buffer_record_disable_cpu, ptr @__kstrtabns_ring_buffer_record_disable_cpu }, section "___ksymtab_gpl+ring_buffer_record_disable_cpu", align 4
@__kstrtab_ring_buffer_record_enable_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_record_enable_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_record_enable_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_record_enable_cpu to i32), ptr @__kstrtab_ring_buffer_record_enable_cpu, ptr @__kstrtabns_ring_buffer_record_enable_cpu }, section "___ksymtab_gpl+ring_buffer_record_enable_cpu", align 4
@__kstrtab_ring_buffer_oldest_event_ts = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_oldest_event_ts = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_oldest_event_ts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_oldest_event_ts to i32), ptr @__kstrtab_ring_buffer_oldest_event_ts, ptr @__kstrtabns_ring_buffer_oldest_event_ts }, section "___ksymtab_gpl+ring_buffer_oldest_event_ts", align 4
@__kstrtab_ring_buffer_bytes_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_bytes_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_bytes_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_bytes_cpu to i32), ptr @__kstrtab_ring_buffer_bytes_cpu, ptr @__kstrtabns_ring_buffer_bytes_cpu }, section "___ksymtab_gpl+ring_buffer_bytes_cpu", align 4
@__kstrtab_ring_buffer_entries_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_entries_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_entries_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_entries_cpu to i32), ptr @__kstrtab_ring_buffer_entries_cpu, ptr @__kstrtabns_ring_buffer_entries_cpu }, section "___ksymtab_gpl+ring_buffer_entries_cpu", align 4
@__kstrtab_ring_buffer_overrun_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_overrun_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_overrun_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_overrun_cpu to i32), ptr @__kstrtab_ring_buffer_overrun_cpu, ptr @__kstrtabns_ring_buffer_overrun_cpu }, section "___ksymtab_gpl+ring_buffer_overrun_cpu", align 4
@__kstrtab_ring_buffer_commit_overrun_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_commit_overrun_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_commit_overrun_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_commit_overrun_cpu to i32), ptr @__kstrtab_ring_buffer_commit_overrun_cpu, ptr @__kstrtabns_ring_buffer_commit_overrun_cpu }, section "___ksymtab_gpl+ring_buffer_commit_overrun_cpu", align 4
@__kstrtab_ring_buffer_dropped_events_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_dropped_events_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_dropped_events_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_dropped_events_cpu to i32), ptr @__kstrtab_ring_buffer_dropped_events_cpu, ptr @__kstrtabns_ring_buffer_dropped_events_cpu }, section "___ksymtab_gpl+ring_buffer_dropped_events_cpu", align 4
@__kstrtab_ring_buffer_read_events_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_read_events_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_read_events_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_read_events_cpu to i32), ptr @__kstrtab_ring_buffer_read_events_cpu, ptr @__kstrtabns_ring_buffer_read_events_cpu }, section "___ksymtab_gpl+ring_buffer_read_events_cpu", align 4
@__kstrtab_ring_buffer_entries = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_entries = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_entries = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_entries to i32), ptr @__kstrtab_ring_buffer_entries, ptr @__kstrtabns_ring_buffer_entries }, section "___ksymtab_gpl+ring_buffer_entries", align 4
@__kstrtab_ring_buffer_overruns = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_overruns = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_overruns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_overruns to i32), ptr @__kstrtab_ring_buffer_overruns, ptr @__kstrtabns_ring_buffer_overruns }, section "___ksymtab_gpl+ring_buffer_overruns", align 4
@__kstrtab_ring_buffer_iter_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_iter_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_iter_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_iter_reset to i32), ptr @__kstrtab_ring_buffer_iter_reset, ptr @__kstrtabns_ring_buffer_iter_reset }, section "___ksymtab_gpl+ring_buffer_iter_reset", align 4
@__kstrtab_ring_buffer_iter_empty = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_iter_empty = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_iter_empty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_iter_empty to i32), ptr @__kstrtab_ring_buffer_iter_empty, ptr @__kstrtabns_ring_buffer_iter_empty }, section "___ksymtab_gpl+ring_buffer_iter_empty", align 4
@__kstrtab_ring_buffer_peek = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_peek = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_peek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_peek to i32), ptr @__kstrtab_ring_buffer_peek, ptr @__kstrtabns_ring_buffer_peek }, section "___ksymtab_gpl+ring_buffer_peek", align 4
@__kstrtab_ring_buffer_iter_peek = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_iter_peek = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_iter_peek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_iter_peek to i32), ptr @__kstrtab_ring_buffer_iter_peek, ptr @__kstrtabns_ring_buffer_iter_peek }, section "___ksymtab_gpl+ring_buffer_iter_peek", align 4
@__kstrtab_ring_buffer_iter_dropped = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_iter_dropped = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_iter_dropped = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_iter_dropped to i32), ptr @__kstrtab_ring_buffer_iter_dropped, ptr @__kstrtabns_ring_buffer_iter_dropped }, section "___ksymtab_gpl+ring_buffer_iter_dropped", align 4
@__kstrtab_ring_buffer_consume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_consume = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_consume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_consume to i32), ptr @__kstrtab_ring_buffer_consume, ptr @__kstrtabns_ring_buffer_consume }, section "___ksymtab_gpl+ring_buffer_consume", align 4
@__kstrtab_ring_buffer_read_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_read_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_read_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_read_prepare to i32), ptr @__kstrtab_ring_buffer_read_prepare, ptr @__kstrtabns_ring_buffer_read_prepare }, section "___ksymtab_gpl+ring_buffer_read_prepare", align 4
@__kstrtab_ring_buffer_read_prepare_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_read_prepare_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_read_prepare_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_read_prepare_sync to i32), ptr @__kstrtab_ring_buffer_read_prepare_sync, ptr @__kstrtabns_ring_buffer_read_prepare_sync }, section "___ksymtab_gpl+ring_buffer_read_prepare_sync", align 4
@__kstrtab_ring_buffer_read_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_read_start = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_read_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_read_start to i32), ptr @__kstrtab_ring_buffer_read_start, ptr @__kstrtabns_ring_buffer_read_start }, section "___ksymtab_gpl+ring_buffer_read_start", align 4
@__kstrtab_ring_buffer_read_finish = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_read_finish = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_read_finish = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_read_finish to i32), ptr @__kstrtab_ring_buffer_read_finish, ptr @__kstrtabns_ring_buffer_read_finish }, section "___ksymtab_gpl+ring_buffer_read_finish", align 4
@__kstrtab_ring_buffer_iter_advance = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_iter_advance = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_iter_advance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_iter_advance to i32), ptr @__kstrtab_ring_buffer_iter_advance, ptr @__kstrtabns_ring_buffer_iter_advance }, section "___ksymtab_gpl+ring_buffer_iter_advance", align 4
@__kstrtab_ring_buffer_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_size = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_size to i32), ptr @__kstrtab_ring_buffer_size, ptr @__kstrtabns_ring_buffer_size }, section "___ksymtab_gpl+ring_buffer_size", align 4
@__kstrtab_ring_buffer_reset_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_reset_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_reset_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_reset_cpu to i32), ptr @__kstrtab_ring_buffer_reset_cpu, ptr @__kstrtabns_ring_buffer_reset_cpu }, section "___ksymtab_gpl+ring_buffer_reset_cpu", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_ring_buffer_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_reset to i32), ptr @__kstrtab_ring_buffer_reset, ptr @__kstrtabns_ring_buffer_reset }, section "___ksymtab_gpl+ring_buffer_reset", align 4
@__kstrtab_ring_buffer_empty = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_empty = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_empty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_empty to i32), ptr @__kstrtab_ring_buffer_empty, ptr @__kstrtabns_ring_buffer_empty }, section "___ksymtab_gpl+ring_buffer_empty", align 4
@__kstrtab_ring_buffer_empty_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_empty_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_empty_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_empty_cpu to i32), ptr @__kstrtab_ring_buffer_empty_cpu, ptr @__kstrtabns_ring_buffer_empty_cpu }, section "___ksymtab_gpl+ring_buffer_empty_cpu", align 4
@__kstrtab_ring_buffer_alloc_read_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_alloc_read_page = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_alloc_read_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_alloc_read_page to i32), ptr @__kstrtab_ring_buffer_alloc_read_page, ptr @__kstrtabns_ring_buffer_alloc_read_page }, section "___ksymtab_gpl+ring_buffer_alloc_read_page", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_ring_buffer_free_read_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_free_read_page = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_free_read_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_free_read_page to i32), ptr @__kstrtab_ring_buffer_free_read_page, ptr @__kstrtabns_ring_buffer_free_read_page }, section "___ksymtab_gpl+ring_buffer_free_read_page", align 4
@__kstrtab_ring_buffer_read_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_ring_buffer_read_page = external dso_local constant [0 x i8], align 1
@__ksymtab_ring_buffer_read_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ring_buffer_read_page to i32), ptr @__kstrtab_ring_buffer_read_page, ptr @__kstrtabns_ring_buffer_read_page }, section "___ksymtab_gpl+ring_buffer_read_page", align 4
@.str.18 = private unnamed_addr constant [42 x i8] c"failed to allocate ring buffer on CPU %u\0A\00", align 1
@rb_event_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rb_allocate_cpu_buffer.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"&cpu_buffer->irq_work.waiters\00", align 1
@rb_allocate_cpu_buffer.__key.20 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"&cpu_buffer->irq_work.full_waiters\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rb_update_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rb_add_timestamp.once = internal unnamed_addr global i1 false, align 4
@.str.23 = private unnamed_addr constant [50 x i8] c"\014Ring buffer clock went backwards: %llu -> %llu\0A\00", align 1
@rb_check_timestamp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = private unnamed_addr constant [75 x i8] c"Delta way too big! %llu ts=%llu before=%llu after=%llu write stamp=%llu\0A%s\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @__ksymtab___ring_buffer_alloc, ptr @__ksymtab_ring_buffer_alloc_read_page, ptr @__ksymtab_ring_buffer_bytes_cpu, ptr @__ksymtab_ring_buffer_change_overwrite, ptr @__ksymtab_ring_buffer_commit_overrun_cpu, ptr @__ksymtab_ring_buffer_consume, ptr @__ksymtab_ring_buffer_discard_commit, ptr @__ksymtab_ring_buffer_dropped_events_cpu, ptr @__ksymtab_ring_buffer_empty, ptr @__ksymtab_ring_buffer_empty_cpu, ptr @__ksymtab_ring_buffer_entries, ptr @__ksymtab_ring_buffer_entries_cpu, ptr @__ksymtab_ring_buffer_event_data, ptr @__ksymtab_ring_buffer_event_length, ptr @__ksymtab_ring_buffer_free, ptr @__ksymtab_ring_buffer_free_read_page, ptr @__ksymtab_ring_buffer_iter_advance, ptr @__ksymtab_ring_buffer_iter_dropped, ptr @__ksymtab_ring_buffer_iter_empty, ptr @__ksymtab_ring_buffer_iter_peek, ptr @__ksymtab_ring_buffer_iter_reset, ptr @__ksymtab_ring_buffer_lock_reserve, ptr @__ksymtab_ring_buffer_normalize_time_stamp, ptr @__ksymtab_ring_buffer_oldest_event_ts, ptr @__ksymtab_ring_buffer_overrun_cpu, ptr @__ksymtab_ring_buffer_overruns, ptr @__ksymtab_ring_buffer_peek, ptr @__ksymtab_ring_buffer_read_events_cpu, ptr @__ksymtab_ring_buffer_read_finish, ptr @__ksymtab_ring_buffer_read_page, ptr @__ksymtab_ring_buffer_read_prepare, ptr @__ksymtab_ring_buffer_read_prepare_sync, ptr @__ksymtab_ring_buffer_read_start, ptr @__ksymtab_ring_buffer_record_disable, ptr @__ksymtab_ring_buffer_record_disable_cpu, ptr @__ksymtab_ring_buffer_record_enable, ptr @__ksymtab_ring_buffer_record_enable_cpu, ptr @__ksymtab_ring_buffer_record_off, ptr @__ksymtab_ring_buffer_record_on, ptr @__ksymtab_ring_buffer_reset, ptr @__ksymtab_ring_buffer_reset_cpu, ptr @__ksymtab_ring_buffer_resize, ptr @__ksymtab_ring_buffer_size, ptr @__ksymtab_ring_buffer_time_stamp, ptr @__ksymtab_ring_buffer_unlock_commit, ptr @__ksymtab_ring_buffer_write], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ring_buffer_print_entry_header(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull @.str) #20
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull @.str.1) #20
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull @.str.2) #20
  tail call void @trace_seq_puts(ptr noundef %0, ptr noundef nonnull @.str.3) #20
  tail call void @trace_seq_putc(ptr noundef %0, i8 noundef zeroext 10) #20
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 29) #20
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 30) #20
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 31) #20
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 28) #20
  %2 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ule i32 %7, %9
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %5 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ring_buffer_event_length(ptr nocapture noundef readonly %0) #2 {
  %2 = load i32, ptr %0, align 4
  %3 = and i32 %2, 30
  %4 = icmp eq i32 %3, 30
  %5 = select i1 %4, i32 8, i32 0
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 31
  switch i32 %8, label %23 [
    i32 29, label %9
    i32 30, label %24
    i32 31, label %24
    i32 0, label %17
    i32 1, label %15
    i32 2, label %15
    i32 3, label %15
    i32 4, label %15
    i32 5, label %15
    i32 6, label %15
    i32 7, label %15
    i32 8, label %15
    i32 9, label %15
    i32 10, label %15
    i32 11, label %15
    i32 12, label %15
    i32 13, label %15
    i32 14, label %15
    i32 15, label %15
    i32 16, label %15
    i32 17, label %15
    i32 18, label %15
    i32 19, label %15
    i32 20, label %15
    i32 21, label %15
    i32 22, label %15
    i32 23, label %15
    i32 24, label %15
    i32 25, label %15
    i32 26, label %15
    i32 27, label %15
    i32 28, label %15
  ]

9:                                                ; preds = %1
  %10 = icmp eq i32 %7, 29
  br i1 %10, label %24, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.ring_buffer_event, ptr %6, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 4
  br label %24

15:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %16 = shl nuw nsw i32 %8, 2
  br label %20

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.ring_buffer_event, ptr %6, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %19, %17 ]
  %22 = add i32 %21, 4
  br label %24

23:                                               ; preds = %1
  unreachable

24:                                               ; preds = %20, %11, %9, %1, %1
  %25 = phi i32 [ %22, %20 ], [ %14, %11 ], [ -1, %9 ], [ 8, %1 ], [ 8, %1 ]
  %26 = icmp ugt i32 %8, 28
  %27 = add i32 %25, -4
  %28 = icmp ugt i32 %27, 116
  %29 = add i32 %25, -8
  %30 = select i1 %28, i32 %29, i32 %27
  %31 = select i1 %26, i32 %25, i32 %30
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ring_buffer_event_data(ptr noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = and i32 %2, 30
  %4 = icmp eq i32 %3, 30
  %5 = select i1 %4, i32 8, i32 0
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 31
  %9 = icmp ugt i32 %8, 28
  %10 = load i1, ptr @rb_event_data.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %16, !prof !8

13:                                               ; preds = %1
  store i1 true, ptr @rb_event_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 262, i32 noundef 9, ptr noundef null) #20
  %14 = load i32, ptr %6, align 4
  %15 = and i32 %14, 31
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ %8, %1 ]
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.ring_buffer_event, ptr %6, i32 0, i32 1
  %20 = getelementptr %struct.ring_buffer_event, ptr %6, i32 2
  %21 = select i1 %18, ptr %20, ptr %19
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ring_buffer_print_page_header(ptr noundef %0) local_unnamed_addr #0 {
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 8, i32 noundef 0) #20
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 8, i32 noundef 4, i32 noundef 1) #20
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 8, i32 noundef 1, i32 noundef 1) #20
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 12, i32 noundef 4084, i32 noundef 0) #20
  %2 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ule i32 %7, %9
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %5 ]
  ret i32 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ring_buffer_event_time_stamp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @llvm.thread.pointer() #20
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr ptr, ptr %4, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %1, align 4
  %11 = and i32 %10, 31
  %12 = icmp eq i32 %11, 31
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ring_buffer_event, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 27
  %18 = lshr i32 %10, 5
  %19 = zext i32 %18 to i64
  %20 = or i64 %17, %19
  br label %65

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 23
  %23 = load volatile i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = load i1, ptr @ring_buffer_event_time_stamp.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %21
  store i1 true, ptr @ring_buffer_event_time_stamp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 819, i32 noundef 9, ptr noundef null) #20
  br label %29

29:                                               ; preds = %28, %21
  br i1 %24, label %39, label %30

30:                                               ; preds = %29
  %31 = add i32 %23, -1
  %32 = icmp ult i32 %31, 5
  br i1 %32, label %33, label %36, !prof !9

33:                                               ; preds = %30
  %34 = getelementptr %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 33, i32 %31
  %35 = load i64, ptr %34, align 8
  br label %65

36:                                               ; preds = %30
  %37 = load i1, ptr @ring_buffer_event_time_stamp.__already_done.13, align 1
  br i1 %37, label %39, label %38, !prof !9

38:                                               ; preds = %36
  store i1 true, ptr @ring_buffer_event_time_stamp.__already_done.13, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 827, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %31) #20
  br label %39

39:                                               ; preds = %38, %36, %29
  %40 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 31
  %41 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 31, i32 1
  %42 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 31, i32 2
  br label %43

43:                                               ; preds = %43, %39
  %44 = load volatile i32, ptr %40, align 4
  %45 = load volatile i32, ptr %41, align 4
  %46 = load volatile i32, ptr %42, align 4
  %47 = load volatile i32, ptr %40, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %43

49:                                               ; preds = %43
  %50 = xor i32 %46, %45
  %51 = icmp ult i32 %50, 1073741824
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = and i32 %45, 1073741823
  %54 = zext i32 %53 to i64
  %55 = shl nuw nsw i64 %54, 30
  %56 = and i32 %46, 1073741823
  %57 = zext i32 %56 to i64
  %58 = or i64 %55, %57
  br label %65

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.trace_buffer, ptr %61, i32 0, i32 8
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i64 %63() #20
  br label %65

65:                                               ; preds = %59, %52, %33, %13
  %66 = phi i64 [ %20, %13 ], [ %35, %33 ], [ %64, %59 ], [ %58, %52 ]
  ret i64 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ring_buffer_nr_pages(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ring_buffer_nr_dirty_pages(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 26
  %8 = load volatile i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 25
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = add nuw i32 %10, 1
  %14 = icmp ugt i32 %8, %13
  %15 = load i1, ptr @ring_buffer_nr_dirty_pages.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %21, !prof !8

18:                                               ; preds = %12
  store i1 true, ptr @ring_buffer_nr_dirty_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 866, i32 noundef 9, ptr noundef null) #20
  br label %21

19:                                               ; preds = %2
  %20 = sub i32 %10, %8
  br label %21

21:                                               ; preds = %19, %18, %12
  %22 = phi i32 [ %20, %19 ], [ 0, %18 ], [ 0, %12 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ring_buffer_wait(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %6 = tail call ptr @llvm.thread.pointer() #20
  store i32 0, ptr %4, align 4
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  store ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp eq i32 %1, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 9
  br label %28

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %15 = lshr i32 %1, 5
  %16 = getelementptr i32, ptr %14, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %1, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %103, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr ptr, ptr %24, i32 %1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 39
  br label %28

28:                                               ; preds = %22, %11
  %29 = phi ptr [ null, %11 ], [ %26, %22 ]
  %30 = phi ptr [ %12, %11 ], [ %27, %22 ]
  %31 = phi i32 [ 0, %11 ], [ %2, %22 ]
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.rb_irq_work, ptr %30, i32 0, i32 2
  %34 = getelementptr inbounds %struct.rb_irq_work, ptr %30, i32 0, i32 4
  %35 = getelementptr inbounds %struct.rb_irq_work, ptr %30, i32 0, i32 1
  %36 = getelementptr inbounds %struct.rb_irq_work, ptr %30, i32 0, i32 3
  %37 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 4
  %38 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 14
  %39 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 13
  %40 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 8
  %41 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %42 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 28
  br label %43

43:                                               ; preds = %95, %28
  br i1 %32, label %45, label %44

44:                                               ; preds = %43
  call void @prepare_to_wait(ptr noundef %33, ptr noundef nonnull %4, i32 noundef 1) #20
  store i8 1, ptr %34, align 1
  br label %46

45:                                               ; preds = %43
  call void @prepare_to_wait(ptr noundef %35, ptr noundef nonnull %4, i32 noundef 1) #20
  store i8 1, ptr %36, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load volatile i32, ptr %6, align 4
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %96, !prof !9

50:                                               ; preds = %46
  %51 = load volatile i32, ptr %6, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %96

54:                                               ; preds = %50
  br i1 %10, label %55, label %57

55:                                               ; preds = %54
  %56 = call zeroext i1 @ring_buffer_empty(ptr noundef %0)
  br i1 %56, label %95, label %96

57:                                               ; preds = %54
  %58 = call zeroext i1 @ring_buffer_empty_cpu(ptr noundef %0, i32 noundef %1)
  br i1 %58, label %95, label %59

59:                                               ; preds = %57
  br i1 %32, label %98, label %60

60:                                               ; preds = %59
  %61 = call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #20
  %62 = load ptr, ptr %38, align 4
  %63 = load ptr, ptr %39, align 8
  %64 = icmp eq ptr %62, %63
  %65 = load i32, ptr %40, align 4
  %66 = load ptr, ptr %41, align 4
  %67 = getelementptr ptr, ptr %66, i32 %1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %68, i32 0, i32 26
  %70 = load volatile i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %68, i32 0, i32 25
  %72 = load volatile i32, ptr %71, align 4
  %73 = icmp ult i32 %72, %70
  br i1 %73, label %74, label %81

74:                                               ; preds = %60
  %75 = add nuw i32 %72, 1
  %76 = icmp ugt i32 %70, %75
  %77 = load i1, ptr @ring_buffer_nr_dirty_pages.__already_done, align 1
  %78 = xor i1 %77, true
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %83, !prof !8

80:                                               ; preds = %74
  store i1 true, ptr @ring_buffer_nr_dirty_pages.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 866, i32 noundef 9, ptr noundef null) #20
  br label %83

81:                                               ; preds = %60
  %82 = sub i32 %72, %70
  br label %83

83:                                               ; preds = %81, %80, %74
  %84 = phi i32 [ %82, %81 ], [ 0, %80 ], [ 0, %74 ]
  %85 = load i32, ptr %42, align 4
  %86 = icmp ult i32 %85, %31
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 %31, ptr %42, align 4
  br label %88

88:                                               ; preds = %87, %83
  call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %61) #20
  br i1 %64, label %95, label %89

89:                                               ; preds = %88
  %90 = icmp eq i32 %65, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %89
  %92 = mul i32 %84, 100
  %93 = mul i32 %65, %31
  %94 = icmp ugt i32 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %91, %88, %57, %55
  call void @schedule() #20
  br label %43

96:                                               ; preds = %55, %50, %46
  %97 = phi i32 [ 0, %55 ], [ -4, %50 ], [ -4, %46 ]
  br i1 %32, label %98, label %100

98:                                               ; preds = %96, %59
  %99 = phi i32 [ %97, %96 ], [ 0, %59 ]
  br label %100

100:                                              ; preds = %98, %96, %91, %89
  %101 = phi ptr [ %35, %98 ], [ %33, %96 ], [ %33, %91 ], [ %33, %89 ]
  %102 = phi i32 [ %99, %98 ], [ %97, %96 ], [ 0, %91 ], [ 0, %89 ]
  call void @finish_wait(ptr noundef %101, ptr noundef nonnull %4) #20
  br label %103

103:                                              ; preds = %100, %13
  %104 = phi i32 [ -19, %13 ], [ %102, %100 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #20
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ring_buffer_empty(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  br label %4

4:                                                ; preds = %58, %1
  %5 = phi i32 [ -1, %1 ], [ %6, %58 ]
  %6 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef %2) #21
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %59

9:                                                ; preds = %4
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr ptr, ptr %10, i32 %6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !10
  %14 = tail call ptr @llvm.thread.pointer() #20
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 15728640
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %12, i32 0, i32 4
  br i1 %18, label %20, label %21, !prof !9

20:                                               ; preds = %9
  tail call void @_raw_spin_lock(ptr noundef %19) #20
  br label %27

21:                                               ; preds = %9
  %22 = tail call i32 @_raw_spin_trylock(ptr noundef %19) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %12, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #20, !srcloc !11
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #20, !srcloc !12
  br label %27

27:                                               ; preds = %24, %21, %20
  %28 = phi i1 [ true, %20 ], [ false, %24 ], [ true, %21 ]
  %29 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %12, i32 0, i32 14
  %30 = load ptr, ptr %29, align 4
  %31 = tail call fastcc ptr @rb_set_head_page(ptr noundef %12) #20
  %32 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %12, i32 0, i32 13
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %31, null
  br i1 %34, label %53, label %35, !prof !8

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.buffer_page, ptr %30, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.buffer_page, ptr %30, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.buffer_data_page, ptr %39, i32 0, i32 1
  %41 = load volatile i32, ptr %40, align 4
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = icmp eq ptr %33, %30
  br i1 %44, label %53, label %45

45:                                               ; preds = %43
  %46 = icmp eq ptr %33, %31
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.buffer_page, ptr %31, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.buffer_data_page, ptr %49, i32 0, i32 1
  %51 = load volatile i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br label %53

53:                                               ; preds = %47, %45, %43, %35, %27
  %54 = phi i1 [ %52, %47 ], [ true, %27 ], [ false, %35 ], [ true, %43 ], [ false, %45 ]
  br i1 %28, label %55, label %58, !prof !9

55:                                               ; preds = %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %56 = load i16, ptr %19, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !16
  br label %58

58:                                               ; preds = %55, %53
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #20, !srcloc !17
  br i1 %54, label %4, label %59

59:                                               ; preds = %58, %4
  %60 = xor i1 %8, true
  ret i1 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ring_buffer_empty_cpu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %62, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !10
  %17 = tail call ptr @llvm.thread.pointer() #20
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 15728640
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 4
  br i1 %21, label %23, label %24, !prof !9

23:                                               ; preds = %11
  tail call void @_raw_spin_lock(ptr noundef %22) #20
  br label %30

24:                                               ; preds = %11
  %25 = tail call i32 @_raw_spin_trylock(ptr noundef %22) #20
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #20, !srcloc !11
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #20, !srcloc !12
  br label %30

30:                                               ; preds = %27, %24, %23
  %31 = phi i1 [ true, %23 ], [ false, %27 ], [ true, %24 ]
  %32 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 14
  %33 = load ptr, ptr %32, align 4
  %34 = tail call fastcc ptr @rb_set_head_page(ptr noundef %15) #20
  %35 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 13
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %34, null
  br i1 %37, label %56, label %38, !prof !8

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.buffer_page, ptr %33, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.buffer_page, ptr %33, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.buffer_data_page, ptr %42, i32 0, i32 1
  %44 = load volatile i32, ptr %43, align 4
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = icmp eq ptr %36, %33
  br i1 %47, label %56, label %48

48:                                               ; preds = %46
  %49 = icmp eq ptr %36, %34
  br i1 %49, label %50, label %56

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.buffer_page, ptr %34, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.buffer_data_page, ptr %52, i32 0, i32 1
  %54 = load volatile i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br label %56

56:                                               ; preds = %50, %48, %46, %38, %30
  %57 = phi i1 [ %55, %50 ], [ true, %30 ], [ false, %38 ], [ true, %46 ], [ false, %48 ]
  br i1 %31, label %58, label %61, !prof !9

58:                                               ; preds = %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %59 = load i16, ptr %22, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !16
  br label %61

61:                                               ; preds = %58, %56
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #20, !srcloc !17
  br label %62

62:                                               ; preds = %61, %2
  %63 = phi i1 [ %57, %61 ], [ true, %2 ]
  ret i1 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ring_buffer_poll_wait(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %1, -1
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 9, i32 1
  %8 = icmp eq ptr %3, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %7, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void %10(ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %3) #20
  br label %15

15:                                               ; preds = %14, %9, %6
  %16 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 9, i32 3
  store i8 1, ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !18
  %17 = tail call zeroext i1 @ring_buffer_empty(ptr noundef %0)
  br i1 %17, label %43, label %44

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %20 = lshr i32 %1, 5
  %21 = getelementptr i32, ptr %19, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %1, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr ptr, ptr %29, i32 %1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %31, i32 0, i32 39, i32 1
  %33 = icmp eq ptr %3, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr %3, align 4
  %36 = icmp ne ptr %35, null
  %37 = icmp ne ptr %32, null
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void %35(ptr noundef %2, ptr noundef nonnull %32, ptr noundef nonnull %3) #20
  br label %40

40:                                               ; preds = %39, %34, %27
  %41 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %31, i32 0, i32 39, i32 3
  store i8 1, ptr %41, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !18
  %42 = tail call zeroext i1 @ring_buffer_empty_cpu(ptr noundef %0, i32 noundef %1)
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %15
  br label %44

44:                                               ; preds = %43, %40, %18, %15
  %45 = phi i32 [ 0, %43 ], [ -22, %18 ], [ 65, %40 ], [ 65, %15 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ring_buffer_time_stamp(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !19
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i64 %3() #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !20
  ret i64 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ring_buffer_normalize_time_stamp(ptr nocapture %0, i32 %1, ptr nocapture noundef %2) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__ring_buffer_alloc(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 128) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %64, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.trace_buffer, ptr %5, i32 0, i32 3
  store i32 0, ptr %8, align 4
  store i32 %1, ptr %5, align 8
  %9 = getelementptr inbounds %struct.trace_buffer, ptr %5, i32 0, i32 8
  store ptr @trace_clock_local, ptr %9, align 4
  %10 = getelementptr inbounds %struct.trace_buffer, ptr %5, i32 0, i32 4
  store ptr %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.trace_buffer, ptr %5, i32 0, i32 9
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %5, i32 0, i32 9, i32 0, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.trace_buffer, ptr %5, i32 0, i32 9, i32 0, i32 1
  store ptr @rb_wake_up_waiters, ptr %13, align 8
  %14 = getelementptr inbounds %struct.trace_buffer, ptr %5, i32 0, i32 9, i32 0, i32 2
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.trace_buffer, ptr %5, i32 0, i32 9, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %15, ptr noundef nonnull @.str.15, ptr noundef nonnull @__ring_buffer_alloc.__key) #20
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = getelementptr inbounds %struct.trace_buffer, ptr %5, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = shl i32 %16, 2
  %19 = add i32 %18, 63
  %20 = and i32 %19, -64
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #23
  %22 = getelementptr inbounds %struct.trace_buffer, ptr %5, i32 0, i32 6
  store ptr %21, ptr %22, align 8
  %23 = icmp eq ptr %21, null
  br i1 %23, label %63, label %24

24:                                               ; preds = %7
  %25 = add i32 %0, 4083
  %26 = udiv i32 %25, 4084
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 2)
  %28 = tail call ptr @llvm.thread.pointer() #20
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  tail call void @_set_bit(i32 noundef %30, ptr noundef %8) #20
  %31 = tail call fastcc ptr @rb_allocate_cpu_buffer(ptr noundef nonnull %5, i32 noundef %27, i32 noundef %30)
  %32 = load ptr, ptr %22, align 8
  %33 = getelementptr ptr, ptr %32, i32 %30
  store ptr %31, ptr %33, align 4
  %34 = load ptr, ptr %22, align 8
  %35 = getelementptr ptr, ptr %34, i32 %30
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.trace_buffer, ptr %5, i32 0, i32 7
  %40 = tail call i32 @__cpuhp_state_add_instance(i32 noundef 62, ptr noundef %39, i1 noundef zeroext true) #20
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.trace_buffer, ptr %5, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %43, ptr noundef nonnull @.str.17, ptr noundef nonnull @__ring_buffer_alloc.__key.16) #20
  br label %64

44:                                               ; preds = %38, %24
  %45 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %8) #21
  %46 = load i32, ptr @nr_cpu_ids, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %57, %44
  %49 = phi i32 [ %58, %57 ], [ %46, %44 ]
  %50 = phi i32 [ %59, %57 ], [ %45, %44 ]
  %51 = load ptr, ptr %22, align 8
  %52 = getelementptr ptr, ptr %51, i32 %50
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  tail call fastcc void @rb_free_cpu_buffer(ptr noundef nonnull %53)
  %56 = load i32, ptr @nr_cpu_ids, align 4
  br label %57

57:                                               ; preds = %55, %48
  %58 = phi i32 [ %56, %55 ], [ %49, %48 ]
  %59 = tail call i32 @cpumask_next(i32 noundef %50, ptr noundef %8) #21
  %60 = icmp ult i32 %59, %58
  br i1 %60, label %48, label %61

61:                                               ; preds = %57, %44
  %62 = load ptr, ptr %22, align 8
  tail call void @kfree(ptr noundef %62) #20
  br label %63

63:                                               ; preds = %61, %7
  tail call void @kfree(ptr noundef nonnull %5) #20
  br label %64

64:                                               ; preds = %63, %42, %3
  %65 = phi ptr [ null, %63 ], [ %5, %42 ], [ null, %3 ]
  ret ptr %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @trace_clock_local() #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rb_wake_up_waiters(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rb_irq_work, ptr %0, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %2, i32 noundef 3, i32 noundef 0, ptr noundef null) #20
  %3 = getelementptr inbounds %struct.rb_irq_work, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 2, !range !21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  store i8 0, ptr %3, align 2
  %7 = getelementptr inbounds %struct.rb_irq_work, ptr %0, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %7, i32 noundef 3, i32 noundef 0, ptr noundef null) #20
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rb_allocate_cpu_buffer(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 320) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %69, label %8

8:                                                ; preds = %3
  store i32 %2, ptr %6, align 8
  %9 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 3
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 4
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 5
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 37
  store i32 -32, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 37, i32 1
  store volatile ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 37, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 37, i32 2
  store ptr @update_pages_handler, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 38
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 38, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %17, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #20
  %18 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 39
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 39, i32 0, i32 0, i32 1
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 39, i32 0, i32 1
  store ptr @rb_wake_up_waiters, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 39, i32 0, i32 2
  store ptr null, ptr %21, align 8
  %22 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 39, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %22, ptr noundef nonnull @.str.19, ptr noundef nonnull @rb_allocate_cpu_buffer.__key) #20
  %23 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 39, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %23, ptr noundef nonnull @.str.21, ptr noundef nonnull @rb_allocate_cpu_buffer.__key.20) #20
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 64) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %68, label %27

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 14
  store ptr %25, ptr %28, align 4
  %29 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %63, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @page_address(ptr noundef nonnull %29) #20
  %33 = getelementptr inbounds %struct.buffer_page, ptr %25, i32 0, i32 5
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.buffer_data_page, ptr %32, i32 0, i32 1
  store volatile i32 0, ptr %34, align 4
  %35 = load ptr, ptr %28, align 4
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 36
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 36, i32 1
  store ptr %37, ptr %38, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr %4, ptr %4, align 8
  %39 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %39, align 4
  %40 = icmp eq i32 %1, 0
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %31
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1597, i32 noundef 9, ptr noundef null) #20
  br label %42

42:                                               ; preds = %41, %31
  %43 = call fastcc i32 @__rb_allocate_pages(ptr noundef nonnull %6, i32 noundef %1, ptr noundef nonnull %4) #20
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %63

46:                                               ; preds = %42
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 10
  store ptr %47, ptr %48, align 4
  %49 = load ptr, ptr %39, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %47, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  %51 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 8
  store i32 %1, ptr %51, align 4
  call fastcc void @rb_check_pages(ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  %52 = load ptr, ptr %48, align 4
  %53 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 11
  store ptr %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 13
  store ptr %52, ptr %54, align 8
  %55 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 12
  store ptr %52, ptr %55, align 4
  %56 = icmp eq ptr %52, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, -4
  %62 = or i32 %61, 1
  store i32 %62, ptr %59, align 4
  br label %69

63:                                               ; preds = %45, %27
  %64 = load ptr, ptr %28, align 4
  %65 = getelementptr inbounds %struct.buffer_page, ptr %64, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @free_pages(i32 noundef %67, i32 noundef 0) #20
  call void @kfree(ptr noundef %64) #20
  br label %68

68:                                               ; preds = %63, %8
  call void @kfree(ptr noundef nonnull %6) #20
  br label %69

69:                                               ; preds = %68, %57, %46, %3
  %70 = phi ptr [ null, %68 ], [ null, %3 ], [ %6, %46 ], [ %6, %57 ]
  ret ptr %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rb_free_cpu_buffer(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.buffer_page, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  tail call void @free_pages(i32 noundef %8, i32 noundef 0) #20
  tail call void @kfree(ptr noundef %5) #20
  %9 = load ptr, ptr %2, align 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -4
  store i32 %11, ptr %9, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %22, label %15

15:                                               ; preds = %15, %1
  %16 = phi ptr [ %19, %15 ], [ %13, %1 ]
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -4
  store i32 %18, ptr %16, align 4
  %19 = inttoptr i32 %18 to ptr
  %20 = load ptr, ptr %2, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %22, label %15

22:                                               ; preds = %15, %1
  %23 = icmp eq ptr %3, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %3, align 4
  %26 = icmp eq ptr %25, %3
  br i1 %26, label %37, label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %29, %27 ], [ %25, %24 ]
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %29, ptr %31, align 4
  store volatile ptr %28, ptr %28, align 4
  store ptr %28, ptr %30, align 4
  %33 = getelementptr inbounds %struct.buffer_page, ptr %28, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = ptrtoint ptr %34 to i32
  tail call void @free_pages(i32 noundef %35, i32 noundef 0) #20
  tail call void @kfree(ptr noundef %28) #20
  %36 = icmp eq ptr %29, %3
  br i1 %36, label %37, label %27

37:                                               ; preds = %27, %24
  %38 = getelementptr inbounds %struct.buffer_page, ptr %3, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = ptrtoint ptr %39 to i32
  tail call void @free_pages(i32 noundef %40, i32 noundef 0) #20
  tail call void @kfree(ptr noundef nonnull %3) #20
  br label %41

41:                                               ; preds = %37, %22
  tail call void @kfree(ptr noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 7
  %3 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 62, ptr noundef %2, i1 noundef zeroext true) #20
  %4 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %4) #21
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %5, %8 ], [ %15, %10 ]
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr ptr, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 4
  tail call fastcc void @rb_free_cpu_buffer(ptr noundef %14)
  %15 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef %4) #21
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %10, label %18

18:                                               ; preds = %10, %1
  %19 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #20
  tail call void @kfree(ptr noundef %0) #20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ring_buffer_set_clock(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 8
  store ptr %1, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ring_buffer_set_time_stamp_abs(ptr nocapture noundef writeonly %0, i1 noundef zeroext %1) local_unnamed_addr #7 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 10
  store i8 %3, ptr %4, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ring_buffer_time_stamp_abs(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 10
  %3 = load i8, ptr %2, align 4, !range !21
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ring_buffer_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %216, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %2, -1
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %9 = lshr i32 %2, 5
  %10 = getelementptr i32, ptr %8, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %2, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %216, label %16

16:                                               ; preds = %7, %5
  %17 = add i32 %1, 4083
  %18 = udiv i32 %17, 4084
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 2)
  %20 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %20) #20
  br i1 %6, label %21, label %122

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  br label %25

25:                                               ; preds = %32, %21
  %26 = phi i32 [ %27, %32 ], [ -1, %21 ]
  %27 = tail call i32 @cpumask_next(i32 noundef %26, ptr noundef %22) #21
  %28 = icmp ult i32 %27, %23
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %22) #21
  %31 = icmp ult i32 %30, %23
  br i1 %31, label %39, label %61

32:                                               ; preds = %25
  %33 = load ptr, ptr %24, align 4
  %34 = getelementptr ptr, ptr %33, i32 %27
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %35, i32 0, i32 2
  %37 = load volatile i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %25, label %214

39:                                               ; preds = %50, %29
  %40 = phi i32 [ %51, %50 ], [ %23, %29 ]
  %41 = phi i32 [ %52, %50 ], [ %30, %29 ]
  %42 = load ptr, ptr %24, align 4
  %43 = getelementptr ptr, ptr %42, i32 %41
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %44, i32 0, i32 8
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %19, %46
  %48 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %44, i32 0, i32 35
  store i32 %47, ptr %48, align 8
  %49 = icmp slt i32 %47, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %59, %39
  %51 = phi i32 [ %60, %59 ], [ %40, %39 ]
  %52 = tail call i32 @cpumask_next(i32 noundef %41, ptr noundef %22) #21
  %53 = icmp ult i32 %52, %51
  br i1 %53, label %39, label %61

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %44, i32 0, i32 36
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %44, i32 0, i32 36, i32 1
  store ptr %55, ptr %56, align 4
  %57 = tail call fastcc i32 @__rb_allocate_pages(ptr noundef %44, i32 noundef %47, ptr noundef %55)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %181

59:                                               ; preds = %54
  %60 = load i32, ptr @nr_cpu_ids, align 4
  br label %50

61:                                               ; preds = %50, %29
  tail call void @cpus_read_lock() #20
  %62 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %22) #21
  %63 = load i32, ptr @nr_cpu_ids, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %90, %61
  %66 = phi i32 [ %63, %61 ], [ %92, %90 ]
  %67 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %22) #21
  %68 = icmp ult i32 %67, %66
  br i1 %68, label %94, label %158

69:                                               ; preds = %90, %61
  %70 = phi i32 [ %91, %90 ], [ %62, %61 ]
  %71 = load ptr, ptr %24, align 4
  %72 = getelementptr ptr, ptr %71, i32 %70
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %73, i32 0, i32 35
  %75 = load i32, ptr %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %69
  %78 = lshr i32 %70, 5
  %79 = getelementptr i32, ptr @__cpu_online_mask, i32 %78
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %70, 31
  %82 = shl nuw i32 1, %81
  %83 = and i32 %80, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  tail call fastcc void @rb_update_pages(ptr noundef %73)
  store i32 0, ptr %74, align 8
  br label %90

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %73, i32 0, i32 37
  %88 = load ptr, ptr @system_wq, align 4
  %89 = tail call zeroext i1 @queue_work_on(i32 noundef %70, ptr noundef %88, ptr noundef %87) #20
  br label %90

90:                                               ; preds = %86, %85, %69
  %91 = tail call i32 @cpumask_next(i32 noundef %70, ptr noundef %22) #21
  %92 = load i32, ptr @nr_cpu_ids, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %69, label %65

94:                                               ; preds = %117, %65
  %95 = phi i32 [ %118, %117 ], [ %66, %65 ]
  %96 = phi i32 [ %119, %117 ], [ %66, %65 ]
  %97 = phi i32 [ %120, %117 ], [ %67, %65 ]
  %98 = load ptr, ptr %24, align 4
  %99 = getelementptr ptr, ptr %98, i32 %97
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %100, i32 0, i32 35
  %102 = load i32, ptr %101, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %94
  %105 = lshr i32 %97, 5
  %106 = getelementptr i32, ptr @__cpu_online_mask, i32 %105
  %107 = load volatile i32, ptr %106, align 4
  %108 = and i32 %97, 31
  %109 = shl nuw i32 1, %108
  %110 = and i32 %107, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %100, i32 0, i32 38
  tail call void @wait_for_completion(ptr noundef %113) #20
  %114 = load i32, ptr @nr_cpu_ids, align 4
  br label %115

115:                                              ; preds = %112, %104
  %116 = phi i32 [ %114, %112 ], [ %95, %104 ]
  store i32 0, ptr %101, align 8
  br label %117

117:                                              ; preds = %115, %94
  %118 = phi i32 [ %116, %115 ], [ %95, %94 ]
  %119 = phi i32 [ %116, %115 ], [ %96, %94 ]
  %120 = tail call i32 @cpumask_next(i32 noundef %97, ptr noundef %22) #21
  %121 = icmp ult i32 %120, %119
  br i1 %121, label %94, label %158

122:                                              ; preds = %16
  %123 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr ptr, ptr %124, i32 %2
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %126, i32 0, i32 8
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %19, %128
  br i1 %129, label %159, label %130

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %126, i32 0, i32 2
  %132 = load volatile i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %214

134:                                              ; preds = %130
  %135 = sub i32 %19, %128
  %136 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %126, i32 0, i32 35
  store i32 %135, ptr %136, align 8
  %137 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %126, i32 0, i32 36
  store volatile ptr %137, ptr %137, align 4
  %138 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %126, i32 0, i32 36, i32 1
  store ptr %137, ptr %138, align 4
  %139 = icmp sgt i32 %135, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = tail call fastcc i32 @__rb_allocate_pages(ptr noundef %126, i32 noundef %135, ptr noundef %137)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %181

143:                                              ; preds = %140, %134
  tail call void @cpus_read_lock() #20
  %144 = lshr i32 %2, 5
  %145 = getelementptr i32, ptr @__cpu_online_mask, i32 %144
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %2, 31
  %148 = shl nuw i32 1, %147
  %149 = and i32 %146, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  tail call fastcc void @rb_update_pages(ptr noundef %126)
  br label %157

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %126, i32 0, i32 37
  %154 = load ptr, ptr @system_wq, align 4
  %155 = tail call zeroext i1 @queue_work_on(i32 noundef %2, ptr noundef %154, ptr noundef %153) #20
  %156 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %126, i32 0, i32 38
  tail call void @wait_for_completion(ptr noundef %156) #20
  br label %157

157:                                              ; preds = %152, %151
  store i32 0, ptr %136, align 8
  br label %158

158:                                              ; preds = %157, %117, %65
  tail call void @cpus_read_unlock() #20
  br label %159

159:                                              ; preds = %158, %122
  %160 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 2
  %161 = load volatile i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %214, label %163

163:                                              ; preds = %159
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %160) #20, !srcloc !11
  %164 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %160, ptr %160, i32 1, ptr elementtype(i32) %160) #20, !srcloc !12
  tail call void @synchronize_rcu() #20
  %165 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %166 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %165) #21
  %167 = load i32, ptr @nr_cpu_ids, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  br label %171

171:                                              ; preds = %171, %169
  %172 = phi i32 [ %166, %169 ], [ %176, %171 ]
  %173 = load ptr, ptr %170, align 4
  %174 = getelementptr ptr, ptr %173, i32 %172
  %175 = load ptr, ptr %174, align 4
  tail call fastcc void @rb_check_pages(ptr noundef %175)
  %176 = tail call i32 @cpumask_next(i32 noundef %172, ptr noundef %165) #21
  %177 = load i32, ptr @nr_cpu_ids, align 4
  %178 = icmp ult i32 %176, %177
  br i1 %178, label %171, label %179

179:                                              ; preds = %171, %163
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %160) #20, !srcloc !11
  %180 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %160, ptr %160, i32 1, ptr elementtype(i32) %160) #20, !srcloc !22
  br label %214

181:                                              ; preds = %140, %54
  %182 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %183 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %182) #21
  %184 = load i32, ptr @nr_cpu_ids, align 4
  %185 = icmp ult i32 %183, %184
  br i1 %185, label %186, label %214

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  br label %188

188:                                              ; preds = %210, %186
  %189 = phi i32 [ %184, %186 ], [ %211, %210 ]
  %190 = phi i32 [ %183, %186 ], [ %212, %210 ]
  %191 = load ptr, ptr %187, align 4
  %192 = getelementptr ptr, ptr %191, i32 %190
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %193, i32 0, i32 35
  store i32 0, ptr %194, align 8
  %195 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %193, i32 0, i32 36
  %196 = load volatile ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, %195
  br i1 %197, label %210, label %198

198:                                              ; preds = %198, %188
  %199 = phi ptr [ %200, %198 ], [ %196, %188 ]
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.list_head, ptr %199, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.list_head, ptr %200, i32 0, i32 1
  store ptr %202, ptr %203, align 4
  store volatile ptr %200, ptr %202, align 4
  store volatile ptr %199, ptr %199, align 4
  store ptr %199, ptr %201, align 4
  %204 = getelementptr inbounds %struct.buffer_page, ptr %199, i32 0, i32 5
  %205 = load ptr, ptr %204, align 4
  %206 = ptrtoint ptr %205 to i32
  tail call void @free_pages(i32 noundef %206, i32 noundef 0) #20
  tail call void @kfree(ptr noundef %199) #20
  %207 = icmp eq ptr %200, %195
  br i1 %207, label %208, label %198

208:                                              ; preds = %198
  %209 = load i32, ptr @nr_cpu_ids, align 4
  br label %210

210:                                              ; preds = %208, %188
  %211 = phi i32 [ %209, %208 ], [ %189, %188 ]
  %212 = tail call i32 @cpumask_next(i32 noundef %190, ptr noundef %182) #21
  %213 = icmp ult i32 %212, %211
  br i1 %213, label %188, label %214

214:                                              ; preds = %210, %181, %179, %159, %130, %32
  %215 = phi i32 [ 0, %179 ], [ 0, %159 ], [ -16, %130 ], [ -12, %181 ], [ -12, %210 ], [ -16, %32 ]
  tail call void @mutex_unlock(ptr noundef %20) #20
  br label %216

216:                                              ; preds = %214, %7, %3
  %217 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %215, %214 ]
  ret i32 %217
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__rb_allocate_pages(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #20
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = tail call i32 @si_mem_available() #20
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %65, label %10

10:                                               ; preds = %3
  br i1 %7, label %15, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 51
  store i8 1, ptr %14, align 8
  br label %15

15:                                               ; preds = %11, %10
  %16 = icmp sgt i32 %1, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 98, i32 1
  br label %19

19:                                               ; preds = %42, %17
  %20 = phi i32 [ 0, %17 ], [ %43, %42 ]
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 19904, i32 noundef 64) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %22, ptr %26, align 4
  store ptr %25, ptr %22, align 8
  %27 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %2, ptr %27, align 4
  store volatile ptr %22, ptr %2, align 4
  %28 = tail call ptr @__alloc_pages(i32 noundef 19648, i32 noundef 0, i32 noundef 0, ptr noundef null) #20
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = tail call ptr @page_address(ptr noundef nonnull %28) #20
  %32 = getelementptr inbounds %struct.buffer_page, ptr %22, i32 0, i32 5
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.buffer_data_page, ptr %31, i32 0, i32 1
  store volatile i32 0, ptr %33, align 4
  br i1 %7, label %42, label %34

34:                                               ; preds = %30
  %35 = load volatile i32, ptr %4, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %18, align 4
  %40 = and i32 %39, 256
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %34, %30
  %43 = add nuw nsw i32 %20, 1
  %44 = icmp eq i32 %43, %1
  br i1 %44, label %45, label %19

45:                                               ; preds = %42, %15
  br i1 %7, label %65, label %60

46:                                               ; preds = %38, %24, %19
  %47 = load ptr, ptr %2, align 4
  %48 = icmp eq ptr %47, %2
  br i1 %48, label %59, label %49

49:                                               ; preds = %49, %46
  %50 = phi ptr [ %51, %49 ], [ %47, %46 ]
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %53, ptr %54, align 4
  store volatile ptr %51, ptr %53, align 4
  store volatile ptr %50, ptr %50, align 4
  store ptr %50, ptr %52, align 4
  %55 = getelementptr inbounds %struct.buffer_page, ptr %50, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = ptrtoint ptr %56 to i32
  tail call void @free_pages(i32 noundef %57, i32 noundef 0) #20
  tail call void @kfree(ptr noundef %50) #20
  %58 = icmp eq ptr %51, %2
  br i1 %58, label %59, label %49

59:                                               ; preds = %49, %46
  br i1 %7, label %65, label %60

60:                                               ; preds = %59, %45
  %61 = phi i32 [ 0, %45 ], [ -12, %59 ]
  %62 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %63 = load ptr, ptr %62, align 16
  %64 = getelementptr inbounds %struct.signal_struct, ptr %63, i32 0, i32 51
  store i8 0, ptr %64, align 8
  br label %65

65:                                               ; preds = %60, %59, %45, %3
  %66 = phi i32 [ -12, %3 ], [ 0, %45 ], [ -12, %59 ], [ %61, %60 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rb_update_pages(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 35
  %3 = load i32, ptr %2, align 8
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %57

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 36
  %7 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #20
  %8 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 36, i32 1
  br label %9

9:                                                ; preds = %30, %5
  %10 = phi i32 [ 10, %5 ], [ %11, %30 ]
  %11 = add nsw i32 %10, -1
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @rb_set_head_page(ptr noundef %0) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = load ptr, ptr %8, align 4
  %21 = ptrtoint ptr %14 to i32
  %22 = or i32 %21, 1
  %23 = inttoptr i32 %22 to ptr
  store ptr %23, ptr %20, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !23
  %25 = ptrtoint ptr %19 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #20, !srcloc !11
  br label %26

26:                                               ; preds = %26, %16
  %27 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %18, i32 %22, i32 %25) #20, !srcloc !24
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26
  %31 = extractvalue { i32, i32 } %27, 1
  %32 = inttoptr i32 %31 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !25
  %33 = icmp eq ptr %32, %23
  br i1 %33, label %34, label %9

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %20, ptr %35, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %36 = load i16, ptr %7, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !27
  br label %150

38:                                               ; preds = %13, %9
  %39 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_buffer, ptr %40, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #20, !srcloc !11
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2001, i32 noundef 9, ptr noundef null) #20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %43 = load i16, ptr %7, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !27
  %45 = load ptr, ptr %6, align 4
  %46 = icmp eq ptr %45, %6
  br i1 %46, label %155, label %47

47:                                               ; preds = %47, %38
  %48 = phi ptr [ %49, %47 ], [ %45, %38 ]
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %51, ptr %52, align 4
  store volatile ptr %49, ptr %51, align 4
  store volatile ptr %48, ptr %48, align 4
  store ptr %48, ptr %50, align 4
  %53 = getelementptr inbounds %struct.buffer_page, ptr %48, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = ptrtoint ptr %54 to i32
  tail call void @free_pages(i32 noundef %55, i32 noundef 0) #20
  tail call void @kfree(ptr noundef %48) #20
  %56 = icmp eq ptr %49, %6
  br i1 %56, label %155, label %47

57:                                               ; preds = %1
  %58 = sub i32 0, %3
  %59 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %59) #20
  %60 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #20, !srcloc !11
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #20, !srcloc !12
  %62 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 12
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 14
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load ptr, ptr %63, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = and i32 %69, -4
  %71 = inttoptr i32 %70 to ptr
  br label %72

72:                                               ; preds = %67, %57
  %73 = phi ptr [ %71, %67 ], [ %63, %57 ]
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq i32 %3, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %76, %72
  %77 = phi ptr [ %83, %76 ], [ %73, %72 ]
  %78 = phi i32 [ %87, %76 ], [ 0, %72 ]
  %79 = phi i32 [ %86, %76 ], [ 0, %72 ]
  %80 = ptrtoint ptr %77 to i32
  %81 = and i32 %80, -4
  %82 = inttoptr i32 %81 to ptr
  %83 = load ptr, ptr %82, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = and i32 %84, 1
  %86 = or i32 %85, %79
  %87 = add nuw i32 %78, 1
  %88 = icmp eq i32 %87, %58
  br i1 %88, label %89, label %76

89:                                               ; preds = %76, %72
  %90 = phi ptr [ %73, %72 ], [ %83, %76 ]
  %91 = phi i32 [ 0, %72 ], [ %86, %76 ]
  %92 = ptrtoint ptr %90 to i32
  %93 = and i32 %92, -4
  %94 = inttoptr i32 %93 to ptr
  %95 = load ptr, ptr %94, align 4
  %96 = ptrtoint ptr %95 to i32
  %97 = or i32 %91, %96
  %98 = inttoptr i32 %97 to ptr
  store ptr %98, ptr %73, align 4
  %99 = and i32 %96, -4
  %100 = inttoptr i32 %99 to ptr
  %101 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  store ptr %73, ptr %101, align 4
  %102 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 10
  store ptr %100, ptr %102, align 4
  %103 = icmp eq i32 %91, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %89
  %105 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 11
  store ptr %100, ptr %105, align 8
  br label %106

106:                                              ; preds = %104, %89
  %107 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 29
  store i32 0, ptr %107, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #20, !srcloc !11
  %108 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #20, !srcloc !22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %109 = load i16, ptr %59, align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr %59, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #20, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !27
  %111 = load ptr, ptr %102, align 4
  %112 = load volatile ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, %111
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.trace_buffer, ptr %116, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %117) #20, !srcloc !11
  %118 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %117, ptr %117, i32 1, ptr elementtype(i32) %117) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1899, i32 noundef 9, ptr noundef null) #20
  br label %119

119:                                              ; preds = %114, %106
  %120 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 20
  %121 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 18
  br label %122

122:                                              ; preds = %137, %119
  %123 = phi ptr [ %74, %119 ], [ %129, %137 ]
  %124 = phi i32 [ %58, %119 ], [ %141, %137 ]
  %125 = ptrtoint ptr %123 to i32
  %126 = and i32 %125, -4
  %127 = inttoptr i32 %126 to ptr
  %128 = tail call i32 @__cond_resched() #20
  %129 = load ptr, ptr %127, align 4
  %130 = getelementptr inbounds %struct.buffer_page, ptr %127, i32 0, i32 3
  %131 = load volatile i32, ptr %130, align 4
  %132 = and i32 %131, 1048575
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %122
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %120) #20, !srcloc !11
  %135 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %120, ptr %120, i32 %132, ptr elementtype(i32) %120) #20, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %121) #20, !srcloc !11
  %136 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 4084, ptr elementtype(i32) %121) #20, !srcloc !22
  br label %137

137:                                              ; preds = %134, %122
  %138 = getelementptr inbounds %struct.buffer_page, ptr %127, i32 0, i32 5
  %139 = load ptr, ptr %138, align 4
  %140 = ptrtoint ptr %139 to i32
  tail call void @free_pages(i32 noundef %140, i32 noundef 0) #20
  tail call void @kfree(ptr noundef %127) #20
  %141 = add i32 %124, -1
  %142 = icmp eq ptr %127, %94
  br i1 %142, label %143, label %122

143:                                              ; preds = %137
  %144 = icmp eq i32 %141, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.trace_buffer, ptr %147, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %148) #20, !srcloc !11
  %149 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %148, ptr %148, i32 1, ptr elementtype(i32) %148) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1934, i32 noundef 9, ptr noundef null) #20
  br label %155

150:                                              ; preds = %143, %34
  %151 = load i32, ptr %2, align 8
  %152 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 8
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %153, %151
  store i32 %154, ptr %152, align 4
  br label %155

155:                                              ; preds = %150, %145, %47, %38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rb_check_pages(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @rb_set_head_page(ptr noundef %0)
  %9 = load ptr, ptr %2, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ %3, %1 ]
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -4
  store i32 %13, ptr %11, align 4
  %14 = load ptr, ptr %2, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %24, label %17

17:                                               ; preds = %17, %10
  %18 = phi ptr [ %21, %17 ], [ %15, %10 ]
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -4
  store i32 %20, ptr %18, align 4
  %21 = inttoptr i32 %20 to ptr
  %22 = load ptr, ptr %2, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %10
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %3
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_buffer, ptr %31, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #20, !srcloc !11
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1494, i32 noundef 9, ptr noundef null) #20
  br label %116

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_buffer, ptr %41, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #20, !srcloc !11
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1496, i32 noundef 9, ptr noundef null) #20
  br label %116

44:                                               ; preds = %34
  %45 = ptrtoint ptr %36 to i32
  %46 = and i32 %45, -4
  %47 = inttoptr i32 %46 to ptr
  %48 = icmp eq ptr %36, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.trace_buffer, ptr %51, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #20, !srcloc !11
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1469, i32 noundef 9, ptr noundef null) #20
  br label %116

54:                                               ; preds = %44
  %55 = ptrtoint ptr %25 to i32
  %56 = and i32 %55, -4
  %57 = inttoptr i32 %56 to ptr
  %58 = icmp eq ptr %25, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.trace_buffer, ptr %61, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #20, !srcloc !11
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1471, i32 noundef 9, ptr noundef null) #20
  br label %116

64:                                               ; preds = %97, %54
  %65 = phi ptr [ %66, %97 ], [ %25, %54 ]
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %65, %3
  br i1 %67, label %107, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %65
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.trace_buffer, ptr %74, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #20, !srcloc !11
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1504, i32 noundef 9, ptr noundef null) #20
  br label %116

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %65
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.trace_buffer, ptr %84, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %85) #20, !srcloc !11
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %85, ptr %85, i32 1, ptr elementtype(i32) %85) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1507, i32 noundef 9, ptr noundef null) #20
  br label %116

87:                                               ; preds = %77
  %88 = ptrtoint ptr %79 to i32
  %89 = and i32 %88, -4
  %90 = inttoptr i32 %89 to ptr
  %91 = icmp eq ptr %79, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.trace_buffer, ptr %94, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %95) #20, !srcloc !11
  %96 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %95, ptr %95, i32 1, ptr elementtype(i32) %95) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1469, i32 noundef 9, ptr noundef null) #20
  br label %116

97:                                               ; preds = %87
  %98 = ptrtoint ptr %66 to i32
  %99 = and i32 %98, -4
  %100 = inttoptr i32 %99 to ptr
  %101 = icmp eq ptr %66, %100
  br i1 %101, label %64, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.trace_buffer, ptr %104, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #20, !srcloc !11
  %106 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 1, ptr elementtype(i32) %105) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1471, i32 noundef 9, ptr noundef null) #20
  br label %116

107:                                              ; preds = %64
  %108 = load ptr, ptr %4, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, -4
  %115 = or i32 %114, 1
  store i32 %115, ptr %112, align 4
  br label %116

116:                                              ; preds = %110, %107, %102, %92, %82, %72, %59, %49, %39, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_change_overwrite(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %3) #20
  %4 = icmp ne i32 %1, 0
  %5 = load i32, ptr %0, align 4
  %6 = and i32 %5, -2
  %7 = zext i1 %4 to i32
  %8 = or i32 %6, %7
  store i32 %8, ptr %0, align 4
  tail call void @mutex_unlock(ptr noundef %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_nest_start(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !28
  %2 = tail call ptr @llvm.thread.pointer() #20
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr ptr, ptr %6, i32 %4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %8, i32 0, i32 17
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 5
  store i32 %11, ptr %9, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_nest_end(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #20
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr ptr, ptr %6, i32 %4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %8, i32 0, i32 17
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, -5
  store i32 %11, ptr %9, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ring_buffer_unlock_commit(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #20
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr ptr, ptr %7, i32 %5
  %9 = load ptr, ptr %8, align 4
  tail call fastcc void @rb_commit(ptr noundef %9)
  %10 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 9, i32 3
  %11 = load i8, ptr %10, align 4, !range !21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 9
  store i8 0, ptr %10, align 4
  %15 = tail call zeroext i1 @irq_work_queue(ptr noundef %14) #20
  br label %16

16:                                               ; preds = %13, %2
  %17 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 39
  %18 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 39, i32 3
  %19 = load i8, ptr %18, align 4, !range !21
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  store i8 0, ptr %18, align 4
  %22 = tail call zeroext i1 @irq_work_queue(ptr noundef %17) #20
  br label %23

23:                                               ; preds = %21, %16
  %24 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 27
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 25
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %75, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 14
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 13
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %75, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 39, i32 4
  %37 = load i8, ptr %36, align 1, !range !21
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %75, label %39

39:                                               ; preds = %35
  %40 = load volatile i32, ptr %26, align 4
  store i32 %40, ptr %24, align 8
  %41 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 28
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 8
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %9, align 8
  %46 = load ptr, ptr %6, align 4
  %47 = getelementptr ptr, ptr %46, i32 %45
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %48, i32 0, i32 26
  %50 = load volatile i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %48, i32 0, i32 25
  %52 = load volatile i32, ptr %51, align 4
  %53 = icmp ult i32 %52, %50
  br i1 %53, label %54, label %61

54:                                               ; preds = %39
  %55 = add nuw i32 %52, 1
  %56 = icmp ugt i32 %50, %55
  %57 = load i1, ptr @ring_buffer_nr_dirty_pages.__already_done, align 1
  %58 = xor i1 %57, true
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %64, !prof !8

60:                                               ; preds = %54
  store i1 true, ptr @ring_buffer_nr_dirty_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 866, i32 noundef 9, ptr noundef null) #20
  br label %64

61:                                               ; preds = %39
  %62 = sub i32 %52, %50
  %63 = mul i32 %62, 100
  br label %64

64:                                               ; preds = %61, %60, %54
  %65 = phi i32 [ %63, %61 ], [ 0, %60 ], [ 0, %54 ]
  %66 = icmp eq i32 %42, 0
  %67 = icmp eq i32 %44, 0
  %68 = select i1 %66, i1 true, i1 %67
  %69 = mul i32 %44, %42
  %70 = icmp ugt i32 %65, %69
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 39, i32 5
  store i8 1, ptr %73, align 2
  store i8 0, ptr %36, align 1
  %74 = tail call zeroext i1 @irq_work_queue(ptr noundef %17) #20
  br label %75

75:                                               ; preds = %72, %64, %35, %29, %23
  %76 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 9
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 17
  %79 = load i32, ptr %78, align 8
  %80 = shl nsw i32 -1, %79
  %81 = add i32 %80, %77
  %82 = and i32 %81, %77
  store i32 %82, ptr %76, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !30
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rb_commit(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #20, !srcloc !11
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #20, !srcloc !12
  %4 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 23
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 24
  %9 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 8
  %10 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 13
  %11 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 12
  %12 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  br label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_buffer, ptr %15, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #20, !srcloc !11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3008, i32 noundef 9, ptr noundef null) #20
  br label %118

18:                                               ; preds = %116, %7
  %19 = load volatile i32, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !31
  %20 = load volatile i32, ptr %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %109

22:                                               ; preds = %18
  %23 = load ptr, ptr %10, align 8
  br label %24

24:                                               ; preds = %103, %22
  %25 = phi ptr [ %104, %103 ], [ %23, %22 ]
  %26 = load i32, ptr %9, align 4
  %27 = load volatile ptr, ptr %11, align 4
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = mul i32 %26, 100
  br label %41

31:                                               ; preds = %63, %24
  %32 = phi ptr [ %25, %24 ], [ %75, %63 ]
  %33 = getelementptr inbounds %struct.buffer_page, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.buffer_data_page, ptr %34, i32 0, i32 1
  %36 = load volatile i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.buffer_page, ptr %32, i32 0, i32 1
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1048575
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %103, label %78

41:                                               ; preds = %63, %29
  %42 = phi ptr [ %76, %63 ], [ %27, %29 ]
  %43 = phi ptr [ %75, %63 ], [ %25, %29 ]
  %44 = phi i32 [ %45, %63 ], [ %30, %29 ]
  %45 = add i32 %44, -1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load ptr, ptr %12, align 4
  %49 = getelementptr inbounds %struct.trace_buffer, ptr %48, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #20, !srcloc !11
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #20, !srcloc !12
  br label %107

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = and i32 %55, -4
  %57 = inttoptr i32 %56 to ptr
  %58 = icmp eq ptr %42, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %12, align 4
  %61 = getelementptr inbounds %struct.trace_buffer, ptr %60, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #20, !srcloc !11
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #20, !srcloc !12
  br label %107

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.buffer_page, ptr %43, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.buffer_data_page, ptr %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.buffer_page, ptr %43, i32 0, i32 1
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 1048575
  store volatile i32 %69, ptr %66, align 4
  %70 = load ptr, ptr %10, align 4
  %71 = load ptr, ptr %70, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = and i32 %72, -4
  %74 = inttoptr i32 %73 to ptr
  store ptr %74, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !32
  %75 = load ptr, ptr %10, align 8
  %76 = load volatile ptr, ptr %11, align 4
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %31, label %41

78:                                               ; preds = %93, %31
  %79 = phi ptr [ %99, %93 ], [ %37, %31 ]
  %80 = phi ptr [ %97, %93 ], [ %35, %31 ]
  %81 = load volatile i32, ptr %79, align 4
  %82 = and i32 %81, 1048575
  store volatile i32 %82, ptr %80, align 4
  %83 = load ptr, ptr %10, align 8
  %84 = getelementptr inbounds %struct.buffer_page, ptr %83, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.buffer_data_page, ptr %85, i32 0, i32 1
  %87 = load volatile i32, ptr %86, align 4
  %88 = icmp ult i32 %87, 1048576
  br i1 %88, label %93, label %89

89:                                               ; preds = %78
  %90 = load ptr, ptr %12, align 4
  %91 = getelementptr inbounds %struct.trace_buffer, ptr %90, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #20, !srcloc !11
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2987, i32 noundef 9, ptr noundef null) #20
  br label %93

93:                                               ; preds = %89, %78
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !33
  %94 = load ptr, ptr %10, align 8
  %95 = getelementptr inbounds %struct.buffer_page, ptr %94, i32 0, i32 5
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.buffer_data_page, ptr %96, i32 0, i32 1
  %98 = load volatile i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.buffer_page, ptr %94, i32 0, i32 1
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %100, 1048575
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %78

103:                                              ; preds = %93, %31
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !34
  %104 = load ptr, ptr %10, align 8
  %105 = load volatile ptr, ptr %11, align 4
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %109, label %24, !prof !9

107:                                              ; preds = %59, %47
  %108 = phi i32 [ 2972, %59 ], [ 2969, %47 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef %108, i32 noundef 9, ptr noundef null) #20
  br label %109

109:                                              ; preds = %107, %103, %18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #20, !srcloc !11
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #20, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !35
  %111 = load volatile i32, ptr %8, align 4
  %112 = icmp eq i32 %111, %19
  br i1 %112, label %118, label %113, !prof !9

113:                                              ; preds = %109
  %114 = load volatile i32, ptr %4, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #20, !srcloc !11
  %117 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #20, !srcloc !12
  br label %18

118:                                              ; preds = %113, %109, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ring_buffer_lock_reserve(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.rb_event_info, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !36
  %7 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 2
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %519, !prof !9

10:                                               ; preds = %2
  %11 = tail call ptr @llvm.thread.pointer() #20
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %15 = lshr i32 %13, 5
  %16 = getelementptr i32, ptr %14, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %13, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %519, label %22, !prof !8

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr ptr, ptr %24, i32 %13
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 1
  %28 = load volatile i32, ptr %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = icmp ugt i32 %1, 4076
  %31 = or i1 %30, %29
  br i1 %31, label %519, label %32, !prof !37

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 9
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 15728640
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %36, 16711680
  %40 = icmp eq i32 %39, 0
  %41 = sext i1 %38 to i32
  %42 = and i32 %36, 16711936
  %43 = icmp ne i32 %42, 0
  %44 = sext i1 %43 to i32
  %45 = select i1 %40, i32 4, i32 3
  %46 = add nsw i32 %45, %41
  %47 = add nsw i32 %46, %44
  %48 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 17
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %47, %49
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %34
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54, !prof !9

54:                                               ; preds = %32
  %55 = shl nuw i32 1, %49
  %56 = and i32 %55, %34
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %519

58:                                               ; preds = %54, %32
  %59 = phi i32 [ %47, %32 ], [ 0, %54 ]
  %60 = add i32 %59, %49
  %61 = shl nuw i32 1, %60
  %62 = or i32 %61, %34
  store i32 %62, ptr %33, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i32 48, i1 false) #20, !annotation !38
  %63 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #20, !srcloc !11
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #20, !srcloc !12
  %65 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #20, !srcloc !11
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #20, !srcloc !12
  %67 = icmp eq i32 %1, 0
  %68 = select i1 %67, i32 1, i32 %1
  %69 = icmp ugt i32 %68, 112
  %70 = add nuw nsw i32 %68, 4
  %71 = select i1 %69, i32 %70, i32 %68
  %72 = add nuw nsw i32 %71, 7
  %73 = and i32 %72, -4
  %74 = icmp eq i32 %73, 12
  %75 = select i1 %74, i32 16, i32 %73
  %76 = getelementptr inbounds %struct.rb_event_info, ptr %6, i32 0, i32 4
  store i32 %75, ptr %76, align 8
  %77 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.trace_buffer, ptr %78, i32 0, i32 10
  %80 = load i8, ptr %79, align 4, !range !21
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %58
  %83 = add nuw nsw i32 %75, 8
  store i32 %83, ptr %76, align 8
  br label %84

84:                                               ; preds = %82, %58
  %85 = phi i32 [ %83, %82 ], [ %75, %58 ]
  %86 = phi i32 [ 4, %82 ], [ 0, %58 ]
  %87 = getelementptr inbounds %struct.rb_event_info, ptr %6, i32 0, i32 6
  %88 = getelementptr inbounds %struct.rb_event_info, ptr %6, i32 0, i32 1
  store i32 %86, ptr %87, align 8
  store i64 0, ptr %88, align 8
  %89 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 12
  %90 = getelementptr inbounds %struct.rb_event_info, ptr %6, i32 0, i32 5
  %91 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 32
  %92 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 32, i32 1
  %93 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 32, i32 2
  %94 = getelementptr inbounds %struct.rb_event_info, ptr %6, i32 0, i32 2
  %95 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 31
  %96 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 31, i32 1
  %97 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 31, i32 2
  %98 = getelementptr inbounds %struct.rb_event_info, ptr %6, i32 0, i32 3
  %99 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 18
  %100 = or i32 %86, 2
  %101 = or i32 %86, 10
  br label %106

102:                                              ; preds = %398
  %103 = load ptr, ptr %77, align 4
  %104 = getelementptr inbounds %struct.trace_buffer, ptr %103, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %104) #20, !srcloc !11
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 1, ptr elementtype(i32) %104) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3632, i32 noundef 9, ptr noundef null) #20
  br label %402

106:                                              ; preds = %398, %84
  %107 = phi i32 [ %85, %84 ], [ %399, %398 ]
  %108 = phi i32 [ 1, %84 ], [ %400, %398 ]
  %109 = load volatile ptr, ptr %89, align 4
  store ptr %109, ptr %90, align 4
  %110 = getelementptr inbounds %struct.buffer_page, ptr %109, i32 0, i32 1
  %111 = load volatile i32, ptr %110, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !39
  br label %112

112:                                              ; preds = %112, %106
  %113 = load volatile i32, ptr %91, align 4
  %114 = load volatile i32, ptr %92, align 4
  %115 = load volatile i32, ptr %93, align 4
  %116 = load volatile i32, ptr %91, align 4
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %112

118:                                              ; preds = %112
  %119 = and i32 %111, 1048575
  %120 = xor i32 %115, %114
  %121 = icmp ult i32 %120, 1073741824
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = and i32 %114, 1073741823
  %124 = zext i32 %123 to i64
  %125 = shl nuw nsw i64 %124, 30
  %126 = and i32 %115, 1073741823
  %127 = zext i32 %126 to i64
  %128 = or i64 %125, %127
  store i64 %128, ptr %94, align 8
  br label %129

129:                                              ; preds = %122, %118
  br label %130

130:                                              ; preds = %130, %129
  %131 = load volatile i32, ptr %95, align 4
  %132 = load volatile i32, ptr %96, align 4
  %133 = load volatile i32, ptr %97, align 4
  %134 = load volatile i32, ptr %95, align 4
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %130

136:                                              ; preds = %130
  %137 = xor i32 %133, %132
  %138 = icmp ult i32 %137, 1073741824
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = and i32 %132, 1073741823
  %141 = zext i32 %140 to i64
  %142 = shl nuw nsw i64 %141, 30
  %143 = and i32 %133, 1073741823
  %144 = zext i32 %143 to i64
  %145 = or i64 %142, %144
  store i64 %145, ptr %98, align 8
  br label %146

146:                                              ; preds = %139, %136
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !40
  %147 = load ptr, ptr %77, align 4
  %148 = getelementptr inbounds %struct.trace_buffer, ptr %147, i32 0, i32 8
  %149 = load ptr, ptr %148, align 4
  %150 = tail call i64 %149() #20
  store i64 %150, ptr %6, align 8
  br i1 %81, label %152, label %151

151:                                              ; preds = %146
  store i64 %150, ptr %88, align 8
  br label %167

152:                                              ; preds = %146
  %153 = select i1 %138, i1 %121, i1 false
  br i1 %153, label %154, label %160, !prof !41

154:                                              ; preds = %152
  %155 = load i64, ptr %94, align 8
  %156 = load i64, ptr %98, align 8
  %157 = icmp ne i64 %155, %156
  %158 = icmp ne i32 %119, 0
  %159 = select i1 %157, i1 %158, i1 false
  br i1 %159, label %160, label %162, !prof !8

160:                                              ; preds = %154, %152
  store i32 %101, ptr %87, align 8
  %161 = add i32 %107, 8
  store i32 %161, ptr %76, align 8
  br label %167

162:                                              ; preds = %154
  %163 = sub i64 %150, %156
  store i64 %163, ptr %88, align 8
  %164 = icmp ult i64 %163, 134217728
  br i1 %164, label %167, label %165, !prof !9

165:                                              ; preds = %162
  store i32 %100, ptr %87, align 8
  %166 = add i32 %107, 8
  store i32 %166, ptr %76, align 8
  br label %167

167:                                              ; preds = %165, %162, %160, %151
  %168 = phi i32 [ %100, %165 ], [ %86, %162 ], [ %101, %160 ], [ %86, %151 ]
  %169 = phi i32 [ %166, %165 ], [ %107, %162 ], [ %161, %160 ], [ %107, %151 ]
  %170 = lshr i64 %150, 30
  %171 = trunc i64 %170 to i32
  %172 = and i32 %171, 1073741823
  %173 = trunc i64 %150 to i32
  %174 = and i32 %173, 1073741823
  br label %175

175:                                              ; preds = %175, %167
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #20, !srcloc !11
  %176 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #20, !srcloc !43
  %177 = extractvalue { i32, i32 } %176, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !44
  %178 = shl i32 %177, 30
  %179 = or i32 %178, %172
  store volatile i32 %179, ptr %92, align 4
  %180 = or i32 %178, %174
  store volatile i32 %180, ptr %93, align 4
  %181 = load volatile i32, ptr %91, align 4
  %182 = icmp eq i32 %177, %181
  br i1 %182, label %183, label %175

183:                                              ; preds = %175
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %110) #20, !srcloc !11
  %184 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %110, ptr %110, i32 %169, ptr elementtype(i32) %110) #20, !srcloc !43
  %185 = extractvalue { i32, i32 } %184, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !44
  %186 = and i32 %185, 1048575
  %187 = sub i32 %186, %169
  %188 = icmp ugt i32 %186, 4084
  br i1 %188, label %189, label %229, !prof !8

189:                                              ; preds = %189, %183
  %190 = load volatile i32, ptr %91, align 4
  %191 = load volatile i32, ptr %92, align 4
  %192 = load volatile i32, ptr %93, align 4
  %193 = load volatile i32, ptr %91, align 4
  %194 = icmp eq i32 %190, %193
  br i1 %194, label %195, label %189

195:                                              ; preds = %189
  %196 = xor i32 %192, %191
  %197 = icmp ult i32 %196, 1073741824
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = and i32 %191, 1073741823
  %200 = zext i32 %199 to i64
  %201 = shl nuw nsw i64 %200, 30
  %202 = and i32 %192, 1073741823
  %203 = zext i32 %202 to i64
  %204 = or i64 %201, %203
  store i64 %204, ptr %94, align 8
  br label %205

205:                                              ; preds = %198, %195
  br label %206

206:                                              ; preds = %206, %205
  %207 = load volatile i32, ptr %95, align 4
  %208 = load volatile i32, ptr %96, align 4
  %209 = load volatile i32, ptr %97, align 4
  %210 = load volatile i32, ptr %95, align 4
  %211 = icmp eq i32 %207, %210
  br i1 %211, label %212, label %206

212:                                              ; preds = %206
  %213 = xor i32 %209, %208
  %214 = icmp ult i32 %213, 1073741824
  br i1 %214, label %215, label %227

215:                                              ; preds = %212
  %216 = and i32 %208, 1073741823
  %217 = zext i32 %216 to i64
  %218 = shl nuw nsw i64 %217, 30
  %219 = and i32 %209, 1073741823
  %220 = zext i32 %219 to i64
  %221 = or i64 %218, %220
  store i64 %221, ptr %98, align 8
  br i1 %197, label %222, label %227

222:                                              ; preds = %215
  %223 = load i64, ptr %94, align 8
  %224 = icmp eq i64 %223, %221
  br i1 %224, label %227, label %225

225:                                              ; preds = %222
  %226 = tail call fastcc i32 @rb_time_cmpxchg(ptr noundef %91, i64 noundef %223, i64 noundef %221) #20
  br label %227

227:                                              ; preds = %225, %222, %215, %212
  %228 = call fastcc ptr @rb_move_tail(ptr noundef %26, i32 noundef %187, ptr noundef nonnull %6) #20
  br label %388

229:                                              ; preds = %183
  %230 = icmp eq i32 %187, %119
  br i1 %230, label %231, label %293, !prof !9

231:                                              ; preds = %231, %229
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %95) #20, !srcloc !11
  %232 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %95, ptr %95, i32 1, ptr elementtype(i32) %95) #20, !srcloc !43
  %233 = extractvalue { i32, i32 } %232, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !44
  %234 = shl i32 %233, 30
  %235 = or i32 %234, %172
  store volatile i32 %235, ptr %96, align 4
  %236 = or i32 %234, %174
  store volatile i32 %236, ptr %97, align 4
  %237 = load volatile i32, ptr %95, align 4
  %238 = icmp eq i32 %233, %237
  br i1 %238, label %239, label %231

239:                                              ; preds = %231
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  br label %240

240:                                              ; preds = %240, %239
  %241 = load volatile i32, ptr %91, align 4
  %242 = load volatile i32, ptr %92, align 4
  %243 = load volatile i32, ptr %93, align 4
  %244 = load volatile i32, ptr %91, align 4
  %245 = icmp eq i32 %241, %244
  br i1 %245, label %246, label %240

246:                                              ; preds = %240
  %247 = xor i32 %243, %242
  %248 = icmp ult i32 %247, 1073741824
  br i1 %248, label %249, label %256

249:                                              ; preds = %246
  %250 = and i32 %242, 1073741823
  %251 = zext i32 %250 to i64
  %252 = shl nuw nsw i64 %251, 30
  %253 = and i32 %243, 1073741823
  %254 = zext i32 %253 to i64
  %255 = or i64 %252, %254
  br label %260

256:                                              ; preds = %246
  %257 = load ptr, ptr %77, align 4
  %258 = getelementptr inbounds %struct.trace_buffer, ptr %257, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %258) #20, !srcloc !11
  %259 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %258, ptr %258, i32 1, ptr elementtype(i32) %258) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3499, i32 noundef 9, ptr noundef null) #20
  br label %260

260:                                              ; preds = %256, %249
  %261 = phi i64 [ %255, %249 ], [ 0, %256 ]
  %262 = and i32 %168, 12
  %263 = icmp eq i32 %262, 0
  %264 = load i64, ptr %98, align 8
  %265 = select i1 %263, i64 %264, i64 0
  %266 = sub i64 %150, %265
  store i64 %266, ptr %88, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !46
  %267 = icmp eq i64 %150, %261
  br i1 %267, label %332, label %268, !prof !9

268:                                              ; preds = %268, %260
  %269 = load volatile i32, ptr %95, align 4
  %270 = load volatile i32, ptr %96, align 4
  %271 = load volatile i32, ptr %97, align 4
  %272 = load volatile i32, ptr %95, align 4
  %273 = icmp eq i32 %269, %272
  br i1 %273, label %274, label %268

274:                                              ; preds = %268
  %275 = xor i32 %271, %270
  %276 = icmp ult i32 %275, 1073741824
  br i1 %276, label %277, label %284

277:                                              ; preds = %274
  %278 = and i32 %270, 1073741823
  %279 = zext i32 %278 to i64
  %280 = shl nuw nsw i64 %279, 30
  %281 = and i32 %271, 1073741823
  %282 = zext i32 %281 to i64
  %283 = or i64 %280, %282
  store i64 %283, ptr %98, align 8
  br label %288

284:                                              ; preds = %274
  %285 = load ptr, ptr %77, align 4
  %286 = getelementptr inbounds %struct.trace_buffer, ptr %285, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %286) #20, !srcloc !11
  %287 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %286, ptr %286, i32 1, ptr elementtype(i32) %286) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3513, i32 noundef 9, ptr noundef null) #20
  br label %288

288:                                              ; preds = %284, %277
  %289 = phi i64 [ %283, %277 ], [ %264, %284 ]
  %290 = icmp ugt i64 %261, %289
  br i1 %290, label %291, label %332

291:                                              ; preds = %288
  %292 = tail call fastcc i32 @rb_time_cmpxchg(ptr noundef %95, i64 noundef %289, i64 noundef %261) #20
  br label %332

293:                                              ; preds = %293, %229
  %294 = load volatile i32, ptr %95, align 4
  %295 = load volatile i32, ptr %96, align 4
  %296 = load volatile i32, ptr %97, align 4
  %297 = load volatile i32, ptr %95, align 4
  %298 = icmp eq i32 %294, %297
  br i1 %298, label %299, label %293

299:                                              ; preds = %293
  %300 = xor i32 %296, %295
  %301 = icmp ult i32 %300, 1073741824
  br i1 %301, label %302, label %309

302:                                              ; preds = %299
  %303 = and i32 %295, 1073741823
  %304 = zext i32 %303 to i64
  %305 = shl nuw nsw i64 %304, 30
  %306 = and i32 %296, 1073741823
  %307 = zext i32 %306 to i64
  %308 = or i64 %305, %307
  store i64 %308, ptr %98, align 8
  br label %313

309:                                              ; preds = %299
  %310 = load ptr, ptr %77, align 4
  %311 = getelementptr inbounds %struct.trace_buffer, ptr %310, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %311) #20, !srcloc !11
  %312 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %311, ptr %311, i32 1, ptr elementtype(i32) %311) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3530, i32 noundef 9, ptr noundef null) #20
  br label %313

313:                                              ; preds = %309, %302
  %314 = load ptr, ptr %77, align 4
  %315 = getelementptr inbounds %struct.trace_buffer, ptr %314, i32 0, i32 8
  %316 = load ptr, ptr %315, align 4
  %317 = tail call i64 %316() #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !47
  %318 = load volatile i32, ptr %110, align 4
  %319 = and i32 %318, 1048575
  %320 = icmp eq i32 %186, %319
  br i1 %320, label %321, label %329

321:                                              ; preds = %313
  %322 = load i64, ptr %98, align 8
  %323 = icmp ugt i64 %317, %322
  br i1 %323, label %324, label %329

324:                                              ; preds = %321
  %325 = tail call fastcc i32 @rb_time_cmpxchg(ptr noundef %95, i64 noundef %322, i64 noundef %317) #20
  %326 = icmp eq i32 %325, 0
  %327 = sub i64 %317, %322
  %328 = select i1 %326, i64 0, i64 %327
  br label %329

329:                                              ; preds = %324, %321, %313
  %330 = phi i64 [ 0, %321 ], [ 0, %313 ], [ %328, %324 ]
  store i64 %330, ptr %88, align 8
  store i64 %317, ptr %6, align 8
  %331 = and i32 %168, -9
  store i32 %331, ptr %87, align 8
  br label %332

332:                                              ; preds = %329, %291, %288, %260
  %333 = phi i64 [ %317, %329 ], [ %150, %291 ], [ %150, %288 ], [ %150, %260 ]
  %334 = phi i64 [ %330, %329 ], [ %266, %291 ], [ %266, %288 ], [ %266, %260 ]
  %335 = phi i32 [ %331, %329 ], [ %168, %291 ], [ %168, %288 ], [ %168, %260 ]
  %336 = icmp eq i32 %186, %169
  %337 = and i32 %335, 12
  %338 = icmp eq i32 %337, 0
  %339 = and i1 %336, %338
  br i1 %339, label %340, label %341, !prof !48

340:                                              ; preds = %332
  store i64 0, ptr %88, align 8
  br label %341

341:                                              ; preds = %340, %332
  %342 = phi i64 [ 0, %340 ], [ %334, %332 ]
  %343 = getelementptr inbounds %struct.buffer_page, ptr %109, i32 0, i32 5
  %344 = load ptr, ptr %343, align 4
  %345 = getelementptr inbounds %struct.buffer_data_page, ptr %344, i32 0, i32 2
  %346 = getelementptr i8, ptr %345, i32 %187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store ptr %346, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 %169, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store i64 %342, ptr %5, align 8
  %347 = load volatile i32, ptr %63, align 4
  %348 = add i32 %347, -1
  %349 = icmp ugt i32 %348, 4
  %350 = load i1, ptr @rb_update_event.__already_done, align 1
  %351 = xor i1 %350, true
  %352 = select i1 %349, i1 %351, i1 false
  br i1 %352, label %353, label %354, !prof !8

353:                                              ; preds = %341
  store i1 true, ptr @rb_update_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2801, i32 noundef 9, ptr noundef null) #20
  br label %354

354:                                              ; preds = %353, %341
  br i1 %349, label %357, label %355

355:                                              ; preds = %354
  %356 = getelementptr %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 33, i32 %348
  store i64 %333, ptr %356, align 8
  br label %357

357:                                              ; preds = %355, %354
  %358 = icmp eq i32 %335, 0
  %359 = trunc i64 %342 to i32
  br i1 %358, label %365, label %360, !prof !9

360:                                              ; preds = %357
  call fastcc void @rb_add_timestamp(ptr noundef %26, ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #20
  %361 = load i64, ptr %5, align 8
  %362 = load ptr, ptr %3, align 4
  %363 = load i32, ptr %4, align 4
  %364 = trunc i64 %361 to i32
  br label %365

365:                                              ; preds = %360, %357
  %366 = phi i32 [ %363, %360 ], [ %169, %357 ]
  %367 = phi ptr [ %362, %360 ], [ %346, %357 ]
  %368 = phi i32 [ %364, %360 ], [ %359, %357 ]
  %369 = shl i32 %368, 5
  %370 = add i32 %366, -4
  %371 = icmp ugt i32 %370, 112
  br i1 %371, label %372, label %374

372:                                              ; preds = %365
  store i32 %369, ptr %367, align 4
  %373 = getelementptr inbounds %struct.ring_buffer_event, ptr %367, i32 0, i32 1
  store i32 %370, ptr %373, align 4
  br label %379

374:                                              ; preds = %365
  %375 = add nuw nsw i32 %366, 127
  %376 = lshr i32 %375, 2
  %377 = and i32 %376, 31
  %378 = or i32 %377, %369
  store i32 %378, ptr %367, align 4
  br label %379

379:                                              ; preds = %374, %372
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  %380 = getelementptr inbounds %struct.buffer_page, ptr %109, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %380) #20, !srcloc !11
  %381 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %380, ptr %380, i32 1, ptr elementtype(i32) %380) #20, !srcloc !12
  br i1 %336, label %382, label %385, !prof !8

382:                                              ; preds = %379
  %383 = load i64, ptr %6, align 8
  %384 = load ptr, ptr %343, align 4
  store i64 %383, ptr %384, align 8
  br label %385

385:                                              ; preds = %382, %379
  %386 = load i32, ptr %76, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %99) #20, !srcloc !11
  %387 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 %386, ptr elementtype(i32) %99) #20, !srcloc !12
  br label %388

388:                                              ; preds = %385, %227
  %389 = phi i32 [ %169, %227 ], [ %386, %385 ]
  %390 = phi ptr [ %228, %227 ], [ %346, %385 ]
  %391 = ptrtoint ptr %390 to i32
  switch i32 %391, label %518 [
    i32 -11, label %392
    i32 0, label %402
  ], !prof !49

392:                                              ; preds = %388
  %393 = load i32, ptr %87, align 8
  %394 = and i32 %393, 10
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %398, label %396

396:                                              ; preds = %392
  %397 = add i32 %389, -8
  store i32 %397, ptr %76, align 8
  br label %398

398:                                              ; preds = %396, %392
  %399 = phi i32 [ %397, %396 ], [ %389, %392 ]
  store i32 %86, ptr %87, align 8
  store i64 0, ptr %88, align 8
  %400 = add nuw nsw i32 %108, 1
  %401 = icmp eq i32 %400, 1001
  br i1 %401, label %102, label %106

402:                                              ; preds = %388, %102
  %403 = load volatile i32, ptr %63, align 4
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %408, label %405

405:                                              ; preds = %402
  %406 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 8
  %407 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %26, i32 0, i32 13
  br label %412

408:                                              ; preds = %402
  %409 = load ptr, ptr %77, align 4
  %410 = getelementptr inbounds %struct.trace_buffer, ptr %409, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %410) #20, !srcloc !11
  %411 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %410, ptr %410, i32 1, ptr elementtype(i32) %410) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3008, i32 noundef 9, ptr noundef null) #20
  br label %512

412:                                              ; preds = %510, %405
  %413 = load volatile i32, ptr %65, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !31
  %414 = load volatile i32, ptr %63, align 4
  %415 = icmp eq i32 %414, 1
  br i1 %415, label %416, label %503

416:                                              ; preds = %412
  %417 = load ptr, ptr %407, align 8
  br label %418

418:                                              ; preds = %497, %416
  %419 = phi ptr [ %498, %497 ], [ %417, %416 ]
  %420 = load i32, ptr %406, align 4
  %421 = load volatile ptr, ptr %89, align 4
  %422 = icmp eq ptr %419, %421
  br i1 %422, label %425, label %423

423:                                              ; preds = %418
  %424 = mul i32 %420, 100
  br label %435

425:                                              ; preds = %457, %418
  %426 = phi ptr [ %419, %418 ], [ %469, %457 ]
  %427 = getelementptr inbounds %struct.buffer_page, ptr %426, i32 0, i32 5
  %428 = load ptr, ptr %427, align 4
  %429 = getelementptr inbounds %struct.buffer_data_page, ptr %428, i32 0, i32 1
  %430 = load volatile i32, ptr %429, align 4
  %431 = getelementptr inbounds %struct.buffer_page, ptr %426, i32 0, i32 1
  %432 = load volatile i32, ptr %431, align 4
  %433 = and i32 %432, 1048575
  %434 = icmp eq i32 %430, %433
  br i1 %434, label %497, label %472

435:                                              ; preds = %457, %423
  %436 = phi ptr [ %470, %457 ], [ %421, %423 ]
  %437 = phi ptr [ %469, %457 ], [ %419, %423 ]
  %438 = phi i32 [ %439, %457 ], [ %424, %423 ]
  %439 = add i32 %438, -1
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %445

441:                                              ; preds = %435
  %442 = load ptr, ptr %77, align 4
  %443 = getelementptr inbounds %struct.trace_buffer, ptr %442, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %443) #20, !srcloc !11
  %444 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %443, ptr %443, i32 1, ptr elementtype(i32) %443) #20, !srcloc !12
  br label %501

445:                                              ; preds = %435
  %446 = getelementptr inbounds %struct.list_head, ptr %436, i32 0, i32 1
  %447 = load ptr, ptr %446, align 4
  %448 = load ptr, ptr %447, align 4
  %449 = ptrtoint ptr %448 to i32
  %450 = and i32 %449, -4
  %451 = inttoptr i32 %450 to ptr
  %452 = icmp eq ptr %436, %451
  br i1 %452, label %457, label %453

453:                                              ; preds = %445
  %454 = load ptr, ptr %77, align 4
  %455 = getelementptr inbounds %struct.trace_buffer, ptr %454, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %455) #20, !srcloc !11
  %456 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %455, ptr %455, i32 1, ptr elementtype(i32) %455) #20, !srcloc !12
  br label %501

457:                                              ; preds = %445
  %458 = getelementptr inbounds %struct.buffer_page, ptr %437, i32 0, i32 5
  %459 = load ptr, ptr %458, align 4
  %460 = getelementptr inbounds %struct.buffer_data_page, ptr %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.buffer_page, ptr %437, i32 0, i32 1
  %462 = load volatile i32, ptr %461, align 4
  %463 = and i32 %462, 1048575
  store volatile i32 %463, ptr %460, align 4
  %464 = load ptr, ptr %407, align 4
  %465 = load ptr, ptr %464, align 4
  %466 = ptrtoint ptr %465 to i32
  %467 = and i32 %466, -4
  %468 = inttoptr i32 %467 to ptr
  store ptr %468, ptr %407, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !32
  %469 = load ptr, ptr %407, align 8
  %470 = load volatile ptr, ptr %89, align 4
  %471 = icmp eq ptr %469, %470
  br i1 %471, label %425, label %435

472:                                              ; preds = %487, %425
  %473 = phi ptr [ %493, %487 ], [ %431, %425 ]
  %474 = phi ptr [ %491, %487 ], [ %429, %425 ]
  %475 = load volatile i32, ptr %473, align 4
  %476 = and i32 %475, 1048575
  store volatile i32 %476, ptr %474, align 4
  %477 = load ptr, ptr %407, align 8
  %478 = getelementptr inbounds %struct.buffer_page, ptr %477, i32 0, i32 5
  %479 = load ptr, ptr %478, align 4
  %480 = getelementptr inbounds %struct.buffer_data_page, ptr %479, i32 0, i32 1
  %481 = load volatile i32, ptr %480, align 4
  %482 = icmp ult i32 %481, 1048576
  br i1 %482, label %487, label %483

483:                                              ; preds = %472
  %484 = load ptr, ptr %77, align 4
  %485 = getelementptr inbounds %struct.trace_buffer, ptr %484, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %485) #20, !srcloc !11
  %486 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %485, ptr %485, i32 1, ptr elementtype(i32) %485) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2987, i32 noundef 9, ptr noundef null) #20
  br label %487

487:                                              ; preds = %483, %472
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !33
  %488 = load ptr, ptr %407, align 8
  %489 = getelementptr inbounds %struct.buffer_page, ptr %488, i32 0, i32 5
  %490 = load ptr, ptr %489, align 4
  %491 = getelementptr inbounds %struct.buffer_data_page, ptr %490, i32 0, i32 1
  %492 = load volatile i32, ptr %491, align 4
  %493 = getelementptr inbounds %struct.buffer_page, ptr %488, i32 0, i32 1
  %494 = load volatile i32, ptr %493, align 4
  %495 = and i32 %494, 1048575
  %496 = icmp eq i32 %492, %495
  br i1 %496, label %497, label %472

497:                                              ; preds = %487, %425
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !34
  %498 = load ptr, ptr %407, align 8
  %499 = load volatile ptr, ptr %89, align 4
  %500 = icmp eq ptr %498, %499
  br i1 %500, label %503, label %418, !prof !9

501:                                              ; preds = %453, %441
  %502 = phi i32 [ 2972, %453 ], [ 2969, %441 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef %502, i32 noundef 9, ptr noundef null) #20
  br label %503

503:                                              ; preds = %501, %497, %412
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #20, !srcloc !11
  %504 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #20, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !35
  %505 = load volatile i32, ptr %65, align 4
  %506 = icmp eq i32 %505, %413
  br i1 %506, label %512, label %507, !prof !9

507:                                              ; preds = %503
  %508 = load volatile i32, ptr %63, align 4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %512

510:                                              ; preds = %507
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #20, !srcloc !11
  %511 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #20, !srcloc !12
  br label %412

512:                                              ; preds = %507, %503, %408
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #20
  %513 = load i32, ptr %33, align 8
  %514 = load i32, ptr %48, align 8
  %515 = shl nsw i32 -1, %514
  %516 = add i32 %515, %513
  %517 = and i32 %516, %513
  store i32 %517, ptr %33, align 8
  br label %519

518:                                              ; preds = %388
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #20
  br label %520

519:                                              ; preds = %512, %54, %22, %10, %2
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !50
  br label %520

520:                                              ; preds = %519, %518
  %521 = phi ptr [ null, %519 ], [ %390, %518 ]
  ret ptr %521
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_discard_commit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 30
  %5 = icmp eq i32 %4, 30
  %6 = select i1 %5, i32 8, i32 0
  %7 = getelementptr i8, ptr %1, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 31
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = shl nuw nsw i32 %9, 2
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ring_buffer_event, ptr %7, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi i32 [ %12, %11 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.ring_buffer_event, ptr %7, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = and i32 %8, -32
  %20 = or i32 %19, 29
  %21 = icmp ult i32 %8, 32
  %22 = select i1 %21, i32 61, i32 %20
  store i32 %22, ptr %7, align 4
  %23 = tail call ptr @llvm.thread.pointer() #20
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr ptr, ptr %27, i32 %25
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 23
  %31 = load volatile i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #20, !srcloc !11
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3784, i32 noundef 9, ptr noundef null) #20
  br label %36

36:                                               ; preds = %33, %16
  %37 = ptrtoint ptr %1 to i32
  %38 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 13
  %39 = load ptr, ptr %38, align 8
  %40 = and i32 %37, -4096
  %41 = getelementptr inbounds %struct.buffer_page, ptr %39, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = inttoptr i32 %40 to ptr
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %48, !prof !9

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.buffer_page, ptr %39, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #20, !srcloc !11
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #20, !srcloc !22
  br label %72

48:                                               ; preds = %36
  %49 = load ptr, ptr %39, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = and i32 %50, -4
  %52 = inttoptr i32 %51 to ptr
  br label %53

53:                                               ; preds = %61, %48
  %54 = phi ptr [ %52, %48 ], [ %65, %61 ]
  %55 = getelementptr inbounds %struct.buffer_page, ptr %54, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %43
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.buffer_page, ptr %54, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #20, !srcloc !11
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #20, !srcloc !22
  br label %72

61:                                               ; preds = %53
  %62 = load ptr, ptr %54, align 4
  %63 = ptrtoint ptr %62 to i32
  %64 = and i32 %63, -4
  %65 = inttoptr i32 %64 to ptr
  %66 = icmp eq ptr %65, %52
  br i1 %66, label %67, label %53

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.trace_buffer, ptr %69, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #20, !srcloc !11
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 1, ptr elementtype(i32) %70) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3745, i32 noundef 9, ptr noundef null) #20
  br label %72

72:                                               ; preds = %67, %58, %45
  %73 = and i32 %37, 4095
  %74 = add nsw i32 %73, -12
  %75 = load i32, ptr %1, align 4
  %76 = and i32 %75, 30
  %77 = icmp eq i32 %76, 30
  %78 = select i1 %77, i32 8, i32 0
  %79 = getelementptr i8, ptr %1, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 31
  switch i32 %81, label %96 [
    i32 29, label %82
    i32 30, label %97
    i32 31, label %97
    i32 0, label %90
    i32 1, label %88
    i32 2, label %88
    i32 3, label %88
    i32 4, label %88
    i32 5, label %88
    i32 6, label %88
    i32 7, label %88
    i32 8, label %88
    i32 9, label %88
    i32 10, label %88
    i32 11, label %88
    i32 12, label %88
    i32 13, label %88
    i32 14, label %88
    i32 15, label %88
    i32 16, label %88
    i32 17, label %88
    i32 18, label %88
    i32 19, label %88
    i32 20, label %88
    i32 21, label %88
    i32 22, label %88
    i32 23, label %88
    i32 24, label %88
    i32 25, label %88
    i32 26, label %88
    i32 27, label %88
    i32 28, label %88
  ]

82:                                               ; preds = %72
  %83 = icmp eq i32 %80, 29
  br i1 %83, label %97, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.ring_buffer_event, ptr %79, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 4
  br label %97

88:                                               ; preds = %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72, %72
  %89 = shl nuw nsw i32 %81, 2
  br label %93

90:                                               ; preds = %72
  %91 = getelementptr inbounds %struct.ring_buffer_event, ptr %79, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  br label %93

93:                                               ; preds = %90, %88
  %94 = phi i32 [ %89, %88 ], [ %92, %90 ]
  %95 = add i32 %94, 4
  br label %97

96:                                               ; preds = %72
  unreachable

97:                                               ; preds = %93, %84, %82, %72, %72
  %98 = phi i32 [ %95, %93 ], [ %87, %84 ], [ -1, %82 ], [ 8, %72 ], [ 8, %72 ]
  %99 = add nsw i32 %78, %74
  %100 = add i32 %99, %98
  %101 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 12
  %102 = load volatile ptr, ptr %101, align 4
  %103 = and i32 %75, 31
  switch i32 %103, label %115 [
    i32 29, label %116
    i32 30, label %104
    i32 31, label %116
    i32 0, label %112
    i32 1, label %112
    i32 2, label %112
    i32 3, label %112
    i32 4, label %112
    i32 5, label %112
    i32 6, label %112
    i32 7, label %112
    i32 8, label %112
    i32 9, label %112
    i32 10, label %112
    i32 11, label %112
    i32 12, label %112
    i32 13, label %112
    i32 14, label %112
    i32 15, label %112
    i32 16, label %112
    i32 17, label %112
    i32 18, label %112
    i32 19, label %112
    i32 20, label %112
    i32 21, label %112
    i32 22, label %112
    i32 23, label %112
    i32 24, label %112
    i32 25, label %112
    i32 26, label %112
    i32 27, label %112
    i32 28, label %112
  ]

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.ring_buffer_event, ptr %1, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = zext i32 %106 to i64
  %108 = shl nuw nsw i64 %107, 27
  %109 = lshr i32 %75, 5
  %110 = zext i32 %109 to i64
  %111 = or i64 %108, %110
  br label %116

112:                                              ; preds = %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97, %97
  %113 = lshr i32 %75, 5
  %114 = zext i32 %113 to i64
  br label %116

115:                                              ; preds = %97
  unreachable

116:                                              ; preds = %112, %104, %97, %97
  %117 = phi i64 [ %114, %112 ], [ %111, %104 ], [ 0, %97 ], [ 0, %97 ]
  %118 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 31
  %119 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 31, i32 1
  %120 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 31, i32 2
  br label %121

121:                                              ; preds = %121, %116
  %122 = load volatile i32, ptr %118, align 4
  %123 = load volatile i32, ptr %119, align 4
  %124 = load volatile i32, ptr %120, align 4
  %125 = load volatile i32, ptr %118, align 4
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %127, label %121

127:                                              ; preds = %121
  %128 = xor i32 %124, %123
  %129 = icmp ult i32 %128, 1073741824
  br i1 %129, label %130, label %195

130:                                              ; preds = %127
  %131 = and i32 %123, 1073741823
  %132 = zext i32 %131 to i64
  %133 = shl nuw nsw i64 %132, 30
  %134 = and i32 %124, 1073741823
  %135 = zext i32 %134 to i64
  %136 = or i64 %133, %135
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !51
  %137 = getelementptr inbounds %struct.buffer_page, ptr %102, i32 0, i32 5
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, %43
  br i1 %139, label %140, label %195

140:                                              ; preds = %130
  %141 = getelementptr inbounds %struct.buffer_page, ptr %102, i32 0, i32 1
  %142 = load volatile i32, ptr %141, align 4
  %143 = and i32 %142, 1048575
  %144 = icmp eq i32 %143, %100
  br i1 %144, label %145, label %195

145:                                              ; preds = %140
  %146 = load volatile i32, ptr %141, align 4
  %147 = and i32 %146, -1048576
  %148 = load i32, ptr %1, align 4
  %149 = and i32 %148, 31
  switch i32 %149, label %164 [
    i32 29, label %150
    i32 30, label %165
    i32 31, label %165
    i32 0, label %158
    i32 1, label %156
    i32 2, label %156
    i32 3, label %156
    i32 4, label %156
    i32 5, label %156
    i32 6, label %156
    i32 7, label %156
    i32 8, label %156
    i32 9, label %156
    i32 10, label %156
    i32 11, label %156
    i32 12, label %156
    i32 13, label %156
    i32 14, label %156
    i32 15, label %156
    i32 16, label %156
    i32 17, label %156
    i32 18, label %156
    i32 19, label %156
    i32 20, label %156
    i32 21, label %156
    i32 22, label %156
    i32 23, label %156
    i32 24, label %156
    i32 25, label %156
    i32 26, label %156
    i32 27, label %156
    i32 28, label %156
  ]

150:                                              ; preds = %145
  %151 = icmp eq i32 %148, 29
  br i1 %151, label %165, label %152

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.ring_buffer_event, ptr %1, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, 4
  br label %165

156:                                              ; preds = %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145
  %157 = shl nuw nsw i32 %149, 2
  br label %161

158:                                              ; preds = %145
  %159 = getelementptr inbounds %struct.ring_buffer_event, ptr %1, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  br label %161

161:                                              ; preds = %158, %156
  %162 = phi i32 [ %157, %156 ], [ %160, %158 ]
  %163 = add i32 %162, 4
  br label %165

164:                                              ; preds = %145
  unreachable

165:                                              ; preds = %161, %152, %150, %145, %145
  %166 = phi i32 [ %163, %161 ], [ %155, %152 ], [ -1, %150 ], [ 8, %145 ], [ 8, %145 ]
  %167 = sub nsw i64 %136, %117
  %168 = tail call fastcc i32 @rb_time_cmpxchg(ptr noundef %118, i64 noundef %136, i64 noundef %167) #20
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %195, label %170

170:                                              ; preds = %165
  %171 = icmp eq i64 %117, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 32
  %174 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 32, i32 1
  %175 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 32, i32 2
  br label %176

176:                                              ; preds = %176, %172
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %173) #20, !srcloc !11
  %177 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %173, ptr %173, i32 1, ptr elementtype(i32) %173) #20, !srcloc !43
  %178 = extractvalue { i32, i32 } %177, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !44
  %179 = shl i32 %178, 30
  store volatile i32 %179, ptr %174, align 4
  store volatile i32 %179, ptr %175, align 4
  %180 = load volatile i32, ptr %173, align 4
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %176

182:                                              ; preds = %176, %170
  %183 = add i32 %147, %100
  %184 = add i32 %147, %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !52
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #20, !srcloc !11
  br label %185

185:                                              ; preds = %185, %182
  %186 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 %183, i32 %184, ptr elementtype(i32) %141) #20, !srcloc !53
  %187 = extractvalue { i32, i32 } %186, 0
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %185

189:                                              ; preds = %185
  %190 = extractvalue { i32, i32 } %186, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !54
  %191 = icmp eq i32 %190, %183
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %193) #20, !srcloc !11
  %194 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %193, ptr %193, i32 %166, ptr elementtype(i32) %193) #20, !srcloc !22
  br label %195

195:                                              ; preds = %192, %189, %165, %140, %130, %127
  %196 = load volatile i32, ptr %30, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 24
  %200 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 8
  %201 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 3
  br label %207

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 3
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.trace_buffer, ptr %204, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %205) #20, !srcloc !11
  %206 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %205, ptr %205, i32 1, ptr elementtype(i32) %205) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3008, i32 noundef 9, ptr noundef null) #20
  br label %307

207:                                              ; preds = %305, %198
  %208 = load volatile i32, ptr %199, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !31
  %209 = load volatile i32, ptr %30, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %298

211:                                              ; preds = %207
  %212 = load ptr, ptr %38, align 8
  br label %213

213:                                              ; preds = %292, %211
  %214 = phi ptr [ %293, %292 ], [ %212, %211 ]
  %215 = load i32, ptr %200, align 4
  %216 = load volatile ptr, ptr %101, align 4
  %217 = icmp eq ptr %214, %216
  br i1 %217, label %220, label %218

218:                                              ; preds = %213
  %219 = mul i32 %215, 100
  br label %230

220:                                              ; preds = %252, %213
  %221 = phi ptr [ %214, %213 ], [ %264, %252 ]
  %222 = getelementptr inbounds %struct.buffer_page, ptr %221, i32 0, i32 5
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.buffer_data_page, ptr %223, i32 0, i32 1
  %225 = load volatile i32, ptr %224, align 4
  %226 = getelementptr inbounds %struct.buffer_page, ptr %221, i32 0, i32 1
  %227 = load volatile i32, ptr %226, align 4
  %228 = and i32 %227, 1048575
  %229 = icmp eq i32 %225, %228
  br i1 %229, label %292, label %267

230:                                              ; preds = %252, %218
  %231 = phi ptr [ %265, %252 ], [ %216, %218 ]
  %232 = phi ptr [ %264, %252 ], [ %214, %218 ]
  %233 = phi i32 [ %234, %252 ], [ %219, %218 ]
  %234 = add i32 %233, -1
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %230
  %237 = load ptr, ptr %201, align 4
  %238 = getelementptr inbounds %struct.trace_buffer, ptr %237, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %238) #20, !srcloc !11
  %239 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %238, ptr %238, i32 1, ptr elementtype(i32) %238) #20, !srcloc !12
  br label %296

240:                                              ; preds = %230
  %241 = getelementptr inbounds %struct.list_head, ptr %231, i32 0, i32 1
  %242 = load ptr, ptr %241, align 4
  %243 = load ptr, ptr %242, align 4
  %244 = ptrtoint ptr %243 to i32
  %245 = and i32 %244, -4
  %246 = inttoptr i32 %245 to ptr
  %247 = icmp eq ptr %231, %246
  br i1 %247, label %252, label %248

248:                                              ; preds = %240
  %249 = load ptr, ptr %201, align 4
  %250 = getelementptr inbounds %struct.trace_buffer, ptr %249, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %250) #20, !srcloc !11
  %251 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %250, ptr %250, i32 1, ptr elementtype(i32) %250) #20, !srcloc !12
  br label %296

252:                                              ; preds = %240
  %253 = getelementptr inbounds %struct.buffer_page, ptr %232, i32 0, i32 5
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.buffer_data_page, ptr %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.buffer_page, ptr %232, i32 0, i32 1
  %257 = load volatile i32, ptr %256, align 4
  %258 = and i32 %257, 1048575
  store volatile i32 %258, ptr %255, align 4
  %259 = load ptr, ptr %38, align 4
  %260 = load ptr, ptr %259, align 4
  %261 = ptrtoint ptr %260 to i32
  %262 = and i32 %261, -4
  %263 = inttoptr i32 %262 to ptr
  store ptr %263, ptr %38, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !32
  %264 = load ptr, ptr %38, align 8
  %265 = load volatile ptr, ptr %101, align 4
  %266 = icmp eq ptr %264, %265
  br i1 %266, label %220, label %230

267:                                              ; preds = %282, %220
  %268 = phi ptr [ %288, %282 ], [ %226, %220 ]
  %269 = phi ptr [ %286, %282 ], [ %224, %220 ]
  %270 = load volatile i32, ptr %268, align 4
  %271 = and i32 %270, 1048575
  store volatile i32 %271, ptr %269, align 4
  %272 = load ptr, ptr %38, align 8
  %273 = getelementptr inbounds %struct.buffer_page, ptr %272, i32 0, i32 5
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr inbounds %struct.buffer_data_page, ptr %274, i32 0, i32 1
  %276 = load volatile i32, ptr %275, align 4
  %277 = icmp ult i32 %276, 1048576
  br i1 %277, label %282, label %278

278:                                              ; preds = %267
  %279 = load ptr, ptr %201, align 4
  %280 = getelementptr inbounds %struct.trace_buffer, ptr %279, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %280) #20, !srcloc !11
  %281 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %280, ptr %280, i32 1, ptr elementtype(i32) %280) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2987, i32 noundef 9, ptr noundef null) #20
  br label %282

282:                                              ; preds = %278, %267
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !33
  %283 = load ptr, ptr %38, align 8
  %284 = getelementptr inbounds %struct.buffer_page, ptr %283, i32 0, i32 5
  %285 = load ptr, ptr %284, align 4
  %286 = getelementptr inbounds %struct.buffer_data_page, ptr %285, i32 0, i32 1
  %287 = load volatile i32, ptr %286, align 4
  %288 = getelementptr inbounds %struct.buffer_page, ptr %283, i32 0, i32 1
  %289 = load volatile i32, ptr %288, align 4
  %290 = and i32 %289, 1048575
  %291 = icmp eq i32 %287, %290
  br i1 %291, label %292, label %267

292:                                              ; preds = %282, %220
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !34
  %293 = load ptr, ptr %38, align 8
  %294 = load volatile ptr, ptr %101, align 4
  %295 = icmp eq ptr %293, %294
  br i1 %295, label %298, label %213, !prof !9

296:                                              ; preds = %248, %236
  %297 = phi i32 [ 2972, %248 ], [ 2969, %236 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef %297, i32 noundef 9, ptr noundef null) #20
  br label %298

298:                                              ; preds = %296, %292, %207
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #20, !srcloc !11
  %299 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #20, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !35
  %300 = load volatile i32, ptr %199, align 4
  %301 = icmp eq i32 %300, %208
  br i1 %301, label %307, label %302, !prof !9

302:                                              ; preds = %298
  %303 = load volatile i32, ptr %30, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #20, !srcloc !11
  %306 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #20, !srcloc !12
  br label %207

307:                                              ; preds = %302, %298, %202
  %308 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 9
  %309 = load i32, ptr %308, align 8
  %310 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %29, i32 0, i32 17
  %311 = load i32, ptr %310, align 8
  %312 = shl nsw i32 -1, %311
  %313 = add i32 %312, %309
  %314 = and i32 %313, %309
  store i32 %314, ptr %308, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ring_buffer_write(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rb_event_info, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !56
  %8 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 2
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %607

11:                                               ; preds = %3
  %12 = tail call ptr @llvm.thread.pointer() #20
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %16 = lshr i32 %14, 5
  %17 = getelementptr i32, ptr %15, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %14, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %607, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr ptr, ptr %25, i32 %14
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = icmp ugt i32 %1, 4076
  %32 = or i1 %31, %30
  br i1 %32, label %607, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 9
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 15728640
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %37, 16711680
  %41 = icmp eq i32 %40, 0
  %42 = sext i1 %39 to i32
  %43 = and i32 %37, 16711936
  %44 = icmp ne i32 %43, 0
  %45 = sext i1 %44 to i32
  %46 = select i1 %41, i32 4, i32 3
  %47 = add nsw i32 %46, %42
  %48 = add nsw i32 %47, %45
  %49 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 17
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %48, %50
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %35
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55, !prof !9

55:                                               ; preds = %33
  %56 = shl nuw i32 1, %50
  %57 = and i32 %56, %35
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %607

59:                                               ; preds = %55, %33
  %60 = phi i32 [ %48, %33 ], [ 0, %55 ]
  %61 = add i32 %60, %50
  %62 = shl nuw i32 1, %61
  %63 = or i32 %62, %35
  store i32 %63, ptr %34, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i32 48, i1 false) #20, !annotation !38
  %64 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #20, !srcloc !11
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #20, !srcloc !12
  %66 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #20, !srcloc !11
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #20, !srcloc !12
  %68 = icmp eq i32 %1, 0
  %69 = select i1 %68, i32 1, i32 %1
  %70 = icmp ugt i32 %69, 112
  %71 = add nuw nsw i32 %69, 4
  %72 = select i1 %70, i32 %71, i32 %69
  %73 = add nuw nsw i32 %72, 7
  %74 = and i32 %73, -4
  %75 = icmp eq i32 %74, 12
  %76 = select i1 %75, i32 16, i32 %74
  %77 = getelementptr inbounds %struct.rb_event_info, ptr %7, i32 0, i32 4
  store i32 %76, ptr %77, align 8
  %78 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.trace_buffer, ptr %79, i32 0, i32 10
  %81 = load i8, ptr %80, align 4, !range !21
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %59
  %84 = add nuw nsw i32 %76, 8
  store i32 %84, ptr %77, align 8
  br label %85

85:                                               ; preds = %83, %59
  %86 = phi i32 [ %84, %83 ], [ %76, %59 ]
  %87 = phi i32 [ 4, %83 ], [ 0, %59 ]
  %88 = getelementptr inbounds %struct.rb_event_info, ptr %7, i32 0, i32 6
  %89 = getelementptr inbounds %struct.rb_event_info, ptr %7, i32 0, i32 1
  store i32 %87, ptr %88, align 8
  store i64 0, ptr %89, align 8
  %90 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 12
  %91 = getelementptr inbounds %struct.rb_event_info, ptr %7, i32 0, i32 5
  %92 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 32
  %93 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 32, i32 1
  %94 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 32, i32 2
  %95 = getelementptr inbounds %struct.rb_event_info, ptr %7, i32 0, i32 2
  %96 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 31
  %97 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 31, i32 1
  %98 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 31, i32 2
  %99 = getelementptr inbounds %struct.rb_event_info, ptr %7, i32 0, i32 3
  %100 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 18
  %101 = or i32 %87, 2
  %102 = or i32 %87, 10
  br label %107

103:                                              ; preds = %399
  %104 = load ptr, ptr %78, align 4
  %105 = getelementptr inbounds %struct.trace_buffer, ptr %104, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #20, !srcloc !11
  %106 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 1, ptr elementtype(i32) %105) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3632, i32 noundef 9, ptr noundef null) #20
  br label %403

107:                                              ; preds = %399, %85
  %108 = phi i32 [ %86, %85 ], [ %400, %399 ]
  %109 = phi i32 [ 1, %85 ], [ %401, %399 ]
  %110 = load volatile ptr, ptr %90, align 4
  store ptr %110, ptr %91, align 4
  %111 = getelementptr inbounds %struct.buffer_page, ptr %110, i32 0, i32 1
  %112 = load volatile i32, ptr %111, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !39
  br label %113

113:                                              ; preds = %113, %107
  %114 = load volatile i32, ptr %92, align 4
  %115 = load volatile i32, ptr %93, align 4
  %116 = load volatile i32, ptr %94, align 4
  %117 = load volatile i32, ptr %92, align 4
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %113

119:                                              ; preds = %113
  %120 = and i32 %112, 1048575
  %121 = xor i32 %116, %115
  %122 = icmp ult i32 %121, 1073741824
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = and i32 %115, 1073741823
  %125 = zext i32 %124 to i64
  %126 = shl nuw nsw i64 %125, 30
  %127 = and i32 %116, 1073741823
  %128 = zext i32 %127 to i64
  %129 = or i64 %126, %128
  store i64 %129, ptr %95, align 8
  br label %130

130:                                              ; preds = %123, %119
  br label %131

131:                                              ; preds = %131, %130
  %132 = load volatile i32, ptr %96, align 4
  %133 = load volatile i32, ptr %97, align 4
  %134 = load volatile i32, ptr %98, align 4
  %135 = load volatile i32, ptr %96, align 4
  %136 = icmp eq i32 %132, %135
  br i1 %136, label %137, label %131

137:                                              ; preds = %131
  %138 = xor i32 %134, %133
  %139 = icmp ult i32 %138, 1073741824
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = and i32 %133, 1073741823
  %142 = zext i32 %141 to i64
  %143 = shl nuw nsw i64 %142, 30
  %144 = and i32 %134, 1073741823
  %145 = zext i32 %144 to i64
  %146 = or i64 %143, %145
  store i64 %146, ptr %99, align 8
  br label %147

147:                                              ; preds = %140, %137
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !40
  %148 = load ptr, ptr %78, align 4
  %149 = getelementptr inbounds %struct.trace_buffer, ptr %148, i32 0, i32 8
  %150 = load ptr, ptr %149, align 4
  %151 = tail call i64 %150() #20
  store i64 %151, ptr %7, align 8
  br i1 %82, label %153, label %152

152:                                              ; preds = %147
  store i64 %151, ptr %89, align 8
  br label %168

153:                                              ; preds = %147
  %154 = select i1 %139, i1 %122, i1 false
  br i1 %154, label %155, label %161, !prof !41

155:                                              ; preds = %153
  %156 = load i64, ptr %95, align 8
  %157 = load i64, ptr %99, align 8
  %158 = icmp ne i64 %156, %157
  %159 = icmp ne i32 %120, 0
  %160 = select i1 %158, i1 %159, i1 false
  br i1 %160, label %161, label %163, !prof !8

161:                                              ; preds = %155, %153
  store i32 %102, ptr %88, align 8
  %162 = add i32 %108, 8
  store i32 %162, ptr %77, align 8
  br label %168

163:                                              ; preds = %155
  %164 = sub i64 %151, %157
  store i64 %164, ptr %89, align 8
  %165 = icmp ult i64 %164, 134217728
  br i1 %165, label %168, label %166, !prof !9

166:                                              ; preds = %163
  store i32 %101, ptr %88, align 8
  %167 = add i32 %108, 8
  store i32 %167, ptr %77, align 8
  br label %168

168:                                              ; preds = %166, %163, %161, %152
  %169 = phi i32 [ %101, %166 ], [ %87, %163 ], [ %102, %161 ], [ %87, %152 ]
  %170 = phi i32 [ %167, %166 ], [ %108, %163 ], [ %162, %161 ], [ %108, %152 ]
  %171 = lshr i64 %151, 30
  %172 = trunc i64 %171 to i32
  %173 = and i32 %172, 1073741823
  %174 = trunc i64 %151 to i32
  %175 = and i32 %174, 1073741823
  br label %176

176:                                              ; preds = %176, %168
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #20, !srcloc !11
  %177 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 1, ptr elementtype(i32) %92) #20, !srcloc !43
  %178 = extractvalue { i32, i32 } %177, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !44
  %179 = shl i32 %178, 30
  %180 = or i32 %179, %173
  store volatile i32 %180, ptr %93, align 4
  %181 = or i32 %179, %175
  store volatile i32 %181, ptr %94, align 4
  %182 = load volatile i32, ptr %92, align 4
  %183 = icmp eq i32 %178, %182
  br i1 %183, label %184, label %176

184:                                              ; preds = %176
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #20, !srcloc !11
  %185 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 %170, ptr elementtype(i32) %111) #20, !srcloc !43
  %186 = extractvalue { i32, i32 } %185, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !44
  %187 = and i32 %186, 1048575
  %188 = sub i32 %187, %170
  %189 = icmp ugt i32 %187, 4084
  br i1 %189, label %190, label %230, !prof !8

190:                                              ; preds = %190, %184
  %191 = load volatile i32, ptr %92, align 4
  %192 = load volatile i32, ptr %93, align 4
  %193 = load volatile i32, ptr %94, align 4
  %194 = load volatile i32, ptr %92, align 4
  %195 = icmp eq i32 %191, %194
  br i1 %195, label %196, label %190

196:                                              ; preds = %190
  %197 = xor i32 %193, %192
  %198 = icmp ult i32 %197, 1073741824
  br i1 %198, label %199, label %206

199:                                              ; preds = %196
  %200 = and i32 %192, 1073741823
  %201 = zext i32 %200 to i64
  %202 = shl nuw nsw i64 %201, 30
  %203 = and i32 %193, 1073741823
  %204 = zext i32 %203 to i64
  %205 = or i64 %202, %204
  store i64 %205, ptr %95, align 8
  br label %206

206:                                              ; preds = %199, %196
  br label %207

207:                                              ; preds = %207, %206
  %208 = load volatile i32, ptr %96, align 4
  %209 = load volatile i32, ptr %97, align 4
  %210 = load volatile i32, ptr %98, align 4
  %211 = load volatile i32, ptr %96, align 4
  %212 = icmp eq i32 %208, %211
  br i1 %212, label %213, label %207

213:                                              ; preds = %207
  %214 = xor i32 %210, %209
  %215 = icmp ult i32 %214, 1073741824
  br i1 %215, label %216, label %228

216:                                              ; preds = %213
  %217 = and i32 %209, 1073741823
  %218 = zext i32 %217 to i64
  %219 = shl nuw nsw i64 %218, 30
  %220 = and i32 %210, 1073741823
  %221 = zext i32 %220 to i64
  %222 = or i64 %219, %221
  store i64 %222, ptr %99, align 8
  br i1 %198, label %223, label %228

223:                                              ; preds = %216
  %224 = load i64, ptr %95, align 8
  %225 = icmp eq i64 %224, %222
  br i1 %225, label %228, label %226

226:                                              ; preds = %223
  %227 = tail call fastcc i32 @rb_time_cmpxchg(ptr noundef %92, i64 noundef %224, i64 noundef %222) #20
  br label %228

228:                                              ; preds = %226, %223, %216, %213
  %229 = call fastcc ptr @rb_move_tail(ptr noundef %27, i32 noundef %188, ptr noundef nonnull %7) #20
  br label %389

230:                                              ; preds = %184
  %231 = icmp eq i32 %188, %120
  br i1 %231, label %232, label %294, !prof !9

232:                                              ; preds = %232, %230
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %96) #20, !srcloc !11
  %233 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %96, ptr %96, i32 1, ptr elementtype(i32) %96) #20, !srcloc !43
  %234 = extractvalue { i32, i32 } %233, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !44
  %235 = shl i32 %234, 30
  %236 = or i32 %235, %173
  store volatile i32 %236, ptr %97, align 4
  %237 = or i32 %235, %175
  store volatile i32 %237, ptr %98, align 4
  %238 = load volatile i32, ptr %96, align 4
  %239 = icmp eq i32 %234, %238
  br i1 %239, label %240, label %232

240:                                              ; preds = %232
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !45
  br label %241

241:                                              ; preds = %241, %240
  %242 = load volatile i32, ptr %92, align 4
  %243 = load volatile i32, ptr %93, align 4
  %244 = load volatile i32, ptr %94, align 4
  %245 = load volatile i32, ptr %92, align 4
  %246 = icmp eq i32 %242, %245
  br i1 %246, label %247, label %241

247:                                              ; preds = %241
  %248 = xor i32 %244, %243
  %249 = icmp ult i32 %248, 1073741824
  br i1 %249, label %250, label %257

250:                                              ; preds = %247
  %251 = and i32 %243, 1073741823
  %252 = zext i32 %251 to i64
  %253 = shl nuw nsw i64 %252, 30
  %254 = and i32 %244, 1073741823
  %255 = zext i32 %254 to i64
  %256 = or i64 %253, %255
  br label %261

257:                                              ; preds = %247
  %258 = load ptr, ptr %78, align 4
  %259 = getelementptr inbounds %struct.trace_buffer, ptr %258, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %259) #20, !srcloc !11
  %260 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %259, ptr %259, i32 1, ptr elementtype(i32) %259) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3499, i32 noundef 9, ptr noundef null) #20
  br label %261

261:                                              ; preds = %257, %250
  %262 = phi i64 [ %256, %250 ], [ 0, %257 ]
  %263 = and i32 %169, 12
  %264 = icmp eq i32 %263, 0
  %265 = load i64, ptr %99, align 8
  %266 = select i1 %264, i64 %265, i64 0
  %267 = sub i64 %151, %266
  store i64 %267, ptr %89, align 8
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !46
  %268 = icmp eq i64 %151, %262
  br i1 %268, label %333, label %269, !prof !9

269:                                              ; preds = %269, %261
  %270 = load volatile i32, ptr %96, align 4
  %271 = load volatile i32, ptr %97, align 4
  %272 = load volatile i32, ptr %98, align 4
  %273 = load volatile i32, ptr %96, align 4
  %274 = icmp eq i32 %270, %273
  br i1 %274, label %275, label %269

275:                                              ; preds = %269
  %276 = xor i32 %272, %271
  %277 = icmp ult i32 %276, 1073741824
  br i1 %277, label %278, label %285

278:                                              ; preds = %275
  %279 = and i32 %271, 1073741823
  %280 = zext i32 %279 to i64
  %281 = shl nuw nsw i64 %280, 30
  %282 = and i32 %272, 1073741823
  %283 = zext i32 %282 to i64
  %284 = or i64 %281, %283
  store i64 %284, ptr %99, align 8
  br label %289

285:                                              ; preds = %275
  %286 = load ptr, ptr %78, align 4
  %287 = getelementptr inbounds %struct.trace_buffer, ptr %286, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %287) #20, !srcloc !11
  %288 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %287, ptr %287, i32 1, ptr elementtype(i32) %287) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3513, i32 noundef 9, ptr noundef null) #20
  br label %289

289:                                              ; preds = %285, %278
  %290 = phi i64 [ %284, %278 ], [ %265, %285 ]
  %291 = icmp ugt i64 %262, %290
  br i1 %291, label %292, label %333

292:                                              ; preds = %289
  %293 = tail call fastcc i32 @rb_time_cmpxchg(ptr noundef %96, i64 noundef %290, i64 noundef %262) #20
  br label %333

294:                                              ; preds = %294, %230
  %295 = load volatile i32, ptr %96, align 4
  %296 = load volatile i32, ptr %97, align 4
  %297 = load volatile i32, ptr %98, align 4
  %298 = load volatile i32, ptr %96, align 4
  %299 = icmp eq i32 %295, %298
  br i1 %299, label %300, label %294

300:                                              ; preds = %294
  %301 = xor i32 %297, %296
  %302 = icmp ult i32 %301, 1073741824
  br i1 %302, label %303, label %310

303:                                              ; preds = %300
  %304 = and i32 %296, 1073741823
  %305 = zext i32 %304 to i64
  %306 = shl nuw nsw i64 %305, 30
  %307 = and i32 %297, 1073741823
  %308 = zext i32 %307 to i64
  %309 = or i64 %306, %308
  store i64 %309, ptr %99, align 8
  br label %314

310:                                              ; preds = %300
  %311 = load ptr, ptr %78, align 4
  %312 = getelementptr inbounds %struct.trace_buffer, ptr %311, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %312) #20, !srcloc !11
  %313 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %312, ptr %312, i32 1, ptr elementtype(i32) %312) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3530, i32 noundef 9, ptr noundef null) #20
  br label %314

314:                                              ; preds = %310, %303
  %315 = load ptr, ptr %78, align 4
  %316 = getelementptr inbounds %struct.trace_buffer, ptr %315, i32 0, i32 8
  %317 = load ptr, ptr %316, align 4
  %318 = tail call i64 %317() #20
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !47
  %319 = load volatile i32, ptr %111, align 4
  %320 = and i32 %319, 1048575
  %321 = icmp eq i32 %187, %320
  br i1 %321, label %322, label %330

322:                                              ; preds = %314
  %323 = load i64, ptr %99, align 8
  %324 = icmp ugt i64 %318, %323
  br i1 %324, label %325, label %330

325:                                              ; preds = %322
  %326 = tail call fastcc i32 @rb_time_cmpxchg(ptr noundef %96, i64 noundef %323, i64 noundef %318) #20
  %327 = icmp eq i32 %326, 0
  %328 = sub i64 %318, %323
  %329 = select i1 %327, i64 0, i64 %328
  br label %330

330:                                              ; preds = %325, %322, %314
  %331 = phi i64 [ 0, %322 ], [ 0, %314 ], [ %329, %325 ]
  store i64 %331, ptr %89, align 8
  store i64 %318, ptr %7, align 8
  %332 = and i32 %169, -9
  store i32 %332, ptr %88, align 8
  br label %333

333:                                              ; preds = %330, %292, %289, %261
  %334 = phi i64 [ %318, %330 ], [ %151, %292 ], [ %151, %289 ], [ %151, %261 ]
  %335 = phi i64 [ %331, %330 ], [ %267, %292 ], [ %267, %289 ], [ %267, %261 ]
  %336 = phi i32 [ %332, %330 ], [ %169, %292 ], [ %169, %289 ], [ %169, %261 ]
  %337 = icmp eq i32 %187, %170
  %338 = and i32 %336, 12
  %339 = icmp eq i32 %338, 0
  %340 = and i1 %337, %339
  br i1 %340, label %341, label %342, !prof !48

341:                                              ; preds = %333
  store i64 0, ptr %89, align 8
  br label %342

342:                                              ; preds = %341, %333
  %343 = phi i64 [ 0, %341 ], [ %335, %333 ]
  %344 = getelementptr inbounds %struct.buffer_page, ptr %110, i32 0, i32 5
  %345 = load ptr, ptr %344, align 4
  %346 = getelementptr inbounds %struct.buffer_data_page, ptr %345, i32 0, i32 2
  %347 = getelementptr i8, ptr %346, i32 %188
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store ptr %347, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 %170, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  store i64 %343, ptr %6, align 8
  %348 = load volatile i32, ptr %64, align 4
  %349 = add i32 %348, -1
  %350 = icmp ugt i32 %349, 4
  %351 = load i1, ptr @rb_update_event.__already_done, align 1
  %352 = xor i1 %351, true
  %353 = select i1 %350, i1 %352, i1 false
  br i1 %353, label %354, label %355, !prof !8

354:                                              ; preds = %342
  store i1 true, ptr @rb_update_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2801, i32 noundef 9, ptr noundef null) #20
  br label %355

355:                                              ; preds = %354, %342
  br i1 %350, label %358, label %356

356:                                              ; preds = %355
  %357 = getelementptr %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 33, i32 %349
  store i64 %334, ptr %357, align 8
  br label %358

358:                                              ; preds = %356, %355
  %359 = icmp eq i32 %336, 0
  %360 = trunc i64 %343 to i32
  br i1 %359, label %366, label %361, !prof !9

361:                                              ; preds = %358
  call fastcc void @rb_add_timestamp(ptr noundef %27, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #20
  %362 = load i64, ptr %6, align 8
  %363 = load ptr, ptr %4, align 4
  %364 = load i32, ptr %5, align 4
  %365 = trunc i64 %362 to i32
  br label %366

366:                                              ; preds = %361, %358
  %367 = phi i32 [ %364, %361 ], [ %170, %358 ]
  %368 = phi ptr [ %363, %361 ], [ %347, %358 ]
  %369 = phi i32 [ %365, %361 ], [ %360, %358 ]
  %370 = shl i32 %369, 5
  %371 = add i32 %367, -4
  %372 = icmp ugt i32 %371, 112
  br i1 %372, label %373, label %375

373:                                              ; preds = %366
  store i32 %370, ptr %368, align 4
  %374 = getelementptr inbounds %struct.ring_buffer_event, ptr %368, i32 0, i32 1
  store i32 %371, ptr %374, align 4
  br label %380

375:                                              ; preds = %366
  %376 = add nuw nsw i32 %367, 127
  %377 = lshr i32 %376, 2
  %378 = and i32 %377, 31
  %379 = or i32 %378, %370
  store i32 %379, ptr %368, align 4
  br label %380

380:                                              ; preds = %375, %373
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  %381 = getelementptr inbounds %struct.buffer_page, ptr %110, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %381) #20, !srcloc !11
  %382 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %381, ptr %381, i32 1, ptr elementtype(i32) %381) #20, !srcloc !12
  br i1 %337, label %383, label %386, !prof !8

383:                                              ; preds = %380
  %384 = load i64, ptr %7, align 8
  %385 = load ptr, ptr %344, align 4
  store i64 %384, ptr %385, align 8
  br label %386

386:                                              ; preds = %383, %380
  %387 = load i32, ptr %77, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %100) #20, !srcloc !11
  %388 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %100, ptr %100, i32 %387, ptr elementtype(i32) %100) #20, !srcloc !12
  br label %389

389:                                              ; preds = %386, %228
  %390 = phi i32 [ %170, %228 ], [ %387, %386 ]
  %391 = phi ptr [ %229, %228 ], [ %347, %386 ]
  %392 = ptrtoint ptr %391 to i32
  switch i32 %392, label %514 [
    i32 -11, label %393
    i32 0, label %403
  ], !prof !49

393:                                              ; preds = %389
  %394 = load i32, ptr %88, align 8
  %395 = and i32 %394, 10
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %399, label %397

397:                                              ; preds = %393
  %398 = add i32 %390, -8
  store i32 %398, ptr %77, align 8
  br label %399

399:                                              ; preds = %397, %393
  %400 = phi i32 [ %398, %397 ], [ %390, %393 ]
  store i32 %87, ptr %88, align 8
  store i64 0, ptr %89, align 8
  %401 = add nuw nsw i32 %109, 1
  %402 = icmp eq i32 %401, 1001
  br i1 %402, label %103, label %107

403:                                              ; preds = %389, %103
  %404 = load volatile i32, ptr %64, align 4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %409, label %406

406:                                              ; preds = %403
  %407 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 8
  %408 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 13
  br label %413

409:                                              ; preds = %403
  %410 = load ptr, ptr %78, align 4
  %411 = getelementptr inbounds %struct.trace_buffer, ptr %410, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %411) #20, !srcloc !11
  %412 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %411, ptr %411, i32 1, ptr elementtype(i32) %411) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3008, i32 noundef 9, ptr noundef null) #20
  br label %513

413:                                              ; preds = %511, %406
  %414 = load volatile i32, ptr %66, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !31
  %415 = load volatile i32, ptr %64, align 4
  %416 = icmp eq i32 %415, 1
  br i1 %416, label %417, label %504

417:                                              ; preds = %413
  %418 = load ptr, ptr %408, align 8
  br label %419

419:                                              ; preds = %498, %417
  %420 = phi ptr [ %499, %498 ], [ %418, %417 ]
  %421 = load i32, ptr %407, align 4
  %422 = load volatile ptr, ptr %90, align 4
  %423 = icmp eq ptr %420, %422
  br i1 %423, label %426, label %424

424:                                              ; preds = %419
  %425 = mul i32 %421, 100
  br label %436

426:                                              ; preds = %458, %419
  %427 = phi ptr [ %420, %419 ], [ %470, %458 ]
  %428 = getelementptr inbounds %struct.buffer_page, ptr %427, i32 0, i32 5
  %429 = load ptr, ptr %428, align 4
  %430 = getelementptr inbounds %struct.buffer_data_page, ptr %429, i32 0, i32 1
  %431 = load volatile i32, ptr %430, align 4
  %432 = getelementptr inbounds %struct.buffer_page, ptr %427, i32 0, i32 1
  %433 = load volatile i32, ptr %432, align 4
  %434 = and i32 %433, 1048575
  %435 = icmp eq i32 %431, %434
  br i1 %435, label %498, label %473

436:                                              ; preds = %458, %424
  %437 = phi ptr [ %471, %458 ], [ %422, %424 ]
  %438 = phi ptr [ %470, %458 ], [ %420, %424 ]
  %439 = phi i32 [ %440, %458 ], [ %425, %424 ]
  %440 = add i32 %439, -1
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %436
  %443 = load ptr, ptr %78, align 4
  %444 = getelementptr inbounds %struct.trace_buffer, ptr %443, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %444) #20, !srcloc !11
  %445 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %444, ptr %444, i32 1, ptr elementtype(i32) %444) #20, !srcloc !12
  br label %502

446:                                              ; preds = %436
  %447 = getelementptr inbounds %struct.list_head, ptr %437, i32 0, i32 1
  %448 = load ptr, ptr %447, align 4
  %449 = load ptr, ptr %448, align 4
  %450 = ptrtoint ptr %449 to i32
  %451 = and i32 %450, -4
  %452 = inttoptr i32 %451 to ptr
  %453 = icmp eq ptr %437, %452
  br i1 %453, label %458, label %454

454:                                              ; preds = %446
  %455 = load ptr, ptr %78, align 4
  %456 = getelementptr inbounds %struct.trace_buffer, ptr %455, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %456) #20, !srcloc !11
  %457 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %456, ptr %456, i32 1, ptr elementtype(i32) %456) #20, !srcloc !12
  br label %502

458:                                              ; preds = %446
  %459 = getelementptr inbounds %struct.buffer_page, ptr %438, i32 0, i32 5
  %460 = load ptr, ptr %459, align 4
  %461 = getelementptr inbounds %struct.buffer_data_page, ptr %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.buffer_page, ptr %438, i32 0, i32 1
  %463 = load volatile i32, ptr %462, align 4
  %464 = and i32 %463, 1048575
  store volatile i32 %464, ptr %461, align 4
  %465 = load ptr, ptr %408, align 4
  %466 = load ptr, ptr %465, align 4
  %467 = ptrtoint ptr %466 to i32
  %468 = and i32 %467, -4
  %469 = inttoptr i32 %468 to ptr
  store ptr %469, ptr %408, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !32
  %470 = load ptr, ptr %408, align 8
  %471 = load volatile ptr, ptr %90, align 4
  %472 = icmp eq ptr %470, %471
  br i1 %472, label %426, label %436

473:                                              ; preds = %488, %426
  %474 = phi ptr [ %494, %488 ], [ %432, %426 ]
  %475 = phi ptr [ %492, %488 ], [ %430, %426 ]
  %476 = load volatile i32, ptr %474, align 4
  %477 = and i32 %476, 1048575
  store volatile i32 %477, ptr %475, align 4
  %478 = load ptr, ptr %408, align 8
  %479 = getelementptr inbounds %struct.buffer_page, ptr %478, i32 0, i32 5
  %480 = load ptr, ptr %479, align 4
  %481 = getelementptr inbounds %struct.buffer_data_page, ptr %480, i32 0, i32 1
  %482 = load volatile i32, ptr %481, align 4
  %483 = icmp ult i32 %482, 1048576
  br i1 %483, label %488, label %484

484:                                              ; preds = %473
  %485 = load ptr, ptr %78, align 4
  %486 = getelementptr inbounds %struct.trace_buffer, ptr %485, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %486) #20, !srcloc !11
  %487 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %486, ptr %486, i32 1, ptr elementtype(i32) %486) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2987, i32 noundef 9, ptr noundef null) #20
  br label %488

488:                                              ; preds = %484, %473
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !33
  %489 = load ptr, ptr %408, align 8
  %490 = getelementptr inbounds %struct.buffer_page, ptr %489, i32 0, i32 5
  %491 = load ptr, ptr %490, align 4
  %492 = getelementptr inbounds %struct.buffer_data_page, ptr %491, i32 0, i32 1
  %493 = load volatile i32, ptr %492, align 4
  %494 = getelementptr inbounds %struct.buffer_page, ptr %489, i32 0, i32 1
  %495 = load volatile i32, ptr %494, align 4
  %496 = and i32 %495, 1048575
  %497 = icmp eq i32 %493, %496
  br i1 %497, label %498, label %473

498:                                              ; preds = %488, %426
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !34
  %499 = load ptr, ptr %408, align 8
  %500 = load volatile ptr, ptr %90, align 4
  %501 = icmp eq ptr %499, %500
  br i1 %501, label %504, label %419, !prof !9

502:                                              ; preds = %454, %442
  %503 = phi i32 [ 2972, %454 ], [ 2969, %442 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef %503, i32 noundef 9, ptr noundef null) #20
  br label %504

504:                                              ; preds = %502, %498, %413
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #20, !srcloc !11
  %505 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #20, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !35
  %506 = load volatile i32, ptr %66, align 4
  %507 = icmp eq i32 %506, %414
  br i1 %507, label %513, label %508, !prof !9

508:                                              ; preds = %504
  %509 = load volatile i32, ptr %64, align 4
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %513

511:                                              ; preds = %508
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #20, !srcloc !11
  %512 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #20, !srcloc !12
  br label %413

513:                                              ; preds = %508, %504, %409
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #20
  br label %600

514:                                              ; preds = %389
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #20
  %515 = load i32, ptr %391, align 4
  %516 = and i32 %515, 30
  %517 = icmp eq i32 %516, 30
  %518 = select i1 %517, i32 8, i32 0
  %519 = getelementptr i8, ptr %391, i32 %518
  %520 = load i32, ptr %519, align 4
  %521 = and i32 %520, 31
  %522 = icmp ugt i32 %521, 28
  %523 = load i1, ptr @rb_event_data.__already_done, align 1
  %524 = xor i1 %523, true
  %525 = select i1 %522, i1 %524, i1 false
  br i1 %525, label %526, label %529, !prof !8

526:                                              ; preds = %514
  store i1 true, ptr @rb_event_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 262, i32 noundef 9, ptr noundef null) #20
  %527 = load i32, ptr %519, align 4
  %528 = and i32 %527, 31
  br label %529

529:                                              ; preds = %526, %514
  %530 = phi i32 [ %528, %526 ], [ %521, %514 ]
  %531 = icmp eq i32 %530, 0
  %532 = getelementptr inbounds %struct.ring_buffer_event, ptr %519, i32 0, i32 1
  %533 = getelementptr %struct.ring_buffer_event, ptr %519, i32 2
  %534 = select i1 %531, ptr %533, ptr %532
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %534, ptr align 1 %2, i32 %1, i1 false)
  tail call fastcc void @rb_commit(ptr noundef %27)
  %535 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 9, i32 3
  %536 = load i8, ptr %535, align 4, !range !21
  %537 = icmp eq i8 %536, 0
  br i1 %537, label %541, label %538

538:                                              ; preds = %529
  %539 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 9
  store i8 0, ptr %535, align 4
  %540 = tail call zeroext i1 @irq_work_queue(ptr noundef %539) #20
  br label %541

541:                                              ; preds = %538, %529
  %542 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 39
  %543 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 39, i32 3
  %544 = load i8, ptr %543, align 4, !range !21
  %545 = icmp eq i8 %544, 0
  br i1 %545, label %548, label %546

546:                                              ; preds = %541
  store i8 0, ptr %543, align 4
  %547 = tail call zeroext i1 @irq_work_queue(ptr noundef %542) #20
  br label %548

548:                                              ; preds = %546, %541
  %549 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 27
  %550 = load i32, ptr %549, align 8
  %551 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 25
  %552 = load volatile i32, ptr %551, align 4
  %553 = icmp eq i32 %550, %552
  br i1 %553, label %600, label %554

554:                                              ; preds = %548
  %555 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 14
  %556 = load ptr, ptr %555, align 4
  %557 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 13
  %558 = load ptr, ptr %557, align 8
  %559 = icmp eq ptr %556, %558
  br i1 %559, label %600, label %560

560:                                              ; preds = %554
  %561 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 39, i32 4
  %562 = load i8, ptr %561, align 1, !range !21
  %563 = icmp eq i8 %562, 0
  br i1 %563, label %600, label %564

564:                                              ; preds = %560
  %565 = load volatile i32, ptr %551, align 4
  store i32 %565, ptr %549, align 8
  %566 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 28
  %567 = load i32, ptr %566, align 4
  %568 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 8
  %569 = load i32, ptr %568, align 4
  %570 = load i32, ptr %27, align 8
  %571 = load ptr, ptr %24, align 4
  %572 = getelementptr ptr, ptr %571, i32 %570
  %573 = load ptr, ptr %572, align 4
  %574 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %573, i32 0, i32 26
  %575 = load volatile i32, ptr %574, align 4
  %576 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %573, i32 0, i32 25
  %577 = load volatile i32, ptr %576, align 4
  %578 = icmp ult i32 %577, %575
  br i1 %578, label %579, label %586

579:                                              ; preds = %564
  %580 = add nuw i32 %577, 1
  %581 = icmp ugt i32 %575, %580
  %582 = load i1, ptr @ring_buffer_nr_dirty_pages.__already_done, align 1
  %583 = xor i1 %582, true
  %584 = select i1 %581, i1 %583, i1 false
  br i1 %584, label %585, label %589, !prof !8

585:                                              ; preds = %579
  store i1 true, ptr @ring_buffer_nr_dirty_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 866, i32 noundef 9, ptr noundef null) #20
  br label %589

586:                                              ; preds = %564
  %587 = sub i32 %577, %575
  %588 = mul i32 %587, 100
  br label %589

589:                                              ; preds = %586, %585, %579
  %590 = phi i32 [ %588, %586 ], [ 0, %585 ], [ 0, %579 ]
  %591 = icmp eq i32 %567, 0
  %592 = icmp eq i32 %569, 0
  %593 = select i1 %591, i1 true, i1 %592
  %594 = mul i32 %569, %567
  %595 = icmp ugt i32 %590, %594
  %596 = select i1 %593, i1 true, i1 %595
  br i1 %596, label %597, label %600

597:                                              ; preds = %589
  %598 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 39, i32 5
  store i8 1, ptr %598, align 2
  store i8 0, ptr %561, align 1
  %599 = tail call zeroext i1 @irq_work_queue(ptr noundef %542) #20
  br label %600

600:                                              ; preds = %597, %589, %560, %554, %548, %513
  %601 = phi i32 [ -16, %513 ], [ 0, %548 ], [ 0, %554 ], [ 0, %560 ], [ 0, %589 ], [ 0, %597 ]
  %602 = load i32, ptr %34, align 8
  %603 = load i32, ptr %49, align 8
  %604 = shl nsw i32 -1, %603
  %605 = add i32 %604, %602
  %606 = and i32 %605, %602
  store i32 %606, ptr %34, align 8
  br label %607

607:                                              ; preds = %600, %55, %23, %11, %3
  %608 = phi i32 [ -16, %3 ], [ -16, %23 ], [ %601, %600 ], [ -16, %11 ], [ -16, %55 ]
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !57
  ret i32 %608
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_record_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #20, !srcloc !11
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #20, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_record_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #20, !srcloc !11
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #20, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_record_off(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 2
  br label %3

3:                                                ; preds = %10, %1
  %4 = load volatile i32, ptr %2, align 4
  %5 = or i32 %4, 1048576
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !52
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #20, !srcloc !11
  br label %6

6:                                                ; preds = %6, %3
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 %4, i32 %5, ptr elementtype(i32) %2) #20, !srcloc !53
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6
  %11 = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !54
  %12 = icmp eq i32 %11, %4
  br i1 %12, label %13, label %3

13:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_record_on(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 2
  br label %3

3:                                                ; preds = %10, %1
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, -1048577
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !52
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #20, !srcloc !11
  br label %6

6:                                                ; preds = %6, %3
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 %4, i32 %5, ptr elementtype(i32) %2) #20, !srcloc !53
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6
  %11 = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !54
  %12 = icmp eq i32 %11, %4
  br i1 %12, label %13, label %3

13:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ring_buffer_record_is_on(ptr noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 2
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ring_buffer_record_is_set_on(ptr noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 2
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1048576
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_record_disable_cpu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #20, !srcloc !11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #20, !srcloc !12
  br label %18

18:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_record_enable_cpu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #20, !srcloc !11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #20, !srcloc !22
  br label %18

18:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ring_buffer_oldest_event_ts(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 4
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #20
  %18 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %11
  %24 = tail call fastcc ptr @rb_set_head_page(ptr noundef %15)
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi ptr [ %24, %23 ], [ %19, %11 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.buffer_page, ptr %26, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = load i64, ptr %30, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i64 [ %31, %28 ], [ 0, %25 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #20
  br label %34

34:                                               ; preds = %32, %2
  %35 = phi i64 [ %33, %32 ], [ 0, %2 ]
  ret i64 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rb_set_head_page(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.trace_buffer, ptr %7, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #20, !srcloc !11
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1343, i32 noundef 9, ptr noundef null) #20
  br label %86

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = and i32 %16, -4
  %18 = inttoptr i32 %17 to ptr
  %19 = icmp eq ptr %12, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_buffer, ptr %22, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #20, !srcloc !11
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1348, i32 noundef 9, ptr noundef null) #20
  br label %86

25:                                               ; preds = %39, %10
  %26 = phi ptr [ %43, %39 ], [ %3, %10 ]
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = and i32 %30, -4
  %32 = ptrtoint ptr %26 to i32
  %33 = icmp eq i32 %31, %32
  %34 = and i32 %30, 3
  %35 = icmp eq i32 %34, 0
  %36 = and i1 %33, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %63, %45, %25
  %38 = phi ptr [ %64, %63 ], [ %46, %45 ], [ %26, %25 ]
  store ptr %38, ptr %2, align 8
  br label %86

39:                                               ; preds = %25
  %40 = load ptr, ptr %26, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = and i32 %41, -4
  %43 = inttoptr i32 %42 to ptr
  %44 = icmp eq ptr %3, %43
  br i1 %44, label %45, label %25

45:                                               ; preds = %57, %39
  %46 = phi ptr [ %61, %57 ], [ %3, %39 ]
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = and i32 %50, -4
  %52 = ptrtoint ptr %46 to i32
  %53 = icmp eq i32 %51, %52
  %54 = and i32 %50, 3
  %55 = icmp eq i32 %54, 0
  %56 = and i1 %53, %55
  br i1 %56, label %57, label %37

57:                                               ; preds = %45
  %58 = load ptr, ptr %46, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = and i32 %59, -4
  %61 = inttoptr i32 %60 to ptr
  %62 = icmp eq ptr %3, %61
  br i1 %62, label %63, label %45

63:                                               ; preds = %75, %57
  %64 = phi ptr [ %79, %75 ], [ %3, %57 ]
  %65 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %66, align 4
  %68 = ptrtoint ptr %67 to i32
  %69 = and i32 %68, -4
  %70 = ptrtoint ptr %64 to i32
  %71 = icmp eq i32 %69, %70
  %72 = and i32 %68, 3
  %73 = icmp eq i32 %72, 0
  %74 = and i1 %71, %73
  br i1 %74, label %75, label %37

75:                                               ; preds = %63
  %76 = load ptr, ptr %64, align 4
  %77 = ptrtoint ptr %76 to i32
  %78 = and i32 %77, -4
  %79 = inttoptr i32 %78 to ptr
  %80 = icmp eq ptr %3, %79
  br i1 %80, label %81, label %63

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.trace_buffer, ptr %83, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #20, !srcloc !11
  %85 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1368, i32 noundef 9, ptr noundef null) #20
  br label %86

86:                                               ; preds = %81, %37, %20, %5
  %87 = phi ptr [ null, %5 ], [ null, %20 ], [ %38, %37 ], [ null, %81 ]
  ret ptr %87
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ring_buffer_bytes_cpu(ptr noundef %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 18
  %17 = load volatile i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 30
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  br label %21

21:                                               ; preds = %11, %2
  %22 = phi i32 [ %20, %11 ], [ 0, %2 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ring_buffer_entries_cpu(ptr noundef %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 19
  %17 = load volatile i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 20
  %19 = load volatile i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 29
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %19, %21
  %23 = sub i32 %17, %22
  br label %24

24:                                               ; preds = %11, %2
  %25 = phi i32 [ %23, %11 ], [ 0, %2 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ring_buffer_overrun_cpu(ptr noundef %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 20
  %17 = load volatile i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i32 [ %17, %11 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ring_buffer_commit_overrun_cpu(ptr noundef %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 21
  %17 = load volatile i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i32 [ %17, %11 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ring_buffer_dropped_events_cpu(ptr noundef %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 22
  %17 = load volatile i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i32 [ %17, %11 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ring_buffer_read_events_cpu(ptr noundef %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 29
  %17 = load i32, ptr %16, align 8
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i32 [ %17, %11 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ring_buffer_entries(ptr noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %2) #21
  %5 = icmp ult i32 %4, %3
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi i32 [ %4, %6 ], [ %23, %9 ]
  %11 = phi i32 [ 0, %6 ], [ %22, %9 ]
  %12 = getelementptr ptr, ptr %8, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %13, i32 0, i32 19
  %15 = load volatile i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %13, i32 0, i32 20
  %17 = load volatile i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %13, i32 0, i32 29
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %15, %11
  %21 = add i32 %17, %19
  %22 = sub i32 %20, %21
  %23 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef %2) #21
  %24 = icmp ult i32 %23, %3
  br i1 %24, label %9, label %25

25:                                               ; preds = %9, %1
  %26 = phi i32 [ 0, %1 ], [ %22, %9 ]
  ret i32 %26
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ring_buffer_overruns(ptr noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %2) #21
  %5 = icmp ult i32 %4, %3
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi i32 [ %4, %6 ], [ %17, %9 ]
  %11 = phi i32 [ 0, %6 ], [ %16, %9 ]
  %12 = getelementptr ptr, ptr %8, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %13, i32 0, i32 20
  %15 = load volatile i32, ptr %14, align 4
  %16 = add i32 %15, %11
  %17 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef %2) #21
  %18 = icmp ult i32 %17, %3
  br i1 %18, label %9, label %19

19:                                               ; preds = %9, %1
  %20 = phi i32 [ 0, %1 ], [ %16, %9 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_iter_reset(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %4, i32 0, i32 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #20
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 3
  store ptr %9, ptr %10, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.buffer_page, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 2
  store i32 %13, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 4
  store ptr %9, ptr %16, align 8
  %17 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %7, i32 0, i32 29
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = icmp eq i32 %13, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %7, i32 0, i32 34
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 6
  store i64 %23, ptr %24, align 8
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.buffer_page, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = load i64, ptr %27, align 8
  br label %34

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.buffer_page, ptr %9, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 6
  store i64 %32, ptr %33, align 8
  br label %34

34:                                               ; preds = %29, %21
  %35 = phi i64 [ %32, %29 ], [ %28, %21 ]
  %36 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 7
  store i64 %35, ptr %36, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #20
  br label %37

37:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ring_buffer_iter_empty(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %2, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %2, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %2, i32 0, i32 13
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.buffer_page, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = load i64, ptr %10, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !58
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.buffer_data_page, ptr %12, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !59
  %15 = load volatile ptr, ptr %7, align 8
  %16 = getelementptr inbounds %struct.buffer_page, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = load volatile i64, ptr %17, align 8
  %19 = icmp eq ptr %15, %8
  %20 = icmp eq i64 %18, %11
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %48

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %8
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, %14
  br i1 %29, label %30, label %48

30:                                               ; preds = %26, %22
  %31 = icmp eq ptr %24, %4
  %32 = icmp eq ptr %8, %6
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.buffer_page, ptr %6, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %14
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr inbounds %struct.buffer_page, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.buffer_data_page, ptr %43, i32 0, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = icmp eq i32 %40, %45
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %38, %34, %30, %26, %1
  %49 = phi i32 [ 0, %1 ], [ 1, %26 ], [ 0, %34 ], [ 0, %30 ], [ %47, %38 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ring_buffer_peek(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr ptr, ptr %6, i32 %1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %10 = lshr i32 %1, 5
  %11 = getelementptr i32, ptr %9, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %1, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %66, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %8, i32 0, i32 4
  %19 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %8, i32 0, i32 1
  br label %20

20:                                               ; preds = %57, %17
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !10
  %22 = tail call ptr @llvm.thread.pointer() #20
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 15728640
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28, !prof !9

27:                                               ; preds = %20
  tail call void @_raw_spin_lock(ptr noundef %18) #20
  br label %31

28:                                               ; preds = %20
  %29 = tail call i32 @_raw_spin_trylock(ptr noundef %18) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %27
  %32 = tail call fastcc ptr @rb_buffer_peek(ptr noundef %8, ptr noundef %2, ptr noundef %3)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %62, label %38

34:                                               ; preds = %28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #20, !srcloc !11
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #20, !srcloc !12
  %36 = tail call fastcc ptr @rb_buffer_peek(ptr noundef %8, ptr noundef %2, ptr noundef %3)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %65, label %42

38:                                               ; preds = %31
  %39 = load i32, ptr %32, align 4
  %40 = and i32 %39, 31
  %41 = icmp eq i32 %40, 29
  br i1 %41, label %47, label %52

42:                                               ; preds = %34
  %43 = load i32, ptr %36, align 4
  %44 = and i32 %43, 31
  %45 = icmp eq i32 %44, 29
  br i1 %45, label %46, label %55, !prof !60

46:                                               ; preds = %42
  tail call fastcc void @rb_advance_reader(ptr noundef %8)
  br label %50

47:                                               ; preds = %38
  tail call fastcc void @rb_advance_reader(ptr noundef %8)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %48 = load i16, ptr %18, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !16
  br label %50

50:                                               ; preds = %47, %46
  %51 = phi ptr [ %36, %46 ], [ %32, %47 ]
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #20, !srcloc !17
  br label %57

52:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %53 = load i16, ptr %18, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !16
  br label %55

55:                                               ; preds = %52, %42
  %56 = phi ptr [ %32, %52 ], [ %36, %42 ]
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #20, !srcloc !17
  br label %57

57:                                               ; preds = %55, %50
  %58 = phi ptr [ %56, %55 ], [ %51, %50 ]
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 31
  %61 = icmp eq i32 %60, 29
  br i1 %61, label %20, label %66

62:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %63 = load i16, ptr %18, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !16
  br label %65

65:                                               ; preds = %62, %34
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #20, !srcloc !17
  br label %66

66:                                               ; preds = %65, %57, %4
  %67 = phi ptr [ null, %4 ], [ null, %65 ], [ %58, %57 ]
  ret ptr %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ring_buffer_iter_peek(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %3, i32 0, i32 4
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 7
  br label %13

13:                                               ; preds = %200, %2
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #20
  br i1 %5, label %16, label %15

15:                                               ; preds = %13
  store i64 0, ptr %1, align 8
  br label %16

16:                                               ; preds = %15, %13
  %17 = load ptr, ptr %0, align 8
  %18 = load i32, ptr %6, align 4
  %19 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %17, i32 0, i32 29
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %25, label %22, !prof !9

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %17, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  br label %30

25:                                               ; preds = %16
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %17, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %51, label %30, !prof !9

30:                                               ; preds = %25, %22
  %31 = phi ptr [ %24, %22 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %17, i32 0, i32 14
  store ptr %31, ptr %8, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.buffer_page, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %9, align 4
  store i32 %35, ptr %10, align 8
  store ptr %31, ptr %7, align 8
  %36 = load i32, ptr %19, align 8
  store i32 %36, ptr %6, align 4
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %17, i32 0, i32 34
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %11, align 8
  %41 = load ptr, ptr %32, align 4
  %42 = getelementptr inbounds %struct.buffer_page, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = load i64, ptr %43, align 8
  br label %49

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.buffer_page, ptr %31, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = load i64, ptr %47, align 8
  store i64 %48, ptr %11, align 8
  br label %49

49:                                               ; preds = %45, %38
  %50 = phi i64 [ %48, %45 ], [ %44, %38 ]
  store i64 %50, ptr %12, align 8
  br label %51

51:                                               ; preds = %49, %25
  %52 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %17, i32 0, i32 14
  %53 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %17, i32 0, i32 13
  br label %54

54:                                               ; preds = %149, %51
  %55 = phi ptr [ %17, %51 ], [ %150, %149 ]
  %56 = phi i32 [ 0, %51 ], [ %99, %149 ]
  %57 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %55, i32 0, i32 14
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %55, i32 0, i32 11
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %55, i32 0, i32 13
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.buffer_page, ptr %62, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = load i64, ptr %64, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !58
  %66 = load ptr, ptr %63, align 4
  %67 = getelementptr inbounds %struct.buffer_data_page, ptr %66, i32 0, i32 1
  %68 = load volatile i32, ptr %67, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !59
  %69 = load volatile ptr, ptr %61, align 8
  %70 = getelementptr inbounds %struct.buffer_page, ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = load volatile i64, ptr %71, align 8
  %73 = icmp eq ptr %69, %62
  %74 = icmp eq i64 %72, %65
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %98

76:                                               ; preds = %54
  %77 = load ptr, ptr %8, align 4
  %78 = icmp eq ptr %77, %62
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, ptr %9, align 4
  %81 = icmp ult i32 %80, %68
  br i1 %81, label %82, label %199

82:                                               ; preds = %79, %76
  %83 = icmp eq ptr %77, %58
  %84 = icmp eq ptr %62, %60
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.buffer_page, ptr %60, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, %68
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32, ptr %9, align 4
  %92 = load ptr, ptr %57, align 4
  %93 = getelementptr inbounds %struct.buffer_page, ptr %92, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.buffer_data_page, ptr %94, i32 0, i32 1
  %96 = load volatile i32, ptr %95, align 4
  %97 = icmp eq i32 %91, %96
  br i1 %97, label %199, label %98

98:                                               ; preds = %90, %86, %82, %54
  %99 = add nuw nsw i32 %56, 1
  %100 = icmp eq i32 %56, 3
  br i1 %100, label %199, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %52, align 4
  %103 = tail call fastcc ptr @rb_set_head_page(ptr noundef %17) #20
  %104 = load ptr, ptr %53, align 8
  %105 = icmp eq ptr %103, null
  br i1 %105, label %199, label %106, !prof !8

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.buffer_page, ptr %102, i32 0, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.buffer_page, ptr %102, i32 0, i32 5
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.buffer_data_page, ptr %110, i32 0, i32 1
  %112 = load volatile i32, ptr %111, align 4
  %113 = icmp eq i32 %108, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %106
  %115 = icmp eq ptr %104, %102
  br i1 %115, label %199, label %116

116:                                              ; preds = %114
  %117 = icmp eq ptr %104, %103
  br i1 %117, label %118, label %124

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.buffer_page, ptr %103, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.buffer_data_page, ptr %120, i32 0, i32 1
  %122 = load volatile i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %199, label %124

124:                                              ; preds = %118, %116, %106
  %125 = load i32, ptr %9, align 4
  %126 = load ptr, ptr %8, align 4
  %127 = getelementptr inbounds %struct.buffer_page, ptr %126, i32 0, i32 5
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.buffer_data_page, ptr %128, i32 0, i32 1
  %130 = load volatile i32, ptr %129, align 4
  %131 = icmp ult i32 %125, %130
  br i1 %131, label %151, label %132

132:                                              ; preds = %124
  %133 = load ptr, ptr %0, align 8
  %134 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %133, i32 0, i32 14
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %126, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = tail call fastcc ptr @rb_set_head_page(ptr noundef %133) #20
  br label %144

139:                                              ; preds = %132
  %140 = load ptr, ptr %126, align 4
  %141 = ptrtoint ptr %140 to i32
  %142 = and i32 %141, -4
  %143 = inttoptr i32 %142 to ptr
  br label %144

144:                                              ; preds = %139, %137
  %145 = phi ptr [ %143, %139 ], [ %138, %137 ]
  store ptr %145, ptr %8, align 4
  %146 = getelementptr inbounds %struct.buffer_page, ptr %145, i32 0, i32 5
  %147 = load ptr, ptr %146, align 4
  %148 = load i64, ptr %147, align 8
  store i64 %148, ptr %11, align 8
  store i64 %148, ptr %12, align 8
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 8
  br label %149

149:                                              ; preds = %188, %178, %172, %151, %144
  %150 = load ptr, ptr %0, align 8
  br label %54

151:                                              ; preds = %124
  %152 = tail call fastcc ptr @rb_iter_head_event(ptr noundef %0) #20
  %153 = icmp eq ptr %152, null
  br i1 %153, label %149, label %154

154:                                              ; preds = %151
  %155 = load i32, ptr %152, align 4
  %156 = and i32 %155, 31
  switch i32 %156, label %198 [
    i32 29, label %157
    i32 30, label %178
    i32 31, label %179
    i32 0, label %189
    i32 1, label %189
    i32 2, label %189
    i32 3, label %189
    i32 4, label %189
    i32 5, label %189
    i32 6, label %189
    i32 7, label %189
    i32 8, label %189
    i32 9, label %189
    i32 10, label %189
    i32 11, label %189
    i32 12, label %189
    i32 13, label %189
    i32 14, label %189
    i32 15, label %189
    i32 16, label %189
    i32 17, label %189
    i32 18, label %189
    i32 19, label %189
    i32 20, label %189
    i32 21, label %189
    i32 22, label %189
    i32 23, label %189
    i32 24, label %189
    i32 25, label %189
    i32 26, label %189
    i32 27, label %189
    i32 28, label %189
  ]

157:                                              ; preds = %154
  %158 = icmp eq i32 %155, 29
  br i1 %158, label %159, label %177

159:                                              ; preds = %157
  %160 = load ptr, ptr %0, align 8
  %161 = load ptr, ptr %8, align 4
  %162 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %160, i32 0, i32 14
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %161, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = tail call fastcc ptr @rb_set_head_page(ptr noundef %160) #20
  br label %172

167:                                              ; preds = %159
  %168 = load ptr, ptr %161, align 4
  %169 = ptrtoint ptr %168 to i32
  %170 = and i32 %169, -4
  %171 = inttoptr i32 %170 to ptr
  br label %172

172:                                              ; preds = %167, %165
  %173 = phi ptr [ %171, %167 ], [ %166, %165 ]
  store ptr %173, ptr %8, align 4
  %174 = getelementptr inbounds %struct.buffer_page, ptr %173, i32 0, i32 5
  %175 = load ptr, ptr %174, align 4
  %176 = load i64, ptr %175, align 8
  store i64 %176, ptr %11, align 8
  store i64 %176, ptr %12, align 8
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 8
  br label %149

177:                                              ; preds = %157
  tail call fastcc void @rb_advance_iter(ptr noundef %0) #20
  br label %200

178:                                              ; preds = %154
  tail call fastcc void @rb_advance_iter(ptr noundef %0) #20
  br label %149

179:                                              ; preds = %154
  br i1 %5, label %188, label %180

180:                                              ; preds = %179
  %181 = getelementptr inbounds %struct.ring_buffer_event, ptr %152, i32 0, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = zext i32 %182 to i64
  %184 = shl nuw nsw i64 %183, 27
  %185 = lshr i32 %155, 5
  %186 = zext i32 %185 to i64
  %187 = or i64 %184, %186
  store i64 %187, ptr %1, align 8
  br label %188

188:                                              ; preds = %180, %179
  tail call fastcc void @rb_advance_iter(ptr noundef %0) #20
  br label %149

189:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154
  br i1 %5, label %200, label %190

190:                                              ; preds = %189
  %191 = load i64, ptr %1, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %190
  %194 = load i64, ptr %11, align 8
  %195 = lshr i32 %155, 5
  %196 = zext i32 %195 to i64
  %197 = add i64 %194, %196
  store i64 %197, ptr %1, align 8
  br label %200

198:                                              ; preds = %154
  unreachable

199:                                              ; preds = %118, %114, %101, %98, %90, %79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %14) #20
  br label %204

200:                                              ; preds = %193, %190, %189, %177
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %14) #20
  %201 = load i32, ptr %152, align 4
  %202 = and i32 %201, 31
  %203 = icmp eq i32 %202, 29
  br i1 %203, label %13, label %204

204:                                              ; preds = %200, %199
  %205 = phi ptr [ null, %199 ], [ %152, %200 ]
  ret ptr %205
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rb_buffer_peek(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store i64 0, ptr %1, align 8
  br label %6

6:                                                ; preds = %5, %3
  %7 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 14
  %8 = tail call fastcc ptr @rb_get_reader_page(ptr noundef %0)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %83, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.buffer_page, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.buffer_page, ptr %11, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.buffer_data_page, ptr %15, i32 0, i32 2
  %17 = getelementptr i8, ptr %16, i32 %13
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 31
  switch i32 %19, label %82 [
    i32 29, label %20
    i32 30, label %29
    i32 31, label %56
    i32 0, label %65
    i32 1, label %65
    i32 2, label %65
    i32 3, label %65
    i32 4, label %65
    i32 5, label %65
    i32 6, label %65
    i32 7, label %65
    i32 8, label %65
    i32 9, label %65
    i32 10, label %65
    i32 11, label %65
    i32 12, label %65
    i32 13, label %65
    i32 14, label %65
    i32 15, label %65
    i32 16, label %65
    i32 17, label %65
    i32 18, label %65
    i32 19, label %65
    i32 20, label %65
    i32 21, label %65
    i32 22, label %65
    i32 23, label %65
    i32 24, label %65
    i32 25, label %65
    i32 26, label %65
    i32 27, label %65
    i32 28, label %65
  ]

20:                                               ; preds = %32, %10
  %21 = phi ptr [ %17, %10 ], [ %39, %32 ]
  %22 = phi i32 [ %18, %10 ], [ %40, %32 ]
  %23 = icmp eq i32 %22, 29
  br i1 %23, label %24, label %83

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_buffer, ptr %26, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #20, !srcloc !11
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 4634, i32 noundef 9, ptr noundef null) #20
  br label %83

29:                                               ; preds = %57, %56, %10
  tail call fastcc void @rb_advance_reader(ptr noundef %0)
  %30 = tail call fastcc ptr @rb_get_reader_page(ptr noundef %0)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %83, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr inbounds %struct.buffer_page, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.buffer_page, ptr %33, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.buffer_data_page, ptr %37, i32 0, i32 2
  %39 = getelementptr i8, ptr %38, i32 %35
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 31
  switch i32 %41, label %82 [
    i32 29, label %20
    i32 30, label %51
    i32 31, label %42
    i32 0, label %65
    i32 1, label %65
    i32 2, label %65
    i32 3, label %65
    i32 4, label %65
    i32 5, label %65
    i32 6, label %65
    i32 7, label %65
    i32 8, label %65
    i32 9, label %65
    i32 10, label %65
    i32 11, label %65
    i32 12, label %65
    i32 13, label %65
    i32 14, label %65
    i32 15, label %65
    i32 16, label %65
    i32 17, label %65
    i32 18, label %65
    i32 19, label %65
    i32 20, label %65
    i32 21, label %65
    i32 22, label %65
    i32 23, label %65
    i32 24, label %65
    i32 25, label %65
    i32 26, label %65
    i32 27, label %65
    i32 28, label %65
  ]

42:                                               ; preds = %32
  br i1 %4, label %51, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.ring_buffer_event, ptr %39, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = zext i32 %45 to i64
  %47 = shl nuw nsw i64 %46, 27
  %48 = lshr i32 %40, 5
  %49 = zext i32 %48 to i64
  %50 = or i64 %47, %49
  store i64 %50, ptr %1, align 8
  br label %51

51:                                               ; preds = %43, %42, %32
  tail call fastcc void @rb_advance_reader(ptr noundef %0)
  %52 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_buffer, ptr %53, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #20, !srcloc !11
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 4622, i32 noundef 9, ptr noundef null) #20
  br label %83

56:                                               ; preds = %10
  br i1 %4, label %29, label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.ring_buffer_event, ptr %17, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = zext i32 %59 to i64
  %61 = shl nuw nsw i64 %60, 27
  %62 = lshr i32 %18, 5
  %63 = zext i32 %62 to i64
  %64 = or i64 %61, %63
  store i64 %64, ptr %1, align 8
  br label %29

65:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10
  %66 = phi ptr [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %17, %10 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ], [ %39, %32 ]
  %67 = phi i32 [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %18, %10 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ], [ %40, %32 ]
  br i1 %4, label %77, label %68

68:                                               ; preds = %65
  %69 = load i64, ptr %1, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 34
  %73 = load i64, ptr %72, align 8
  %74 = lshr i32 %67, 5
  %75 = zext i32 %74 to i64
  %76 = add i64 %73, %75
  store i64 %76, ptr %1, align 8
  br label %77

77:                                               ; preds = %71, %68, %65
  %78 = icmp eq ptr %2, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 15
  %81 = load i32, ptr %80, align 8
  store i32 %81, ptr %2, align 4
  br label %83

82:                                               ; preds = %32, %10
  unreachable

83:                                               ; preds = %79, %77, %51, %29, %24, %20, %6
  %84 = phi ptr [ null, %51 ], [ %21, %24 ], [ %21, %20 ], [ %66, %79 ], [ %66, %77 ], [ null, %29 ], [ null, %6 ]
  ret ptr %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rb_advance_reader(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @rb_get_reader_page(ptr noundef %0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.trace_buffer, ptr %6, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #20, !srcloc !11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 4557, i32 noundef 9, ptr noundef null) #20
  br label %80

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.buffer_page, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.buffer_page, ptr %11, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.buffer_data_page, ptr %15, i32 0, i32 2
  %17 = getelementptr i8, ptr %16, i32 %13
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 31
  %20 = icmp ult i32 %19, 29
  br i1 %20, label %21, label %26

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 29
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 8
  %25 = load i32, ptr %17, align 4
  br label %26

26:                                               ; preds = %21, %9
  %27 = phi i32 [ %25, %21 ], [ %18, %9 ]
  %28 = and i32 %27, 31
  switch i32 %28, label %55 [
    i32 29, label %58
    i32 30, label %29
    i32 31, label %40
    i32 0, label %49
    i32 1, label %49
    i32 2, label %49
    i32 3, label %49
    i32 4, label %49
    i32 5, label %49
    i32 6, label %49
    i32 7, label %49
    i32 8, label %49
    i32 9, label %49
    i32 10, label %49
    i32 11, label %49
    i32 12, label %49
    i32 13, label %49
    i32 14, label %49
    i32 15, label %49
    i32 16, label %49
    i32 17, label %49
    i32 18, label %49
    i32 19, label %49
    i32 20, label %49
    i32 21, label %49
    i32 22, label %49
    i32 23, label %49
    i32 24, label %49
    i32 25, label %49
    i32 26, label %49
    i32 27, label %49
    i32 28, label %49
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ring_buffer_event, ptr %17, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 27
  %34 = lshr i32 %27, 5
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 34
  %37 = load i64, ptr %36, align 8
  %38 = add i64 %37, %35
  %39 = add i64 %38, %33
  store i64 %39, ptr %36, align 8
  br label %56

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.ring_buffer_event, ptr %17, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = zext i32 %42 to i64
  %44 = shl nuw nsw i64 %43, 27
  %45 = lshr i32 %27, 5
  %46 = zext i32 %45 to i64
  %47 = or i64 %44, %46
  %48 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 34
  store i64 %47, ptr %48, align 8
  br label %56

49:                                               ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  %50 = lshr i32 %27, 5
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 34
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %53, %51
  store i64 %54, ptr %52, align 8
  br label %56

55:                                               ; preds = %26
  unreachable

56:                                               ; preds = %49, %40, %29
  %57 = load i32, ptr %17, align 4
  br label %58

58:                                               ; preds = %56, %26
  %59 = phi i32 [ %57, %56 ], [ %27, %26 ]
  %60 = and i32 %59, 31
  switch i32 %60, label %75 [
    i32 29, label %61
    i32 30, label %76
    i32 31, label %76
    i32 0, label %69
    i32 1, label %67
    i32 2, label %67
    i32 3, label %67
    i32 4, label %67
    i32 5, label %67
    i32 6, label %67
    i32 7, label %67
    i32 8, label %67
    i32 9, label %67
    i32 10, label %67
    i32 11, label %67
    i32 12, label %67
    i32 13, label %67
    i32 14, label %67
    i32 15, label %67
    i32 16, label %67
    i32 17, label %67
    i32 18, label %67
    i32 19, label %67
    i32 20, label %67
    i32 21, label %67
    i32 22, label %67
    i32 23, label %67
    i32 24, label %67
    i32 25, label %67
    i32 26, label %67
    i32 27, label %67
    i32 28, label %67
  ]

61:                                               ; preds = %58
  %62 = icmp eq i32 %59, 29
  br i1 %62, label %76, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.ring_buffer_event, ptr %17, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 4
  br label %76

67:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %68 = shl nuw nsw i32 %60, 2
  br label %72

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.ring_buffer_event, ptr %17, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %67
  %73 = phi i32 [ %68, %67 ], [ %71, %69 ]
  %74 = add i32 %73, 4
  br label %76

75:                                               ; preds = %58
  unreachable

76:                                               ; preds = %72, %63, %61, %58, %58
  %77 = phi i32 [ %74, %72 ], [ %66, %63 ], [ -1, %61 ], [ 8, %58 ], [ 8, %58 ]
  %78 = load i32, ptr %12, align 4
  %79 = add i32 %78, %77
  store i32 %79, ptr %12, align 4
  br label %80

80:                                               ; preds = %76, %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ring_buffer_iter_dropped(ptr nocapture noundef %0) #13 {
  %2 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 0
  store i32 0, ptr %2, align 4
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ring_buffer_consume(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %6 = lshr i32 %1, 5
  %7 = getelementptr i32, ptr %5, i32 %6
  %8 = and i32 %1, 31
  %9 = shl nuw i32 1, %8
  %10 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  br label %11

11:                                               ; preds = %48, %4
  %12 = phi ptr [ null, %4 ], [ %46, %48 ]
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !61
  %13 = load volatile i32, ptr %7, align 4
  %14 = and i32 %13, %9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr ptr, ptr %17, i32 %1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !10
  %21 = tail call ptr @llvm.thread.pointer() #20
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 15728640
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %19, i32 0, i32 4
  br i1 %25, label %27, label %28, !prof !9

27:                                               ; preds = %16
  tail call void @_raw_spin_lock(ptr noundef %26) #20
  br label %34

28:                                               ; preds = %16
  %29 = tail call i32 @_raw_spin_trylock(ptr noundef %26) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %19, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #20, !srcloc !11
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #20, !srcloc !12
  br label %34

34:                                               ; preds = %31, %28, %27
  %35 = phi i1 [ true, %27 ], [ false, %31 ], [ true, %28 ]
  %36 = tail call fastcc ptr @rb_buffer_peek(ptr noundef %19, ptr noundef %2, ptr noundef %3)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %19, i32 0, i32 15
  store i32 0, ptr %39, align 8
  tail call fastcc void @rb_advance_reader(ptr noundef %19)
  br label %40

40:                                               ; preds = %38, %34
  br i1 %35, label %41, label %44, !prof !9

41:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %42 = load i16, ptr %26, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !16
  br label %44

44:                                               ; preds = %41, %40
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #20, !srcloc !17
  br label %45

45:                                               ; preds = %44, %11
  %46 = phi ptr [ %36, %44 ], [ %12, %11 ]
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !62
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %46, align 4
  %50 = and i32 %49, 31
  %51 = icmp eq i32 %50, 29
  br i1 %51, label %11, label %52

52:                                               ; preds = %48, %45
  ret ptr %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ring_buffer_read_prepare(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %5 = lshr i32 %1, 5
  %6 = getelementptr i32, ptr %4, i32 %5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %1, 31
  %9 = shl nuw i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %3
  %13 = or i32 %2, 256
  %14 = and i32 %2, 17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !9

16:                                               ; preds = %12
  %17 = and i32 %2, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 1, i32 2
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ 0, %12 ], [ %19, %16 ]
  %22 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %21, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef %13, i32 noundef 48) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %20
  br i1 %15, label %31, label %27, !prof !9

27:                                               ; preds = %26
  %28 = and i32 %2, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 1, i32 2
  br label %31

31:                                               ; preds = %27, %26
  %32 = phi i32 [ 0, %26 ], [ %30, %27 ]
  %33 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %32, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef %2, i32 noundef 4076) #22
  %36 = getelementptr inbounds %struct.ring_buffer_iter, ptr %24, i32 0, i32 8
  store ptr %35, ptr %36, align 8
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call void @kfree(ptr noundef nonnull %24) #20
  br label %46

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr ptr, ptr %41, i32 %1
  %43 = load ptr, ptr %42, align 4
  store ptr %43, ptr %24, align 8
  %44 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %43, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #20, !srcloc !11
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #20, !srcloc !12
  br label %46

46:                                               ; preds = %39, %38, %20, %3
  %47 = phi ptr [ %24, %39 ], [ null, %38 ], [ null, %3 ], [ null, %20 ]
  ret ptr %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_read_prepare_sync() #0 {
  tail call void @synchronize_rcu() #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_read_start(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %4, i32 0, i32 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #20
  %7 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %4, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #20, !srcloc !11
  %8 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr %7, i32 65536) #20, !srcloc !63
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = lshr i32 %9, 16
  %11 = and i32 %9, 65535
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %13, %3
  tail call void asm sideeffect "wfe", "~{memory}"() #20, !srcloc !64
  %14 = load volatile i16, ptr %7, align 4
  %15 = zext i16 %14 to i32
  %16 = icmp eq i32 %10, %15
  br i1 %16, label %17, label %13

17:                                               ; preds = %13, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !65
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %18, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.buffer_page, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 2
  store i32 %24, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 4
  store ptr %20, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %18, i32 0, i32 29
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  %31 = icmp eq i32 %24, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %18, i32 0, i32 34
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 6
  store i64 %34, ptr %35, align 8
  %36 = load ptr, ptr %19, align 4
  %37 = getelementptr inbounds %struct.buffer_page, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = load i64, ptr %38, align 8
  br label %45

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.buffer_page, ptr %20, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 6
  store i64 %43, ptr %44, align 8
  br label %45

45:                                               ; preds = %40, %32
  %46 = phi i64 [ %43, %40 ], [ %39, %32 ]
  %47 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 7
  store i64 %46, ptr %47, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %48 = load i16, ptr %7, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #20
  br label %50

50:                                               ; preds = %45, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_read_finish(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %2, i32 0, i32 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #20
  tail call fastcc void @rb_check_pages(ptr noundef %2)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #20
  %5 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %2, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #20, !srcloc !11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #20, !srcloc !22
  %7 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  tail call void @kfree(ptr noundef %8) #20
  tail call void @kfree(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_iter_advance(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %2, i32 0, i32 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #20
  tail call fastcc void @rb_advance_iter(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rb_advance_iter(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @rb_iter_head_event(ptr noundef %0)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %77, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %5, align 8
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi i32 [ %12, %11 ], [ %6, %1 ]
  store i32 %14, ptr %3, align 4
  %15 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.buffer_page, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.buffer_data_page, ptr %18, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp ult i32 %14, %20
  br i1 %21, label %45, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %2, i32 0, i32 13
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %16, %24
  br i1 %25, label %77, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %27, i32 0, i32 14
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %16, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = tail call fastcc ptr @rb_set_head_page(ptr noundef %27) #20
  br label %38

33:                                               ; preds = %26
  %34 = load ptr, ptr %16, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = and i32 %35, -4
  %37 = inttoptr i32 %36 to ptr
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi ptr [ %37, %33 ], [ %32, %31 ]
  store ptr %39, ptr %15, align 4
  %40 = getelementptr inbounds %struct.buffer_page, ptr %39, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 6
  store i64 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 7
  store i64 %42, ptr %44, align 8
  store i32 0, ptr %3, align 4
  store i32 0, ptr %5, align 8
  br label %77

45:                                               ; preds = %13
  %46 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 8
  %47 = load ptr, ptr %46, align 8
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 31
  switch i32 %49, label %76 [
    i32 29, label %77
    i32 30, label %50
    i32 31, label %61
    i32 0, label %70
    i32 1, label %70
    i32 2, label %70
    i32 3, label %70
    i32 4, label %70
    i32 5, label %70
    i32 6, label %70
    i32 7, label %70
    i32 8, label %70
    i32 9, label %70
    i32 10, label %70
    i32 11, label %70
    i32 12, label %70
    i32 13, label %70
    i32 14, label %70
    i32 15, label %70
    i32 16, label %70
    i32 17, label %70
    i32 18, label %70
    i32 19, label %70
    i32 20, label %70
    i32 21, label %70
    i32 22, label %70
    i32 23, label %70
    i32 24, label %70
    i32 25, label %70
    i32 26, label %70
    i32 27, label %70
    i32 28, label %70
  ]

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.ring_buffer_event, ptr %47, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 27
  %55 = lshr i32 %48, 5
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 6
  %58 = load i64, ptr %57, align 8
  %59 = add i64 %58, %56
  %60 = add i64 %59, %54
  store i64 %60, ptr %57, align 8
  br label %77

61:                                               ; preds = %45
  %62 = getelementptr inbounds %struct.ring_buffer_event, ptr %47, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 27
  %66 = lshr i32 %48, 5
  %67 = zext i32 %66 to i64
  %68 = or i64 %65, %67
  %69 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 6
  store i64 %68, ptr %69, align 8
  br label %77

70:                                               ; preds = %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45
  %71 = lshr i32 %48, 5
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 6
  %74 = load i64, ptr %73, align 8
  %75 = add i64 %74, %72
  store i64 %75, ptr %73, align 8
  br label %77

76:                                               ; preds = %45
  unreachable

77:                                               ; preds = %70, %61, %50, %45, %38, %22, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ring_buffer_size(ptr noundef %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, 4084
  br label %19

19:                                               ; preds = %11, %2
  %20 = phi i32 [ %18, %11 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_reset_cpu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %8 = lshr i32 %1, 5
  %9 = getelementptr i32, ptr %7, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %1, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %16) #20
  %17 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #20, !srcloc !11
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #20, !srcloc !12
  %19 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %6, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #20, !srcloc !11
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #20, !srcloc !12
  tail call void @synchronize_rcu() #20
  tail call fastcc void @reset_disabled_cpu_buffer(ptr noundef %6)
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #20, !srcloc !11
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #20, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #20, !srcloc !11
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #20, !srcloc !22
  tail call void @mutex_unlock(ptr noundef %16) #20
  br label %23

23:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reset_disabled_cpu_buffer(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #20
  %4 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 23
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.trace_buffer, ptr %9, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #20, !srcloc !11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 5144, i32 noundef 9, ptr noundef null) #20
  br label %113

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #20, !srcloc !11
  %14 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr %13, i32 65536) #20, !srcloc !63
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = lshr i32 %15, 16
  %17 = and i32 %15, 65535
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %19, %12
  tail call void asm sideeffect "wfe", "~{memory}"() #20, !srcloc !64
  %20 = load volatile i16, ptr %13, align 4
  %21 = zext i16 %20 to i32
  %22 = icmp eq i32 %16, %21
  br i1 %22, label %23, label %19

23:                                               ; preds = %19, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !65
  %24 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, -4
  store i32 %27, ptr %25, align 4
  %28 = load ptr, ptr %24, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %40, label %31

31:                                               ; preds = %31, %23
  %32 = phi ptr [ %35, %31 ], [ %29, %23 ]
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, -4
  store i32 %34, ptr %32, align 4
  %35 = inttoptr i32 %34 to ptr
  %36 = load ptr, ptr %24, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %38, label %31

38:                                               ; preds = %31
  %39 = inttoptr i32 %34 to ptr
  br label %40

40:                                               ; preds = %38, %23
  %41 = phi ptr [ %28, %23 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 11
  store ptr %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.buffer_page, ptr %41, i32 0, i32 1
  store volatile i32 0, ptr %43, align 4
  %44 = load ptr, ptr %42, align 8
  %45 = getelementptr inbounds %struct.buffer_page, ptr %44, i32 0, i32 3
  store volatile i32 0, ptr %45, align 4
  %46 = load ptr, ptr %42, align 8
  %47 = getelementptr inbounds %struct.buffer_page, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.buffer_data_page, ptr %48, i32 0, i32 1
  store volatile i32 0, ptr %49, align 4
  %50 = load ptr, ptr %42, align 8
  %51 = getelementptr inbounds %struct.buffer_page, ptr %50, i32 0, i32 2
  store i32 0, ptr %51, align 4
  %52 = load ptr, ptr %42, align 8
  %53 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 12
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 13
  store ptr %52, ptr %54, align 8
  %55 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 14
  %56 = load ptr, ptr %55, align 4
  store volatile ptr %56, ptr %56, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 36
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 36, i32 1
  store ptr %58, ptr %59, align 4
  %60 = load ptr, ptr %55, align 4
  %61 = getelementptr inbounds %struct.buffer_page, ptr %60, i32 0, i32 1
  store volatile i32 0, ptr %61, align 4
  %62 = load ptr, ptr %55, align 4
  %63 = getelementptr inbounds %struct.buffer_page, ptr %62, i32 0, i32 3
  store volatile i32 0, ptr %63, align 4
  %64 = load ptr, ptr %55, align 4
  %65 = getelementptr inbounds %struct.buffer_page, ptr %64, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.buffer_data_page, ptr %66, i32 0, i32 1
  store volatile i32 0, ptr %67, align 4
  %68 = load ptr, ptr %55, align 4
  %69 = getelementptr inbounds %struct.buffer_page, ptr %68, i32 0, i32 2
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 18
  store volatile i32 0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 20
  store volatile i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 21
  store volatile i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 22
  store volatile i32 0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 19
  store volatile i32 0, ptr %74, align 4
  store volatile i32 0, ptr %4, align 4
  %75 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 24
  store volatile i32 0, ptr %75, align 4
  %76 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 25
  store volatile i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 26
  store volatile i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 27
  %79 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 31
  %80 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 31, i32 1
  %81 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 31, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %78, i8 0, i64 16, i1 false) #20
  br label %82

82:                                               ; preds = %82, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #20, !srcloc !11
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #20, !srcloc !43
  %84 = extractvalue { i32, i32 } %83, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !44
  %85 = shl i32 %84, 30
  store volatile i32 %85, ptr %80, align 4
  store volatile i32 %85, ptr %81, align 4
  %86 = load volatile i32, ptr %79, align 4
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %82

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 32
  %90 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 32, i32 1
  %91 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 32, i32 2
  br label %92

92:                                               ; preds = %92, %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #20, !srcloc !11
  %93 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 1, ptr elementtype(i32) %89) #20, !srcloc !43
  %94 = extractvalue { i32, i32 } %93, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !44
  %95 = shl i32 %94, 30
  store volatile i32 %95, ptr %90, align 4
  store volatile i32 %95, ptr %91, align 4
  %96 = load volatile i32, ptr %89, align 4
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %92

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 33
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %99, i8 0, i32 40, i1 false) #20
  %100 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 15
  store i32 0, ptr %100, align 8
  %101 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 16
  store i32 0, ptr %101, align 4
  %102 = load ptr, ptr %42, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, -4
  %109 = or i32 %108, 1
  store i32 %109, ptr %106, align 4
  br label %110

110:                                              ; preds = %104, %98
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %111 = load i16, ptr %13, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  br label %113

113:                                              ; preds = %110, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_reset_online_cpus(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %2) #20
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %3, ptr noundef nonnull @__cpu_online_mask) #21
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %4, %7 ], [ %18, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %13, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #20, !srcloc !11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #20, !srcloc !12
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %13, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #20, !srcloc !11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #20, !srcloc !12
  %18 = tail call i32 @cpumask_next_and(i32 noundef %10, ptr noundef %3, ptr noundef nonnull @__cpu_online_mask) #21
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %9, label %21

21:                                               ; preds = %9, %1
  tail call void @synchronize_rcu() #20
  %22 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %3, ptr noundef nonnull @__cpu_online_mask) #21
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ %22, %25 ], [ %36, %27 ]
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr ptr, ptr %29, i32 %28
  %31 = load ptr, ptr %30, align 4
  tail call fastcc void @reset_disabled_cpu_buffer(ptr noundef %31)
  %32 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %31, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #20, !srcloc !11
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #20, !srcloc !22
  %34 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %31, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #20, !srcloc !11
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #20, !srcloc !22
  %36 = tail call i32 @cpumask_next_and(i32 noundef %28, ptr noundef %3, ptr noundef nonnull @__cpu_online_mask) #21
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %27, label %39

39:                                               ; preds = %27, %21
  tail call void @mutex_unlock(ptr noundef %2) #20
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %2) #20
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %3) #21
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %4, %7 ], [ %18, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %13, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #20, !srcloc !11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #20, !srcloc !12
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %13, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #20, !srcloc !11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #20, !srcloc !12
  %18 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef %3) #21
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %9, label %21

21:                                               ; preds = %9, %1
  tail call void @synchronize_rcu() #20
  %22 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %3) #21
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ %22, %25 ], [ %36, %27 ]
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr ptr, ptr %29, i32 %28
  %31 = load ptr, ptr %30, align 4
  tail call fastcc void @reset_disabled_cpu_buffer(ptr noundef %31)
  %32 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %31, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #20, !srcloc !11
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #20, !srcloc !22
  %34 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %31, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #20, !srcloc !11
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #20, !srcloc !22
  %36 = tail call i32 @cpumask_next(i32 noundef %28, ptr noundef %3) #21
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %27, label %39

39:                                               ; preds = %27, %21
  tail call void @mutex_unlock(ptr noundef %2) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ring_buffer_alloc_read_page(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !10
  %17 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #20, !srcloc !11
  %18 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr %17, i32 65536) #20, !srcloc !63
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = lshr i32 %19, 16
  %21 = and i32 %19, 65535
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %23, %11
  tail call void asm sideeffect "wfe", "~{memory}"() #20, !srcloc !64
  %24 = load volatile i16, ptr %17, align 4
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %20, %25
  br i1 %26, label %27, label %23

27:                                               ; preds = %23, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !65
  %28 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %15, i32 0, i32 7
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  store ptr null, ptr %28, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %32 = load i16, ptr %17, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #20, !srcloc !17
  br label %41

34:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %35 = load i16, ptr %17, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #20, !srcloc !17
  %37 = tail call ptr @__alloc_pages(i32 noundef 68800, i32 noundef 0, i32 noundef 0, ptr noundef null) #20
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = tail call ptr @page_address(ptr noundef nonnull %37) #20
  br label %41

41:                                               ; preds = %39, %31
  %42 = phi ptr [ %40, %39 ], [ %29, %31 ]
  %43 = getelementptr inbounds %struct.buffer_data_page, ptr %42, i32 0, i32 1
  store volatile i32 0, ptr %43, align 4
  br label %44

44:                                               ; preds = %41, %34, %2
  %45 = phi ptr [ %42, %41 ], [ inttoptr (i32 -19 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %34 ]
  ret ptr %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ring_buffer_free_read_page(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %2 to i32
  %10 = add i32 %9, 1073741824
  %11 = lshr i32 %10, 12
  %12 = getelementptr %struct.page, ptr %8, i32 %11, i32 3
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %37, label %15

15:                                               ; preds = %3
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !10
  %17 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %7, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #20, !srcloc !11
  %18 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr %17, i32 65536) #20, !srcloc !63
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = lshr i32 %19, 16
  %21 = and i32 %19, 65535
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %23, %15
  tail call void asm sideeffect "wfe", "~{memory}"() #20, !srcloc !64
  %24 = load volatile i16, ptr %17, align 4
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %20, %25
  br i1 %26, label %27, label %23

27:                                               ; preds = %23, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !65
  %28 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %7, i32 0, i32 7
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store ptr %2, ptr %28, align 8
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi ptr [ %2, %27 ], [ null, %31 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %34 = load i16, ptr %17, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #20, !srcloc !17
  %36 = ptrtoint ptr %33 to i32
  br label %37

37:                                               ; preds = %32, %3
  %38 = phi i32 [ %9, %3 ], [ %36, %32 ]
  tail call void @free_pages(i32 noundef %38, i32 noundef 0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ring_buffer_read_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr ptr, ptr %7, i32 %3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.trace_buffer, ptr %0, i32 0, i32 3
  %11 = lshr i32 %3, 5
  %12 = getelementptr i32, ptr %10, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %3, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %16, 0
  %18 = icmp ult i32 %2, 13
  %19 = or i1 %18, %17
  br i1 %19, label %198, label %20

20:                                               ; preds = %5
  %21 = add i32 %2, -12
  %22 = icmp eq ptr %1, null
  br i1 %22, label %198, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %1, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %198, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 4
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #20
  %29 = tail call fastcc ptr @rb_get_reader_page(ptr noundef %9)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %196, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 14
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.buffer_page, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.buffer_page, ptr %33, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.buffer_data_page, ptr %37, i32 0, i32 2
  %39 = getelementptr i8, ptr %38, i32 %35
  %40 = getelementptr inbounds %struct.buffer_page, ptr %29, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.buffer_page, ptr %29, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.buffer_data_page, ptr %43, i32 0, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 15
  %47 = load i32, ptr %46, align 8
  %48 = icmp ne i32 %41, 0
  %49 = icmp ult i32 %21, %45
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %31
  %52 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 13
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %33, %53
  br i1 %54, label %55, label %156

55:                                               ; preds = %51, %31
  %56 = icmp eq i32 %4, 0
  br i1 %56, label %57, label %196

57:                                               ; preds = %55
  %58 = sub i32 %45, %41
  %59 = tail call i32 @llvm.umin.i32(i32 %21, i32 %58)
  %60 = load i32, ptr %39, align 4
  %61 = and i32 %60, 30
  %62 = icmp eq i32 %61, 30
  %63 = select i1 %62, i32 8, i32 0
  %64 = getelementptr i8, ptr %39, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 31
  switch i32 %66, label %81 [
    i32 29, label %67
    i32 30, label %82
    i32 31, label %82
    i32 0, label %75
    i32 1, label %73
    i32 2, label %73
    i32 3, label %73
    i32 4, label %73
    i32 5, label %73
    i32 6, label %73
    i32 7, label %73
    i32 8, label %73
    i32 9, label %73
    i32 10, label %73
    i32 11, label %73
    i32 12, label %73
    i32 13, label %73
    i32 14, label %73
    i32 15, label %73
    i32 16, label %73
    i32 17, label %73
    i32 18, label %73
    i32 19, label %73
    i32 20, label %73
    i32 21, label %73
    i32 22, label %73
    i32 23, label %73
    i32 24, label %73
    i32 25, label %73
    i32 26, label %73
    i32 27, label %73
    i32 28, label %73
  ]

67:                                               ; preds = %57
  %68 = icmp eq i32 %65, 29
  br i1 %68, label %82, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.ring_buffer_event, ptr %64, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 4
  br label %82

73:                                               ; preds = %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57, %57
  %74 = shl nuw nsw i32 %66, 2
  br label %78

75:                                               ; preds = %57
  %76 = getelementptr inbounds %struct.ring_buffer_event, ptr %64, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %73
  %79 = phi i32 [ %74, %73 ], [ %77, %75 ]
  %80 = add i32 %79, 4
  br label %82

81:                                               ; preds = %57
  unreachable

82:                                               ; preds = %78, %69, %67, %57, %57
  %83 = phi i32 [ %80, %78 ], [ %72, %69 ], [ -1, %67 ], [ 8, %57 ], [ 8, %57 ]
  %84 = add i32 %83, %63
  %85 = icmp ult i32 %59, %84
  br i1 %85, label %196, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 34
  %88 = load i64, ptr %87, align 8
  %89 = getelementptr inbounds %struct.buffer_data_page, ptr %24, i32 0, i32 2
  br label %90

90:                                               ; preds = %150, %86
  %91 = phi i32 [ %60, %86 ], [ %128, %150 ]
  %92 = phi ptr [ %39, %86 ], [ %127, %150 ]
  %93 = phi i32 [ %59, %86 ], [ %120, %150 ]
  %94 = phi i32 [ %41, %86 ], [ %116, %150 ]
  %95 = phi i32 [ 0, %86 ], [ %117, %150 ]
  %96 = and i32 %91, 31
  switch i32 %96, label %111 [
    i32 29, label %97
    i32 30, label %112
    i32 31, label %112
    i32 0, label %105
    i32 1, label %103
    i32 2, label %103
    i32 3, label %103
    i32 4, label %103
    i32 5, label %103
    i32 6, label %103
    i32 7, label %103
    i32 8, label %103
    i32 9, label %103
    i32 10, label %103
    i32 11, label %103
    i32 12, label %103
    i32 13, label %103
    i32 14, label %103
    i32 15, label %103
    i32 16, label %103
    i32 17, label %103
    i32 18, label %103
    i32 19, label %103
    i32 20, label %103
    i32 21, label %103
    i32 22, label %103
    i32 23, label %103
    i32 24, label %103
    i32 25, label %103
    i32 26, label %103
    i32 27, label %103
    i32 28, label %103
  ]

97:                                               ; preds = %90
  %98 = icmp eq i32 %91, 29
  br i1 %98, label %112, label %99

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.ring_buffer_event, ptr %92, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, 4
  br label %112

103:                                              ; preds = %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90, %90
  %104 = shl nuw nsw i32 %96, 2
  br label %108

105:                                              ; preds = %90
  %106 = getelementptr inbounds %struct.ring_buffer_event, ptr %92, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  br label %108

108:                                              ; preds = %105, %103
  %109 = phi i32 [ %104, %103 ], [ %107, %105 ]
  %110 = add i32 %109, 4
  br label %112

111:                                              ; preds = %90
  unreachable

112:                                              ; preds = %108, %99, %97, %90, %90
  %113 = phi i32 [ %110, %108 ], [ %102, %99 ], [ -1, %97 ], [ 8, %90 ], [ 8, %90 ]
  %114 = getelementptr i8, ptr %89, i32 %95
  %115 = getelementptr i8, ptr %38, i32 %94
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %114, ptr align 1 %115, i32 %113, i1 false)
  tail call fastcc void @rb_advance_reader(ptr noundef %9)
  %116 = load i32, ptr %40, align 4
  %117 = add i32 %113, %95
  %118 = icmp ult i32 %116, %45
  br i1 %118, label %119, label %154

119:                                              ; preds = %112
  %120 = sub i32 %93, %113
  %121 = load ptr, ptr %32, align 4
  %122 = getelementptr inbounds %struct.buffer_page, ptr %121, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.buffer_page, ptr %121, i32 0, i32 5
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.buffer_data_page, ptr %125, i32 0, i32 2
  %127 = getelementptr i8, ptr %126, i32 %123
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, 30
  %130 = icmp eq i32 %129, 30
  %131 = select i1 %130, i32 8, i32 0
  %132 = getelementptr i8, ptr %127, i32 %131
  %133 = load i32, ptr %132, align 4
  %134 = and i32 %133, 31
  switch i32 %134, label %149 [
    i32 29, label %135
    i32 30, label %150
    i32 31, label %150
    i32 0, label %143
    i32 1, label %141
    i32 2, label %141
    i32 3, label %141
    i32 4, label %141
    i32 5, label %141
    i32 6, label %141
    i32 7, label %141
    i32 8, label %141
    i32 9, label %141
    i32 10, label %141
    i32 11, label %141
    i32 12, label %141
    i32 13, label %141
    i32 14, label %141
    i32 15, label %141
    i32 16, label %141
    i32 17, label %141
    i32 18, label %141
    i32 19, label %141
    i32 20, label %141
    i32 21, label %141
    i32 22, label %141
    i32 23, label %141
    i32 24, label %141
    i32 25, label %141
    i32 26, label %141
    i32 27, label %141
    i32 28, label %141
  ]

135:                                              ; preds = %119
  %136 = icmp eq i32 %133, 29
  br i1 %136, label %150, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.ring_buffer_event, ptr %132, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, 4
  br label %150

141:                                              ; preds = %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119, %119
  %142 = shl nuw nsw i32 %134, 2
  br label %146

143:                                              ; preds = %119
  %144 = getelementptr inbounds %struct.ring_buffer_event, ptr %132, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  br label %146

146:                                              ; preds = %143, %141
  %147 = phi i32 [ %142, %141 ], [ %145, %143 ]
  %148 = add i32 %147, 4
  br label %150

149:                                              ; preds = %119
  unreachable

150:                                              ; preds = %146, %137, %135, %119, %119
  %151 = phi i32 [ %148, %146 ], [ %140, %137 ], [ -1, %135 ], [ 8, %119 ], [ 8, %119 ]
  %152 = add i32 %151, %131
  %153 = icmp ult i32 %120, %152
  br i1 %153, label %154, label %90

154:                                              ; preds = %150, %112
  %155 = getelementptr inbounds %struct.buffer_data_page, ptr %24, i32 0, i32 1
  store volatile i32 %117, ptr %155, align 4
  store i64 %88, ptr %24, align 8
  br label %175

156:                                              ; preds = %51
  %157 = getelementptr inbounds %struct.buffer_page, ptr %29, i32 0, i32 3
  %158 = load volatile i32, ptr %157, align 4
  %159 = and i32 %158, 1048575
  %160 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 29
  %161 = load i32, ptr %160, align 8
  %162 = add i32 %161, %159
  store i32 %162, ptr %160, align 8
  %163 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %9, i32 0, i32 30
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, 4084
  store i32 %165, ptr %163, align 4
  %166 = getelementptr inbounds %struct.buffer_data_page, ptr %24, i32 0, i32 1
  store volatile i32 0, ptr %166, align 4
  %167 = load ptr, ptr %42, align 4
  %168 = load ptr, ptr %1, align 4
  store ptr %168, ptr %42, align 4
  %169 = getelementptr inbounds %struct.buffer_page, ptr %29, i32 0, i32 1
  store volatile i32 0, ptr %169, align 4
  store volatile i32 0, ptr %157, align 4
  store i32 0, ptr %40, align 4
  store ptr %167, ptr %1, align 4
  %170 = getelementptr inbounds %struct.buffer_page, ptr %29, i32 0, i32 4
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %156
  %174 = getelementptr inbounds %struct.buffer_data_page, ptr %167, i32 0, i32 1
  store volatile i32 %171, ptr %174, align 4
  br label %175

175:                                              ; preds = %173, %156, %154
  %176 = phi ptr [ %24, %154 ], [ %167, %173 ], [ %167, %156 ]
  store i32 0, ptr %46, align 8
  %177 = getelementptr inbounds %struct.buffer_data_page, ptr %176, i32 0, i32 1
  %178 = load volatile i32, ptr %177, align 4
  %179 = icmp eq i32 %47, 0
  br i1 %179, label %190, label %180

180:                                              ; preds = %175
  %181 = add i32 %178, -4085
  %182 = icmp ult i32 %181, -4
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = getelementptr %struct.buffer_data_page, ptr %176, i32 0, i32 2, i32 %178
  store i32 %47, ptr %184, align 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %177) #20, !srcloc !11
  %185 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %177, ptr %177, i32 1073741824, ptr elementtype(i32) %177) #20, !srcloc !12
  %186 = add i32 %178, 4
  br label %187

187:                                              ; preds = %183, %180
  %188 = phi i32 [ %186, %183 ], [ %178, %180 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %177) #20, !srcloc !11
  %189 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %177, ptr %177, i32 -2147483648, ptr elementtype(i32) %177) #20, !srcloc !12
  br label %190

190:                                              ; preds = %187, %175
  %191 = phi i32 [ %188, %187 ], [ %178, %175 ]
  %192 = icmp ult i32 %191, 4084
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = getelementptr %struct.buffer_data_page, ptr %176, i32 0, i32 2, i32 %191
  %195 = sub nuw nsw i32 4084, %191
  tail call void @llvm.memset.p0.i32(ptr align 1 %194, i8 0, i32 %195, i1 false)
  br label %196

196:                                              ; preds = %193, %190, %82, %55, %26
  %197 = phi i32 [ 0, %193 ], [ 0, %190 ], [ -1, %26 ], [ -1, %55 ], [ -1, %82 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #20
  br label %198

198:                                              ; preds = %196, %23, %20, %5
  %199 = phi i32 [ -1, %5 ], [ %197, %196 ], [ -1, %23 ], [ -1, %20 ]
  ret i32 %199
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rb_get_reader_page(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #20, !srcloc !10
  %3 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #20, !srcloc !11
  %4 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr %3, i32 65536) #20, !srcloc !63
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = lshr i32 %5, 16
  %7 = and i32 %5, 65535
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %1
  tail call void asm sideeffect "wfe", "~{memory}"() #20, !srcloc !64
  %10 = load volatile i16, ptr %3, align 4
  %11 = zext i16 %10 to i32
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !65
  %14 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 14
  %15 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 13
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 19
  %17 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 20
  %18 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 29
  %19 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 10
  %20 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 11
  %21 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 26
  %22 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 16
  %23 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 15
  br label %29

24:                                               ; preds = %116
  %25 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_buffer, ptr %26, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #20, !srcloc !11
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 4432, i32 noundef 9, ptr noundef null) #20
  br label %130

29:                                               ; preds = %116, %13
  %30 = phi i32 [ 1, %13 ], [ %117, %116 ]
  %31 = load ptr, ptr %14, align 4
  %32 = getelementptr inbounds %struct.buffer_page, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.buffer_page, ptr %31, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.buffer_data_page, ptr %35, i32 0, i32 1
  %37 = load volatile i32, ptr %36, align 4
  %38 = icmp ult i32 %33, %37
  br i1 %38, label %119, label %39

39:                                               ; preds = %29
  %40 = load volatile i32, ptr %36, align 4
  %41 = icmp ugt i32 %33, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_buffer, ptr %44, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #20, !srcloc !11
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 4445, i32 noundef 9, ptr noundef null) #20
  br label %119

47:                                               ; preds = %39
  %48 = load ptr, ptr %15, align 8
  %49 = icmp eq ptr %48, %31
  br i1 %49, label %130, label %50

50:                                               ; preds = %47
  %51 = load volatile i32, ptr %16, align 4
  %52 = load volatile i32, ptr %17, align 4
  %53 = load i32, ptr %18, align 8
  %54 = add i32 %53, %52
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %130, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.buffer_page, ptr %31, i32 0, i32 1
  store volatile i32 0, ptr %57, align 4
  %58 = load ptr, ptr %14, align 4
  %59 = getelementptr inbounds %struct.buffer_page, ptr %58, i32 0, i32 3
  store volatile i32 0, ptr %59, align 4
  %60 = load ptr, ptr %14, align 4
  %61 = getelementptr inbounds %struct.buffer_page, ptr %60, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.buffer_data_page, ptr %62, i32 0, i32 1
  store volatile i32 0, ptr %63, align 4
  %64 = load ptr, ptr %14, align 4
  %65 = getelementptr inbounds %struct.buffer_page, ptr %64, i32 0, i32 4
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %95, %56
  %67 = tail call fastcc ptr @rb_set_head_page(ptr noundef %0)
  %68 = icmp eq ptr %67, null
  br i1 %68, label %130, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %67, align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = and i32 %71, -4
  %73 = inttoptr i32 %72 to ptr
  %74 = load ptr, ptr %14, align 4
  store ptr %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %14, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %76, ptr %78, align 4
  %79 = load ptr, ptr %75, align 4
  store ptr %79, ptr %19, align 4
  %80 = load ptr, ptr %14, align 4
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, -4
  %83 = or i32 %82, 1
  store i32 %83, ptr %80, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !66
  %84 = load volatile i32, ptr %17, align 4
  %85 = load ptr, ptr %14, align 4
  %86 = load ptr, ptr %75, align 4
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, -4
  %89 = or i32 %88, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !67
  %90 = ptrtoint ptr %85 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #20, !srcloc !11
  br label %91

91:                                               ; preds = %91, %69
  %92 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %86, i32 %89, i32 %90) #20, !srcloc !24
  %93 = extractvalue { i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %91

95:                                               ; preds = %91
  %96 = extractvalue { i32, i32 } %92, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !68
  %97 = icmp eq i32 %96, %89
  br i1 %97, label %98, label %66

98:                                               ; preds = %95
  %99 = load ptr, ptr %14, align 4
  %100 = load ptr, ptr %67, align 4
  %101 = ptrtoint ptr %100 to i32
  %102 = and i32 %101, -4
  %103 = inttoptr i32 %102 to ptr
  %104 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  store ptr %99, ptr %104, align 4
  %105 = load ptr, ptr %20, align 4
  %106 = load ptr, ptr %105, align 4
  %107 = ptrtoint ptr %106 to i32
  %108 = and i32 %107, -4
  %109 = inttoptr i32 %108 to ptr
  store ptr %109, ptr %20, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #20, !srcloc !11
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #20, !srcloc !12
  store ptr %67, ptr %14, align 4
  %111 = getelementptr inbounds %struct.buffer_page, ptr %67, i32 0, i32 2
  store i32 0, ptr %111, align 4
  %112 = load i32, ptr %22, align 4
  %113 = icmp eq i32 %84, %112
  br i1 %113, label %116, label %114

114:                                              ; preds = %98
  %115 = sub i32 %84, %112
  store i32 %115, ptr %23, align 8
  store i32 %84, ptr %22, align 4
  br label %116

116:                                              ; preds = %114, %98
  %117 = add nuw nsw i32 %30, 1
  %118 = icmp eq i32 %117, 4
  br i1 %118, label %24, label %29

119:                                              ; preds = %42, %29
  %120 = getelementptr inbounds %struct.buffer_page, ptr %31, i32 0, i32 5
  %121 = icmp eq ptr %31, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.buffer_page, ptr %31, i32 0, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load ptr, ptr %120, align 4
  %128 = load i64, ptr %127, align 8
  %129 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 34
  store i64 %128, ptr %129, align 8
  br label %130

130:                                              ; preds = %126, %122, %119, %66, %50, %47, %24
  %131 = phi ptr [ %31, %126 ], [ %31, %122 ], [ null, %119 ], [ null, %24 ], [ null, %66 ], [ null, %47 ], [ null, %50 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  %132 = load i16, ptr %3, align 4
  %133 = add i16 %132, 1
  store i16 %133, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #20, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #20, !srcloc !15
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #20, !srcloc !17
  ret ptr %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_rb_cpu_prepare(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 -44
  %4 = getelementptr i8, ptr %1, i32 -32
  %5 = lshr i32 %0, 5
  %6 = getelementptr i32, ptr %4, i32 %5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %0, 31
  %9 = shl nuw i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %14 = getelementptr i8, ptr %1, i32 -4
  br label %15

15:                                               ; preds = %20, %12
  %16 = phi i32 [ %18, %20 ], [ -1, %12 ]
  %17 = phi i32 [ %26, %20 ], [ 0, %12 ]
  %18 = tail call i32 @cpumask_next(i32 noundef %16, ptr noundef %4) #21
  %19 = icmp ult i32 %18, %13
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = icmp eq i32 %17, 0
  %22 = load ptr, ptr %14, align 4
  %23 = getelementptr ptr, ptr %22, i32 %18
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %24, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = select i1 %21, i32 %26, i32 %17
  %28 = icmp eq i32 %27, %26
  br i1 %28, label %15, label %29

29:                                               ; preds = %20, %15
  %30 = phi i32 [ 2, %20 ], [ %17, %15 ]
  %31 = tail call fastcc ptr @rb_allocate_cpu_buffer(ptr noundef %3, i32 noundef %30, i32 noundef %0)
  %32 = load ptr, ptr %14, align 4
  %33 = getelementptr ptr, ptr %32, i32 %0
  store ptr %31, ptr %33, align 4
  %34 = load ptr, ptr %14, align 4
  %35 = getelementptr ptr, ptr %34, i32 %0
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 5710, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %0) #20
  br label %40

39:                                               ; preds = %29
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #20, !srcloc !69
  tail call void @_set_bit(i32 noundef %0, ptr noundef %4) #20
  br label %40

40:                                               ; preds = %39, %38, %2
  %41 = phi i32 [ 0, %39 ], [ -12, %38 ], [ 0, %2 ]
  ret i32 %41
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @update_pages_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -204
  tail call fastcc void @rb_update_pages(ptr noundef %2)
  %3 = getelementptr i8, ptr %0, i32 16
  tail call void @complete(ptr noundef %3) #20
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_mem_available() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rb_time_cmpxchg(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rb_time_struct, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.rb_time_struct, ptr %0, i32 0, i32 2
  br label %6

6:                                                ; preds = %6, %3
  %7 = load volatile i32, ptr %0, align 4
  %8 = load volatile i32, ptr %4, align 4
  %9 = load volatile i32, ptr %5, align 4
  %10 = load volatile i32, ptr %0, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %6

12:                                               ; preds = %6
  %13 = lshr i32 %8, 30
  %14 = lshr i32 %9, 30
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = and i32 %8, 1073741823
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 30
  %20 = and i32 %9, 1073741823
  %21 = zext i32 %20 to i64
  %22 = or i64 %19, %21
  %23 = icmp eq i64 %22, %1
  br i1 %23, label %24, label %65

24:                                               ; preds = %16
  %25 = load volatile i32, ptr %0, align 4
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, %13
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = add i32 %25, 1
  %30 = shl i32 %25, 30
  %31 = or i32 %30, %17
  %32 = lshr i64 %2, 30
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 1073741823
  %35 = trunc i64 %2 to i32
  %36 = shl i32 %29, 30
  %37 = or i32 %36, %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !52
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #20, !srcloc !11
  br label %38

38:                                               ; preds = %38, %28
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %25, i32 %29, ptr elementtype(i32) %0) #20, !srcloc !53
  %40 = extractvalue { i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %38

42:                                               ; preds = %38
  %43 = or i32 %30, %20
  %44 = and i32 %35, 1073741823
  %45 = or i32 %36, %44
  %46 = extractvalue { i32, i32 } %39, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !54
  %47 = icmp eq i32 %46, %25
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !52
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #20, !srcloc !11
  br label %49

49:                                               ; preds = %49, %48
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %31, i32 %37, ptr elementtype(i32) %4) #20, !srcloc !53
  %51 = extractvalue { i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %49

53:                                               ; preds = %49
  %54 = extractvalue { i32, i32 } %50, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !54
  %55 = icmp eq i32 %54, %31
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !52
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #20, !srcloc !11
  br label %57

57:                                               ; preds = %57, %56
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %43, i32 %45, ptr elementtype(i32) %5) #20, !srcloc !53
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %57

61:                                               ; preds = %57
  %62 = extractvalue { i32, i32 } %58, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !54
  %63 = icmp eq i32 %62, %43
  %64 = zext i1 %63 to i32
  br label %65

65:                                               ; preds = %61, %53, %42, %24, %16, %12
  %66 = phi i32 [ 0, %16 ], [ 0, %24 ], [ 0, %42 ], [ 0, %53 ], [ %64, %61 ], [ 0, %12 ]
  ret i32 %66
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rb_move_tail(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #17 {
  %4 = getelementptr inbounds %struct.rb_event_info, ptr %2, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = and i32 %11, -4
  %13 = inttoptr i32 %12 to ptr
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %15, label %18, !prof !8

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #20, !srcloc !11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #20, !srcloc !12
  br label %306

18:                                               ; preds = %3
  %19 = and i32 %11, 3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %126, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = and i32 %25, -4
  %27 = inttoptr i32 %26 to ptr
  %28 = icmp eq ptr %7, %27
  br i1 %28, label %29, label %115

29:                                               ; preds = %21
  %30 = load i32, ptr %9, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #20, !srcloc !11
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #20, !srcloc !12
  br label %306

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.buffer_page, ptr %13, i32 0, i32 3
  %38 = load volatile i32, ptr %37, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !70
  %39 = or i32 %12, 1
  %40 = or i32 %12, 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #20, !srcloc !11
  br label %41

41:                                               ; preds = %41, %36
  %42 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %5, i32 %39, i32 %40) #20, !srcloc !24
  %43 = extractvalue { i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %41

45:                                               ; preds = %41
  %46 = extractvalue { i32, i32 } %42, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !71
  %47 = and i32 %46, -4
  %48 = icmp eq i32 %47, %12
  %49 = and i32 %46, 3
  %50 = select i1 %48, i32 %49, i32 4
  switch i32 %50, label %57 [
    i32 1, label %51
    i32 2, label %61
    i32 0, label %160
    i32 4, label %160
  ]

51:                                               ; preds = %45
  %52 = and i32 %38, 1048575
  %53 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #20, !srcloc !11
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 %52, ptr elementtype(i32) %53) #20, !srcloc !12
  %55 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #20, !srcloc !11
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 4084, ptr elementtype(i32) %55) #20, !srcloc !22
  br label %61

57:                                               ; preds = %45
  %58 = load ptr, ptr %8, align 4
  %59 = getelementptr inbounds %struct.trace_buffer, ptr %58, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #20, !srcloc !11
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #20, !srcloc !12
  br label %113

61:                                               ; preds = %51, %45
  %62 = load ptr, ptr %13, align 4
  %63 = ptrtoint ptr %62 to i32
  %64 = and i32 %63, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !70
  %65 = or i32 %64, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #20, !srcloc !11
  br label %66

66:                                               ; preds = %66, %61
  %67 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %13, i32 %64, i32 %65) #20, !srcloc !24
  %68 = extractvalue { i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %66

70:                                               ; preds = %66
  %71 = extractvalue { i32, i32 } %67, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !71
  %72 = and i32 %71, -4
  %73 = icmp eq i32 %72, %64
  %74 = and i32 %71, 3
  %75 = select i1 %73, i32 %74, i32 4
  %76 = icmp ult i32 %75, 2
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load ptr, ptr %8, align 4
  %79 = getelementptr inbounds %struct.trace_buffer, ptr %78, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #20, !srcloc !11
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #20, !srcloc !12
  br label %113

81:                                               ; preds = %70
  %82 = icmp eq i32 %75, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 12
  %85 = load volatile ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %5
  %87 = icmp eq ptr %85, %13
  %88 = or i1 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !70
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #20, !srcloc !11
  br label %90

90:                                               ; preds = %90, %89
  %91 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %13, i32 %65, i32 %64) #20, !srcloc !24
  %92 = extractvalue { i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %90

94:                                               ; preds = %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !71
  br label %95

95:                                               ; preds = %94, %83, %81
  %96 = icmp eq i32 %50, 1
  br i1 %96, label %97, label %126

97:                                               ; preds = %95
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !70
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #20, !srcloc !11
  br label %98

98:                                               ; preds = %98, %97
  %99 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %5, i32 %40, i32 %12) #20, !srcloc !24
  %100 = extractvalue { i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %98

102:                                              ; preds = %98
  %103 = extractvalue { i32, i32 } %99, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !71
  %104 = and i32 %103, -4
  %105 = icmp eq i32 %104, %12
  %106 = and i32 %103, 3
  %107 = icmp eq i32 %106, 2
  %108 = and i1 %105, %107
  br i1 %108, label %126, label %109

109:                                              ; preds = %102
  %110 = load ptr, ptr %8, align 4
  %111 = getelementptr inbounds %struct.trace_buffer, ptr %110, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #20, !srcloc !11
  %112 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 1, ptr elementtype(i32) %111) #20, !srcloc !12
  br label %113

113:                                              ; preds = %109, %77, %57
  %114 = phi i32 [ 2514, %109 ], [ 2475, %77 ], [ 2437, %57 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef %114, i32 noundef 9, ptr noundef null) #20
  br label %306

115:                                              ; preds = %21
  %116 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 12
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %7, %117
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 14
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %7, %121
  br i1 %122, label %123, label %126, !prof !8

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %124) #20, !srcloc !11
  %125 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %124, ptr %124, i32 1, ptr elementtype(i32) %124) #20, !srcloc !12
  br label %306

126:                                              ; preds = %119, %115, %102, %95, %18
  %127 = getelementptr inbounds %struct.buffer_page, ptr %13, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %127) #20, !srcloc !11
  %128 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %127, ptr %127, i32 1048576, ptr elementtype(i32) %127) #20, !srcloc !43
  %129 = extractvalue { i32, i32 } %128, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !44
  %130 = getelementptr inbounds %struct.buffer_page, ptr %13, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %130) #20, !srcloc !11
  %131 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %130, ptr %130, i32 1048576, ptr elementtype(i32) %130) #20, !srcloc !43
  %132 = extractvalue { i32, i32 } %131, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !44
  %133 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %133) #20, !srcloc !11
  %134 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %133, ptr %133, i32 1, ptr elementtype(i32) %133) #20, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !72
  %135 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 12
  %136 = load volatile ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, %5
  br i1 %137, label %138, label %160

138:                                              ; preds = %126
  %139 = and i32 %129, -1048576
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !52
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %127) #20, !srcloc !11
  br label %140

140:                                              ; preds = %140, %138
  %141 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %127, ptr %127, i32 %129, i32 %139, ptr elementtype(i32) %127) #20, !srcloc !53
  %142 = extractvalue { i32, i32 } %141, 0
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %140

144:                                              ; preds = %140
  %145 = and i32 %132, -1048576
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !52
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %130) #20, !srcloc !11
  br label %146

146:                                              ; preds = %146, %144
  %147 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %130, ptr %130, i32 %132, i32 %145, ptr elementtype(i32) %130) #20, !srcloc !53
  %148 = extractvalue { i32, i32 } %147, 0
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %146

150:                                              ; preds = %146
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !54
  %151 = getelementptr inbounds %struct.buffer_page, ptr %13, i32 0, i32 5
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.buffer_data_page, ptr %152, i32 0, i32 1
  store volatile i32 0, ptr %153, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !73
  %154 = ptrtoint ptr %5 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %135) #20, !srcloc !11
  br label %155

155:                                              ; preds = %155, %150
  %156 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %135, i32 %154, i32 %12) #20, !srcloc !24
  %157 = extractvalue { i32, i32 } %156, 0
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %155

159:                                              ; preds = %155
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !74
  br label %160

160:                                              ; preds = %159, %126, %45, %45
  %161 = load ptr, ptr %4, align 4
  %162 = getelementptr inbounds %struct.rb_event_info, ptr %2, i32 0, i32 4
  %163 = load i32, ptr %162, align 8
  %164 = icmp ugt i32 %1, 4083
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = icmp eq i32 %1, 4084
  br i1 %166, label %167, label %169

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.buffer_page, ptr %161, i32 0, i32 4
  store i32 0, ptr %168, align 4
  br label %169

169:                                              ; preds = %167, %165
  %170 = getelementptr inbounds %struct.buffer_page, ptr %161, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %170) #20, !srcloc !11
  %171 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %170, ptr %170, i32 %163, ptr elementtype(i32) %170) #20, !srcloc !22
  br label %192

172:                                              ; preds = %160
  %173 = getelementptr inbounds %struct.buffer_page, ptr %161, i32 0, i32 5
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.buffer_data_page, ptr %174, i32 0, i32 2
  %176 = getelementptr i8, ptr %175, i32 %1
  %177 = sub nuw nsw i32 4084, %1
  %178 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %178) #20, !srcloc !11
  %179 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %178, ptr %178, i32 %177, ptr elementtype(i32) %178) #20, !srcloc !12
  %180 = getelementptr inbounds %struct.buffer_page, ptr %161, i32 0, i32 4
  store i32 %1, ptr %180, align 4
  %181 = icmp ugt i32 %1, 4076
  br i1 %181, label %182, label %185

182:                                              ; preds = %172
  store i32 29, ptr %176, align 4
  %183 = getelementptr inbounds %struct.buffer_page, ptr %161, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %183) #20, !srcloc !11
  %184 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %183, ptr %183, i32 %163, ptr elementtype(i32) %183) #20, !srcloc !22
  br label %192

185:                                              ; preds = %172
  %186 = sub nuw nsw i32 4080, %1
  %187 = getelementptr inbounds %struct.ring_buffer_event, ptr %176, i32 0, i32 1
  store i32 %186, ptr %187, align 4
  store i32 61, ptr %176, align 4
  %188 = add nuw nsw i32 %1, -4084
  %189 = add i32 %188, %163
  %190 = getelementptr inbounds %struct.buffer_page, ptr %161, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %190) #20, !srcloc !11
  %191 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %190, ptr %190, i32 %189, ptr elementtype(i32) %190) #20, !srcloc !22
  br label %192

192:                                              ; preds = %185, %182, %169
  %193 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 23
  %194 = load volatile i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 24
  %198 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 8
  %199 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 12
  br label %204

200:                                              ; preds = %192
  %201 = load ptr, ptr %8, align 4
  %202 = getelementptr inbounds %struct.trace_buffer, ptr %201, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %202) #20, !srcloc !11
  %203 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %202, ptr %202, i32 1, ptr elementtype(i32) %202) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3008, i32 noundef 9, ptr noundef null) #20
  br label %304

204:                                              ; preds = %302, %196
  %205 = load volatile i32, ptr %197, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !31
  %206 = load volatile i32, ptr %193, align 4
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %295

208:                                              ; preds = %204
  %209 = load ptr, ptr %6, align 8
  br label %210

210:                                              ; preds = %289, %208
  %211 = phi ptr [ %290, %289 ], [ %209, %208 ]
  %212 = load i32, ptr %198, align 4
  %213 = load volatile ptr, ptr %199, align 4
  %214 = icmp eq ptr %211, %213
  br i1 %214, label %217, label %215

215:                                              ; preds = %210
  %216 = mul i32 %212, 100
  br label %227

217:                                              ; preds = %249, %210
  %218 = phi ptr [ %211, %210 ], [ %261, %249 ]
  %219 = getelementptr inbounds %struct.buffer_page, ptr %218, i32 0, i32 5
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.buffer_data_page, ptr %220, i32 0, i32 1
  %222 = load volatile i32, ptr %221, align 4
  %223 = getelementptr inbounds %struct.buffer_page, ptr %218, i32 0, i32 1
  %224 = load volatile i32, ptr %223, align 4
  %225 = and i32 %224, 1048575
  %226 = icmp eq i32 %222, %225
  br i1 %226, label %289, label %264

227:                                              ; preds = %249, %215
  %228 = phi ptr [ %262, %249 ], [ %213, %215 ]
  %229 = phi ptr [ %261, %249 ], [ %211, %215 ]
  %230 = phi i32 [ %231, %249 ], [ %216, %215 ]
  %231 = add i32 %230, -1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %227
  %234 = load ptr, ptr %8, align 4
  %235 = getelementptr inbounds %struct.trace_buffer, ptr %234, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %235) #20, !srcloc !11
  %236 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %235, ptr %235, i32 1, ptr elementtype(i32) %235) #20, !srcloc !12
  br label %293

237:                                              ; preds = %227
  %238 = getelementptr inbounds %struct.list_head, ptr %228, i32 0, i32 1
  %239 = load ptr, ptr %238, align 4
  %240 = load ptr, ptr %239, align 4
  %241 = ptrtoint ptr %240 to i32
  %242 = and i32 %241, -4
  %243 = inttoptr i32 %242 to ptr
  %244 = icmp eq ptr %228, %243
  br i1 %244, label %249, label %245

245:                                              ; preds = %237
  %246 = load ptr, ptr %8, align 4
  %247 = getelementptr inbounds %struct.trace_buffer, ptr %246, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %247) #20, !srcloc !11
  %248 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %247, ptr %247, i32 1, ptr elementtype(i32) %247) #20, !srcloc !12
  br label %293

249:                                              ; preds = %237
  %250 = getelementptr inbounds %struct.buffer_page, ptr %229, i32 0, i32 5
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr inbounds %struct.buffer_data_page, ptr %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.buffer_page, ptr %229, i32 0, i32 1
  %254 = load volatile i32, ptr %253, align 4
  %255 = and i32 %254, 1048575
  store volatile i32 %255, ptr %252, align 4
  %256 = load ptr, ptr %6, align 4
  %257 = load ptr, ptr %256, align 4
  %258 = ptrtoint ptr %257 to i32
  %259 = and i32 %258, -4
  %260 = inttoptr i32 %259 to ptr
  store ptr %260, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !32
  %261 = load ptr, ptr %6, align 8
  %262 = load volatile ptr, ptr %199, align 4
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %217, label %227

264:                                              ; preds = %279, %217
  %265 = phi ptr [ %285, %279 ], [ %223, %217 ]
  %266 = phi ptr [ %283, %279 ], [ %221, %217 ]
  %267 = load volatile i32, ptr %265, align 4
  %268 = and i32 %267, 1048575
  store volatile i32 %268, ptr %266, align 4
  %269 = load ptr, ptr %6, align 8
  %270 = getelementptr inbounds %struct.buffer_page, ptr %269, i32 0, i32 5
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr inbounds %struct.buffer_data_page, ptr %271, i32 0, i32 1
  %273 = load volatile i32, ptr %272, align 4
  %274 = icmp ult i32 %273, 1048576
  br i1 %274, label %279, label %275

275:                                              ; preds = %264
  %276 = load ptr, ptr %8, align 4
  %277 = getelementptr inbounds %struct.trace_buffer, ptr %276, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %277) #20, !srcloc !11
  %278 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %277, ptr %277, i32 1, ptr elementtype(i32) %277) #20, !srcloc !12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2987, i32 noundef 9, ptr noundef null) #20
  br label %279

279:                                              ; preds = %275, %264
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !33
  %280 = load ptr, ptr %6, align 8
  %281 = getelementptr inbounds %struct.buffer_page, ptr %280, i32 0, i32 5
  %282 = load ptr, ptr %281, align 4
  %283 = getelementptr inbounds %struct.buffer_data_page, ptr %282, i32 0, i32 1
  %284 = load volatile i32, ptr %283, align 4
  %285 = getelementptr inbounds %struct.buffer_page, ptr %280, i32 0, i32 1
  %286 = load volatile i32, ptr %285, align 4
  %287 = and i32 %286, 1048575
  %288 = icmp eq i32 %284, %287
  br i1 %288, label %289, label %264

289:                                              ; preds = %279, %217
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !34
  %290 = load ptr, ptr %6, align 8
  %291 = load volatile ptr, ptr %199, align 4
  %292 = icmp eq ptr %290, %291
  br i1 %292, label %295, label %210, !prof !9

293:                                              ; preds = %245, %233
  %294 = phi i32 [ 2972, %245 ], [ 2969, %233 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef %294, i32 noundef 9, ptr noundef null) #20
  br label %295

295:                                              ; preds = %293, %289, %204
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %193) #20, !srcloc !11
  %296 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %193, ptr %193, i32 1, ptr elementtype(i32) %193) #20, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !35
  %297 = load volatile i32, ptr %197, align 4
  %298 = icmp eq i32 %297, %205
  br i1 %298, label %304, label %299, !prof !9

299:                                              ; preds = %295
  %300 = load volatile i32, ptr %193, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %193) #20, !srcloc !11
  %303 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %193, ptr %193, i32 1, ptr elementtype(i32) %193) #20, !srcloc !12
  br label %204

304:                                              ; preds = %299, %295, %200
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %193) #20, !srcloc !11
  %305 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %193, ptr %193, i32 1, ptr elementtype(i32) %193) #20, !srcloc !12
  br label %338

306:                                              ; preds = %123, %113, %33, %15
  %307 = load ptr, ptr %4, align 4
  %308 = getelementptr inbounds %struct.rb_event_info, ptr %2, i32 0, i32 4
  %309 = load i32, ptr %308, align 8
  %310 = icmp ugt i32 %1, 4083
  br i1 %310, label %311, label %318

311:                                              ; preds = %306
  %312 = icmp eq i32 %1, 4084
  br i1 %312, label %313, label %315

313:                                              ; preds = %311
  %314 = getelementptr inbounds %struct.buffer_page, ptr %307, i32 0, i32 4
  store i32 0, ptr %314, align 4
  br label %315

315:                                              ; preds = %313, %311
  %316 = getelementptr inbounds %struct.buffer_page, ptr %307, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %316) #20, !srcloc !11
  %317 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %316, ptr %316, i32 %309, ptr elementtype(i32) %316) #20, !srcloc !22
  br label %338

318:                                              ; preds = %306
  %319 = getelementptr inbounds %struct.buffer_page, ptr %307, i32 0, i32 5
  %320 = load ptr, ptr %319, align 4
  %321 = getelementptr inbounds %struct.buffer_data_page, ptr %320, i32 0, i32 2
  %322 = getelementptr i8, ptr %321, i32 %1
  %323 = sub nuw nsw i32 4084, %1
  %324 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %324) #20, !srcloc !11
  %325 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %324, ptr %324, i32 %323, ptr elementtype(i32) %324) #20, !srcloc !12
  %326 = getelementptr inbounds %struct.buffer_page, ptr %307, i32 0, i32 4
  store i32 %1, ptr %326, align 4
  %327 = icmp ugt i32 %1, 4076
  br i1 %327, label %328, label %331

328:                                              ; preds = %318
  store i32 29, ptr %322, align 4
  %329 = getelementptr inbounds %struct.buffer_page, ptr %307, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %329) #20, !srcloc !11
  %330 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %329, ptr %329, i32 %309, ptr elementtype(i32) %329) #20, !srcloc !22
  br label %338

331:                                              ; preds = %318
  %332 = sub nuw nsw i32 4080, %1
  %333 = getelementptr inbounds %struct.ring_buffer_event, ptr %322, i32 0, i32 1
  store i32 %332, ptr %333, align 4
  store i32 61, ptr %322, align 4
  %334 = add nuw nsw i32 %1, -4084
  %335 = add i32 %334, %309
  %336 = getelementptr inbounds %struct.buffer_page, ptr %307, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %336) #20, !srcloc !11
  %337 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %336, ptr %336, i32 %335, ptr elementtype(i32) %336) #20, !srcloc !22
  br label %338

338:                                              ; preds = %331, %328, %315, %304
  %339 = phi ptr [ inttoptr (i32 -11 to ptr), %304 ], [ null, %315 ], [ null, %328 ], [ null, %331 ]
  ret ptr %339
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rb_add_timestamp(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.rb_event_info, ptr %2, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 12
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.rb_event_info, ptr %2, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = icmp ugt i64 %11, 576460752303423488
  br i1 %12, label %13, label %36, !prof !8

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rb_event_info, ptr %2, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.rb_event_info, ptr %2, i32 0, i32 3
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i64, ptr %2, align 8
  %21 = icmp ugt i64 %15, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i1, ptr @rb_add_timestamp.once, align 4
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  store i1 true, ptr @rb_add_timestamp.once, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i64 noundef %15, i64 noundef %20) #24
  br label %27

26:                                               ; preds = %19, %13
  tail call fastcc void @rb_check_timestamp(ptr noundef %0, ptr noundef %2)
  br label %27

27:                                               ; preds = %26, %24, %22
  br i1 %9, label %34, label %28

28:                                               ; preds = %27
  %29 = load ptr, ptr %1, align 4
  %30 = load i64, ptr %10, align 8
  %31 = trunc i64 %30 to i32
  %32 = lshr i64 %30, 27
  %33 = trunc i64 %32 to i32
  br label %48

34:                                               ; preds = %27
  store i64 0, ptr %10, align 8
  %35 = load ptr, ptr %1, align 4
  br label %41

36:                                               ; preds = %5
  %37 = load ptr, ptr %1, align 4
  %38 = trunc i64 %11 to i32
  %39 = lshr i64 %11, 27
  %40 = trunc i64 %39 to i32
  br i1 %9, label %41, label %48

41:                                               ; preds = %36, %34
  %42 = phi i32 [ 0, %34 ], [ %38, %36 ]
  %43 = phi i32 [ 0, %34 ], [ %40, %36 ]
  %44 = phi ptr [ %35, %34 ], [ %37, %36 ]
  %45 = ptrtoint ptr %44 to i32
  %46 = and i32 %45, 4095
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %55, label %48

48:                                               ; preds = %41, %36, %28
  %49 = phi i32 [ %42, %41 ], [ %31, %28 ], [ %38, %36 ]
  %50 = phi i32 [ %43, %41 ], [ %33, %28 ], [ %40, %36 ]
  %51 = phi ptr [ %44, %41 ], [ %29, %28 ], [ %37, %36 ]
  %52 = phi i32 [ 30, %41 ], [ 31, %28 ], [ 31, %36 ]
  %53 = shl i32 %49, 5
  %54 = or i32 %52, %53
  store i32 %54, ptr %51, align 4
  br label %56

55:                                               ; preds = %41
  store i32 30, ptr %44, align 4
  br label %56

56:                                               ; preds = %55, %48
  %57 = phi ptr [ %44, %55 ], [ %51, %48 ]
  %58 = phi i32 [ 0, %55 ], [ %50, %48 ]
  %59 = getelementptr inbounds %struct.ring_buffer_event, ptr %57, i32 0, i32 1
  store i32 %58, ptr %59, align 4
  %60 = getelementptr i8, ptr %57, i32 8
  store ptr %60, ptr %1, align 4
  %61 = load i32, ptr %4, align 4
  %62 = add i32 %61, -8
  store i32 %62, ptr %4, align 4
  store i64 0, ptr %3, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rb_check_timestamp(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i1, ptr @rb_check_timestamp.__already_done, align 1
  br i1 %3, label %33, label %4, !prof !9

4:                                                ; preds = %2
  store i1 true, ptr @rb_check_timestamp.__already_done, align 1
  %5 = getelementptr inbounds %struct.rb_event_info, ptr %1, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = load i64, ptr %1, align 8
  %8 = getelementptr inbounds %struct.rb_event_info, ptr %1, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rb_event_info, ptr %1, i32 0, i32 3
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 31
  %13 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 31, i32 1
  %14 = getelementptr inbounds %struct.ring_buffer_per_cpu, ptr %0, i32 0, i32 31, i32 2
  br label %15

15:                                               ; preds = %15, %4
  %16 = load volatile i32, ptr %12, align 4
  %17 = load volatile i32, ptr %13, align 4
  %18 = load volatile i32, ptr %14, align 4
  %19 = load volatile i32, ptr %12, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %15

21:                                               ; preds = %15
  %22 = xor i32 %18, %17
  %23 = icmp ult i32 %22, 1073741824
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = and i32 %17, 1073741823
  %26 = zext i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 30
  %28 = and i32 %18, 1073741823
  %29 = zext i32 %28 to i64
  %30 = or i64 %27, %29
  br label %31

31:                                               ; preds = %24, %21
  %32 = phi i64 [ 0, %21 ], [ %30, %24 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2744, i32 noundef 9, ptr noundef nonnull @.str.24, i64 noundef %6, i64 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %32, ptr noundef nonnull @.str.25) #20
  br label %33

33:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rb_iter_head_event(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  br label %69

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.buffer_page, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.buffer_data_page, ptr %14, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !75
  %17 = load i32, ptr %3, align 4
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr inbounds %struct.buffer_data_page, ptr %18, i32 0, i32 2
  %20 = getelementptr i8, ptr %19, i32 %17
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 31
  switch i32 %22, label %37 [
    i32 29, label %23
    i32 30, label %38
    i32 31, label %38
    i32 0, label %31
    i32 1, label %29
    i32 2, label %29
    i32 3, label %29
    i32 4, label %29
    i32 5, label %29
    i32 6, label %29
    i32 7, label %29
    i32 8, label %29
    i32 9, label %29
    i32 10, label %29
    i32 11, label %29
    i32 12, label %29
    i32 13, label %29
    i32 14, label %29
    i32 15, label %29
    i32 16, label %29
    i32 17, label %29
    i32 18, label %29
    i32 19, label %29
    i32 20, label %29
    i32 21, label %29
    i32 22, label %29
    i32 23, label %29
    i32 24, label %29
    i32 25, label %29
    i32 26, label %29
    i32 27, label %29
    i32 28, label %29
  ]

23:                                               ; preds = %11
  %24 = icmp eq i32 %21, 29
  br i1 %24, label %38, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ring_buffer_event, ptr %20, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 4
  br label %38

29:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %30 = shl nuw nsw i32 %22, 2
  br label %34

31:                                               ; preds = %11
  %32 = getelementptr inbounds %struct.ring_buffer_event, ptr %20, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %33, %31 ]
  %36 = add i32 %35, 4
  br label %38

37:                                               ; preds = %11
  unreachable

38:                                               ; preds = %34, %25, %23, %11, %11
  %39 = phi i32 [ %36, %34 ], [ %28, %25 ], [ -1, %23 ], [ 8, %11 ], [ 8, %11 ]
  tail call void asm sideeffect "", "~{memory}"() #20, !srcloc !76
  %40 = load i32, ptr %3, align 4
  %41 = add i32 %40, %39
  %42 = icmp ugt i32 %41, %16
  %43 = icmp ugt i32 %39, 4076
  %44 = or i1 %43, %42
  br i1 %44, label %61, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 8
  %47 = load ptr, ptr %46, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %47, ptr align 4 %20, i32 %39, i1 false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !77
  %48 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 7
  %49 = load i64, ptr %48, align 8
  %50 = load ptr, ptr %13, align 4
  %51 = load i64, ptr %50, align 8
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.buffer_data_page, ptr %50, i32 0, i32 1
  %55 = load volatile i32, ptr %54, align 4
  %56 = icmp ugt i32 %16, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %3, align 4
  %59 = add i32 %58, %39
  store i32 %59, ptr %5, align 8
  %60 = load ptr, ptr %46, align 8
  br label %69

61:                                               ; preds = %53, %45, %38
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr inbounds %struct.buffer_page, ptr %62, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 6
  store i64 %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 7
  store i64 %65, ptr %67, align 8
  store i32 0, ptr %3, align 4
  store i32 0, ptr %5, align 8
  %68 = getelementptr inbounds %struct.ring_buffer_iter, ptr %0, i32 0, i32 9
  store i32 1, ptr %68, align 4
  br label %69

69:                                               ; preds = %61, %57, %8
  %70 = phi ptr [ %10, %8 ], [ null, %61 ], [ %60, %57 ]
  ret ptr %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 498773, i64 498834}
!11 = !{i64 603534, i64 2148093505, i64 2148093531, i64 2148093578, i64 2148093600, i64 2148093628, i64 2148093648}
!12 = !{i64 2148105717, i64 2148105743, i64 2148105772, i64 2148105806, i64 2148105837, i64 2148105860}
!13 = !{i64 2149399475}
!14 = !{i64 2149395299}
!15 = !{i64 2149395374, i64 2149395401, i64 2149395448, i64 2149395470, i64 2149395498, i64 2149395518}
!16 = !{i64 2149422478}
!17 = !{i64 501790}
!18 = !{i64 2153665548}
!19 = !{i64 2153666674}
!20 = !{i64 2153666722}
!21 = !{i8 0, i8 2}
!22 = !{i64 2148108074, i64 2148108100, i64 2148108129, i64 2148108163, i64 2148108194, i64 2148108217}
!23 = !{i64 2153728107}
!24 = !{i64 615705, i64 615726, i64 615749, i64 615768, i64 615787}
!25 = !{i64 2153728508}
!26 = !{i64 499018}
!27 = !{i64 2149423619}
!28 = !{i64 2153784670}
!29 = !{i64 2153784872}
!30 = !{i64 2153784995}
!31 = !{i64 2153782928}
!32 = !{i64 2153775874}
!33 = !{i64 2153777260}
!34 = !{i64 2153777298}
!35 = !{i64 2153783065}
!36 = !{i64 2153795427}
!37 = !{!"branch_weights", i32 4001, i32 4000000}
!38 = !{!"auto-init"}
!39 = !{i64 2153789764}
!40 = !{i64 2153789802}
!41 = !{!"branch_weights", i32 4000000, i32 4001}
!42 = !{i64 2148203539}
!43 = !{i64 2148106401, i64 2148106433, i64 2148106462, i64 2148106496, i64 2148106527, i64 2148106550}
!44 = !{i64 2148203742}
!45 = !{i64 2153790455}
!46 = !{i64 2153791610}
!47 = !{i64 2153793723}
!48 = !{!"branch_weights", i32 1, i32 4001}
!49 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!50 = !{i64 2153796232}
!51 = !{i64 2153770050}
!52 = !{i64 2148219119}
!53 = !{i64 589597, i64 589621, i64 589642, i64 589659, i64 589676}
!54 = !{i64 2148219319}
!55 = !{i64 2153800313}
!56 = !{i64 2153801831}
!57 = !{i64 2153802299}
!58 = !{i64 2153832673}
!59 = !{i64 2153832812}
!60 = !{!"branch_weights", i32 1073205, i32 2146410443}
!61 = !{i64 2153861702}
!62 = !{i64 2153862383}
!63 = !{i64 1907428, i64 1907451, i64 1907471, i64 1907495, i64 1907511}
!64 = !{i64 2149395766}
!65 = !{i64 2149398882}
!66 = !{i64 2153845621}
!67 = !{i64 2153681043}
!68 = !{i64 2153681444}
!69 = !{i64 2153900395}
!70 = !{i64 2153671038}
!71 = !{i64 2153671439}
!72 = !{i64 2153681710}
!73 = !{i64 2153685955}
!74 = !{i64 2153686346}
!75 = !{i64 2153750037}
!76 = !{i64 2153750095}
!77 = !{i64 2153750499}
