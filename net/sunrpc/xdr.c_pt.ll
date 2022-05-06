; ModuleID = '/llk/IR/net/sunrpc/xdr.c_pt.bc'
source_filename = "../net/sunrpc/xdr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_encode_netobj:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_encode_netobj\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_encode_netobj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_decode_netobj:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_decode_netobj\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_decode_netobj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_encode_opaque_fixed:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_encode_opaque_fixed\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_encode_opaque_fixed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_encode_opaque:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_encode_opaque\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_encode_opaque:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_encode_string:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_encode_string\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_encode_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_decode_string_inplace:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_decode_string_inplace\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_decode_string_inplace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_terminate_string:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_terminate_string\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_terminate_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_inline_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_inline_pages\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_inline_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__copy_from_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22_copy_from_pages\22\09\09\09\09\09"
module asm "__kstrtabns__copy_from_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_shift_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_shift_buf\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_shift_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_stream_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_stream_pos\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_stream_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_page_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_page_pos\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_page_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_init_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_init_encode\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_init_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_commit_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_commit_encode\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_commit_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_reserve_space:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_reserve_space\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_reserve_space:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_reserve_space_vec:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_reserve_space_vec\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_reserve_space_vec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_truncate_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_truncate_encode\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_truncate_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_restrict_buflen:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_restrict_buflen\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_restrict_buflen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_write_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_write_pages\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_write_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_init_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_init_decode\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_init_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_init_decode_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_init_decode_pages\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_init_decode_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_inline_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_inline_decode\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_inline_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_read_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_read_pages\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_read_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_align_data:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_align_data\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_align_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_expand_hole:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_expand_hole\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_expand_hole:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_enter_page:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_enter_page\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_enter_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_buf_from_iov:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_buf_from_iov\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_buf_from_iov:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_buf_subsegment:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_buf_subsegment\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_buf_subsegment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_stream_subsegment:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_stream_subsegment\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_stream_subsegment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_buf_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_buf_trim\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_buf_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_read_bytes_from_xdr_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22read_bytes_from_xdr_buf\22\09\09\09\09\09"
module asm "__kstrtabns_read_bytes_from_xdr_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_write_bytes_to_xdr_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22write_bytes_to_xdr_buf\22\09\09\09\09\09"
module asm "__kstrtabns_write_bytes_to_xdr_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_decode_word:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_decode_word\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_decode_word:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_encode_word:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_encode_word\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_encode_word:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_decode_array2:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_decode_array2\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_decode_array2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_encode_array2:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_encode_array2\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_encode_array2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_process_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_process_buf\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_process_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_stream_decode_opaque:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_stream_decode_opaque\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_stream_decode_opaque:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_stream_decode_opaque_dup:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_stream_decode_opaque_dup\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_stream_decode_opaque_dup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_stream_decode_string:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_stream_decode_string\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_stream_decode_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdr_stream_decode_string_dup:\09\09\09\09\09"
module asm "\09.asciz \09\22xdr_stream_decode_string_dup\22\09\09\09\09\09"
module asm "__kstrtabns_xdr_stream_decode_string_dup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xdr_netobj = type { i32, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.114, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.72 }
%struct.llist_node = type { ptr }
%union.anon.72 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.114 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.xdr_array2_desc = type { i32, i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.130, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.130 = type { %struct.atomic_t }

@__kstrtab_xdr_encode_netobj = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_encode_netobj = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_encode_netobj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_encode_netobj to i32), ptr @__kstrtab_xdr_encode_netobj, ptr @__kstrtabns_xdr_encode_netobj }, section "___ksymtab_gpl+xdr_encode_netobj", align 4
@__kstrtab_xdr_decode_netobj = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_decode_netobj = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_decode_netobj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_decode_netobj to i32), ptr @__kstrtab_xdr_decode_netobj, ptr @__kstrtabns_xdr_decode_netobj }, section "___ksymtab_gpl+xdr_decode_netobj", align 4
@__kstrtab_xdr_encode_opaque_fixed = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_encode_opaque_fixed = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_encode_opaque_fixed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_encode_opaque_fixed to i32), ptr @__kstrtab_xdr_encode_opaque_fixed, ptr @__kstrtabns_xdr_encode_opaque_fixed }, section "___ksymtab_gpl+xdr_encode_opaque_fixed", align 4
@__kstrtab_xdr_encode_opaque = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_encode_opaque = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_encode_opaque = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_encode_opaque to i32), ptr @__kstrtab_xdr_encode_opaque, ptr @__kstrtabns_xdr_encode_opaque }, section "___ksymtab_gpl+xdr_encode_opaque", align 4
@__kstrtab_xdr_encode_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_encode_string = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_encode_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_encode_string to i32), ptr @__kstrtab_xdr_encode_string, ptr @__kstrtabns_xdr_encode_string }, section "___ksymtab_gpl+xdr_encode_string", align 4
@__kstrtab_xdr_decode_string_inplace = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_decode_string_inplace = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_decode_string_inplace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_decode_string_inplace to i32), ptr @__kstrtab_xdr_decode_string_inplace, ptr @__kstrtabns_xdr_decode_string_inplace }, section "___ksymtab_gpl+xdr_decode_string_inplace", align 4
@__kstrtab_xdr_terminate_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_terminate_string = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_terminate_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_terminate_string to i32), ptr @__kstrtab_xdr_terminate_string, ptr @__kstrtabns_xdr_terminate_string }, section "___ksymtab_gpl+xdr_terminate_string", align 4
@__kstrtab_xdr_inline_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_inline_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_inline_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_inline_pages to i32), ptr @__kstrtab_xdr_inline_pages, ptr @__kstrtabns_xdr_inline_pages }, section "___ksymtab_gpl+xdr_inline_pages", align 4
@__kstrtab__copy_from_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns__copy_from_pages = external dso_local constant [0 x i8], align 1
@__ksymtab__copy_from_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_copy_from_pages to i32), ptr @__kstrtab__copy_from_pages, ptr @__kstrtabns__copy_from_pages }, section "___ksymtab_gpl+_copy_from_pages", align 4
@__kstrtab_xdr_shift_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_shift_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_shift_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_shift_buf to i32), ptr @__kstrtab_xdr_shift_buf, ptr @__kstrtabns_xdr_shift_buf }, section "___ksymtab_gpl+xdr_shift_buf", align 4
@__kstrtab_xdr_stream_pos = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_stream_pos = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_stream_pos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_stream_pos to i32), ptr @__kstrtab_xdr_stream_pos, ptr @__kstrtabns_xdr_stream_pos }, section "___ksymtab_gpl+xdr_stream_pos", align 4
@.str = private unnamed_addr constant [17 x i8] c"net/sunrpc/xdr.c\00", align 1
@__kstrtab_xdr_page_pos = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_page_pos = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_page_pos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_page_pos to i32), ptr @__kstrtab_xdr_page_pos, ptr @__kstrtabns_xdr_page_pos }, section "___ksymtab_gpl+xdr_page_pos", align 4
@__kstrtab_xdr_init_encode = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_init_encode = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_init_encode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_init_encode to i32), ptr @__kstrtab_xdr_init_encode, ptr @__kstrtabns_xdr_init_encode }, section "___ksymtab_gpl+xdr_init_encode", align 4
@__kstrtab_xdr_commit_encode = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_commit_encode = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_commit_encode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_commit_encode to i32), ptr @__kstrtab_xdr_commit_encode, ptr @__kstrtabns_xdr_commit_encode }, section "___ksymtab_gpl+xdr_commit_encode", align 4
@__kstrtab_xdr_reserve_space = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_reserve_space = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_reserve_space = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_reserve_space to i32), ptr @__kstrtab_xdr_reserve_space, ptr @__kstrtabns_xdr_reserve_space }, section "___ksymtab_gpl+xdr_reserve_space", align 4
@__kstrtab_xdr_reserve_space_vec = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_reserve_space_vec = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_reserve_space_vec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_reserve_space_vec to i32), ptr @__kstrtab_xdr_reserve_space_vec, ptr @__kstrtabns_xdr_reserve_space_vec }, section "___ksymtab_gpl+xdr_reserve_space_vec", align 4
@xdr_truncate_encode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xdr_truncate_encode.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@xdr_truncate_encode.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@xdr_truncate_encode.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@xdr_truncate_encode.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_xdr_truncate_encode = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_truncate_encode = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_truncate_encode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_truncate_encode to i32), ptr @__kstrtab_xdr_truncate_encode, ptr @__kstrtabns_xdr_truncate_encode }, section "___ksymtab+xdr_truncate_encode", align 4
@__kstrtab_xdr_restrict_buflen = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_restrict_buflen = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_restrict_buflen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_restrict_buflen to i32), ptr @__kstrtab_xdr_restrict_buflen, ptr @__kstrtabns_xdr_restrict_buflen }, section "___ksymtab+xdr_restrict_buflen", align 4
@__kstrtab_xdr_write_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_write_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_write_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_write_pages to i32), ptr @__kstrtab_xdr_write_pages, ptr @__kstrtabns_xdr_write_pages }, section "___ksymtab_gpl+xdr_write_pages", align 4
@__kstrtab_xdr_init_decode = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_init_decode = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_init_decode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_init_decode to i32), ptr @__kstrtab_xdr_init_decode, ptr @__kstrtabns_xdr_init_decode }, section "___ksymtab_gpl+xdr_init_decode", align 4
@__kstrtab_xdr_init_decode_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_init_decode_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_init_decode_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_init_decode_pages to i32), ptr @__kstrtab_xdr_init_decode_pages, ptr @__kstrtabns_xdr_init_decode_pages }, section "___ksymtab_gpl+xdr_init_decode_pages", align 4
@__kstrtab_xdr_inline_decode = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_inline_decode = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_inline_decode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_inline_decode to i32), ptr @__kstrtab_xdr_inline_decode, ptr @__kstrtabns_xdr_inline_decode }, section "___ksymtab_gpl+xdr_inline_decode", align 4
@__kstrtab_xdr_read_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_read_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_read_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_read_pages to i32), ptr @__kstrtab_xdr_read_pages, ptr @__kstrtabns_xdr_read_pages }, section "___ksymtab_gpl+xdr_read_pages", align 4
@xdr_align_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"SUNRPC: misaligned data src=%u dst=%u\0A\00", align 1
@xdr_align_data.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"SUNRPC: buffer overflow. offset=%u, page_len=%u\0A\00", align 1
@__kstrtab_xdr_align_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_align_data = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_align_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_align_data to i32), ptr @__kstrtab_xdr_align_data, ptr @__kstrtabns_xdr_align_data }, section "___ksymtab_gpl+xdr_align_data", align 4
@__kstrtab_xdr_expand_hole = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_expand_hole = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_expand_hole = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_expand_hole to i32), ptr @__kstrtab_xdr_expand_hole, ptr @__kstrtabns_xdr_expand_hole }, section "___ksymtab_gpl+xdr_expand_hole", align 4
@__kstrtab_xdr_enter_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_enter_page = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_enter_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_enter_page to i32), ptr @__kstrtab_xdr_enter_page, ptr @__kstrtabns_xdr_enter_page }, section "___ksymtab_gpl+xdr_enter_page", align 4
@__kstrtab_xdr_buf_from_iov = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_buf_from_iov = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_buf_from_iov = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_buf_from_iov to i32), ptr @__kstrtab_xdr_buf_from_iov, ptr @__kstrtabns_xdr_buf_from_iov }, section "___ksymtab_gpl+xdr_buf_from_iov", align 4
@__kstrtab_xdr_buf_subsegment = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_buf_subsegment = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_buf_subsegment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_buf_subsegment to i32), ptr @__kstrtab_xdr_buf_subsegment, ptr @__kstrtabns_xdr_buf_subsegment }, section "___ksymtab_gpl+xdr_buf_subsegment", align 4
@__kstrtab_xdr_stream_subsegment = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_stream_subsegment = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_stream_subsegment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_stream_subsegment to i32), ptr @__kstrtab_xdr_stream_subsegment, ptr @__kstrtabns_xdr_stream_subsegment }, section "___ksymtab_gpl+xdr_stream_subsegment", align 4
@__kstrtab_xdr_buf_trim = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_buf_trim = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_buf_trim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_buf_trim to i32), ptr @__kstrtab_xdr_buf_trim, ptr @__kstrtabns_xdr_buf_trim }, section "___ksymtab_gpl+xdr_buf_trim", align 4
@__kstrtab_read_bytes_from_xdr_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_read_bytes_from_xdr_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_read_bytes_from_xdr_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @read_bytes_from_xdr_buf to i32), ptr @__kstrtab_read_bytes_from_xdr_buf, ptr @__kstrtabns_read_bytes_from_xdr_buf }, section "___ksymtab_gpl+read_bytes_from_xdr_buf", align 4
@__kstrtab_write_bytes_to_xdr_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_write_bytes_to_xdr_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_write_bytes_to_xdr_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @write_bytes_to_xdr_buf to i32), ptr @__kstrtab_write_bytes_to_xdr_buf, ptr @__kstrtabns_write_bytes_to_xdr_buf }, section "___ksymtab_gpl+write_bytes_to_xdr_buf", align 4
@__kstrtab_xdr_decode_word = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_decode_word = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_decode_word = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_decode_word to i32), ptr @__kstrtab_xdr_decode_word, ptr @__kstrtabns_xdr_decode_word }, section "___ksymtab_gpl+xdr_decode_word", align 4
@__kstrtab_xdr_encode_word = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_encode_word = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_encode_word = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_encode_word to i32), ptr @__kstrtab_xdr_encode_word, ptr @__kstrtabns_xdr_encode_word }, section "___ksymtab_gpl+xdr_encode_word", align 4
@__kstrtab_xdr_decode_array2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_decode_array2 = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_decode_array2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_decode_array2 to i32), ptr @__kstrtab_xdr_decode_array2, ptr @__kstrtabns_xdr_decode_array2 }, section "___ksymtab_gpl+xdr_decode_array2", align 4
@__kstrtab_xdr_encode_array2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_encode_array2 = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_encode_array2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_encode_array2 to i32), ptr @__kstrtab_xdr_encode_array2, ptr @__kstrtabns_xdr_encode_array2 }, section "___ksymtab_gpl+xdr_encode_array2", align 4
@__kstrtab_xdr_process_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_process_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_process_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_process_buf to i32), ptr @__kstrtab_xdr_process_buf, ptr @__kstrtabns_xdr_process_buf }, section "___ksymtab_gpl+xdr_process_buf", align 4
@__kstrtab_xdr_stream_decode_opaque = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_stream_decode_opaque = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_stream_decode_opaque = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_stream_decode_opaque to i32), ptr @__kstrtab_xdr_stream_decode_opaque, ptr @__kstrtabns_xdr_stream_decode_opaque }, section "___ksymtab_gpl+xdr_stream_decode_opaque", align 4
@__kstrtab_xdr_stream_decode_opaque_dup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_stream_decode_opaque_dup = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_stream_decode_opaque_dup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_stream_decode_opaque_dup to i32), ptr @__kstrtab_xdr_stream_decode_opaque_dup, ptr @__kstrtabns_xdr_stream_decode_opaque_dup }, section "___ksymtab_gpl+xdr_stream_decode_opaque_dup", align 4
@__kstrtab_xdr_stream_decode_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_stream_decode_string = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_stream_decode_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_stream_decode_string to i32), ptr @__kstrtab_xdr_stream_decode_string, ptr @__kstrtabns_xdr_stream_decode_string }, section "___ksymtab_gpl+xdr_stream_decode_string", align 4
@__kstrtab_xdr_stream_decode_string_dup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdr_stream_decode_string_dup = external dso_local constant [0 x i8], align 1
@__ksymtab_xdr_stream_decode_string_dup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdr_stream_decode_string_dup to i32), ptr @__kstrtab_xdr_stream_decode_string_dup, ptr @__kstrtabns_xdr_stream_decode_string_dup }, section "___ksymtab_gpl+xdr_stream_decode_string_dup", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@xdr_shrink_bufhead.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rpc_xdr_overflow = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@xdr_shrink_pagelen.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rpc_xdr_alignment = external dso_local global %struct.tracepoint, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"SUNRPC: Misaligned data.\0A\00", align 1
@xdr_buf_tail_copy_left.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [41 x ptr] [ptr @__ksymtab__copy_from_pages, ptr @__ksymtab_read_bytes_from_xdr_buf, ptr @__ksymtab_write_bytes_to_xdr_buf, ptr @__ksymtab_xdr_align_data, ptr @__ksymtab_xdr_buf_from_iov, ptr @__ksymtab_xdr_buf_subsegment, ptr @__ksymtab_xdr_buf_trim, ptr @__ksymtab_xdr_commit_encode, ptr @__ksymtab_xdr_decode_array2, ptr @__ksymtab_xdr_decode_netobj, ptr @__ksymtab_xdr_decode_string_inplace, ptr @__ksymtab_xdr_decode_word, ptr @__ksymtab_xdr_encode_array2, ptr @__ksymtab_xdr_encode_netobj, ptr @__ksymtab_xdr_encode_opaque, ptr @__ksymtab_xdr_encode_opaque_fixed, ptr @__ksymtab_xdr_encode_string, ptr @__ksymtab_xdr_encode_word, ptr @__ksymtab_xdr_enter_page, ptr @__ksymtab_xdr_expand_hole, ptr @__ksymtab_xdr_init_decode, ptr @__ksymtab_xdr_init_decode_pages, ptr @__ksymtab_xdr_init_encode, ptr @__ksymtab_xdr_inline_decode, ptr @__ksymtab_xdr_inline_pages, ptr @__ksymtab_xdr_page_pos, ptr @__ksymtab_xdr_process_buf, ptr @__ksymtab_xdr_read_pages, ptr @__ksymtab_xdr_reserve_space, ptr @__ksymtab_xdr_reserve_space_vec, ptr @__ksymtab_xdr_restrict_buflen, ptr @__ksymtab_xdr_shift_buf, ptr @__ksymtab_xdr_stream_decode_opaque, ptr @__ksymtab_xdr_stream_decode_opaque_dup, ptr @__ksymtab_xdr_stream_decode_string, ptr @__ksymtab_xdr_stream_decode_string_dup, ptr @__ksymtab_xdr_stream_pos, ptr @__ksymtab_xdr_stream_subsegment, ptr @__ksymtab_xdr_terminate_string, ptr @__ksymtab_xdr_truncate_encode, ptr @__ksymtab_xdr_write_pages], section "llvm.metadata"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @xdr_encode_netobj(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = add i32 %3, 3
  %5 = lshr i32 %4, 2
  %6 = getelementptr i32, ptr %0, i32 %5
  store i32 0, ptr %6, align 4
  %7 = load i32, ptr %1, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = getelementptr i32, ptr %0, i32 1
  store i32 %8, ptr %0, align 4
  %10 = getelementptr inbounds %struct.xdr_netobj, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %1, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %9, ptr align 1 %11, i32 %12, i1 false)
  %13 = load i32, ptr %1, align 4
  %14 = add i32 %13, 3
  %15 = lshr i32 %14, 2
  %16 = getelementptr i32, ptr %9, i32 %15
  ret ptr %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @xdr_decode_netobj(ptr noundef %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = load i32, ptr %0, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = icmp ugt i32 %4, 1024
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i32, ptr %0, i32 1
  store i32 %4, ptr %1, align 4
  %8 = getelementptr inbounds %struct.xdr_netobj, ptr %1, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = add nuw nsw i32 %4, 3
  %10 = lshr i32 %9, 2
  %11 = getelementptr i32, ptr %7, i32 %10
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ %11, %6 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @xdr_encode_opaque_fixed(ptr noundef writeonly %0, ptr noundef readonly %1, i32 noundef %2) #4 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %18, label %5, !prof !8

5:                                                ; preds = %3
  %6 = add i32 %2, 3
  %7 = lshr i32 %6, 2
  %8 = and i32 %6, -4
  %9 = sub i32 %8, %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %0, ptr nonnull align 1 %1, i32 %2, i1 false)
  br label %12

12:                                               ; preds = %11, %5
  %13 = icmp eq i32 %8, %2
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr i8, ptr %0, i32 %2
  tail call void @llvm.memset.p0.i32(ptr align 1 %15, i8 0, i32 %9, i1 false)
  br label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr i32, ptr %0, i32 %7
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi ptr [ %17, %16 ], [ %0, %3 ]
  ret ptr %19
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @xdr_encode_opaque(ptr noundef writeonly %0, ptr noundef readonly %1, i32 noundef %2) #4 {
  %4 = tail call i32 @llvm.bswap.i32(i32 %2)
  %5 = getelementptr i32, ptr %0, i32 1
  store i32 %4, ptr %0, align 4
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %20, label %7, !prof !8

7:                                                ; preds = %3
  %8 = add i32 %2, 3
  %9 = lshr i32 %8, 2
  %10 = and i32 %8, -4
  %11 = sub i32 %10, %2
  %12 = icmp eq ptr %1, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr nonnull align 1 %1, i32 %2, i1 false) #17
  br label %14

14:                                               ; preds = %13, %7
  %15 = icmp eq i32 %10, %2
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = getelementptr i8, ptr %5, i32 %2
  tail call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %11, i1 false) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = getelementptr i32, ptr %5, i32 %9
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi ptr [ %19, %18 ], [ %5, %3 ]
  ret ptr %21
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @xdr_encode_string(ptr noundef writeonly %0, ptr noundef readonly %1) #6 {
  %3 = tail call i32 @strlen(ptr noundef %1)
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #17
  %5 = getelementptr i32, ptr %0, i32 1
  store i32 %4, ptr %0, align 4
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %20, label %7, !prof !8

7:                                                ; preds = %2
  %8 = add i32 %3, 3
  %9 = lshr i32 %8, 2
  %10 = and i32 %8, -4
  %11 = sub i32 %10, %3
  %12 = icmp eq ptr %1, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr nonnull align 1 %1, i32 %3, i1 false) #17
  br label %14

14:                                               ; preds = %13, %7
  %15 = icmp eq i32 %10, %3
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = getelementptr i8, ptr %5, i32 %3
  tail call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %11, i1 false) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = getelementptr i32, ptr %5, i32 %9
  br label %20

20:                                               ; preds = %18, %2
  %21 = phi ptr [ %19, %18 ], [ %5, %2 ]
  ret ptr %21
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @xdr_decode_string_inplace(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #4 {
  %5 = load i32, ptr %0, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = icmp ugt i32 %6, %3
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr i32, ptr %0, i32 1
  store i32 %6, ptr %2, align 4
  store ptr %9, ptr %1, align 4
  %10 = add i32 %6, 3
  %11 = lshr i32 %10, 2
  %12 = getelementptr i32, ptr %9, i32 %11
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdr_terminate_string(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @pgprot_kernel, align 4
  %7 = or i32 %6, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %8 = tail call ptr @llvm.thread.pointer() #17
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 149
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %12 = tail call ptr @__kmap_local_page_prot(ptr noundef %5, i32 noundef %7) #17
  %13 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %1
  %16 = getelementptr i8, ptr %12, i32 %15
  store i8 0, ptr %16, align 1
  tail call void @kunmap_local_indexed(ptr noundef %12) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %17 = load i32, ptr %9, align 8
  %18 = add i32 %17, -1
  store i32 %18, ptr %9, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @xdr_buf_pagecount(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %3, 4095
  %9 = add i32 %8, %7
  %10 = lshr i32 %9, 12
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ %10, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_alloc_bvec(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %4, 4095
  %10 = add i32 %9, %8
  %11 = lshr i32 %10, 12
  %12 = icmp ult i32 %10, 4096
  br i1 %12, label %44, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = mul nuw nsw i32 %11, 12
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef %1) #18
  store ptr %19, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %23 = call i32 @llvm.umax.i32(i32 %11, i32 1)
  %24 = load ptr, ptr %22, align 4
  %25 = load ptr, ptr %24, align 4
  store ptr %25, ptr %19, align 64
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr %struct.bio_vec, ptr %26, i32 0, i32 1
  store i32 4096, ptr %27, align 4
  %28 = load ptr, ptr %14, align 4
  %29 = getelementptr %struct.bio_vec, ptr %28, i32 0, i32 2
  store i32 0, ptr %29, align 4
  %30 = icmp ult i32 %10, 8192
  br i1 %30, label %44, label %31

31:                                               ; preds = %31, %21
  %32 = phi i32 [ %42, %31 ], [ 1, %21 ]
  %33 = load ptr, ptr %14, align 4
  %34 = load ptr, ptr %22, align 4
  %35 = getelementptr ptr, ptr %34, i32 %32
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr %struct.bio_vec, ptr %33, i32 %32
  store ptr %36, ptr %37, align 4
  %38 = load ptr, ptr %14, align 4
  %39 = getelementptr %struct.bio_vec, ptr %38, i32 %32, i32 1
  store i32 4096, ptr %39, align 4
  %40 = load ptr, ptr %14, align 4
  %41 = getelementptr %struct.bio_vec, ptr %40, i32 %32, i32 2
  store i32 0, ptr %41, align 4
  %42 = add nuw nsw i32 %32, 1
  %43 = icmp eq i32 %42, %23
  br i1 %43, label %44, label %31

44:                                               ; preds = %31, %21, %17, %13, %6, %2
  %45 = phi i32 [ -12, %17 ], [ 0, %13 ], [ 0, %6 ], [ 0, %2 ], [ 0, %21 ], [ 0, %31 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdr_free_bvec(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #17
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xdr_inline_pages(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #11 {
  %6 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  store i32 %1, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  store i32 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  store i32 %4, ptr %12, align 4
  %13 = getelementptr i8, ptr %7, i32 %1
  store ptr %13, ptr %6, align 4
  %14 = sub i32 %9, %1
  %15 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %4
  store i32 %18, ptr %16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_copy_from_pages(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #8 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %4
  %7 = lshr i32 %2, 12
  %8 = getelementptr ptr, ptr %1, i32 %7
  %9 = and i32 %2, 4095
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %0, %6 ], [ %33, %10 ]
  %12 = phi i32 [ %9, %6 ], [ %30, %10 ]
  %13 = phi i32 [ %3, %6 ], [ %34, %10 ]
  %14 = phi ptr [ %8, %6 ], [ %32, %10 ]
  %15 = sub i32 4096, %12
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %13)
  %17 = load ptr, ptr %14, align 4
  %18 = load i32, ptr @pgprot_kernel, align 4
  %19 = or i32 %18, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %20 = tail call ptr @llvm.thread.pointer() #17
  %21 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 149
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %24 = tail call ptr @__kmap_local_page_prot(ptr noundef %17, i32 noundef %19) #17
  %25 = getelementptr i8, ptr %24, i32 %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %11, ptr align 1 %25, i32 %16, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %24) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %26 = load i32, ptr %21, align 8
  %27 = add i32 %26, -1
  store i32 %27, ptr %21, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %28 = add i32 %16, %12
  %29 = icmp eq i32 %28, 4096
  %30 = select i1 %29, i32 0, i32 %28
  %31 = zext i1 %29 to i32
  %32 = getelementptr ptr, ptr %14, i32 %31
  %33 = getelementptr i8, ptr %11, i32 %16
  %34 = sub i32 %13, %16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %10

36:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdr_shift_buf(ptr nocapture noundef %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = sub i32 %4, %1
  %6 = tail call fastcc i32 @xdr_shrink_bufhead(ptr noundef %0, i32 noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xdr_shrink_bufhead(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @llvm.umax.i32(i32 %4, i32 %1)
  %6 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, %1
  %9 = load i1, ptr @xdr_shrink_bufhead.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %14, !prof !8

12:                                               ; preds = %2
  store i1 true, ptr @xdr_shrink_bufhead.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 792, i32 noundef 9, ptr noundef null) #17
  %13 = load i32, ptr %6, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ %7, %2 ]
  %16 = icmp ult i32 %5, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = sub i32 %5, %15
  %19 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %18, %20
  store i32 %21, ptr %19, align 4
  store i32 %5, ptr %6, align 4
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i32 [ %5, %17 ], [ %15, %14 ]
  %24 = icmp ugt i32 %23, %1
  br i1 %24, label %25, label %101

25:                                               ; preds = %22
  %26 = sub i32 %23, %1
  tail call fastcc void @xdr_buf_try_expand(ptr noundef %0, i32 noundef %26)
  %27 = sub i32 %5, %1
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %95, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %6, align 4
  %31 = icmp ugt i32 %30, %1
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = sub i32 %30, %1
  tail call fastcc void @xdr_buf_pages_shift_right(ptr noundef %0, i32 noundef %33, i32 noundef %27, i32 noundef %26) #17
  br label %95

34:                                               ; preds = %29
  %35 = icmp ugt i32 %5, %30
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = sub i32 %5, %30
  tail call fastcc void @xdr_buf_pages_shift_right(ptr noundef %0, i32 noundef 0, i32 noundef %37, i32 noundef %26) #17
  %38 = load i32, ptr %6, align 4
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %38, %36 ], [ %30, %34 ]
  %41 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %42 = icmp ugt i32 %40, %1
  br i1 %42, label %43, label %95

43:                                               ; preds = %39
  %44 = sub i32 %40, %1
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 %27) #17
  %46 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %40
  %49 = icmp ult i32 %23, %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = sub i32 %23, %48
  br label %65

52:                                               ; preds = %43
  %53 = icmp ult i32 %23, %40
  br i1 %53, label %61, label %54

54:                                               ; preds = %52
  %55 = sub i32 %23, %40
  %56 = add i32 %45, %55
  %57 = icmp ugt i32 %56, %47
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = sub i32 %56, %47
  %60 = sub i32 %45, %59
  br label %65

61:                                               ; preds = %52
  %62 = sub i32 %45, %23
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 %47) #17
  %64 = tail call i32 @llvm.usub.sat.i32(i32 %62, i32 %47) #17
  br label %65

65:                                               ; preds = %61, %58, %54, %50
  %66 = phi i32 [ 0, %50 ], [ %60, %58 ], [ %45, %54 ], [ %63, %61 ]
  %67 = phi i32 [ 0, %50 ], [ %55, %58 ], [ %55, %54 ], [ 0, %61 ]
  %68 = phi i32 [ %45, %50 ], [ %59, %58 ], [ 0, %54 ], [ %64, %61 ]
  %69 = phi i32 [ %51, %50 ], [ 0, %58 ], [ 0, %54 ], [ 0, %61 ]
  %70 = sub i32 %45, %68
  %71 = add i32 %70, %1
  %72 = add i32 %69, %68
  %73 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp ugt i32 %72, %74
  %76 = tail call i32 @llvm.usub.sat.i32(i32 %74, i32 %69) #17
  %77 = select i1 %75, i32 %76, i32 %68
  %78 = load ptr, ptr %41, align 4
  %79 = getelementptr i8, ptr %78, i32 %69
  %80 = load ptr, ptr %0, align 4
  %81 = getelementptr i8, ptr %80, i32 %71
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %79, ptr align 1 %81, i32 %77, i1 false) #17
  %82 = sub i32 %70, %66
  %83 = sub i32 %71, %66
  %84 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, %67
  %89 = load ptr, ptr %0, align 4
  %90 = getelementptr i8, ptr %89, i32 %83
  tail call fastcc void @_copy_to_pages(ptr noundef %85, i32 noundef %88, ptr noundef %90, i32 noundef %66) #17
  %91 = sub i32 %83, %82
  %92 = load ptr, ptr %0, align 4
  %93 = getelementptr i8, ptr %92, i32 %23
  %94 = getelementptr i8, ptr %92, i32 %91
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %93, ptr align 1 %94, i32 %82, i1 false) #17
  br label %95

95:                                               ; preds = %65, %39, %32, %25
  store i32 %1, ptr %6, align 4
  %96 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 7
  %97 = load i32, ptr %96, align 4
  %98 = sub i32 %97, %26
  store i32 %98, ptr %96, align 4
  %99 = load i32, ptr %3, align 4
  %100 = sub i32 %99, %26
  store i32 %100, ptr %3, align 4
  br label %101

101:                                              ; preds = %95, %22
  %102 = phi i32 [ %26, %95 ], [ 0, %22 ]
  ret i32 %102
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @xdr_stream_pos(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xdr_buf, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 3
  %7 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, -4
  %10 = add i32 %6, %9
  %11 = and i32 %10, -4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_page_pos(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xdr_buf, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 3
  %7 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, -4
  %10 = add i32 %6, %9
  %11 = and i32 %10, -4
  %12 = getelementptr inbounds %struct.kvec, ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %19, !prof !8

15:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 875, i32 noundef 9, ptr noundef null) #17
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.kvec, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i32 [ %18, %15 ], [ %13, %1 ]
  %21 = sub i32 %11, %20
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdr_init_encode(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8 {
  %5 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %8, %10
  %12 = sub i32 %6, %11
  %13 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4, i32 1
  store i32 0, ptr %14, align 4
  %15 = icmp slt i32 %12, 0
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 901, 0\0A.popsection", ""() #17, !srcloc !13
  unreachable

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  store ptr %1, ptr %19, align 4
  %20 = load ptr, ptr %1, align 4
  %21 = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  store ptr %23, ptr %0, align 4
  %24 = load ptr, ptr %1, align 4
  %25 = getelementptr i8, ptr %24, i32 %12
  %26 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = load i32, ptr %21, align 4
  %28 = icmp ugt i32 %27, %12
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 906, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

30:                                               ; preds = %17
  %31 = icmp ne ptr %23, %2
  %32 = icmp ne ptr %2, null
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = icmp ugt ptr %23, %2
  %36 = icmp ult ptr %25, %2
  %37 = select i1 %35, i1 true, i1 %36, !prof !8
  br i1 %37, label %38, label %39, !prof !8

38:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 911, 0\0A.popsection", ""() #17, !srcloc !15
  unreachable

39:                                               ; preds = %34
  %40 = ptrtoint ptr %2 to i32
  %41 = ptrtoint ptr %23 to i32
  %42 = sub i32 %40, %41
  store ptr %2, ptr %0, align 4
  %43 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 8
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  store i32 %45, ptr %43, align 4
  %46 = load i32, ptr %21, align 4
  %47 = add i32 %46, %42
  store i32 %47, ptr %21, align 4
  br label %48

48:                                               ; preds = %39, %30
  %49 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 7
  store ptr %3, ptr %49, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdr_commit_encode(ptr nocapture noundef %0) #13 {
  %2 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @page_address(ptr noundef %9) #17
  %11 = load ptr, ptr %6, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %11, ptr align 1 %10, i32 %3, i1 false)
  %12 = getelementptr i8, ptr %10, i32 %3
  %13 = load ptr, ptr %0, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = ptrtoint ptr %10 to i32
  %16 = sub i32 %14, %15
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %10, ptr align 1 %12, i32 %16, i1 false)
  store ptr null, ptr %6, align 4
  store i32 0, ptr %2, align 4
  br label %17

17:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %1) #8 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @page_address(ptr noundef %11) #17
  %13 = load ptr, ptr %8, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %13, ptr align 1 %12, i32 %5, i1 false) #17
  %14 = getelementptr i8, ptr %12, i32 %5
  %15 = load ptr, ptr %0, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = ptrtoint ptr %12 to i32
  %18 = sub i32 %16, %17
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %12, ptr align 1 %14, i32 %18, i1 false) #17
  store ptr null, ptr %8, align 4
  store i32 0, ptr %4, align 4
  br label %19

19:                                               ; preds = %7, %2
  %20 = add i32 %1, 3
  %21 = and i32 %20, -4
  %22 = lshr i32 %20, 2
  %23 = getelementptr i32, ptr %3, i32 %22
  %24 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ugt ptr %23, %25
  %27 = icmp ult ptr %23, %3
  %28 = or i1 %27, %26
  br i1 %28, label %29, label %31, !prof !8

29:                                               ; preds = %19
  %30 = tail call fastcc ptr @xdr_get_next_encode_buffer(ptr noundef %0, i32 noundef %21)
  br label %50

31:                                               ; preds = %19
  store ptr %23, ptr %0, align 4
  %32 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.kvec, ptr %33, i32 0, i32 1
  br label %41

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.xdr_buf, ptr %39, i32 0, i32 5
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi ptr [ %40, %37 ], [ %36, %35 ]
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %21
  store i32 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.xdr_buf, ptr %46, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, %21
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %41, %29
  %51 = phi ptr [ %30, %29 ], [ %3, %41 ]
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xdr_get_next_encode_buffer(ptr noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = icmp ugt i32 %1, 4096
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xdr_buf, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %1
  %10 = getelementptr inbounds %struct.xdr_buf, ptr %6, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %53, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = ptrtoint ptr %15 to i32
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %17, %18
  %20 = sub i32 %1, %19
  %21 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.xdr_buf, ptr %6, i32 0, i32 5
  %25 = getelementptr inbounds %struct.kvec, ptr %22, i32 0, i32 1
  %26 = select i1 %23, ptr %24, ptr %25
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %19
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr ptr, ptr %30, i32 1
  store ptr %31, ptr %29, align 4
  store ptr null, ptr %21, align 4
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4, i32 1
  store i32 %19, ptr %34, align 4
  %35 = load ptr, ptr %31, align 4
  %36 = tail call ptr @page_address(ptr noundef %35) #17
  %37 = getelementptr i8, ptr %36, i32 %20
  store ptr %37, ptr %0, align 4
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr inbounds %struct.xdr_buf, ptr %38, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.xdr_buf, ptr %38, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 %40, %42
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 4096)
  %45 = getelementptr i8, ptr %36, i32 %44
  store ptr %45, ptr %14, align 4
  %46 = getelementptr inbounds %struct.xdr_buf, ptr %38, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %20
  store i32 %48, ptr %46, align 4
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr inbounds %struct.xdr_buf, ptr %49, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %1
  store i32 %52, ptr %50, align 4
  br label %69

53:                                               ; preds = %4, %2
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_xdr_overflow, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = tail call ptr @llvm.thread.pointer() #17
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 5
  %61 = getelementptr i32, ptr @__cpu_online_mask, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %59, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !16
  %68 = tail call i32 @__traceiter_rpc_xdr_overflow(ptr noundef null, ptr noundef %0, i32 noundef %1) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  br label %69

69:                                               ; preds = %67, %56, %53, %13
  %70 = phi ptr [ %36, %13 ], [ null, %53 ], [ null, %56 ], [ null, %67 ]
  ret ptr %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_reserve_space_vec(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  store ptr null, ptr %4, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %79, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4, i32 1
  %16 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4
  %17 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 5
  %18 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  br label %19

19:                                               ; preds = %77, %14
  %20 = phi ptr [ %7, %14 ], [ %78, %77 ]
  %21 = phi i32 [ %2, %14 ], [ %75, %77 ]
  %22 = phi i32 [ 0, %14 ], [ %74, %77 ]
  %23 = getelementptr inbounds %struct.xdr_buf, ptr %20, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 4095
  %26 = sub nuw nsw i32 4096, %25
  %27 = tail call i32 @llvm.umin.i32(i32 %21, i32 %26)
  %28 = load ptr, ptr %0, align 4
  %29 = load i32, ptr %15, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %19
  %32 = load ptr, ptr %17, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr @page_address(ptr noundef %33) #17
  %35 = load ptr, ptr %16, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr align 1 %34, i32 %29, i1 false) #17
  %36 = getelementptr i8, ptr %34, i32 %29
  %37 = load ptr, ptr %0, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = ptrtoint ptr %34 to i32
  %40 = sub i32 %38, %39
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %34, ptr align 1 %36, i32 %40, i1 false) #17
  store ptr null, ptr %16, align 4
  store i32 0, ptr %15, align 4
  br label %41

41:                                               ; preds = %31, %19
  %42 = add nuw nsw i32 %27, 3
  %43 = and i32 %42, 16380
  %44 = lshr i32 %42, 2
  %45 = getelementptr i32, ptr %28, i32 %44
  %46 = load ptr, ptr %18, align 4
  %47 = icmp ugt ptr %45, %46
  %48 = icmp ult ptr %45, %28
  %49 = or i1 %48, %47
  br i1 %49, label %50, label %52, !prof !8

50:                                               ; preds = %41
  %51 = tail call fastcc ptr @xdr_get_next_encode_buffer(ptr noundef %0, i32 noundef %43) #17
  br label %68

52:                                               ; preds = %41
  store ptr %45, ptr %0, align 4
  %53 = load ptr, ptr %4, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.kvec, ptr %53, i32 0, i32 1
  br label %60

57:                                               ; preds = %52
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds %struct.xdr_buf, ptr %58, i32 0, i32 5
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi ptr [ %59, %57 ], [ %56, %55 ]
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %43
  store i32 %63, ptr %61, align 4
  %64 = load ptr, ptr %6, align 4
  %65 = getelementptr inbounds %struct.xdr_buf, ptr %64, i32 0, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, %43
  store i32 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %60, %50
  %69 = phi ptr [ %51, %50 ], [ %28, %60 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = getelementptr %struct.kvec, ptr %1, i32 %22
  store ptr %69, ptr %72, align 4
  %73 = getelementptr %struct.kvec, ptr %1, i32 %22, i32 1
  store i32 %27, ptr %73, align 4
  %74 = add i32 %22, 1
  %75 = sub i32 %21, %27
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = load ptr, ptr %6, align 4
  br label %19

79:                                               ; preds = %71, %68, %12
  %80 = phi i32 [ 0, %12 ], [ %74, %71 ], [ -5, %68 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdr_truncate_encode(ptr nocapture noundef %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i1, ptr @xdr_truncate_encode.__already_done, align 1
  br i1 %10, label %109, label %11, !prof !18

11:                                               ; preds = %9
  store i1 true, ptr @xdr_truncate_encode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #17
  br label %109

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4
  %18 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call ptr @page_address(ptr noundef %20) #17
  %22 = load ptr, ptr %17, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr align 1 %21, i32 %14, i1 false) #17
  %23 = getelementptr i8, ptr %21, i32 %14
  %24 = load ptr, ptr %0, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = ptrtoint ptr %21 to i32
  %27 = sub i32 %25, %26
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %21, ptr align 1 %23, i32 %27, i1 false) #17
  store ptr null, ptr %17, align 4
  store i32 0, ptr %13, align 4
  %28 = load i32, ptr %6, align 4
  br label %29

29:                                               ; preds = %16, %12
  %30 = phi i32 [ %7, %12 ], [ %28, %16 ]
  %31 = sub i32 %30, %1
  %32 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 1, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.smin.i32(i32 %31, i32 %33)
  %35 = sub i32 %33, %34
  store i32 %35, ptr %32, align 4
  %36 = sub i32 %30, %34
  store i32 %36, ptr %6, align 4
  %37 = icmp sgt i32 %33, %31
  br i1 %37, label %38, label %56

38:                                               ; preds = %29
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr i8, ptr %39, i32 %35
  store ptr %40, ptr %0, align 4
  %41 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = load i1, ptr @xdr_truncate_encode.__already_done.1, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48, !prof !8

47:                                               ; preds = %38
  store i1 true, ptr @xdr_truncate_encode.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1105, i32 noundef 9, ptr noundef null) #17
  br label %48

48:                                               ; preds = %47, %38
  %49 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  %52 = load i1, ptr @xdr_truncate_encode.__already_done.2, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %109, !prof !8

55:                                               ; preds = %48
  store i1 true, ptr @xdr_truncate_encode.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1106, i32 noundef 9, ptr noundef null) #17
  br label %109

56:                                               ; preds = %29
  %57 = icmp ne i32 %34, 0
  %58 = load i1, ptr @xdr_truncate_encode.__already_done.3, align 1
  %59 = xor i1 %58, true
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %63, !prof !8

61:                                               ; preds = %56
  store i1 true, ptr @xdr_truncate_encode.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1109, i32 noundef 9, ptr noundef null) #17
  %62 = load i32, ptr %6, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %62, %61 ], [ %36, %56 ]
  %65 = sub i32 %64, %1
  %66 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = tail call i32 @llvm.smin.i32(i32 %65, i32 %67)
  %69 = sub i32 %67, %68
  store i32 %69, ptr %66, align 4
  %70 = sub i32 %64, %68
  store i32 %70, ptr %6, align 4
  %71 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, %69
  %74 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = ashr i32 %73, 12
  %77 = getelementptr ptr, ptr %75, i32 %76
  %78 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 5
  store ptr %77, ptr %78, align 4
  %79 = load i32, ptr %66, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %63
  %82 = load ptr, ptr %77, align 4
  %83 = tail call ptr @page_address(ptr noundef %82) #17
  %84 = getelementptr i8, ptr %83, i32 4096
  %85 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  store ptr %84, ptr %85, align 4
  %86 = and i32 %73, 4095
  %87 = getelementptr i8, ptr %83, i32 %86
  store ptr %87, ptr %0, align 4
  %88 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = icmp ne ptr %89, null
  %91 = load i1, ptr @xdr_truncate_encode.__already_done.4, align 1
  %92 = xor i1 %91, true
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %109, !prof !8

94:                                               ; preds = %81
  store i1 true, ptr @xdr_truncate_encode.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1122, i32 noundef 9, ptr noundef null) #17
  br label %109

95:                                               ; preds = %63
  %96 = icmp eq i32 %68, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %95
  %98 = load ptr, ptr %4, align 4
  %99 = getelementptr inbounds %struct.kvec, ptr %4, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i8, ptr %98, i32 %100
  %102 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  store ptr %101, ptr %102, align 4
  br label %103

103:                                              ; preds = %97, %95
  %104 = getelementptr ptr, ptr %77, i32 -1
  store ptr %104, ptr %78, align 4
  %105 = getelementptr inbounds %struct.kvec, ptr %4, i32 0, i32 1
  store i32 %1, ptr %105, align 4
  store i32 %1, ptr %6, align 4
  %106 = load ptr, ptr %4, align 4
  %107 = getelementptr i8, ptr %106, i32 %1
  store ptr %107, ptr %0, align 4
  %108 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  store ptr %4, ptr %108, align 4
  br label %109

109:                                              ; preds = %103, %94, %81, %55, %48, %11, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @xdr_restrict_buflen(ptr nocapture noundef %0, i32 noundef %1) #14 {
  %3 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = ptrtoint ptr %6 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %10, %12
  %14 = icmp slt i32 %1, 0
  %15 = icmp ugt i32 %12, %1
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, %1
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = icmp sgt i32 %13, %1
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = getelementptr i8, ptr %6, i32 %1
  %25 = sub nsw i32 0, %13
  %26 = getelementptr i8, ptr %24, i32 %25
  store ptr %26, ptr %5, align 4
  br label %27

27:                                               ; preds = %23, %21
  store i32 %1, ptr %18, align 4
  br label %28

28:                                               ; preds = %27, %17, %2
  %29 = phi i32 [ 0, %27 ], [ -1, %2 ], [ 0, %17 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdr_write_pages(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #8 {
  %5 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xdr_buf, ptr %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.xdr_buf, ptr %6, i32 0, i32 3
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.xdr_buf, ptr %6, i32 0, i32 4
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.xdr_buf, ptr %6, i32 0, i32 5
  store i32 %3, ptr %10, align 4
  %11 = load ptr, ptr %0, align 4
  store ptr %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.xdr_buf, ptr %6, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  store ptr %7, ptr %13, align 4
  %14 = and i32 %3, 3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ult ptr %17, %19
  br i1 %20, label %22, label %21, !prof !18

21:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1189, 0\0A.popsection", ""() #17, !srcloc !19
  unreachable

22:                                               ; preds = %16
  %23 = sub nuw nsw i32 4, %14
  %24 = getelementptr i8, ptr %17, i32 %14
  store ptr %24, ptr %7, align 4
  %25 = load i32, ptr %12, align 4
  %26 = add i32 %25, %23
  store i32 %26, ptr %12, align 4
  %27 = add i32 %23, %3
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr i32, ptr %28, i32 1
  store ptr %29, ptr %0, align 4
  store i32 0, ptr %28, align 4
  br label %30

30:                                               ; preds = %22, %4
  %31 = phi i32 [ %27, %22 ], [ %3, %4 ]
  %32 = getelementptr inbounds %struct.xdr_buf, ptr %6, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %31
  store i32 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.xdr_buf, ptr %6, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %31
  store i32 %37, ptr %35, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdr_init_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8 {
  %5 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 3
  %11 = lshr i32 %10, 2
  %12 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %8, align 4
  %14 = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %13) #17
  %17 = load ptr, ptr %1, align 4
  store ptr %17, ptr %0, align 4
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  %20 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 5
  store ptr null, ptr %22, align 4
  %23 = icmp eq i32 %16, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %8, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %26, i32 %29) #17
  %31 = load i32, ptr %14, align 4
  %32 = icmp ugt i32 %29, %31
  %33 = add i32 %29, 3
  %34 = lshr i32 %33, 2
  %35 = add i32 %31, 3
  %36 = lshr i32 %35, 2
  %37 = sub nsw i32 %34, %36
  %38 = select i1 %32, i32 %37, i32 0
  store i32 %38, ptr %12, align 4
  %39 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 12
  %42 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr ptr, ptr %43, i32 %41
  store ptr %44, ptr %22, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = tail call ptr @page_address(ptr noundef %45) #17
  %47 = and i32 %40, 4095
  %48 = getelementptr i8, ptr %46, i32 %47
  store ptr %48, ptr %0, align 4
  %49 = add i32 %47, %30
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 4096) #17
  %51 = getelementptr i8, ptr %46, i32 %50
  store ptr %51, ptr %20, align 4
  store ptr null, ptr %21, align 4
  %52 = icmp eq i32 %30, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %28, %24
  %54 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 1
  %55 = load i32, ptr %8, align 4
  %56 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 1, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 %55) #17
  %59 = load ptr, ptr %54, align 4
  store ptr %59, ptr %0, align 4
  %60 = load ptr, ptr %54, align 4
  %61 = getelementptr i8, ptr %60, i32 %58
  store ptr %61, ptr %20, align 4
  store ptr %54, ptr %21, align 4
  store ptr null, ptr %22, align 4
  br label %62

62:                                               ; preds = %53, %28, %4
  %63 = phi ptr [ %61, %53 ], [ %51, %28 ], [ %19, %4 ]
  %64 = phi ptr [ %59, %53 ], [ %48, %28 ], [ %17, %4 ]
  %65 = icmp eq ptr %2, null
  %66 = icmp uge ptr %64, %2
  %67 = select i1 %65, i1 true, i1 %66
  %68 = icmp ult ptr %63, %2
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %62
  %71 = ptrtoint ptr %2 to i32
  %72 = ptrtoint ptr %64 to i32
  %73 = sub i32 %71, %72
  %74 = ashr exact i32 %73, 2
  %75 = load i32, ptr %12, align 4
  %76 = sub i32 %75, %74
  store i32 %76, ptr %12, align 4
  store ptr %2, ptr %0, align 4
  br label %77

77:                                               ; preds = %70, %62
  %78 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 7
  store ptr %3, ptr %78, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdr_init_decode_pages(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #8 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(44) %1, i8 0, i32 36, i1 false)
  %5 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 3
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 5
  store i32 %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 7
  store i32 %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 8
  store i32 %3, ptr %8, align 4
  tail call void @xdr_init_decode(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %1) #8 {
  %3 = icmp eq i32 %1, 0
  %4 = load ptr, ptr %0, align 4
  br i1 %3, label %105, label %5, !prof !8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %4, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = tail call fastcc zeroext i1 @xdr_set_next_buffer(ptr noundef %0)
  br i1 %10, label %11, label %89

11:                                               ; preds = %9
  %12 = load ptr, ptr %0, align 4
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi ptr [ %12, %11 ], [ %4, %5 ]
  %15 = add i32 %1, 3
  %16 = lshr i32 %15, 2
  %17 = getelementptr i32, ptr %14, i32 %16
  %18 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, %16
  %21 = load ptr, ptr %6, align 4
  br i1 %20, label %29, label %22, !prof !8

22:                                               ; preds = %13
  %23 = icmp ugt ptr %17, %21
  %24 = icmp ult ptr %17, %14
  %25 = or i1 %24, %23
  br i1 %25, label %29, label %26, !prof !8

26:                                               ; preds = %22
  store ptr %17, ptr %0, align 4
  %27 = sub i32 %19, %16
  store i32 %27, ptr %18, align 4
  %28 = icmp eq ptr %14, null
  br i1 %28, label %29, label %105

29:                                               ; preds = %26, %22, %13
  %30 = phi i32 [ %27, %26 ], [ %19, %22 ], [ %19, %13 ]
  %31 = phi ptr [ %17, %26 ], [ %14, %22 ], [ %14, %13 ]
  %32 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = ptrtoint ptr %21 to i32
  %35 = ptrtoint ptr %31 to i32
  %36 = sub i32 %34, %35
  %37 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 4, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %38, %1
  br i1 %39, label %73, label %40

40:                                               ; preds = %29
  %41 = add i32 %36, 3
  %42 = lshr i32 %41, 2
  %43 = getelementptr i32, ptr %31, i32 %42
  %44 = icmp ult i32 %30, %42
  br i1 %44, label %105, label %45, !prof !8

45:                                               ; preds = %40
  %46 = icmp ugt ptr %43, %21
  %47 = icmp ult ptr %43, %31
  %48 = or i1 %47, %46
  br i1 %48, label %105, label %49, !prof !8

49:                                               ; preds = %45
  store ptr %43, ptr %0, align 4
  %50 = sub i32 %30, %42
  store i32 %50, ptr %18, align 4
  %51 = icmp eq ptr %31, null
  br i1 %51, label %105, label %52

52:                                               ; preds = %49
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %33, ptr nonnull align 4 %31, i32 %36, i1 false) #17
  %53 = tail call fastcc zeroext i1 @xdr_set_next_buffer(ptr noundef %0) #17
  br i1 %53, label %54, label %73

54:                                               ; preds = %52
  %55 = sub i32 %1, %36
  %56 = add i32 %55, 3
  %57 = lshr i32 %56, 2
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr i32, ptr %58, i32 %57
  %60 = load i32, ptr %18, align 4
  %61 = icmp ult i32 %60, %57
  br i1 %61, label %105, label %62, !prof !8

62:                                               ; preds = %54
  %63 = load ptr, ptr %6, align 4
  %64 = icmp ugt ptr %59, %63
  %65 = icmp ult ptr %59, %58
  %66 = or i1 %65, %64
  br i1 %66, label %105, label %67, !prof !8

67:                                               ; preds = %62
  store ptr %59, ptr %0, align 4
  %68 = sub i32 %60, %57
  store i32 %68, ptr %18, align 4
  %69 = icmp eq ptr %58, null
  br i1 %69, label %105, label %70

70:                                               ; preds = %67
  %71 = getelementptr i8, ptr %33, i32 %36
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %71, ptr nonnull align 4 %58, i32 %55, i1 false) #17
  %72 = load ptr, ptr %32, align 4
  br label %105

73:                                               ; preds = %52, %29
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_xdr_overflow, i32 0, i32 1), align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %73
  %77 = tail call ptr @llvm.thread.pointer() #17
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr @__cpu_online_mask, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %76
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !16
  %88 = tail call i32 @__traceiter_rpc_xdr_overflow(ptr noundef null, ptr noundef %0, i32 noundef %1) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  br label %105

89:                                               ; preds = %9
  %90 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_xdr_overflow, i32 0, i32 1), align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = tail call ptr @llvm.thread.pointer() #17
  %94 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 5
  %97 = getelementptr i32, ptr @__cpu_online_mask, i32 %96
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %95, 31
  %100 = shl nuw i32 1, %99
  %101 = and i32 %100, %98
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %92
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !16
  %104 = tail call i32 @__traceiter_rpc_xdr_overflow(ptr noundef null, ptr noundef %0, i32 noundef %1) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  br label %105

105:                                              ; preds = %103, %92, %89, %87, %76, %73, %70, %67, %62, %54, %49, %45, %40, %26, %2
  %106 = phi ptr [ %14, %26 ], [ %72, %70 ], [ null, %49 ], [ null, %67 ], [ null, %73 ], [ null, %76 ], [ null, %87 ], [ null, %45 ], [ null, %40 ], [ null, %62 ], [ null, %54 ], [ null, %89 ], [ null, %92 ], [ null, %103 ], [ %4, %2 ]
  ret ptr %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xdr_set_next_buffer(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %76, label %5

5:                                                ; preds = %1
  %6 = getelementptr ptr, ptr %3, i32 1
  %7 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xdr_buf, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %6 to i32
  %12 = ptrtoint ptr %10 to i32
  %13 = sub i32 %11, %12
  %14 = shl i32 %13, 10
  %15 = getelementptr inbounds %struct.xdr_buf, ptr %8, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = getelementptr inbounds %struct.xdr_buf, ptr %8, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, %17
  %21 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 2
  br i1 %20, label %24, label %51

24:                                               ; preds = %5
  %25 = sub i32 %19, %17
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %23) #17
  %27 = getelementptr inbounds %struct.kvec, ptr %8, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %17
  %30 = getelementptr inbounds %struct.xdr_buf, ptr %8, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, %29
  %33 = add i32 %31, 3
  %34 = lshr i32 %33, 2
  %35 = add i32 %29, 3
  %36 = lshr i32 %35, 2
  %37 = sub nsw i32 %34, %36
  %38 = select i1 %32, i32 %37, i32 0
  store i32 %38, ptr %21, align 4
  %39 = load i32, ptr %15, align 4
  %40 = add i32 %39, %17
  %41 = lshr i32 %40, 12
  %42 = load ptr, ptr %9, align 4
  %43 = getelementptr ptr, ptr %42, i32 %41
  store ptr %43, ptr %2, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = tail call ptr @page_address(ptr noundef %44) #17
  %46 = and i32 %40, 4095
  %47 = getelementptr i8, ptr %45, i32 %46
  store ptr %47, ptr %0, align 4
  %48 = add i32 %46, %26
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 4096) #17
  %50 = getelementptr i8, ptr %45, i32 %49
  br label %71

51:                                               ; preds = %5
  %52 = getelementptr inbounds %struct.kvec, ptr %8, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %19
  %55 = getelementptr inbounds %struct.xdr_buf, ptr %8, i32 0, i32 8
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, %54
  %58 = add i32 %56, 3
  %59 = lshr i32 %58, 2
  %60 = add i32 %54, 3
  %61 = lshr i32 %60, 2
  %62 = sub nsw i32 %59, %61
  %63 = select i1 %57, i32 %62, i32 0
  store i32 %63, ptr %21, align 4
  %64 = getelementptr inbounds %struct.xdr_buf, ptr %8, i32 0, i32 1, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 @llvm.umin.i32(i32 %65, i32 %23) #17
  %67 = getelementptr inbounds %struct.xdr_buf, ptr %8, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  store ptr %68, ptr %0, align 4
  %69 = load ptr, ptr %67, align 4
  %70 = getelementptr i8, ptr %69, i32 %66
  store ptr null, ptr %2, align 4
  br label %71

71:                                               ; preds = %51, %24
  %72 = phi ptr [ %50, %24 ], [ %70, %51 ]
  %73 = phi ptr [ null, %24 ], [ %67, %51 ]
  %74 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  store ptr %72, ptr %74, align 4
  %75 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  store ptr %73, ptr %75, align 4
  br label %86

76:                                               ; preds = %1
  %77 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %78, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = shl i32 %84, 2
  tail call fastcc void @xdr_set_page(ptr noundef %0, i32 noundef 0, i32 noundef %85)
  br label %86

86:                                               ; preds = %82, %76, %71
  %87 = load ptr, ptr %0, align 4
  %88 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = icmp ne ptr %87, %89
  ret i1 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_read_pages(ptr noundef %0, i32 noundef %1) #8 {
  %3 = add i32 %1, 3
  %4 = and i32 %3, -4
  %5 = tail call fastcc i32 @xdr_align_pages(ptr noundef %0, i32 noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %2
  %8 = sub i32 %4, %5
  %9 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 2
  %12 = sub i32 %11, %5
  %13 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.xdr_buf, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %8
  %18 = getelementptr inbounds %struct.kvec, ptr %14, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %17, %19
  %21 = getelementptr inbounds %struct.xdr_buf, ptr %14, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, %20
  %24 = add i32 %22, 3
  %25 = lshr i32 %24, 2
  %26 = add i32 %20, 3
  %27 = lshr i32 %26, 2
  %28 = sub nsw i32 %25, %27
  %29 = select i1 %23, i32 %28, i32 0
  store i32 %29, ptr %9, align 4
  %30 = getelementptr inbounds %struct.xdr_buf, ptr %14, i32 0, i32 1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %12) #17
  %33 = icmp ult i32 %32, %8
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %7
  br label %35

35:                                               ; preds = %34, %7
  %36 = phi i32 [ %32, %34 ], [ %8, %7 ]
  %37 = getelementptr inbounds %struct.xdr_buf, ptr %14, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %36
  store ptr %39, ptr %0, align 4
  %40 = load ptr, ptr %37, align 4
  %41 = getelementptr i8, ptr %40, i32 %32
  %42 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  store ptr %37, ptr %43, align 4
  %44 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 5
  store ptr null, ptr %44, align 4
  %45 = tail call i32 @llvm.umin.i32(i32 %5, i32 %1)
  br label %46

46:                                               ; preds = %35, %2
  %47 = phi i32 [ %45, %35 ], [ 0, %2 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xdr_align_pages(ptr noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %76, label %8

8:                                                ; preds = %2
  %9 = add i32 %1, 3
  %10 = lshr i32 %9, 2
  tail call fastcc void @xdr_realign_pages(ptr noundef %0)
  %11 = load i32, ptr %5, align 4
  %12 = icmp ugt i32 %10, %11
  %13 = shl i32 %11, 2
  %14 = select i1 %12, i32 %13, i32 %1
  %15 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %14
  br i1 %17, label %18, label %76

18:                                               ; preds = %8
  %19 = icmp ugt i32 %11, %10
  br i1 %19, label %20, label %76

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.kvec, ptr %4, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %22, %24
  %26 = icmp ult i32 %16, %14
  %27 = load i1, ptr @xdr_shrink_pagelen.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %34, !prof !8

30:                                               ; preds = %20
  store i1 true, ptr @xdr_shrink_pagelen.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 820, i32 noundef 9, ptr noundef null) #17
  %31 = load i32, ptr %23, align 4
  %32 = load i32, ptr %21, align 4
  %33 = load i32, ptr %15, align 4
  br label %34

34:                                               ; preds = %30, %20
  %35 = phi i32 [ %33, %30 ], [ %16, %20 ]
  %36 = phi i32 [ %32, %30 ], [ %22, %20 ]
  %37 = phi i32 [ %31, %30 ], [ %24, %20 ]
  %38 = icmp uge i32 %37, %36
  %39 = icmp ult i32 %25, %14
  %40 = select i1 %38, i1 true, i1 %39
  %41 = select i1 %40, i32 %14, i32 %25
  %42 = icmp ult i32 %41, %35
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = sub i32 %41, %35
  %45 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %44, %46
  store i32 %47, ptr %45, align 4
  store i32 %41, ptr %15, align 4
  br label %48

48:                                               ; preds = %43, %34
  %49 = phi i32 [ %41, %43 ], [ %35, %34 ]
  %50 = icmp ugt i32 %49, %14
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = sub i32 %49, %14
  tail call fastcc void @xdr_buf_try_expand(ptr noundef %4, i32 noundef %52) #17
  %53 = sub i32 %41, %14
  tail call fastcc void @xdr_buf_pages_shift_right(ptr noundef %4, i32 noundef %14, i32 noundef %53, i32 noundef %52) #17
  store i32 %14, ptr %15, align 4
  %54 = load i32, ptr %21, align 4
  %55 = sub i32 %54, %52
  store i32 %55, ptr %21, align 4
  %56 = getelementptr inbounds %struct.xdr_buf, ptr %4, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = sub i32 %57, %52
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %51, %48
  %60 = phi i32 [ %52, %51 ], [ 0, %48 ]
  %61 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_xdr_alignment, i32 0, i32 1), align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = tail call ptr @llvm.thread.pointer() #17
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 8
  %67 = lshr i32 %66, 5
  %68 = getelementptr i32, ptr @__cpu_online_mask, i32 %67
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %66, 31
  %71 = shl nuw i32 1, %70
  %72 = and i32 %71, %69
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %63
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  %75 = tail call i32 @__traceiter_rpc_xdr_alignment(ptr noundef null, ptr noundef %0, i32 noundef %14, i32 noundef %60) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %76

76:                                               ; preds = %74, %63, %59, %18, %8, %2
  %77 = phi i32 [ 0, %2 ], [ %14, %18 ], [ %16, %8 ], [ %14, %59 ], [ %14, %63 ], [ %14, %74 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_align_data(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @xdr_realign_pages(ptr noundef %0)
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.xdr_buf, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 3
  %10 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, -4
  %13 = add i32 %9, %12
  %14 = and i32 %13, -4
  %15 = getelementptr inbounds %struct.kvec, ptr %6, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %22, !prof !8

18:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 875, i32 noundef 9, ptr noundef null) #17
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.kvec, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i32 [ %21, %18 ], [ %16, %3 ]
  %24 = sub i32 %14, %23
  %25 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  %30 = icmp ult i32 %24, %29
  br i1 %30, label %31, label %152

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.kvec, ptr %5, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %24
  %35 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %152

38:                                               ; preds = %31
  %39 = sub i32 %36, %33
  %40 = icmp ult i32 %24, %1
  %41 = load i1, ptr @xdr_align_data.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !8

44:                                               ; preds = %38
  store i1 true, ptr @xdr_align_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1485, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %24, i32 noundef %1) #17
  br label %45

45:                                               ; preds = %44, %38
  br i1 %40, label %152, label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %25, align 4
  %48 = icmp ult i32 %47, %1
  %49 = load i1, ptr @xdr_align_data.__already_done.6, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !8

52:                                               ; preds = %46
  store i1 true, ptr @xdr_align_data.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1489, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %1, i32 noundef %47) #17
  br label %53

53:                                               ; preds = %52, %46
  br i1 %48, label %152, label %54

54:                                               ; preds = %53
  %55 = sub i32 %24, %1
  %56 = icmp ne i32 %24, %1
  %57 = icmp ne i32 %36, %33
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %142

59:                                               ; preds = %54
  %60 = load i32, ptr %25, align 4
  %61 = icmp ugt i32 %60, %24
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = sub i32 %24, %60
  tail call fastcc void @xdr_buf_tail_copy_left(ptr noundef %5, i32 noundef %63, i32 noundef %39, i32 noundef %55) #17
  br label %142

64:                                               ; preds = %59
  %65 = sub i32 %60, %24
  %66 = tail call i32 @llvm.umin.i32(i32 %65, i32 %39) #17
  %67 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %1
  %72 = add i32 %70, %24
  %73 = icmp ugt i32 %72, %71
  br i1 %73, label %75, label %74, !prof !18

74:                                               ; preds = %64
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 224, 0\0A.popsection", ""() #17, !srcloc !22
  unreachable

75:                                               ; preds = %64
  %76 = icmp eq i32 %66, 0
  br i1 %76, label %136, label %77

77:                                               ; preds = %75
  %78 = lshr i32 %71, 12
  %79 = getelementptr ptr, ptr %68, i32 %78
  %80 = lshr i32 %72, 12
  %81 = getelementptr ptr, ptr %68, i32 %80
  %82 = and i32 %71, 4095
  %83 = and i32 %72, 4095
  br label %84

84:                                               ; preds = %126, %77
  %85 = phi i32 [ %82, %77 ], [ %130, %126 ]
  %86 = phi i32 [ %83, %77 ], [ %131, %126 ]
  %87 = phi i32 [ %66, %77 ], [ %132, %126 ]
  %88 = phi ptr [ %81, %77 ], [ %97, %126 ]
  %89 = phi ptr [ %79, %77 ], [ %93, %126 ]
  %90 = icmp ugt i32 %85, 4095
  %91 = select i1 %90, i32 0, i32 %85
  %92 = zext i1 %90 to i32
  %93 = getelementptr ptr, ptr %89, i32 %92
  %94 = icmp ugt i32 %86, 4095
  %95 = select i1 %94, i32 0, i32 %86
  %96 = zext i1 %94 to i32
  %97 = getelementptr ptr, ptr %88, i32 %96
  %98 = sub nuw nsw i32 4096, %91
  %99 = tail call i32 @llvm.umin.i32(i32 %87, i32 %98) #17
  %100 = sub nuw nsw i32 4096, %95
  %101 = tail call i32 @llvm.umin.i32(i32 %99, i32 %100) #17
  %102 = load ptr, ptr %93, align 4
  %103 = load i32, ptr @pgprot_kernel, align 4
  %104 = or i32 %103, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %105 = tail call ptr @llvm.thread.pointer() #17
  %106 = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 149
  %107 = load i32, ptr %106, align 8
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %109 = tail call ptr @__kmap_local_page_prot(ptr noundef %102, i32 noundef %104) #17
  %110 = load ptr, ptr %93, align 4
  %111 = load ptr, ptr %97, align 4
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %123, label %113

113:                                              ; preds = %84
  %114 = load i32, ptr @pgprot_kernel, align 4
  %115 = or i32 %114, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %116 = load i32, ptr %106, align 8
  %117 = add i32 %116, 1
  store i32 %117, ptr %106, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %118 = tail call ptr @__kmap_local_page_prot(ptr noundef %111, i32 noundef %115) #17
  %119 = getelementptr i8, ptr %109, i32 %91
  %120 = getelementptr i8, ptr %118, i32 %95
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %119, ptr align 1 %120, i32 %101, i1 false) #17
  tail call void @kunmap_local_indexed(ptr noundef %118) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %121 = load i32, ptr %106, align 8
  %122 = add i32 %121, -1
  store i32 %122, ptr %106, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %126

123:                                              ; preds = %84
  %124 = getelementptr i8, ptr %109, i32 %91
  %125 = getelementptr i8, ptr %109, i32 %95
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %124, ptr align 1 %125, i32 %101, i1 false) #17
  br label %126

126:                                              ; preds = %123, %113
  %127 = load ptr, ptr %93, align 4
  tail call void @flush_dcache_page(ptr noundef %127) #17
  tail call void @kunmap_local_indexed(ptr noundef %109) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %128 = load i32, ptr %106, align 8
  %129 = add i32 %128, -1
  store i32 %129, ptr %106, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %130 = add nuw nsw i32 %101, %91
  %131 = add i32 %101, %95
  %132 = sub i32 %87, %101
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %84

134:                                              ; preds = %126
  %135 = load i32, ptr %25, align 4
  br label %136

136:                                              ; preds = %134, %75
  %137 = phi i32 [ %135, %134 ], [ %60, %75 ]
  %138 = add i32 %39, %24
  %139 = icmp ugt i32 %138, %137
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = sub i32 %138, %137
  tail call fastcc void @xdr_buf_tail_copy_left(ptr noundef %5, i32 noundef 0, i32 noundef %141, i32 noundef %55) #17
  br label %142

142:                                              ; preds = %140, %136, %62, %54
  %143 = load i32, ptr %10, align 4
  %144 = shl i32 %143, 2
  %145 = tail call i32 @llvm.umin.i32(i32 %144, i32 %2)
  %146 = sub i32 %144, %145
  %147 = load ptr, ptr %4, align 4
  %148 = getelementptr inbounds %struct.xdr_buf, ptr %147, i32 0, i32 8
  %149 = load i32, ptr %148, align 4
  %150 = sub i32 %149, %55
  store i32 %150, ptr %148, align 4
  %151 = add i32 %145, %1
  tail call fastcc void @xdr_set_page(ptr noundef %0, i32 noundef %151, i32 noundef %146)
  br label %152

152:                                              ; preds = %142, %53, %45, %31, %22
  %153 = phi i32 [ %145, %142 ], [ 0, %22 ], [ 0, %31 ], [ 0, %45 ], [ 0, %53 ]
  ret i32 %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xdr_realign_pages(ptr noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xdr_buf, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 3
  %7 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, -4
  %10 = add i32 %6, %9
  %11 = and i32 %10, -4
  %12 = getelementptr inbounds %struct.kvec, ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %11
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = tail call fastcc i32 @xdr_shrink_bufhead(ptr noundef %3, i32 noundef %11)
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_xdr_alignment, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #17
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
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  %31 = tail call i32 @__traceiter_rpc_xdr_alignment(ptr noundef null, ptr noundef %0, i32 noundef %11, i32 noundef %16) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %32

32:                                               ; preds = %30, %19, %15
  %33 = getelementptr inbounds %struct.xdr_buf, ptr %3, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  tail call fastcc void @xdr_set_page(ptr noundef %0, i32 noundef 0, i32 noundef %34)
  br label %35

35:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xdr_set_page(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %47

9:                                                ; preds = %3
  %10 = sub i32 %7, %1
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %2) #17
  %12 = getelementptr inbounds %struct.kvec, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %1
  %15 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %14
  %18 = add i32 %16, 3
  %19 = lshr i32 %18, 2
  %20 = add i32 %14, 3
  %21 = lshr i32 %20, 2
  %22 = sub nsw i32 %19, %21
  %23 = select i1 %17, i32 %22, i32 0
  %24 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %1
  %28 = lshr i32 %27, 12
  %29 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr ptr, ptr %30, i32 %28
  %32 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 5
  store ptr %31, ptr %32, align 4
  %33 = load ptr, ptr %31, align 4
  %34 = tail call ptr @page_address(ptr noundef %33) #17
  %35 = and i32 %27, 4095
  %36 = getelementptr i8, ptr %34, i32 %35
  store ptr %36, ptr %0, align 4
  %37 = add i32 %35, %11
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 4096) #17
  %39 = getelementptr i8, ptr %34, i32 %38
  %40 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  store ptr null, ptr %41, align 4
  %42 = icmp eq i32 %11, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %9
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.xdr_buf, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %43, %3
  %48 = phi i32 [ %46, %43 ], [ %7, %3 ]
  %49 = phi ptr [ %44, %43 ], [ %5, %3 ]
  %50 = sub i32 %1, %48
  %51 = getelementptr inbounds %struct.kvec, ptr %49, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %1
  %54 = getelementptr inbounds %struct.xdr_buf, ptr %49, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = icmp ugt i32 %55, %53
  %57 = add i32 %55, 3
  %58 = lshr i32 %57, 2
  %59 = add i32 %53, 3
  %60 = lshr i32 %59, 2
  %61 = sub nsw i32 %58, %60
  %62 = select i1 %56, i32 %61, i32 0
  %63 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.xdr_buf, ptr %49, i32 0, i32 1, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 @llvm.umin.i32(i32 %65, i32 %2) #17
  %67 = icmp ult i32 %66, %50
  br i1 %67, label %68, label %69, !prof !8

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %68, %47
  %70 = phi i32 [ %66, %68 ], [ %50, %47 ]
  %71 = getelementptr inbounds %struct.xdr_buf, ptr %49, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 %70
  store ptr %73, ptr %0, align 4
  %74 = load ptr, ptr %71, align 4
  %75 = getelementptr i8, ptr %74, i32 %66
  %76 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  store ptr %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  store ptr %71, ptr %77, align 4
  %78 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 5
  store ptr null, ptr %78, align 4
  br label %79

79:                                               ; preds = %69, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_expand_hole(ptr noundef %0, i32 noundef %1, i32 noundef returned %2) #8 {
  %4 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @xdr_realign_pages(ptr noundef %0)
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.xdr_buf, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 3
  %10 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, -4
  %13 = add i32 %9, %12
  %14 = and i32 %13, -4
  %15 = getelementptr inbounds %struct.kvec, ptr %6, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %22, !prof !8

18:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 875, i32 noundef 9, ptr noundef null) #17
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.kvec, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i32 [ %21, %18 ], [ %16, %3 ]
  %24 = sub i32 %14, %23
  %25 = add i32 %2, %1
  %26 = add i32 %25, 3
  %27 = and i32 %26, -4
  %28 = icmp ugt i32 %27, %24
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.kvec, ptr %5, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 %31, %33
  %35 = sub i32 %27, %24
  tail call fastcc void @xdr_buf_try_expand(ptr noundef %5, i32 noundef %35)
  tail call fastcc void @xdr_buf_pages_shift_right(ptr noundef %5, i32 noundef %24, i32 noundef %34, i32 noundef %35)
  %36 = load i32, ptr %10, align 4
  %37 = shl i32 %36, 2
  tail call fastcc void @xdr_set_page(ptr noundef %0, i32 noundef %27, i32 noundef %37)
  br label %42

38:                                               ; preds = %22
  %39 = icmp eq i32 %27, %24
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = tail call i32 @xdr_align_data(ptr noundef %0, i32 noundef %27, i32 noundef 0)
  br label %42

42:                                               ; preds = %40, %38, %29
  %43 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq i32 %2, 0
  br i1 %45, label %116, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, %1
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = sub i32 %1, %48
  %52 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 1, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, %51
  br i1 %54, label %55, label %116

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 1
  %57 = sub i32 %53, %51
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 %2) #17
  %59 = load ptr, ptr %56, align 4
  %60 = getelementptr i8, ptr %59, i32 %51
  tail call void @llvm.memset.p0.i32(ptr align 1 %60, i8 0, i32 %58, i1 false) #17
  br label %116

61:                                               ; preds = %46
  %62 = icmp ugt i32 %25, %48
  br i1 %62, label %63, label %76

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 1, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 1
  %69 = sub i32 %25, %48
  %70 = tail call i32 @llvm.umin.i32(i32 %65, i32 %69) #17
  %71 = load ptr, ptr %68, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %71, i8 0, i32 %70, i1 false) #17
  %72 = load i32, ptr %47, align 4
  br label %73

73:                                               ; preds = %67, %63
  %74 = phi i32 [ %48, %63 ], [ %72, %67 ]
  %75 = sub i32 %74, %1
  br label %76

76:                                               ; preds = %73, %61
  %77 = phi i32 [ %75, %73 ], [ %2, %61 ]
  %78 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, %1
  %81 = lshr i32 %80, 12
  %82 = getelementptr ptr, ptr %44, i32 %81
  %83 = and i32 %80, 4095
  %84 = sub nuw nsw i32 4096, %83
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 %77) #17
  %86 = load ptr, ptr %82, align 4
  %87 = load i32, ptr @pgprot_kernel, align 4
  %88 = or i32 %87, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %89 = tail call ptr @llvm.thread.pointer() #17
  %90 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 149
  %91 = load i32, ptr %90, align 8
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %93 = tail call ptr @__kmap_local_page_prot(ptr noundef %86, i32 noundef %88) #17
  %94 = getelementptr i8, ptr %93, i32 %83
  tail call void @llvm.memset.p0.i32(ptr align 1 %94, i8 0, i32 %85, i1 false) #17
  tail call void @kunmap_local_indexed(ptr noundef %93) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %95 = load i32, ptr %90, align 8
  %96 = add i32 %95, -1
  store i32 %96, ptr %90, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %97 = load ptr, ptr %82, align 4
  tail call void @flush_dcache_page(ptr noundef %97) #17
  %98 = sub i32 %77, %85
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %100, %76
  %101 = phi i32 [ %114, %100 ], [ %98, %76 ]
  %102 = phi ptr [ %103, %100 ], [ %82, %76 ]
  %103 = getelementptr ptr, ptr %102, i32 1
  %104 = tail call i32 @llvm.umin.i32(i32 %101, i32 4096) #17
  %105 = load ptr, ptr %103, align 4
  %106 = load i32, ptr @pgprot_kernel, align 4
  %107 = or i32 %106, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %108 = load i32, ptr %90, align 8
  %109 = add i32 %108, 1
  store i32 %109, ptr %90, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %110 = tail call ptr @__kmap_local_page_prot(ptr noundef %105, i32 noundef %107) #17
  tail call void @llvm.memset.p0.i32(ptr align 1 %110, i8 0, i32 %104, i1 false) #17
  tail call void @kunmap_local_indexed(ptr noundef %110) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %111 = load i32, ptr %90, align 8
  %112 = add i32 %111, -1
  store i32 %112, ptr %90, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %113 = load ptr, ptr %103, align 4
  tail call void @flush_dcache_page(ptr noundef %113) #17
  %114 = sub i32 %101, %104
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %100, !llvm.loop !23

116:                                              ; preds = %100, %76, %55, %50, %42
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xdr_buf_try_expand(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %4
  %8 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %7, %9
  %11 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %14, label %68

14:                                               ; preds = %2
  %15 = sub i32 %10, %12
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %1)
  %17 = add i32 %16, %12
  %18 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp ne i32 %20, 0
  %22 = icmp ugt i32 %17, %4
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %62

24:                                               ; preds = %14
  %25 = sub i32 %17, %4
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %6) #17
  %27 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %26, 4095
  %30 = add i32 %29, %28
  %31 = icmp ult i32 %30, 4096
  br i1 %31, label %62, label %32

32:                                               ; preds = %24
  %33 = lshr i32 %30, 12
  %34 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %58, %32
  %37 = phi ptr [ %35, %32 ], [ %59, %58 ]
  %38 = phi i32 [ 0, %32 ], [ %60, %58 ]
  %39 = getelementptr ptr, ptr %37, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %36
  %43 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %44 = load ptr, ptr %34, align 4
  %45 = getelementptr ptr, ptr %44, i32 %38
  store ptr %43, ptr %45, align 4
  %46 = load ptr, ptr %34, align 4
  %47 = getelementptr ptr, ptr %46, i32 %38
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %58, !prof !8

50:                                               ; preds = %42
  %51 = sub i32 %17, %26
  %52 = shl i32 %38, 12
  %53 = load i32, ptr %27, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = add i32 %52, %51
  %57 = sub i32 %56, %53
  br label %62

58:                                               ; preds = %42, %36
  %59 = phi ptr [ %46, %42 ], [ %37, %36 ]
  %60 = add nuw nsw i32 %38, 1
  %61 = icmp eq i32 %60, %33
  br i1 %61, label %62, label %36

62:                                               ; preds = %58, %55, %50, %24, %14
  %63 = phi i32 [ %17, %14 ], [ %57, %55 ], [ %51, %50 ], [ %17, %24 ], [ %17, %58 ]
  %64 = load i32, ptr %11, align 4
  %65 = sub i32 %64, %63
  store i32 %63, ptr %11, align 4
  %66 = add i32 %65, %1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %62, %2
  %69 = phi i32 [ %63, %62 ], [ %12, %2 ]
  %70 = phi i32 [ %66, %62 ], [ %1, %2 ]
  %71 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 7
  %72 = load i32, ptr %71, align 4
  %73 = icmp ugt i32 %72, %10
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = sub i32 %72, %10
  %76 = tail call i32 @llvm.umin.i32(i32 %75, i32 %70)
  %77 = load i32, ptr %8, align 4
  %78 = add i32 %77, %76
  store i32 %78, ptr %8, align 4
  %79 = add i32 %69, %76
  store i32 %79, ptr %11, align 4
  br label %80

80:                                               ; preds = %74, %68, %62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xdr_buf_pages_shift_right(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 {
  %5 = icmp ne i32 %3, 0
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %189

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = sub i32 %1, %10
  %14 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %13
  br i1 %16, label %17, label %189

17:                                               ; preds = %12
  %18 = add i32 %13, %3
  %19 = icmp ugt i32 %15, %18
  br i1 %19, label %20, label %189

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %22 = add i32 %18, %2
  %23 = icmp ugt i32 %22, %15
  %24 = sub i32 %15, %18
  %25 = select i1 %23, i32 %24, i32 %2
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr i8, ptr %26, i32 %18
  %28 = getelementptr i8, ptr %26, i32 %13
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %27, ptr align 1 %28, i32 %25, i1 false) #17
  br label %189

29:                                               ; preds = %8
  %30 = add i32 %2, %1
  %31 = icmp ugt i32 %30, %10
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %34, %3
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = sub i32 %30, %10
  %38 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %39 = add i32 %37, %3
  %40 = icmp ugt i32 %39, %34
  %41 = sub i32 %34, %3
  %42 = select i1 %40, i32 %41, i32 %37
  %43 = load ptr, ptr %38, align 4
  %44 = getelementptr i8, ptr %43, i32 %3
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %44, ptr align 1 %43, i32 %42, i1 false) #17
  %45 = load i32, ptr %9, align 4
  br label %46

46:                                               ; preds = %36, %32, %29
  %47 = phi i32 [ %45, %36 ], [ %10, %32 ], [ %10, %29 ]
  %48 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %49 = add i32 %3, %1
  %50 = icmp ugt i32 %47, %1
  br i1 %50, label %51, label %189

51:                                               ; preds = %46
  %52 = sub i32 %47, %1
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 %2) #17
  %54 = icmp ult i32 %49, %47
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = sub i32 %49, %47
  %57 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %53, %56
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = icmp ugt i32 %58, %56
  %63 = sub i32 %58, %56
  br i1 %62, label %77, label %73

64:                                               ; preds = %51
  %65 = add i32 %53, %49
  %66 = icmp ult i32 %65, %47
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = sub i32 %47, %49
  %69 = sub i32 %53, %68
  %70 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @llvm.umin.i32(i32 %69, i32 %71) #17
  br label %77

73:                                               ; preds = %64, %61
  %74 = phi i32 [ %53, %64 ], [ 0, %61 ]
  %75 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %76 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  br label %120

77:                                               ; preds = %67, %61, %55
  %78 = phi i32 [ 0, %55 ], [ %68, %67 ], [ 0, %61 ]
  %79 = phi i32 [ %53, %55 ], [ %72, %67 ], [ %63, %61 ]
  %80 = phi i32 [ %56, %55 ], [ 0, %67 ], [ %56, %61 ]
  %81 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %82 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %83 = icmp eq i32 %79, 0
  br i1 %83, label %120, label %84

84:                                               ; preds = %77
  %85 = load i32, ptr %82, align 4
  %86 = add i32 %78, %1
  %87 = add i32 %86, %85
  %88 = load ptr, ptr %81, align 4
  %89 = load ptr, ptr %48, align 4
  %90 = getelementptr i8, ptr %89, i32 %80
  %91 = lshr i32 %87, 12
  %92 = getelementptr ptr, ptr %88, i32 %91
  %93 = and i32 %87, 4095
  br label %94

94:                                               ; preds = %94, %84
  %95 = phi ptr [ %90, %84 ], [ %117, %94 ]
  %96 = phi i32 [ %93, %84 ], [ %114, %94 ]
  %97 = phi i32 [ %79, %84 ], [ %118, %94 ]
  %98 = phi ptr [ %92, %84 ], [ %116, %94 ]
  %99 = sub i32 4096, %96
  %100 = tail call i32 @llvm.umin.i32(i32 %99, i32 %97) #17
  %101 = load ptr, ptr %98, align 4
  %102 = load i32, ptr @pgprot_kernel, align 4
  %103 = or i32 %102, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %104 = tail call ptr @llvm.thread.pointer() #17
  %105 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 149
  %106 = load i32, ptr %105, align 8
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %108 = tail call ptr @__kmap_local_page_prot(ptr noundef %101, i32 noundef %103) #17
  %109 = getelementptr i8, ptr %108, i32 %96
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %95, ptr align 1 %109, i32 %100, i1 false) #17
  tail call void @kunmap_local_indexed(ptr noundef %108) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %110 = load i32, ptr %105, align 8
  %111 = add i32 %110, -1
  store i32 %111, ptr %105, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %112 = add i32 %100, %96
  %113 = icmp eq i32 %112, 4096
  %114 = select i1 %113, i32 0, i32 %112
  %115 = zext i1 %113 to i32
  %116 = getelementptr ptr, ptr %98, i32 %115
  %117 = getelementptr i8, ptr %95, i32 %100
  %118 = sub i32 %97, %100
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %94

120:                                              ; preds = %94, %77, %73
  %121 = phi ptr [ %76, %73 ], [ %82, %77 ], [ %82, %94 ]
  %122 = phi ptr [ %75, %73 ], [ %81, %77 ], [ %81, %94 ]
  %123 = phi i32 [ %74, %73 ], [ %78, %77 ], [ %78, %94 ]
  %124 = load ptr, ptr %122, align 4
  %125 = load i32, ptr %121, align 4
  %126 = add i32 %125, %49
  %127 = add i32 %125, %1
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %130, label %129, !prof !18

129:                                              ; preds = %120
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 289, 0\0A.popsection", ""() #17, !srcloc !25
  unreachable

130:                                              ; preds = %120
  %131 = icmp eq i32 %123, 0
  br i1 %131, label %189, label %132

132:                                              ; preds = %130
  %133 = add i32 %126, %123
  %134 = add i32 %127, %123
  %135 = lshr i32 %133, 12
  %136 = getelementptr ptr, ptr %124, i32 %135
  %137 = lshr i32 %134, 12
  %138 = getelementptr ptr, ptr %124, i32 %137
  %139 = and i32 %133, 4095
  %140 = and i32 %134, 4095
  br label %141

141:                                              ; preds = %183, %132
  %142 = phi i32 [ %139, %132 ], [ %157, %183 ]
  %143 = phi i32 [ %140, %132 ], [ %158, %183 ]
  %144 = phi i32 [ %123, %132 ], [ %187, %183 ]
  %145 = phi ptr [ %138, %132 ], [ %154, %183 ]
  %146 = phi ptr [ %136, %132 ], [ %150, %183 ]
  %147 = icmp eq i32 %142, 0
  %148 = select i1 %147, i32 4096, i32 %142
  %149 = sext i1 %147 to i32
  %150 = getelementptr ptr, ptr %146, i32 %149
  %151 = icmp eq i32 %143, 0
  %152 = select i1 %151, i32 4096, i32 %143
  %153 = sext i1 %151 to i32
  %154 = getelementptr ptr, ptr %145, i32 %153
  %155 = tail call i32 @llvm.umin.i32(i32 %144, i32 %148) #17
  %156 = tail call i32 @llvm.umin.i32(i32 %155, i32 %152) #17
  %157 = sub i32 %148, %156
  %158 = sub i32 %152, %156
  %159 = load ptr, ptr %150, align 4
  %160 = load i32, ptr @pgprot_kernel, align 4
  %161 = or i32 %160, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %162 = tail call ptr @llvm.thread.pointer() #17
  %163 = getelementptr inbounds %struct.task_struct, ptr %162, i32 0, i32 149
  %164 = load i32, ptr %163, align 8
  %165 = add i32 %164, 1
  store i32 %165, ptr %163, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %166 = tail call ptr @__kmap_local_page_prot(ptr noundef %159, i32 noundef %161) #17
  %167 = load ptr, ptr %150, align 4
  %168 = load ptr, ptr %154, align 4
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %180, label %170

170:                                              ; preds = %141
  %171 = load i32, ptr @pgprot_kernel, align 4
  %172 = or i32 %171, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %173 = load i32, ptr %163, align 8
  %174 = add i32 %173, 1
  store i32 %174, ptr %163, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %175 = tail call ptr @__kmap_local_page_prot(ptr noundef %168, i32 noundef %172) #17
  %176 = getelementptr i8, ptr %166, i32 %157
  %177 = getelementptr i8, ptr %175, i32 %158
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %176, ptr align 1 %177, i32 %156, i1 false) #17
  tail call void @kunmap_local_indexed(ptr noundef %175) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %178 = load i32, ptr %163, align 8
  %179 = add i32 %178, -1
  store i32 %179, ptr %163, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  br label %183

180:                                              ; preds = %141
  %181 = getelementptr i8, ptr %166, i32 %157
  %182 = getelementptr i8, ptr %166, i32 %158
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %181, ptr align 1 %182, i32 %156, i1 false) #17
  br label %183

183:                                              ; preds = %180, %170
  %184 = load ptr, ptr %150, align 4
  tail call void @flush_dcache_page(ptr noundef %184) #17
  tail call void @kunmap_local_indexed(ptr noundef %166) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %185 = load i32, ptr %163, align 8
  %186 = add i32 %185, -1
  store i32 %186, ptr %163, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %187 = sub i32 %144, %156
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %141

189:                                              ; preds = %183, %130, %46, %20, %17, %12, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdr_enter_page(ptr noundef %0, i32 noundef %1) #8 {
  %3 = tail call fastcc i32 @xdr_align_pages(ptr noundef %0, i32 noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xdr_buf, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @llvm.umin.i32(i32 %9, i32 %3) #17
  %13 = getelementptr inbounds %struct.kvec, ptr %7, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.xdr_buf, ptr %7, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %14
  %18 = add i32 %16, 3
  %19 = lshr i32 %18, 2
  %20 = add i32 %14, 3
  %21 = lshr i32 %20, 2
  %22 = sub nsw i32 %19, %21
  %23 = select i1 %17, i32 %22, i32 0
  %24 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.xdr_buf, ptr %7, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 12
  %28 = getelementptr inbounds %struct.xdr_buf, ptr %7, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr ptr, ptr %29, i32 %27
  %31 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 5
  store ptr %30, ptr %31, align 4
  %32 = load ptr, ptr %30, align 4
  %33 = tail call ptr @page_address(ptr noundef %32) #17
  %34 = and i32 %26, 4095
  %35 = getelementptr i8, ptr %33, i32 %34
  store ptr %35, ptr %0, align 4
  %36 = add i32 %34, %12
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 4096) #17
  %38 = getelementptr i8, ptr %33, i32 %37
  %39 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 3
  store ptr null, ptr %40, align 4
  br label %41

41:                                               ; preds = %11, %5, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xdr_buf_from_iov(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = load i64, ptr %0, align 4
  store i64 %3, ptr %1, align 4
  %4 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 1
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 5
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 8
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 7
  store i32 %7, ptr %9, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @xdr_buf_subsegment(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 8
  store i32 %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 7
  store i32 %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %2
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr i8, ptr %11, i32 %2
  store ptr %12, ptr %1, align 4
  %13 = load i32, ptr %7, align 4
  %14 = sub i32 %13, %2
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %3)
  %16 = sub i32 %3, %15
  br label %20

17:                                               ; preds = %4
  %18 = sub i32 %2, %8
  %19 = load ptr, ptr %0, align 4
  store ptr %19, ptr %1, align 4
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi i32 [ %15, %10 ], [ 0, %17 ]
  %22 = phi i32 [ %16, %10 ], [ %3, %17 ]
  %23 = phi i32 [ 0, %10 ], [ %18, %17 ]
  %24 = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  store i32 %21, ptr %24, align 4
  %25 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = sub i32 %26, %23
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %22)
  %31 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 5
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %23
  %35 = and i32 %34, 4095
  %36 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 4
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = lshr i32 %34, 12
  %40 = getelementptr ptr, ptr %38, i32 %39
  %41 = sub i32 %22, %30
  br label %48

42:                                               ; preds = %20
  %43 = sub i32 %23, %26
  %44 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 4
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 5
  store i32 0, ptr %47, align 4
  br label %48

48:                                               ; preds = %42, %28
  %49 = phi ptr [ %40, %28 ], [ %45, %42 ]
  %50 = phi i32 [ %41, %28 ], [ %22, %42 ]
  %51 = phi i32 [ 0, %28 ], [ %43, %42 ]
  %52 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 3
  store ptr %49, ptr %52, align 4
  %53 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %54 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp ult i32 %51, %55
  %57 = load ptr, ptr %53, align 4
  br i1 %56, label %58, label %65

58:                                               ; preds = %48
  %59 = getelementptr i8, ptr %57, i32 %51
  %60 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 1
  store ptr %59, ptr %60, align 4
  %61 = load i32, ptr %54, align 4
  %62 = sub i32 %61, %51
  %63 = tail call i32 @llvm.umin.i32(i32 %50, i32 %62)
  %64 = sub i32 %50, %63
  br label %68

65:                                               ; preds = %48
  %66 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 1
  store ptr %57, ptr %66, align 4
  %67 = icmp ne i32 %51, %55
  br label %68

68:                                               ; preds = %65, %58
  %69 = phi i32 [ %63, %58 ], [ 0, %65 ]
  %70 = phi i32 [ %64, %58 ], [ %50, %65 ]
  %71 = phi i1 [ false, %58 ], [ %67, %65 ]
  %72 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 1, i32 0, i32 1
  store i32 %69, ptr %72, align 4
  %73 = icmp ne i32 %70, 0
  %74 = select i1 %71, i1 true, i1 %73
  %75 = sext i1 %74 to i32
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @xdr_stream_subsegment(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 3
  %9 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, -4
  %12 = add i32 %8, %11
  %13 = and i32 %12, -4
  %14 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 8
  store i32 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 7
  store i32 %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.kvec, ptr %5, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %13, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 %13
  store ptr %21, ptr %1, align 4
  %22 = load i32, ptr %16, align 4
  %23 = sub i32 %22, %13
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %2) #17
  %25 = sub i32 %2, %24
  br label %29

26:                                               ; preds = %3
  %27 = sub i32 %13, %17
  %28 = load ptr, ptr %5, align 4
  store ptr %28, ptr %1, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi i32 [ %24, %19 ], [ 0, %26 ]
  %31 = phi i32 [ %25, %19 ], [ %2, %26 ]
  %32 = phi i32 [ 0, %19 ], [ %27, %26 ]
  %33 = getelementptr inbounds %struct.kvec, ptr %1, i32 0, i32 1
  store i32 %30, ptr %33, align 4
  %34 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %29
  %38 = sub i32 %35, %32
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 %31) #17
  %40 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 5
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %32
  %44 = and i32 %43, 4095
  %45 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = lshr i32 %43, 12
  %49 = getelementptr ptr, ptr %47, i32 %48
  %50 = sub i32 %31, %39
  br label %57

51:                                               ; preds = %29
  %52 = sub i32 %32, %35
  %53 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 4
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 5
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %51, %37
  %58 = phi ptr [ %49, %37 ], [ %54, %51 ]
  %59 = phi i32 [ %50, %37 ], [ %31, %51 ]
  %60 = phi i32 [ 0, %37 ], [ %52, %51 ]
  %61 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 3
  store ptr %58, ptr %61, align 4
  %62 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 1
  %63 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 1, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %60, %64
  %66 = load ptr, ptr %62, align 4
  br i1 %65, label %67, label %74

67:                                               ; preds = %57
  %68 = getelementptr i8, ptr %66, i32 %60
  %69 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 1
  store ptr %68, ptr %69, align 4
  %70 = load i32, ptr %63, align 4
  %71 = sub i32 %70, %60
  %72 = tail call i32 @llvm.umin.i32(i32 %59, i32 %71) #17
  %73 = sub i32 %59, %72
  br label %77

74:                                               ; preds = %57
  %75 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 1
  store ptr %66, ptr %75, align 4
  %76 = icmp eq i32 %60, %64
  br label %77

77:                                               ; preds = %74, %67
  %78 = phi i32 [ %72, %67 ], [ 0, %74 ]
  %79 = phi i32 [ %73, %67 ], [ %59, %74 ]
  %80 = phi i1 [ true, %67 ], [ %76, %74 ]
  %81 = getelementptr inbounds %struct.xdr_buf, ptr %1, i32 0, i32 1, i32 0, i32 1
  store i32 %78, ptr %81, align 4
  %82 = icmp eq i32 %79, 0
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %129

84:                                               ; preds = %77
  %85 = icmp eq i32 %2, 0
  br i1 %85, label %117, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 2
  %88 = load ptr, ptr %0, align 4
  %89 = load ptr, ptr %87, align 4
  br label %90

90:                                               ; preds = %113, %86
  %91 = phi ptr [ %89, %86 ], [ %114, %113 ]
  %92 = phi ptr [ %88, %86 ], [ %114, %113 ]
  %93 = phi i32 [ %2, %86 ], [ %115, %113 ]
  %94 = icmp eq ptr %92, %91
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = tail call fastcc zeroext i1 @xdr_set_next_buffer(ptr noundef %0)
  br i1 %96, label %97, label %129

97:                                               ; preds = %95
  %98 = load ptr, ptr %87, align 4
  %99 = load ptr, ptr %0, align 4
  br label %100

100:                                              ; preds = %97, %90
  %101 = phi ptr [ %99, %97 ], [ %92, %90 ]
  %102 = phi ptr [ %98, %97 ], [ %91, %90 ]
  %103 = ptrtoint ptr %102 to i32
  %104 = ptrtoint ptr %101 to i32
  %105 = sub i32 %103, %104
  %106 = icmp ugt i32 %93, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %100
  %108 = add i32 %2, 3
  %109 = and i32 %108, -4
  %110 = sub i32 %109, %2
  %111 = add i32 %110, %93
  %112 = getelementptr i8, ptr %101, i32 %111
  store ptr %112, ptr %0, align 4
  br label %117

113:                                              ; preds = %100
  %114 = getelementptr i8, ptr %101, i32 %105
  store ptr %114, ptr %0, align 4
  store ptr %114, ptr %87, align 4
  %115 = sub i32 %93, %105
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %90

117:                                              ; preds = %113, %107, %84
  %118 = add i32 %13, %2
  %119 = load ptr, ptr %4, align 4
  %120 = getelementptr inbounds %struct.xdr_buf, ptr %119, i32 0, i32 8
  %121 = load i32, ptr %120, align 4
  %122 = icmp ugt i32 %121, %118
  %123 = add i32 %121, 3
  %124 = lshr i32 %123, 2
  %125 = add i32 %118, 3
  %126 = lshr i32 %125, 2
  %127 = sub nsw i32 %124, %126
  %128 = select i1 %122, i32 %127, i32 0
  store i32 %128, ptr %9, align 4
  br label %129

129:                                              ; preds = %117, %95, %77
  %130 = phi i1 [ true, %117 ], [ false, %77 ], [ false, %95 ]
  ret i1 %130
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xdr_buf_trim(ptr nocapture noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %1)
  %8 = sub i32 %4, %7
  store i32 %8, ptr %3, align 4
  %9 = sub i32 %1, %7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %9, %6 ], [ %1, %2 ]
  %13 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %12)
  %18 = sub i32 %14, %17
  store i32 %18, ptr %13, align 4
  %19 = sub i32 %12, %17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16, %11
  %22 = phi i32 [ %19, %16 ], [ %12, %11 ]
  %23 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @llvm.umin.i32(i32 %24, i32 %22)
  %28 = sub i32 %24, %27
  store i32 %28, ptr %23, align 4
  %29 = sub i32 %22, %27
  br label %30

30:                                               ; preds = %26, %21, %16, %6
  %31 = phi i32 [ %29, %26 ], [ %22, %21 ], [ 0, %16 ], [ 0, %6 ]
  %32 = sub i32 %31, %1
  %33 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %32, %34
  store i32 %35, ptr %33, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @read_bytes_from_xdr_buf(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #8 {
  %5 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr i8, ptr %9, i32 %1
  %11 = sub i32 %6, %1
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %3) #17
  %13 = sub i32 %3, %12
  br label %17

14:                                               ; preds = %4
  %15 = sub i32 %1, %6
  %16 = load ptr, ptr %0, align 4
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi ptr [ %10, %8 ], [ %16, %14 ]
  %19 = phi i32 [ %12, %8 ], [ 0, %14 ]
  %20 = phi i32 [ %13, %8 ], [ %3, %14 ]
  %21 = phi i32 [ 0, %8 ], [ %15, %14 ]
  %22 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = sub i32 %23, %21
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %20) #17
  %28 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %21
  %31 = and i32 %30, 4095
  %32 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = lshr i32 %30, 12
  %35 = getelementptr ptr, ptr %33, i32 %34
  %36 = sub i32 %20, %27
  br label %41

37:                                               ; preds = %17
  %38 = sub i32 %21, %23
  %39 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %37, %25
  %42 = phi i32 [ %31, %25 ], [ 0, %37 ]
  %43 = phi i32 [ %27, %25 ], [ 0, %37 ]
  %44 = phi ptr [ %35, %25 ], [ %40, %37 ]
  %45 = phi i32 [ %36, %25 ], [ %20, %37 ]
  %46 = phi i32 [ 0, %25 ], [ %38, %37 ]
  %47 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %48 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, %46
  %51 = load ptr, ptr %47, align 4
  br i1 %50, label %52, label %57

52:                                               ; preds = %41
  %53 = getelementptr i8, ptr %51, i32 %46
  %54 = sub i32 %49, %46
  %55 = tail call i32 @llvm.umin.i32(i32 %45, i32 %54) #17
  %56 = sub i32 %45, %55
  br label %59

57:                                               ; preds = %41
  %58 = icmp eq i32 %49, %46
  br label %59

59:                                               ; preds = %57, %52
  %60 = phi ptr [ %53, %52 ], [ %51, %57 ]
  %61 = phi i32 [ %55, %52 ], [ 0, %57 ]
  %62 = phi i32 [ %56, %52 ], [ %45, %57 ]
  %63 = phi i1 [ true, %52 ], [ %58, %57 ]
  %64 = icmp eq i32 %62, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %101

66:                                               ; preds = %59
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %18, i32 %19, i1 false) #17
  %67 = sub i32 %3, %19
  %68 = getelementptr i8, ptr %2, i32 %19
  %69 = tail call i32 @llvm.umin.i32(i32 %67, i32 %43) #17
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %97, label %71

71:                                               ; preds = %71, %66
  %72 = phi ptr [ %94, %71 ], [ %68, %66 ]
  %73 = phi i32 [ %91, %71 ], [ %42, %66 ]
  %74 = phi i32 [ %95, %71 ], [ %69, %66 ]
  %75 = phi ptr [ %93, %71 ], [ %44, %66 ]
  %76 = sub i32 4096, %73
  %77 = tail call i32 @llvm.umin.i32(i32 %76, i32 %74) #17
  %78 = load ptr, ptr %75, align 4
  %79 = load i32, ptr @pgprot_kernel, align 4
  %80 = or i32 %79, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %81 = tail call ptr @llvm.thread.pointer() #17
  %82 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 149
  %83 = load i32, ptr %82, align 8
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %85 = tail call ptr @__kmap_local_page_prot(ptr noundef %78, i32 noundef %80) #17
  %86 = getelementptr i8, ptr %85, i32 %73
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %72, ptr align 1 %86, i32 %77, i1 false) #17
  tail call void @kunmap_local_indexed(ptr noundef %85) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %87 = load i32, ptr %82, align 8
  %88 = add i32 %87, -1
  store i32 %88, ptr %82, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %89 = add i32 %77, %73
  %90 = icmp eq i32 %89, 4096
  %91 = select i1 %90, i32 0, i32 %89
  %92 = zext i1 %90 to i32
  %93 = getelementptr ptr, ptr %75, i32 %92
  %94 = getelementptr i8, ptr %72, i32 %77
  %95 = sub i32 %74, %77
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %71

97:                                               ; preds = %71, %66
  %98 = sub i32 %67, %69
  %99 = getelementptr i8, ptr %68, i32 %69
  %100 = tail call i32 @llvm.umin.i32(i32 %98, i32 %61) #17
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %99, ptr align 1 %60, i32 %100, i1 false) #17
  br label %101

101:                                              ; preds = %97, %59
  %102 = phi i32 [ 0, %97 ], [ -1, %59 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @write_bytes_to_xdr_buf(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #8 {
  %5 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr i8, ptr %9, i32 %1
  %11 = sub i32 %6, %1
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %3) #17
  %13 = sub i32 %3, %12
  br label %17

14:                                               ; preds = %4
  %15 = sub i32 %1, %6
  %16 = load ptr, ptr %0, align 4
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi ptr [ %10, %8 ], [ %16, %14 ]
  %19 = phi i32 [ %12, %8 ], [ 0, %14 ]
  %20 = phi i32 [ %13, %8 ], [ %3, %14 ]
  %21 = phi i32 [ 0, %8 ], [ %15, %14 ]
  %22 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = sub i32 %23, %21
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %20) #17
  %28 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %21
  %31 = and i32 %30, 4095
  %32 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = lshr i32 %30, 12
  %35 = getelementptr ptr, ptr %33, i32 %34
  %36 = sub i32 %20, %27
  br label %41

37:                                               ; preds = %17
  %38 = sub i32 %21, %23
  %39 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %37, %25
  %42 = phi i32 [ %31, %25 ], [ 0, %37 ]
  %43 = phi i32 [ %27, %25 ], [ 0, %37 ]
  %44 = phi ptr [ %35, %25 ], [ %40, %37 ]
  %45 = phi i32 [ %36, %25 ], [ %20, %37 ]
  %46 = phi i32 [ 0, %25 ], [ %38, %37 ]
  %47 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %48 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, %46
  %51 = load ptr, ptr %47, align 4
  br i1 %50, label %52, label %57

52:                                               ; preds = %41
  %53 = getelementptr i8, ptr %51, i32 %46
  %54 = sub i32 %49, %46
  %55 = tail call i32 @llvm.umin.i32(i32 %45, i32 %54) #17
  %56 = sub i32 %45, %55
  br label %59

57:                                               ; preds = %41
  %58 = icmp eq i32 %49, %46
  br label %59

59:                                               ; preds = %57, %52
  %60 = phi ptr [ %53, %52 ], [ %51, %57 ]
  %61 = phi i32 [ %55, %52 ], [ 0, %57 ]
  %62 = phi i32 [ %56, %52 ], [ %45, %57 ]
  %63 = phi i1 [ true, %52 ], [ %58, %57 ]
  %64 = icmp eq i32 %62, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr align 1 %2, i32 %19, i1 false) #17
  %67 = sub i32 %3, %19
  %68 = getelementptr i8, ptr %2, i32 %19
  %69 = tail call i32 @llvm.umin.i32(i32 %67, i32 %43) #17
  tail call fastcc void @_copy_to_pages(ptr noundef %44, i32 noundef %42, ptr noundef %68, i32 noundef %69) #17
  %70 = sub i32 %67, %69
  %71 = getelementptr i8, ptr %68, i32 %69
  %72 = tail call i32 @llvm.umin.i32(i32 %70, i32 %61) #17
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %60, ptr align 1 %71, i32 %72, i1 false) #17
  br label %73

73:                                               ; preds = %66, %59
  %74 = phi i32 [ 0, %66 ], [ -1, %59 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_decode_word(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !26
  %5 = call i32 @read_bytes_from_xdr_buf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  store i32 %9, ptr %2, align 4
  br label %10

10:                                               ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_encode_word(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %5 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr i8, ptr %10, i32 %1
  %12 = sub i32 %7, %1
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 4) #17
  %14 = sub nuw nsw i32 4, %13
  br label %18

15:                                               ; preds = %3
  %16 = sub i32 %1, %7
  %17 = load ptr, ptr %0, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi ptr [ %11, %9 ], [ %17, %15 ]
  %20 = phi i32 [ %13, %9 ], [ 0, %15 ]
  %21 = phi i32 [ %14, %9 ], [ 4, %15 ]
  %22 = phi i32 [ 0, %9 ], [ %16, %15 ]
  %23 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = sub i32 %24, %22
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %21) #17
  %29 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %22
  %32 = and i32 %31, 4095
  %33 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = lshr i32 %31, 12
  %36 = getelementptr ptr, ptr %34, i32 %35
  %37 = sub i32 %21, %28
  br label %42

38:                                               ; preds = %18
  %39 = sub i32 %22, %24
  %40 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %38, %26
  %43 = phi i32 [ %32, %26 ], [ 0, %38 ]
  %44 = phi i32 [ %28, %26 ], [ 0, %38 ]
  %45 = phi ptr [ %36, %26 ], [ %41, %38 ]
  %46 = phi i32 [ %37, %26 ], [ %21, %38 ]
  %47 = phi i32 [ 0, %26 ], [ %39, %38 ]
  %48 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %49 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, %47
  %52 = load ptr, ptr %48, align 4
  br i1 %51, label %53, label %58

53:                                               ; preds = %42
  %54 = getelementptr i8, ptr %52, i32 %47
  %55 = sub i32 %50, %47
  %56 = tail call i32 @llvm.umin.i32(i32 %46, i32 %55) #17
  %57 = sub i32 %46, %56
  br label %60

58:                                               ; preds = %42
  %59 = icmp eq i32 %50, %47
  br label %60

60:                                               ; preds = %58, %53
  %61 = phi ptr [ %54, %53 ], [ %52, %58 ]
  %62 = phi i32 [ %56, %53 ], [ 0, %58 ]
  %63 = phi i32 [ %57, %53 ], [ %46, %58 ]
  %64 = phi i1 [ true, %53 ], [ %59, %58 ]
  %65 = icmp eq i32 %63, 0
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr nonnull align 4 %4, i32 %20, i1 false) #17
  %68 = sub nuw nsw i32 4, %20
  %69 = getelementptr i8, ptr %4, i32 %20
  %70 = tail call i32 @llvm.umin.i32(i32 %68, i32 %44) #17
  call fastcc void @_copy_to_pages(ptr noundef %45, i32 noundef %43, ptr noundef %69, i32 noundef %70) #17
  %71 = sub nsw i32 %68, %70
  %72 = getelementptr i8, ptr %69, i32 %70
  %73 = tail call i32 @llvm.umin.i32(i32 %71, i32 %62) #17
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %61, ptr align 1 %72, i32 %73, i1 false) #17
  br label %74

74:                                               ; preds = %67, %60
  %75 = phi i32 [ 0, %67 ], [ -1, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_decode_array2(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #8 {
  %4 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @xdr_xcode_array2(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xdr_xcode_array2(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #8 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %82, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.xdr_array2_desc, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #17
  store i32 %11, ptr %6, align 4
  %12 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 %1
  %18 = sub i32 %13, %1
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 4) #17
  %20 = sub nuw nsw i32 4, %19
  br label %24

21:                                               ; preds = %8
  %22 = sub i32 %1, %13
  %23 = load ptr, ptr %0, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi ptr [ %17, %15 ], [ %23, %21 ]
  %26 = phi i32 [ %19, %15 ], [ 0, %21 ]
  %27 = phi i32 [ %20, %15 ], [ 4, %21 ]
  %28 = phi i32 [ 0, %15 ], [ %22, %21 ]
  %29 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = sub i32 %30, %28
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %27) #17
  %35 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %28
  %38 = and i32 %37, 4095
  %39 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = lshr i32 %37, 12
  %42 = getelementptr ptr, ptr %40, i32 %41
  %43 = sub i32 %27, %34
  br label %48

44:                                               ; preds = %24
  %45 = sub i32 %28, %30
  %46 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %44, %32
  %49 = phi i32 [ %38, %32 ], [ 0, %44 ]
  %50 = phi i32 [ %34, %32 ], [ 0, %44 ]
  %51 = phi ptr [ %42, %32 ], [ %47, %44 ]
  %52 = phi i32 [ %43, %32 ], [ %27, %44 ]
  %53 = phi i32 [ 0, %32 ], [ %45, %44 ]
  %54 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %55 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, %53
  %58 = load ptr, ptr %54, align 4
  br i1 %57, label %59, label %64

59:                                               ; preds = %48
  %60 = getelementptr i8, ptr %58, i32 %53
  %61 = sub i32 %56, %53
  %62 = tail call i32 @llvm.umin.i32(i32 %52, i32 %61) #17
  %63 = sub i32 %52, %62
  br label %66

64:                                               ; preds = %48
  %65 = icmp eq i32 %56, %53
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi ptr [ %60, %59 ], [ %58, %64 ]
  %68 = phi i32 [ %62, %59 ], [ 0, %64 ]
  %69 = phi i32 [ %63, %59 ], [ %52, %64 ]
  %70 = phi i1 [ true, %59 ], [ %65, %64 ]
  %71 = icmp eq i32 %69, 0
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %25, ptr nonnull align 4 %6, i32 %26, i1 false) #17
  %74 = sub nuw nsw i32 4, %26
  %75 = getelementptr i8, ptr %6, i32 %26
  %76 = tail call i32 @llvm.umin.i32(i32 %74, i32 %50) #17
  call fastcc void @_copy_to_pages(ptr noundef %51, i32 noundef %49, ptr noundef %75, i32 noundef %76) #17
  %77 = sub nsw i32 %74, %76
  %78 = getelementptr i8, ptr %75, i32 %76
  %79 = tail call i32 @llvm.umin.i32(i32 %77, i32 %68) #17
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %67, ptr align 1 %78, i32 %79, i1 false) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  %80 = add i32 %1, 4
  br label %101

81:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  br label %396

82:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !26
  %83 = call i32 @read_bytes_from_xdr_buf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, i32 noundef 4) #17
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %396

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.xdr_array2_desc, ptr %2, i32 0, i32 1
  %88 = load i32, ptr %5, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #17
  store i32 %89, ptr %87, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %90 = getelementptr inbounds %struct.xdr_array2_desc, ptr %2, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = icmp ugt i32 %89, %91
  br i1 %92, label %396, label %93

93:                                               ; preds = %86
  %94 = add i32 %1, 4
  %95 = load i32, ptr %2, align 4
  %96 = mul i32 %95, %89
  %97 = add i32 %94, %96
  %98 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 8
  %99 = load i32, ptr %98, align 4
  %100 = icmp ugt i32 %97, %99
  br i1 %100, label %396, label %101

101:                                              ; preds = %93, %73
  %102 = phi i32 [ %80, %73 ], [ %94, %93 ]
  %103 = getelementptr inbounds %struct.xdr_array2_desc, ptr %2, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %396, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.xdr_array2_desc, ptr %2, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = load i32, ptr %2, align 4
  %110 = mul i32 %109, %108
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %377, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = icmp ugt i32 %114, %102
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = sub i32 %102, %114
  br label %157

118:                                              ; preds = %112
  %119 = load ptr, ptr %0, align 4
  %120 = getelementptr i8, ptr %119, i32 %102
  %121 = sub i32 %114, %102
  %122 = tail call i32 @llvm.umin.i32(i32 %110, i32 %121)
  %123 = sub i32 %110, %122
  %124 = icmp ult i32 %122, %109
  br i1 %124, label %139, label %125

125:                                              ; preds = %118
  %126 = tail call i32 %104(ptr noundef %2, ptr noundef %120) #17
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %377

128:                                              ; preds = %135, %125
  %129 = phi i32 [ %133, %135 ], [ %122, %125 ]
  %130 = phi ptr [ %132, %135 ], [ %120, %125 ]
  %131 = load i32, ptr %2, align 4
  %132 = getelementptr i8, ptr %130, i32 %131
  %133 = sub i32 %129, %131
  %134 = icmp ult i32 %133, %131
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = load ptr, ptr %103, align 4
  %137 = tail call i32 %136(ptr noundef %2, ptr noundef %132) #17
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %128, label %377

139:                                              ; preds = %128, %118
  %140 = phi i32 [ %109, %118 ], [ %131, %128 ]
  %141 = phi i32 [ %122, %118 ], [ %133, %128 ]
  %142 = phi ptr [ %120, %118 ], [ %132, %128 ]
  %143 = icmp eq i32 %141, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %139
  %145 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %140, i32 noundef 3264) #18
  %146 = icmp eq ptr %145, null
  br i1 %146, label %377, label %147

147:                                              ; preds = %144
  br i1 %7, label %153, label %148

148:                                              ; preds = %147
  %149 = load ptr, ptr %103, align 4
  %150 = tail call i32 %149(ptr noundef %2, ptr noundef nonnull %145) #17
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %377

152:                                              ; preds = %148
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %142, ptr nonnull align 64 %145, i32 %141, i1 false)
  br label %154

153:                                              ; preds = %147
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %145, ptr align 1 %142, i32 %141, i1 false)
  br label %154

154:                                              ; preds = %153, %152, %139
  %155 = phi ptr [ null, %139 ], [ %145, %152 ], [ %145, %153 ]
  %156 = icmp eq i32 %123, 0
  br i1 %156, label %377, label %157

157:                                              ; preds = %154, %116
  %158 = phi i32 [ %117, %116 ], [ 0, %154 ]
  %159 = phi ptr [ null, %116 ], [ %155, %154 ]
  %160 = phi i32 [ 0, %116 ], [ %141, %154 ]
  %161 = phi i32 [ %110, %116 ], [ %123, %154 ]
  %162 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %163 = load i32, ptr %162, align 4
  %164 = icmp ugt i32 %163, %158
  br i1 %164, label %165, label %338

165:                                              ; preds = %157
  %166 = sub i32 %163, %158
  %167 = tail call i32 @llvm.umin.i32(i32 %161, i32 %166)
  %168 = sub i32 %161, %167
  %169 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, %158
  %172 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %173 = load ptr, ptr %172, align 4
  %174 = lshr i32 %171, 12
  %175 = getelementptr ptr, ptr %173, i32 %174
  %176 = and i32 %171, 4095
  %177 = sub nuw nsw i32 4096, %176
  %178 = tail call i32 @llvm.umin.i32(i32 %177, i32 %167)
  %179 = load ptr, ptr %175, align 4
  %180 = load i32, ptr %179, align 4
  %181 = lshr i32 %180, 30
  %182 = icmp eq i32 %181, 2
  br i1 %182, label %190, label %183

183:                                              ; preds = %165
  %184 = icmp ne i32 %181, 3
  %185 = load i32, ptr @movable_zone, align 4
  %186 = icmp ne i32 %185, 2
  %187 = select i1 %184, i1 true, i1 %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = tail call ptr @page_address(ptr noundef %179) #17
  br label %192

190:                                              ; preds = %183, %165
  %191 = tail call ptr @kmap_high(ptr noundef %179) #17
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi ptr [ %191, %190 ], [ %189, %188 ]
  %194 = icmp eq i32 %167, 0
  br i1 %194, label %332, label %195

195:                                              ; preds = %192
  %196 = getelementptr i8, ptr %193, i32 %176
  br label %197

197:                                              ; preds = %329, %195
  %198 = phi ptr [ %301, %329 ], [ %159, %195 ]
  %199 = phi ptr [ %330, %329 ], [ %196, %195 ]
  %200 = phi i32 [ %300, %329 ], [ %160, %195 ]
  %201 = phi i32 [ %204, %329 ], [ %167, %195 ]
  %202 = phi ptr [ %315, %329 ], [ %175, %195 ]
  %203 = phi i32 [ %331, %329 ], [ %178, %195 ]
  %204 = sub i32 %201, %203
  %205 = icmp eq i32 %200, 0
  %206 = load i32, ptr %2, align 4
  %207 = xor i1 %205, true
  %208 = icmp ult i32 %203, %206
  %209 = select i1 %207, i1 true, i1 %208
  br i1 %209, label %210, label %246

210:                                              ; preds = %197
  %211 = sub i32 %206, %200
  %212 = tail call i32 @llvm.umin.i32(i32 %203, i32 %211)
  %213 = icmp eq ptr %198, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %206, i32 noundef 3264) #18
  %216 = icmp eq ptr %215, null
  br i1 %216, label %380, label %217

217:                                              ; preds = %214, %210
  %218 = phi ptr [ %198, %210 ], [ %215, %214 ]
  br i1 %7, label %230, label %219

219:                                              ; preds = %217
  br i1 %205, label %220, label %224

220:                                              ; preds = %219
  %221 = load ptr, ptr %103, align 4
  %222 = tail call i32 %221(ptr noundef %2, ptr noundef %218) #17
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %380

224:                                              ; preds = %220, %219
  %225 = getelementptr i8, ptr %218, i32 %200
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %199, ptr align 1 %225, i32 %212, i1 false)
  %226 = add i32 %212, %200
  %227 = load i32, ptr %2, align 4
  %228 = icmp eq i32 %226, %227
  %229 = select i1 %228, i32 0, i32 %226
  br label %241

230:                                              ; preds = %217
  %231 = getelementptr i8, ptr %218, i32 %200
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %231, ptr align 1 %199, i32 %212, i1 false)
  %232 = add i32 %212, %200
  %233 = load i32, ptr %2, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %230
  %236 = load ptr, ptr %103, align 4
  %237 = tail call i32 %236(ptr noundef %2, ptr noundef %218) #17
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %380

239:                                              ; preds = %235
  %240 = load i32, ptr %2, align 4
  br label %241

241:                                              ; preds = %239, %230, %224
  %242 = phi i32 [ %227, %224 ], [ %233, %230 ], [ %240, %239 ]
  %243 = phi i32 [ %229, %224 ], [ %232, %230 ], [ 0, %239 ]
  %244 = sub nsw i32 %203, %212
  %245 = getelementptr i8, ptr %199, i32 %212
  br label %246

246:                                              ; preds = %241, %197
  %247 = phi i32 [ %242, %241 ], [ %206, %197 ]
  %248 = phi i32 [ %244, %241 ], [ %203, %197 ]
  %249 = phi i32 [ %243, %241 ], [ 0, %197 ]
  %250 = phi ptr [ %245, %241 ], [ %199, %197 ]
  %251 = phi ptr [ %218, %241 ], [ %198, %197 ]
  %252 = icmp ult i32 %248, %247
  br i1 %252, label %264, label %253

253:                                              ; preds = %259, %246
  %254 = phi ptr [ %261, %259 ], [ %250, %246 ]
  %255 = phi i32 [ %262, %259 ], [ %248, %246 ]
  %256 = load ptr, ptr %103, align 4
  %257 = tail call i32 %256(ptr noundef %2, ptr noundef %254) #17
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %380

259:                                              ; preds = %253
  %260 = load i32, ptr %2, align 4
  %261 = getelementptr i8, ptr %254, i32 %260
  %262 = sub i32 %255, %260
  %263 = icmp ult i32 %262, %260
  br i1 %263, label %264, label %253

264:                                              ; preds = %259, %246
  %265 = phi i32 [ %247, %246 ], [ %260, %259 ]
  %266 = phi i32 [ %248, %246 ], [ %262, %259 ]
  %267 = phi ptr [ %250, %246 ], [ %261, %259 ]
  %268 = icmp eq i32 %266, 0
  br i1 %268, label %299, label %269

269:                                              ; preds = %264
  %270 = sub i32 %265, %249
  %271 = tail call i32 @llvm.umin.i32(i32 %266, i32 %270)
  %272 = icmp eq ptr %251, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %269
  %274 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %265, i32 noundef 3264) #18
  %275 = icmp eq ptr %274, null
  br i1 %275, label %380, label %276

276:                                              ; preds = %273, %269
  %277 = phi ptr [ %251, %269 ], [ %274, %273 ]
  br i1 %7, label %290, label %278

278:                                              ; preds = %276
  %279 = icmp eq i32 %249, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %278
  %281 = load ptr, ptr %103, align 4
  %282 = tail call i32 %281(ptr noundef %2, ptr noundef nonnull %277) #17
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %380

284:                                              ; preds = %280, %278
  %285 = getelementptr i8, ptr %277, i32 %249
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %267, ptr align 1 %285, i32 %271, i1 false)
  %286 = add i32 %271, %249
  %287 = load i32, ptr %2, align 4
  %288 = icmp eq i32 %286, %287
  %289 = select i1 %288, i32 0, i32 %286
  br label %299

290:                                              ; preds = %276
  %291 = getelementptr i8, ptr %277, i32 %249
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %291, ptr align 1 %267, i32 %271, i1 false)
  %292 = add i32 %271, %249
  %293 = load i32, ptr %2, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %290
  %296 = load ptr, ptr %103, align 4
  %297 = tail call i32 %296(ptr noundef %2, ptr noundef nonnull %277) #17
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %380

299:                                              ; preds = %295, %290, %284, %264
  %300 = phi i32 [ %249, %264 ], [ %289, %284 ], [ %292, %290 ], [ 0, %295 ]
  %301 = phi ptr [ %251, %264 ], [ %277, %284 ], [ %277, %290 ], [ %277, %295 ]
  %302 = icmp eq i32 %204, 0
  br i1 %302, label %332, label %303

303:                                              ; preds = %299
  %304 = load ptr, ptr %202, align 4
  %305 = load i32, ptr %304, align 4
  %306 = lshr i32 %305, 30
  %307 = icmp eq i32 %306, 2
  br i1 %307, label %313, label %308

308:                                              ; preds = %303
  %309 = icmp ne i32 %306, 3
  %310 = load i32, ptr @movable_zone, align 4
  %311 = icmp ne i32 %310, 2
  %312 = select i1 %309, i1 true, i1 %311
  br i1 %312, label %314, label %313

313:                                              ; preds = %308, %303
  tail call void @kunmap_high(ptr noundef %304) #17
  br label %314

314:                                              ; preds = %313, %308
  %315 = getelementptr ptr, ptr %202, i32 1
  %316 = load ptr, ptr %315, align 4
  %317 = load i32, ptr %316, align 4
  %318 = lshr i32 %317, 30
  %319 = icmp eq i32 %318, 2
  br i1 %319, label %327, label %320

320:                                              ; preds = %314
  %321 = icmp ne i32 %318, 3
  %322 = load i32, ptr @movable_zone, align 4
  %323 = icmp ne i32 %322, 2
  %324 = select i1 %321, i1 true, i1 %323
  br i1 %324, label %325, label %327

325:                                              ; preds = %320
  %326 = tail call ptr @page_address(ptr noundef %316) #17
  br label %329

327:                                              ; preds = %320, %314
  %328 = tail call ptr @kmap_high(ptr noundef %316) #17
  br label %329

329:                                              ; preds = %327, %325
  %330 = phi ptr [ %326, %325 ], [ %328, %327 ]
  %331 = tail call i32 @llvm.umin.i32(i32 %204, i32 4096)
  br label %197

332:                                              ; preds = %299, %192
  %333 = phi ptr [ %175, %192 ], [ %202, %299 ]
  %334 = phi i32 [ %160, %192 ], [ %300, %299 ]
  %335 = phi ptr [ %159, %192 ], [ %301, %299 ]
  %336 = load i32, ptr %162, align 4
  %337 = icmp eq i32 %168, 0
  br i1 %337, label %380, label %338

338:                                              ; preds = %332, %157
  %339 = phi i32 [ %336, %332 ], [ %163, %157 ]
  %340 = phi i32 [ %336, %332 ], [ %158, %157 ]
  %341 = phi ptr [ %335, %332 ], [ %159, %157 ]
  %342 = phi i32 [ %334, %332 ], [ %160, %157 ]
  %343 = phi i32 [ %168, %332 ], [ %161, %157 ]
  %344 = phi ptr [ %333, %332 ], [ null, %157 ]
  %345 = sub i32 %340, %339
  %346 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %347 = load ptr, ptr %346, align 4
  %348 = getelementptr i8, ptr %347, i32 %345
  %349 = icmp eq i32 %342, 0
  br i1 %349, label %363, label %350

350:                                              ; preds = %338
  %351 = load i32, ptr %2, align 4
  %352 = sub i32 %351, %342
  %353 = getelementptr i8, ptr %341, i32 %342
  br i1 %7, label %355, label %354

354:                                              ; preds = %350
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %348, ptr align 1 %353, i32 %352, i1 false)
  br label %359

355:                                              ; preds = %350
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %353, ptr align 1 %348, i32 %352, i1 false)
  %356 = load ptr, ptr %103, align 4
  %357 = tail call i32 %356(ptr noundef %2, ptr noundef %341) #17
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %380

359:                                              ; preds = %355, %354
  %360 = sub i32 %343, %352
  %361 = getelementptr i8, ptr %348, i32 %352
  %362 = icmp eq i32 %360, 0
  br i1 %362, label %380, label %363

363:                                              ; preds = %359, %338
  %364 = phi ptr [ %348, %338 ], [ %361, %359 ]
  %365 = phi i32 [ %343, %338 ], [ %360, %359 ]
  br label %366

366:                                              ; preds = %372, %363
  %367 = phi ptr [ %374, %372 ], [ %364, %363 ]
  %368 = phi i32 [ %375, %372 ], [ %365, %363 ]
  %369 = load ptr, ptr %103, align 4
  %370 = tail call i32 %369(ptr noundef %2, ptr noundef %367) #17
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %380

372:                                              ; preds = %366
  %373 = load i32, ptr %2, align 4
  %374 = getelementptr i8, ptr %367, i32 %373
  %375 = sub i32 %368, %373
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %380, label %366

377:                                              ; preds = %154, %148, %144, %135, %125, %106
  %378 = phi i32 [ -12, %144 ], [ %150, %148 ], [ 0, %154 ], [ 0, %106 ], [ %126, %125 ], [ %137, %135 ]
  %379 = phi ptr [ null, %144 ], [ %145, %148 ], [ %155, %154 ], [ null, %106 ], [ null, %125 ], [ null, %135 ]
  tail call void @kfree(ptr noundef %379) #17
  br label %396

380:                                              ; preds = %372, %366, %359, %355, %332, %295, %280, %273, %253, %235, %220, %214
  %381 = phi i32 [ 0, %332 ], [ %357, %355 ], [ 0, %359 ], [ %370, %366 ], [ 0, %372 ], [ %257, %253 ], [ -12, %273 ], [ %282, %280 ], [ %297, %295 ], [ -12, %214 ], [ %222, %220 ], [ %237, %235 ]
  %382 = phi ptr [ %333, %332 ], [ %344, %355 ], [ %344, %359 ], [ %344, %372 ], [ %344, %366 ], [ %202, %253 ], [ %202, %214 ], [ %202, %220 ], [ %202, %235 ], [ %202, %273 ], [ %202, %280 ], [ %202, %295 ]
  %383 = phi ptr [ %335, %332 ], [ %341, %355 ], [ %341, %359 ], [ %341, %372 ], [ %341, %366 ], [ %251, %253 ], [ null, %273 ], [ %277, %280 ], [ %277, %295 ], [ null, %214 ], [ %218, %220 ], [ %218, %235 ]
  tail call void @kfree(ptr noundef %383) #17
  %384 = icmp eq ptr %382, null
  br i1 %384, label %396, label %385

385:                                              ; preds = %380
  %386 = load ptr, ptr %382, align 4
  %387 = load i32, ptr %386, align 4
  %388 = lshr i32 %387, 30
  %389 = icmp eq i32 %388, 2
  br i1 %389, label %395, label %390

390:                                              ; preds = %385
  %391 = icmp ne i32 %388, 3
  %392 = load i32, ptr @movable_zone, align 4
  %393 = icmp ne i32 %392, 2
  %394 = select i1 %391, i1 true, i1 %393
  br i1 %394, label %396, label %395

395:                                              ; preds = %390, %385
  tail call void @kunmap_high(ptr noundef %386) #17
  br label %396

396:                                              ; preds = %395, %390, %380, %377, %101, %93, %86, %85, %81
  %397 = phi i32 [ -22, %81 ], [ -22, %93 ], [ -22, %86 ], [ -22, %85 ], [ 0, %101 ], [ %381, %380 ], [ %378, %377 ], [ %381, %390 ], [ %381, %395 ]
  ret i32 %397
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_encode_array2(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #8 {
  %4 = add i32 %1, 4
  %5 = getelementptr inbounds %struct.xdr_array2_desc, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %2, align 4
  %8 = mul i32 %7, %6
  %9 = add i32 %4, %8
  %10 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %14, %16
  %18 = icmp ugt i32 %9, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = tail call fastcc i32 @xdr_xcode_array2(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 1)
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i32 [ %20, %19 ], [ -22, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_process_buf(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) #8 {
  %6 = alloca [1 x %struct.scatterlist], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !26
  call void @sg_init_table(ptr noundef nonnull %6, i32 noundef 1) #17
  %7 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = sub i32 %1, %8
  br label %37

12:                                               ; preds = %5
  %13 = sub i32 %8, %1
  %14 = call i32 @llvm.umin.i32(i32 %13, i32 %2)
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr i8, ptr %15, i32 %1
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %16 to i32
  %19 = add i32 %18, 1073741824
  %20 = lshr i32 %19, 12
  %21 = getelementptr %struct.page, ptr %17, i32 %20
  %22 = ptrtoint ptr %21 to i32
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !18

25:                                               ; preds = %12
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #17, !srcloc !27
  unreachable

26:                                               ; preds = %12
  %27 = and i32 %18, 4095
  %28 = load i32, ptr %6, align 4
  %29 = and i32 %28, 3
  %30 = or i32 %29, %22
  store i32 %30, ptr %6, align 4
  %31 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 1
  store i32 %27, ptr %31, align 4
  %32 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 2
  store i32 %14, ptr %32, align 4
  %33 = call i32 %3(ptr noundef nonnull %6, ptr noundef %4) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %116

35:                                               ; preds = %26
  %36 = sub i32 %2, %14
  br label %37

37:                                               ; preds = %35, %10
  %38 = phi i32 [ %2, %10 ], [ %36, %35 ]
  %39 = phi i32 [ %11, %10 ], [ 0, %35 ]
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %116, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %39, %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = sub i32 %39, %43
  br label %85

47:                                               ; preds = %41
  %48 = sub i32 %43, %39
  %49 = call i32 @llvm.umin.i32(i32 %48, i32 %38)
  %50 = sub i32 %38, %49
  %51 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %39
  %54 = and i32 %53, 4095
  %55 = lshr i32 %53, 12
  %56 = sub nuw nsw i32 4096, %54
  %57 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %58 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 1
  %59 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 2
  br label %60

60:                                               ; preds = %79, %47
  %61 = phi i32 [ %55, %47 ], [ %81, %79 ]
  %62 = phi i32 [ %49, %47 ], [ %80, %79 ]
  %63 = phi i32 [ %56, %47 ], [ 4096, %79 ]
  %64 = phi i32 [ %54, %47 ], [ 0, %79 ]
  %65 = call i32 @llvm.umin.i32(i32 %63, i32 %62)
  %66 = load ptr, ptr %57, align 4
  %67 = getelementptr ptr, ptr %66, i32 %61
  %68 = load ptr, ptr %67, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72, !prof !18

72:                                               ; preds = %60
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #17, !srcloc !27
  unreachable

73:                                               ; preds = %60
  %74 = load i32, ptr %6, align 4
  %75 = and i32 %74, 3
  %76 = or i32 %75, %69
  store i32 %76, ptr %6, align 4
  store i32 %64, ptr %58, align 4
  store i32 %65, ptr %59, align 4
  %77 = call i32 %3(ptr noundef nonnull %6, ptr noundef %4) #17
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %116

79:                                               ; preds = %73
  %80 = sub i32 %62, %65
  %81 = add i32 %61, 1
  %82 = icmp eq i32 %80, 0
  br i1 %82, label %83, label %60

83:                                               ; preds = %79
  %84 = icmp eq i32 %50, 0
  br i1 %84, label %116, label %85

85:                                               ; preds = %83, %45
  %86 = phi i32 [ %46, %45 ], [ 0, %83 ]
  %87 = phi i32 [ %38, %45 ], [ %50, %83 ]
  %88 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = icmp ugt i32 %89, %86
  br i1 %90, label %91, label %116

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 %86
  %95 = load ptr, ptr @mem_map, align 4
  %96 = ptrtoint ptr %94 to i32
  %97 = add i32 %96, 1073741824
  %98 = lshr i32 %97, 12
  %99 = getelementptr %struct.page, ptr %95, i32 %98
  %100 = ptrtoint ptr %99 to i32
  %101 = and i32 %100, 3
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103, !prof !18

103:                                              ; preds = %91
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #17, !srcloc !27
  unreachable

104:                                              ; preds = %91
  %105 = sub i32 %89, %86
  %106 = call i32 @llvm.umin.i32(i32 %105, i32 %87)
  %107 = and i32 %96, 4095
  %108 = load i32, ptr %6, align 4
  %109 = and i32 %108, 3
  %110 = or i32 %109, %100
  store i32 %110, ptr %6, align 4
  %111 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 1
  store i32 %107, ptr %111, align 4
  %112 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 2
  store i32 %106, ptr %112, align 4
  %113 = call i32 %3(ptr noundef nonnull %6, ptr noundef %4) #17
  %114 = icmp ugt i32 %87, %105
  %115 = select i1 %114, i32 -22, i32 %113
  br label %116

116:                                              ; preds = %104, %85, %83, %73, %37, %26
  %117 = phi i32 [ 0, %37 ], [ 0, %83 ], [ %33, %26 ], [ -22, %85 ], [ %115, %104 ], [ %77, %73 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #17
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_stream_decode_opaque(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #8 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #17
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %8) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !8

13:                                               ; preds = %10
  %14 = icmp ugt i32 %8, %2
  br i1 %14, label %18, label %15, !prof !8

15:                                               ; preds = %13
  %16 = icmp slt i32 %8, 1
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr nonnull align 1 %11, i32 %8, i1 false)
  br label %18

18:                                               ; preds = %17, %15, %13, %10, %6, %3
  %19 = phi i32 [ %8, %15 ], [ %8, %17 ], [ -74, %3 ], [ 0, %6 ], [ -90, %13 ], [ -74, %10 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_stream_decode_opaque_dup(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #8 {
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7, !prof !8

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #17
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %9) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14, !prof !8

14:                                               ; preds = %11
  %15 = icmp ugt i32 %9, %2
  br i1 %15, label %21, label %16, !prof !8

16:                                               ; preds = %14
  %17 = icmp sgt i32 %9, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = tail call ptr @kmemdup(ptr noundef nonnull %12, i32 noundef %9, i32 noundef %3) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %16, %14, %11, %7, %4
  %22 = phi i32 [ %9, %16 ], [ -12, %18 ], [ -74, %4 ], [ 0, %7 ], [ -90, %14 ], [ -74, %11 ]
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ null, %21 ], [ %19, %18 ]
  %25 = phi i32 [ %22, %21 ], [ %9, %18 ]
  store ptr %24, ptr %1, align 4
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_stream_decode_string(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #8 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #17
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %8) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13, !prof !8

13:                                               ; preds = %10
  %14 = icmp ugt i32 %8, %2
  br i1 %14, label %20, label %15, !prof !8

15:                                               ; preds = %13
  %16 = icmp sgt i32 %8, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr nonnull align 1 %11, i32 %8, i1 false)
  %18 = getelementptr i8, ptr %1, i32 %8
  store i8 0, ptr %18, align 1
  %19 = tail call i32 @strlen(ptr noundef %1)
  br label %22

20:                                               ; preds = %15, %13, %10, %6, %3
  %21 = phi i32 [ %8, %15 ], [ -74, %3 ], [ 0, %6 ], [ -90, %13 ], [ -74, %10 ]
  store i8 0, ptr %1, align 1
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %21, %20 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdr_stream_decode_string_dup(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #8 {
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7, !prof !8

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #17
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %9) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !8

14:                                               ; preds = %11
  %15 = icmp ugt i32 %9, %2
  br i1 %15, label %23, label %16, !prof !8

16:                                               ; preds = %14
  %17 = icmp sgt i32 %9, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = tail call ptr @kmemdup_nul(ptr noundef nonnull %12, i32 noundef %9, i32 noundef %3) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  store ptr %19, ptr %1, align 4
  %22 = tail call i32 @strlen(ptr noundef nonnull %19)
  br label %25

23:                                               ; preds = %18, %16, %14, %11, %7, %4
  %24 = phi i32 [ %9, %16 ], [ -74, %4 ], [ 0, %7 ], [ -90, %14 ], [ -74, %11 ], [ -12, %18 ]
  store ptr null, ptr %1, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %24, %23 ], [ %22, %21 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_copy_to_pages(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #8 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %4
  %7 = lshr i32 %1, 12
  %8 = getelementptr ptr, ptr %0, i32 %7
  %9 = and i32 %1, 4095
  br label %10

10:                                               ; preds = %36, %6
  %11 = phi i32 [ %9, %6 ], [ %37, %36 ]
  %12 = phi ptr [ %2, %6 ], [ %39, %36 ]
  %13 = phi i32 [ %3, %6 ], [ %28, %36 ]
  %14 = phi ptr [ %8, %6 ], [ %38, %36 ]
  %15 = sub i32 4096, %11
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %13)
  %17 = load ptr, ptr %14, align 4
  %18 = load i32, ptr @pgprot_kernel, align 4
  %19 = or i32 %18, 512
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %20 = tail call ptr @llvm.thread.pointer() #17
  %21 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 149
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !10
  %24 = tail call ptr @__kmap_local_page_prot(ptr noundef %17, i32 noundef %19) #17
  %25 = getelementptr i8, ptr %24, i32 %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %25, ptr align 1 %12, i32 %16, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %24) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !11
  %26 = load i32, ptr %21, align 8
  %27 = add i32 %26, -1
  store i32 %27, ptr %21, align 8
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %28 = sub i32 %13, %16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %10
  %31 = add i32 %16, %11
  %32 = icmp eq i32 %31, 4096
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load ptr, ptr %14, align 4
  tail call void @flush_dcache_page(ptr noundef %34) #17
  %35 = getelementptr ptr, ptr %14, i32 1
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ 0, %33 ], [ %31, %30 ]
  %38 = phi ptr [ %35, %33 ], [ %14, %30 ]
  %39 = getelementptr i8, ptr %12, i32 %16
  br label %10

40:                                               ; preds = %10
  %41 = load ptr, ptr %14, align 4
  tail call void @flush_dcache_page(ptr noundef %41) #17
  br label %42

42:                                               ; preds = %40, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_xdr_overflow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_xdr_alignment(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xdr_buf_tail_copy_left(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 {
  %5 = sub i32 0, %3
  %6 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %10, label %69

10:                                               ; preds = %4
  %11 = sub i32 %8, %1
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %2)
  %13 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %1
  %16 = icmp ult i32 %15, %3
  br i1 %16, label %17, label %41

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.kvec, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %15, %19
  %21 = sub i32 %20, %3
  %22 = icmp ult i32 %20, %3
  %23 = load i1, ptr @xdr_buf_tail_copy_left.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !8

26:                                               ; preds = %17
  store i1 true, ptr @xdr_buf_tail_copy_left.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 692, i32 noundef 9, ptr noundef nonnull @.str.9) #17
  br label %27

27:                                               ; preds = %26, %17
  br i1 %22, label %69, label %28

28:                                               ; preds = %27
  %29 = add i32 %21, %12
  %30 = load i32, ptr %18, align 4
  %31 = icmp ugt i32 %29, %30
  %32 = sub i32 %30, %21
  %33 = select i1 %31, i32 %32, i32 %12
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr i8, ptr %34, i32 %21
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr i8, ptr %36, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr align 1 %37, i32 %33, i1 false)
  %38 = add i32 %33, %1
  %39 = sub i32 %12, %33
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %28, %10
  %42 = phi i32 [ %39, %28 ], [ %12, %10 ]
  %43 = phi i32 [ %38, %28 ], [ %1, %10 ]
  %44 = icmp ult i32 %43, %3
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load i32, ptr %13, align 4
  %47 = sub i32 %43, %3
  %48 = add i32 %47, %46
  %49 = add i32 %48, %42
  %50 = icmp ugt i32 %49, %46
  %51 = sub i32 0, %47
  %52 = select i1 %50, i32 %51, i32 %42
  %53 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.xdr_buf, ptr %0, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %48
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr i8, ptr %58, i32 %43
  tail call fastcc void @_copy_to_pages(ptr noundef %54, i32 noundef %57, ptr noundef %59, i32 noundef %52)
  %60 = add i32 %52, %43
  %61 = sub i32 %42, %52
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %45, %41
  %64 = phi i32 [ %61, %45 ], [ %42, %41 ]
  %65 = phi i32 [ %60, %45 ], [ %43, %41 ]
  %66 = load ptr, ptr %6, align 4
  %67 = getelementptr i8, ptr %66, i32 %65
  %68 = getelementptr i8, ptr %67, i32 %5
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %68, ptr align 1 %67, i32 %64, i1 false)
  br label %69

69:                                               ; preds = %63, %45, %28, %27, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #2

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }

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
!9 = !{i64 2152587707}
!10 = !{i64 2151880647}
!11 = !{i64 2151880854}
!12 = !{i64 2152590332}
!13 = !{i64 2158359239, i64 2158359720, i64 2158359276, i64 2158359332, i64 2158359366, i64 2158359390, i64 2158359431, i64 2158359452, i64 2158359480, i64 2158359514}
!14 = !{i64 2158360274, i64 2158360755, i64 2158360311, i64 2158360367, i64 2158360401, i64 2158360425, i64 2158360466, i64 2158360487, i64 2158360515, i64 2158360549}
!15 = !{i64 2158361321, i64 2158361802, i64 2158361358, i64 2158361414, i64 2158361448, i64 2158361472, i64 2158361513, i64 2158361534, i64 2158361562, i64 2158361596}
!16 = !{i64 2156914468}
!17 = !{i64 2156914640}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2158387034, i64 2158387516, i64 2158387071, i64 2158387127, i64 2158387161, i64 2158387185, i64 2158387226, i64 2158387247, i64 2158387275, i64 2158387309}
!20 = !{i64 2156931350}
!21 = !{i64 2156931534}
!22 = !{i64 2158329129, i64 2158329610, i64 2158329166, i64 2158329222, i64 2158329256, i64 2158329280, i64 2158329321, i64 2158329342, i64 2158329370, i64 2158329404}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.peeled.count", i32 1}
!25 = !{i64 2158333986, i64 2158334467, i64 2158334023, i64 2158334079, i64 2158334113, i64 2158334137, i64 2158334178, i64 2158334199, i64 2158334227, i64 2158334261}
!26 = !{!"auto-init"}
!27 = !{i64 2152704234, i64 2152704726, i64 2152704271, i64 2152704327, i64 2152704361, i64 2152704385, i64 2152704426, i64 2152704447, i64 2152704475, i64 2152704509}
