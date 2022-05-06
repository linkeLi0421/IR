; ModuleID = '/llk/IR/mm/slab_common.c_pt.bc'
source_filename = "../mm/slab_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_size:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_size\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_create_usercopy:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_create_usercopy\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_create_usercopy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_create:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_create\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_shrink:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_shrink\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_shrink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_valid_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_valid_obj\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_valid_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_dump_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_dump_obj\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_dump_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmalloc_caches:\09\09\09\09\09"
module asm "\09.asciz \09\22kmalloc_caches\22\09\09\09\09\09"
module asm "__kstrtabns_kmalloc_caches:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmalloc_order:\09\09\09\09\09"
module asm "\09.asciz \09\22kmalloc_order\22\09\09\09\09\09"
module asm "__kstrtabns_kmalloc_order:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmalloc_order_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22kmalloc_order_trace\22\09\09\09\09\09"
module asm "__kstrtabns_kmalloc_order_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_krealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22krealloc\22\09\09\09\09\09"
module asm "__kstrtabns_krealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kfree_sensitive:\09\09\09\09\09"
module asm "\09.asciz \09\22kfree_sensitive\22\09\09\09\09\09"
module asm "__kstrtabns_kfree_sensitive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ksize:\09\09\09\09\09"
module asm "\09.asciz \09\22ksize\22\09\09\09\09\09"
module asm "__kstrtabns_ksize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_kmem_cache_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_kmem_cache_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_kmem_cache_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_kmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_kmalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_kmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_kmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_kmalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_kmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_kmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_kmalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_kmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_kmem_cache_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_kmem_cache_alloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_kmem_cache_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_kmem_cache_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_kmem_cache_alloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_kmem_cache_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_kmem_cache_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_kmem_cache_alloc_node\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_kmem_cache_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_kfree\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_kfree\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_kfree\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_kmem_cache_free\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_kmem_cache_free\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_kmem_cache_free\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.89 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.91, %struct.trace_event, ptr, ptr, %union.anon.92, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.91 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.92 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.kmalloc_info_struct = type { [3 x ptr], i32 }
%struct.trace_print_flags = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.cpumask = type { [1 x i32] }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_kmem_alloc = type { %struct.trace_entry, i32, ptr, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_kmem_alloc_node = type { %struct.trace_entry, i32, ptr, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_kfree = type { %struct.trace_entry, i32, ptr, [0 x i8] }
%struct.trace_event_raw_kmem_cache_free = type { %struct.trace_entry, i32, ptr, i32, [0 x i8] }
%struct.trace_event_raw_mm_page_free = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_page_free_batched = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_mm_page_alloc = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_page = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_page_pcpu_drain = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mm_page_alloc_extfrag = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_rss_stat = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kmem_cache = type { ptr, i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.kobject, i32, i32, [1 x ptr] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.kmem_cache_order_objects = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.page = type { i32, %union.anon, %union.anon.64, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.kmem_obj_info = type { ptr, ptr, ptr, i32, ptr, ptr, [16 x ptr], [16 x ptr] }
%struct.slabinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_kmalloc = internal constant [8 x i8] c"kmalloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kmalloc = dso_local global %struct.static_call_key { ptr @__traceiter_kmalloc }, align 4
@__tracepoint_kmalloc = dso_local global %struct.tracepoint { ptr @__tpstrtab_kmalloc, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_kmalloc, ptr null, ptr @__traceiter_kmalloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kmalloc = internal constant ptr @__tracepoint_kmalloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_kmem_cache_alloc = internal constant [17 x i8] c"kmem_cache_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kmem_cache_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_kmem_cache_alloc }, align 4
@__tracepoint_kmem_cache_alloc = dso_local global %struct.tracepoint { ptr @__tpstrtab_kmem_cache_alloc, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_kmem_cache_alloc, ptr null, ptr @__traceiter_kmem_cache_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kmem_cache_alloc = internal constant ptr @__tracepoint_kmem_cache_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_kmalloc_node = internal constant [13 x i8] c"kmalloc_node\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kmalloc_node = dso_local global %struct.static_call_key { ptr @__traceiter_kmalloc_node }, align 4
@__tracepoint_kmalloc_node = dso_local global %struct.tracepoint { ptr @__tpstrtab_kmalloc_node, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_kmalloc_node, ptr null, ptr @__traceiter_kmalloc_node, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kmalloc_node = internal constant ptr @__tracepoint_kmalloc_node, section "__tracepoints_ptrs", align 4
@__tpstrtab_kmem_cache_alloc_node = internal constant [22 x i8] c"kmem_cache_alloc_node\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kmem_cache_alloc_node = dso_local global %struct.static_call_key { ptr @__traceiter_kmem_cache_alloc_node }, align 4
@__tracepoint_kmem_cache_alloc_node = dso_local global %struct.tracepoint { ptr @__tpstrtab_kmem_cache_alloc_node, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_kmem_cache_alloc_node, ptr null, ptr @__traceiter_kmem_cache_alloc_node, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kmem_cache_alloc_node = internal constant ptr @__tracepoint_kmem_cache_alloc_node, section "__tracepoints_ptrs", align 4
@__tpstrtab_kfree = internal constant [6 x i8] c"kfree\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kfree = dso_local global %struct.static_call_key { ptr @__traceiter_kfree }, align 4
@__tracepoint_kfree = dso_local global %struct.tracepoint { ptr @__tpstrtab_kfree, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_kfree, ptr null, ptr @__traceiter_kfree, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kfree = internal constant ptr @__tracepoint_kfree, section "__tracepoints_ptrs", align 4
@__tpstrtab_kmem_cache_free = internal constant [16 x i8] c"kmem_cache_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kmem_cache_free = dso_local global %struct.static_call_key { ptr @__traceiter_kmem_cache_free }, align 4
@__tracepoint_kmem_cache_free = dso_local global %struct.tracepoint { ptr @__tpstrtab_kmem_cache_free, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_kmem_cache_free, ptr null, ptr @__traceiter_kmem_cache_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kmem_cache_free = internal constant ptr @__tracepoint_kmem_cache_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_page_free = internal constant [13 x i8] c"mm_page_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_page_free = dso_local global %struct.static_call_key { ptr @__traceiter_mm_page_free }, align 4
@__tracepoint_mm_page_free = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_page_free, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_page_free, ptr null, ptr @__traceiter_mm_page_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_page_free = internal constant ptr @__tracepoint_mm_page_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_page_free_batched = internal constant [21 x i8] c"mm_page_free_batched\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_page_free_batched = dso_local global %struct.static_call_key { ptr @__traceiter_mm_page_free_batched }, align 4
@__tracepoint_mm_page_free_batched = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_page_free_batched, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_page_free_batched, ptr null, ptr @__traceiter_mm_page_free_batched, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_page_free_batched = internal constant ptr @__tracepoint_mm_page_free_batched, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_page_alloc = internal constant [14 x i8] c"mm_page_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_page_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_mm_page_alloc }, align 4
@__tracepoint_mm_page_alloc = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_page_alloc, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_page_alloc, ptr null, ptr @__traceiter_mm_page_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_page_alloc = internal constant ptr @__tracepoint_mm_page_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_page_alloc_zone_locked = internal constant [26 x i8] c"mm_page_alloc_zone_locked\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_page_alloc_zone_locked = dso_local global %struct.static_call_key { ptr @__traceiter_mm_page_alloc_zone_locked }, align 4
@__tracepoint_mm_page_alloc_zone_locked = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_page_alloc_zone_locked, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_page_alloc_zone_locked, ptr null, ptr @__traceiter_mm_page_alloc_zone_locked, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_page_alloc_zone_locked = internal constant ptr @__tracepoint_mm_page_alloc_zone_locked, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_page_pcpu_drain = internal constant [19 x i8] c"mm_page_pcpu_drain\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_page_pcpu_drain = dso_local global %struct.static_call_key { ptr @__traceiter_mm_page_pcpu_drain }, align 4
@__tracepoint_mm_page_pcpu_drain = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_page_pcpu_drain, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_page_pcpu_drain, ptr null, ptr @__traceiter_mm_page_pcpu_drain, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_page_pcpu_drain = internal constant ptr @__tracepoint_mm_page_pcpu_drain, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_page_alloc_extfrag = internal constant [22 x i8] c"mm_page_alloc_extfrag\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_page_alloc_extfrag = dso_local global %struct.static_call_key { ptr @__traceiter_mm_page_alloc_extfrag }, align 4
@__tracepoint_mm_page_alloc_extfrag = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_page_alloc_extfrag, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_page_alloc_extfrag, ptr null, ptr @__traceiter_mm_page_alloc_extfrag, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_page_alloc_extfrag = internal constant ptr @__tracepoint_mm_page_alloc_extfrag, section "__tracepoints_ptrs", align 4
@__tpstrtab_rss_stat = internal constant [9 x i8] c"rss_stat\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rss_stat = dso_local global %struct.static_call_key { ptr @__traceiter_rss_stat }, align 4
@__tracepoint_rss_stat = dso_local global %struct.tracepoint { ptr @__tpstrtab_rss_stat, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rss_stat, ptr null, ptr @__traceiter_rss_stat, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rss_stat = internal constant ptr @__tracepoint_rss_stat, section "__tracepoints_ptrs", align 4
@str__kmem__trace_system_name = internal constant [5 x i8] c"kmem\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"COMPACT_SKIPPED\00", align 1
@__TRACE_SYSTEM_COMPACT_SKIPPED = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_SKIPPED = internal global ptr @__TRACE_SYSTEM_COMPACT_SKIPPED, section "_ftrace_eval_map", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"COMPACT_DEFERRED\00", align 1
@__TRACE_SYSTEM_COMPACT_DEFERRED = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.1, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_DEFERRED = internal global ptr @__TRACE_SYSTEM_COMPACT_DEFERRED, section "_ftrace_eval_map", align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"COMPACT_CONTINUE\00", align 1
@__TRACE_SYSTEM_COMPACT_CONTINUE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.2, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_CONTINUE = internal global ptr @__TRACE_SYSTEM_COMPACT_CONTINUE, section "_ftrace_eval_map", align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"COMPACT_SUCCESS\00", align 1
@__TRACE_SYSTEM_COMPACT_SUCCESS = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.3, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_SUCCESS = internal global ptr @__TRACE_SYSTEM_COMPACT_SUCCESS, section "_ftrace_eval_map", align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"COMPACT_PARTIAL_SKIPPED\00", align 1
@__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.4, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED = internal global ptr @__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, section "_ftrace_eval_map", align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"COMPACT_COMPLETE\00", align 1
@__TRACE_SYSTEM_COMPACT_COMPLETE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.5, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_COMPLETE = internal global ptr @__TRACE_SYSTEM_COMPACT_COMPLETE, section "_ftrace_eval_map", align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"COMPACT_NO_SUITABLE_PAGE\00", align 1
@__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.6, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE = internal global ptr @__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, section "_ftrace_eval_map", align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"COMPACT_NOT_SUITABLE_ZONE\00", align 1
@__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.7, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE = internal global ptr @__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, section "_ftrace_eval_map", align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"COMPACT_CONTENDED\00", align 1
@__TRACE_SYSTEM_COMPACT_CONTENDED = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.8, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_CONTENDED = internal global ptr @__TRACE_SYSTEM_COMPACT_CONTENDED, section "_ftrace_eval_map", align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"COMPACT_PRIO_SYNC_FULL\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.9, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, section "_ftrace_eval_map", align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"COMPACT_PRIO_SYNC_LIGHT\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.10, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, section "_ftrace_eval_map", align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"COMPACT_PRIO_ASYNC\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_ASYNC = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.11, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_ASYNC = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_ASYNC, section "_ftrace_eval_map", align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"ZONE_DMA\00", align 1
@__TRACE_SYSTEM_ZONE_DMA = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.12, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_DMA = internal global ptr @__TRACE_SYSTEM_ZONE_DMA, section "_ftrace_eval_map", align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"ZONE_NORMAL\00", align 1
@__TRACE_SYSTEM_ZONE_NORMAL = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.13, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_NORMAL = internal global ptr @__TRACE_SYSTEM_ZONE_NORMAL, section "_ftrace_eval_map", align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"ZONE_HIGHMEM\00", align 1
@__TRACE_SYSTEM_ZONE_HIGHMEM = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.14, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_HIGHMEM = internal global ptr @__TRACE_SYSTEM_ZONE_HIGHMEM, section "_ftrace_eval_map", align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"ZONE_MOVABLE\00", align 1
@__TRACE_SYSTEM_ZONE_MOVABLE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.15, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_MOVABLE = internal global ptr @__TRACE_SYSTEM_ZONE_MOVABLE, section "_ftrace_eval_map", align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"LRU_INACTIVE_ANON\00", align 1
@__TRACE_SYSTEM_LRU_INACTIVE_ANON = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.16, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_INACTIVE_ANON = internal global ptr @__TRACE_SYSTEM_LRU_INACTIVE_ANON, section "_ftrace_eval_map", align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"LRU_ACTIVE_ANON\00", align 1
@__TRACE_SYSTEM_LRU_ACTIVE_ANON = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.17, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_ACTIVE_ANON = internal global ptr @__TRACE_SYSTEM_LRU_ACTIVE_ANON, section "_ftrace_eval_map", align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"LRU_INACTIVE_FILE\00", align 1
@__TRACE_SYSTEM_LRU_INACTIVE_FILE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.18, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_INACTIVE_FILE = internal global ptr @__TRACE_SYSTEM_LRU_INACTIVE_FILE, section "_ftrace_eval_map", align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"LRU_ACTIVE_FILE\00", align 1
@__TRACE_SYSTEM_LRU_ACTIVE_FILE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.19, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_ACTIVE_FILE = internal global ptr @__TRACE_SYSTEM_LRU_ACTIVE_FILE, section "_ftrace_eval_map", align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"LRU_UNEVICTABLE\00", align 1
@__TRACE_SYSTEM_LRU_UNEVICTABLE = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.20, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_UNEVICTABLE = internal global ptr @__TRACE_SYSTEM_LRU_UNEVICTABLE, section "_ftrace_eval_map", align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"MM_FILEPAGES\00", align 1
@__TRACE_SYSTEM_MM_FILEPAGES = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.21, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_MM_FILEPAGES = internal global ptr @__TRACE_SYSTEM_MM_FILEPAGES, section "_ftrace_eval_map", align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"MM_ANONPAGES\00", align 1
@__TRACE_SYSTEM_MM_ANONPAGES = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.22, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_MM_ANONPAGES = internal global ptr @__TRACE_SYSTEM_MM_ANONPAGES, section "_ftrace_eval_map", align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"MM_SWAPENTS\00", align 1
@__TRACE_SYSTEM_MM_SWAPENTS = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.23, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_MM_SWAPENTS = internal global ptr @__TRACE_SYSTEM_MM_SWAPENTS, section "_ftrace_eval_map", align 4
@.str.24 = private unnamed_addr constant [14 x i8] c"MM_SHMEMPAGES\00", align 1
@__TRACE_SYSTEM_MM_SHMEMPAGES = internal global %struct.trace_eval_map { ptr @str__kmem__trace_system_name, ptr @.str.24, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_MM_SHMEMPAGES = internal global ptr @__TRACE_SYSTEM_MM_SHMEMPAGES, section "_ftrace_eval_map", align 4
@trace_event_fields_kmem_alloc = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.127, %union.anon.89 { %struct.anon.90 { ptr @.str.128, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.129, %union.anon.89 { %struct.anon.90 { ptr @.str.130, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.131, %union.anon.89 { %struct.anon.90 { ptr @.str.132, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.131, %union.anon.89 { %struct.anon.90 { ptr @.str.133, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.134, %union.anon.89 { %struct.anon.90 { ptr @.str.135, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_kmem_alloc = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_kmem_alloc, ptr @perf_trace_kmem_alloc, ptr @trace_event_reg, ptr @trace_event_fields_kmem_alloc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kmem_alloc, i64 24), ptr getelementptr (i8, ptr @event_class_kmem_alloc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kmem_alloc = internal global %struct.trace_event_functions { ptr @trace_raw_output_kmem_alloc, ptr null, ptr null, ptr null }, align 4
@print_fmt_kmem_alloc = internal global [3111 x i8] c"\22call_site=%pS ptr=%p bytes_req=%zu bytes_alloc=%zu gfp_flags=%s\22, (void *)REC->call_site, REC->ptr, REC->bytes_req, REC->bytes_alloc, (REC->gfp_flags) ? __print_flags(REC->gfp_flags, \22|\22, {(unsigned long)(((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))) | (( gfp_t)0x400u)), \22GFP_TRANSHUGE\22}, {(unsigned long)((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))), \22GFP_TRANSHUGE_LIGHT\22}, {(unsigned long)((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)), \22GFP_HIGHUSER_MOVABLE\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)), \22GFP_HIGHUSER\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)), \22GFP_USER\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)) | (( gfp_t)0x400000u)), \22GFP_KERNEL_ACCOUNT\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)), \22GFP_KERNEL\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u)), \22GFP_NOFS\22}, {(unsigned long)((( gfp_t)0x20u)|(( gfp_t)0x200u)|(( gfp_t)0x800u)), \22GFP_ATOMIC\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u))), \22GFP_NOIO\22}, {(unsigned long)((( gfp_t)0x800u)), \22GFP_NOWAIT\22}, {(unsigned long)(( gfp_t)0x01u), \22GFP_DMA\22}, {(unsigned long)(( gfp_t)0x02u), \22__GFP_HIGHMEM\22}, {(unsigned long)(( gfp_t)0x04u), \22GFP_DMA32\22}, {(unsigned long)(( gfp_t)0x20u), \22__GFP_HIGH\22}, {(unsigned long)(( gfp_t)0x200u), \22__GFP_ATOMIC\22}, {(unsigned long)(( gfp_t)0x40u), \22__GFP_IO\22}, {(unsigned long)(( gfp_t)0x80u), \22__GFP_FS\22}, {(unsigned long)(( gfp_t)0x2000u), \22__GFP_NOWARN\22}, {(unsigned long)(( gfp_t)0x4000u), \22__GFP_RETRY_MAYFAIL\22}, {(unsigned long)(( gfp_t)0x8000u), \22__GFP_NOFAIL\22}, {(unsigned long)(( gfp_t)0x10000u), \22__GFP_NORETRY\22}, {(unsigned long)(( gfp_t)0x40000u), \22__GFP_COMP\22}, {(unsigned long)(( gfp_t)0x100u), \22__GFP_ZERO\22}, {(unsigned long)(( gfp_t)0x80000u), \22__GFP_NOMEMALLOC\22}, {(unsigned long)(( gfp_t)0x20000u), \22__GFP_MEMALLOC\22}, {(unsigned long)(( gfp_t)0x100000u), \22__GFP_HARDWALL\22}, {(unsigned long)(( gfp_t)0x200000u), \22__GFP_THISNODE\22}, {(unsigned long)(( gfp_t)0x10u), \22__GFP_RECLAIMABLE\22}, {(unsigned long)(( gfp_t)0x08u), \22__GFP_MOVABLE\22}, {(unsigned long)(( gfp_t)0x400000u), \22__GFP_ACCOUNT\22}, {(unsigned long)(( gfp_t)0x1000u), \22__GFP_WRITE\22}, {(unsigned long)(( gfp_t)(0x400u|0x800u)), \22__GFP_RECLAIM\22}, {(unsigned long)(( gfp_t)0x400u), \22__GFP_DIRECT_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800u), \22__GFP_KSWAPD_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800000u), \22__GFP_ZEROTAGS\22}, {(unsigned long)(( gfp_t)0x1000000u),\22__GFP_SKIP_KASAN_POISON\22} ) : \22none\22\00", align 1
@event_kmalloc = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kmem_alloc, %union.anon.91 { ptr @__tracepoint_kmalloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kmem_alloc }, ptr @print_fmt_kmem_alloc, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kmalloc = internal global ptr @event_kmalloc, section "_ftrace_events", align 4
@event_kmem_cache_alloc = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kmem_alloc, %union.anon.91 { ptr @__tracepoint_kmem_cache_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kmem_alloc }, ptr @print_fmt_kmem_alloc, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kmem_cache_alloc = internal global ptr @event_kmem_cache_alloc, section "_ftrace_events", align 4
@trace_event_fields_kmem_alloc_node = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.127, %union.anon.89 { %struct.anon.90 { ptr @.str.128, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.129, %union.anon.89 { %struct.anon.90 { ptr @.str.130, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.131, %union.anon.89 { %struct.anon.90 { ptr @.str.132, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.131, %union.anon.89 { %struct.anon.90 { ptr @.str.133, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.134, %union.anon.89 { %struct.anon.90 { ptr @.str.135, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.176, %union.anon.89 { %struct.anon.90 { ptr @.str.177, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_kmem_alloc_node = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_kmem_alloc_node, ptr @perf_trace_kmem_alloc_node, ptr @trace_event_reg, ptr @trace_event_fields_kmem_alloc_node, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kmem_alloc_node, i64 24), ptr getelementptr (i8, ptr @event_class_kmem_alloc_node, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kmem_alloc_node = internal global %struct.trace_event_functions { ptr @trace_raw_output_kmem_alloc_node, ptr null, ptr null, ptr null }, align 4
@print_fmt_kmem_alloc_node = internal global [3130 x i8] c"\22call_site=%pS ptr=%p bytes_req=%zu bytes_alloc=%zu gfp_flags=%s node=%d\22, (void *)REC->call_site, REC->ptr, REC->bytes_req, REC->bytes_alloc, (REC->gfp_flags) ? __print_flags(REC->gfp_flags, \22|\22, {(unsigned long)(((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))) | (( gfp_t)0x400u)), \22GFP_TRANSHUGE\22}, {(unsigned long)((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))), \22GFP_TRANSHUGE_LIGHT\22}, {(unsigned long)((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)), \22GFP_HIGHUSER_MOVABLE\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)), \22GFP_HIGHUSER\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)), \22GFP_USER\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)) | (( gfp_t)0x400000u)), \22GFP_KERNEL_ACCOUNT\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)), \22GFP_KERNEL\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u)), \22GFP_NOFS\22}, {(unsigned long)((( gfp_t)0x20u)|(( gfp_t)0x200u)|(( gfp_t)0x800u)), \22GFP_ATOMIC\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u))), \22GFP_NOIO\22}, {(unsigned long)((( gfp_t)0x800u)), \22GFP_NOWAIT\22}, {(unsigned long)(( gfp_t)0x01u), \22GFP_DMA\22}, {(unsigned long)(( gfp_t)0x02u), \22__GFP_HIGHMEM\22}, {(unsigned long)(( gfp_t)0x04u), \22GFP_DMA32\22}, {(unsigned long)(( gfp_t)0x20u), \22__GFP_HIGH\22}, {(unsigned long)(( gfp_t)0x200u), \22__GFP_ATOMIC\22}, {(unsigned long)(( gfp_t)0x40u), \22__GFP_IO\22}, {(unsigned long)(( gfp_t)0x80u), \22__GFP_FS\22}, {(unsigned long)(( gfp_t)0x2000u), \22__GFP_NOWARN\22}, {(unsigned long)(( gfp_t)0x4000u), \22__GFP_RETRY_MAYFAIL\22}, {(unsigned long)(( gfp_t)0x8000u), \22__GFP_NOFAIL\22}, {(unsigned long)(( gfp_t)0x10000u), \22__GFP_NORETRY\22}, {(unsigned long)(( gfp_t)0x40000u), \22__GFP_COMP\22}, {(unsigned long)(( gfp_t)0x100u), \22__GFP_ZERO\22}, {(unsigned long)(( gfp_t)0x80000u), \22__GFP_NOMEMALLOC\22}, {(unsigned long)(( gfp_t)0x20000u), \22__GFP_MEMALLOC\22}, {(unsigned long)(( gfp_t)0x100000u), \22__GFP_HARDWALL\22}, {(unsigned long)(( gfp_t)0x200000u), \22__GFP_THISNODE\22}, {(unsigned long)(( gfp_t)0x10u), \22__GFP_RECLAIMABLE\22}, {(unsigned long)(( gfp_t)0x08u), \22__GFP_MOVABLE\22}, {(unsigned long)(( gfp_t)0x400000u), \22__GFP_ACCOUNT\22}, {(unsigned long)(( gfp_t)0x1000u), \22__GFP_WRITE\22}, {(unsigned long)(( gfp_t)(0x400u|0x800u)), \22__GFP_RECLAIM\22}, {(unsigned long)(( gfp_t)0x400u), \22__GFP_DIRECT_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800u), \22__GFP_KSWAPD_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800000u), \22__GFP_ZEROTAGS\22}, {(unsigned long)(( gfp_t)0x1000000u),\22__GFP_SKIP_KASAN_POISON\22} ) : \22none\22, REC->node\00", align 1
@event_kmalloc_node = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kmem_alloc_node, %union.anon.91 { ptr @__tracepoint_kmalloc_node }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kmem_alloc_node }, ptr @print_fmt_kmem_alloc_node, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kmalloc_node = internal global ptr @event_kmalloc_node, section "_ftrace_events", align 4
@event_kmem_cache_alloc_node = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kmem_alloc_node, %union.anon.91 { ptr @__tracepoint_kmem_cache_alloc_node }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kmem_alloc_node }, ptr @print_fmt_kmem_alloc_node, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kmem_cache_alloc_node = internal global ptr @event_kmem_cache_alloc_node, section "_ftrace_events", align 4
@trace_event_fields_kfree = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.127, %union.anon.89 { %struct.anon.90 { ptr @.str.128, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.129, %union.anon.89 { %struct.anon.90 { ptr @.str.130, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_kfree = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_kfree, ptr @perf_trace_kfree, ptr @trace_event_reg, ptr @trace_event_fields_kfree, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kfree, i64 24), ptr getelementptr (i8, ptr @event_class_kfree, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kfree = internal global %struct.trace_event_functions { ptr @trace_raw_output_kfree, ptr null, ptr null, ptr null }, align 4
@print_fmt_kfree = internal global [57 x i8] c"\22call_site=%pS ptr=%p\22, (void *)REC->call_site, REC->ptr\00", align 1
@event_kfree = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kfree, %union.anon.91 { ptr @__tracepoint_kfree }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kfree }, ptr @print_fmt_kfree, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kfree = internal global ptr @event_kfree, section "_ftrace_events", align 4
@trace_event_fields_kmem_cache_free = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.127, %union.anon.89 { %struct.anon.90 { ptr @.str.128, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.129, %union.anon.89 { %struct.anon.90 { ptr @.str.130, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.181, %union.anon.89 { %struct.anon.90 { ptr @.str.182, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_kmem_cache_free = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_kmem_cache_free, ptr @perf_trace_kmem_cache_free, ptr @trace_event_reg, ptr @trace_event_fields_kmem_cache_free, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kmem_cache_free, i64 24), ptr getelementptr (i8, ptr @event_class_kmem_cache_free, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kmem_cache_free = internal global %struct.trace_event_functions { ptr @trace_raw_output_kmem_cache_free, ptr null, ptr null, ptr null }, align 4
@print_fmt_kmem_cache_free = internal global [82 x i8] c"\22call_site=%pS ptr=%p name=%s\22, (void *)REC->call_site, REC->ptr, __get_str(name)\00", align 1
@event_kmem_cache_free = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kmem_cache_free, %union.anon.91 { ptr @__tracepoint_kmem_cache_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kmem_cache_free }, ptr @print_fmt_kmem_cache_free, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kmem_cache_free = internal global ptr @event_kmem_cache_free, section "_ftrace_events", align 4
@trace_event_fields_mm_page_free = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.127, %union.anon.89 { %struct.anon.90 { ptr @.str.184, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.185, %union.anon.89 { %struct.anon.90 { ptr @.str.186, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_page_free = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_mm_page_free, ptr @perf_trace_mm_page_free, ptr @trace_event_reg, ptr @trace_event_fields_mm_page_free, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_page_free, i64 24), ptr getelementptr (i8, ptr @event_class_mm_page_free, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_page_free = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_page_free, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_page_free = internal global [102 x i8] c"\22page=%p pfn=0x%lx order=%d\22, (mem_map + ((REC->pfn) - (__pv_phys_pfn_offset))), REC->pfn, REC->order\00", align 1
@event_mm_page_free = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_page_free, %union.anon.91 { ptr @__tracepoint_mm_page_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_page_free }, ptr @print_fmt_mm_page_free, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_page_free = internal global ptr @event_mm_page_free, section "_ftrace_events", align 4
@trace_event_fields_mm_page_free_batched = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.127, %union.anon.89 { %struct.anon.90 { ptr @.str.184, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_page_free_batched = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_mm_page_free_batched, ptr @perf_trace_mm_page_free_batched, ptr @trace_event_reg, ptr @trace_event_fields_mm_page_free_batched, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_page_free_batched, i64 24), ptr getelementptr (i8, ptr @event_class_mm_page_free_batched, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_page_free_batched = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_page_free_batched, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_page_free_batched = internal global [89 x i8] c"\22page=%p pfn=0x%lx order=0\22, (mem_map + ((REC->pfn) - (__pv_phys_pfn_offset))), REC->pfn\00", align 1
@event_mm_page_free_batched = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_page_free_batched, %union.anon.91 { ptr @__tracepoint_mm_page_free_batched }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_page_free_batched }, ptr @print_fmt_mm_page_free_batched, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_page_free_batched = internal global ptr @event_mm_page_free_batched, section "_ftrace_events", align 4
@trace_event_fields_mm_page_alloc = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.127, %union.anon.89 { %struct.anon.90 { ptr @.str.184, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.185, %union.anon.89 { %struct.anon.90 { ptr @.str.186, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.134, %union.anon.89 { %struct.anon.90 { ptr @.str.135, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.176, %union.anon.89 { %struct.anon.90 { ptr @.str.189, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_page_alloc = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_mm_page_alloc, ptr @perf_trace_mm_page_alloc, ptr @trace_event_reg, ptr @trace_event_fields_mm_page_alloc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_page_alloc, i64 24), ptr getelementptr (i8, ptr @event_class_mm_page_alloc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_page_alloc = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_page_alloc, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_page_alloc = internal global [3181 x i8] c"\22page=%p pfn=0x%lx order=%d migratetype=%d gfp_flags=%s\22, REC->pfn != -1UL ? (mem_map + ((REC->pfn) - (__pv_phys_pfn_offset))) : ((void *)0), REC->pfn != -1UL ? REC->pfn : 0, REC->order, REC->migratetype, (REC->gfp_flags) ? __print_flags(REC->gfp_flags, \22|\22, {(unsigned long)(((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))) | (( gfp_t)0x400u)), \22GFP_TRANSHUGE\22}, {(unsigned long)((((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)) | (( gfp_t)0x40000u) | (( gfp_t)0x80000u) | (( gfp_t)0x2000u)) & ~(( gfp_t)(0x400u|0x800u))), \22GFP_TRANSHUGE_LIGHT\22}, {(unsigned long)((((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)) | (( gfp_t)0x08u) | (( gfp_t)0x1000000u)), \22GFP_HIGHUSER_MOVABLE\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)) | (( gfp_t)0x02u)), \22GFP_HIGHUSER\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u) | (( gfp_t)0x100000u)), \22GFP_USER\22}, {(unsigned long)(((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)) | (( gfp_t)0x400000u)), \22GFP_KERNEL_ACCOUNT\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u) | (( gfp_t)0x80u)), \22GFP_KERNEL\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u)) | (( gfp_t)0x40u)), \22GFP_NOFS\22}, {(unsigned long)((( gfp_t)0x20u)|(( gfp_t)0x200u)|(( gfp_t)0x800u)), \22GFP_ATOMIC\22}, {(unsigned long)((( gfp_t)(0x400u|0x800u))), \22GFP_NOIO\22}, {(unsigned long)((( gfp_t)0x800u)), \22GFP_NOWAIT\22}, {(unsigned long)(( gfp_t)0x01u), \22GFP_DMA\22}, {(unsigned long)(( gfp_t)0x02u), \22__GFP_HIGHMEM\22}, {(unsigned long)(( gfp_t)0x04u), \22GFP_DMA32\22}, {(unsigned long)(( gfp_t)0x20u), \22__GFP_HIGH\22}, {(unsigned long)(( gfp_t)0x200u), \22__GFP_ATOMIC\22}, {(unsigned long)(( gfp_t)0x40u), \22__GFP_IO\22}, {(unsigned long)(( gfp_t)0x80u), \22__GFP_FS\22}, {(unsigned long)(( gfp_t)0x2000u), \22__GFP_NOWARN\22}, {(unsigned long)(( gfp_t)0x4000u), \22__GFP_RETRY_MAYFAIL\22}, {(unsigned long)(( gfp_t)0x8000u), \22__GFP_NOFAIL\22}, {(unsigned long)(( gfp_t)0x10000u), \22__GFP_NORETRY\22}, {(unsigned long)(( gfp_t)0x40000u), \22__GFP_COMP\22}, {(unsigned long)(( gfp_t)0x100u), \22__GFP_ZERO\22}, {(unsigned long)(( gfp_t)0x80000u), \22__GFP_NOMEMALLOC\22}, {(unsigned long)(( gfp_t)0x20000u), \22__GFP_MEMALLOC\22}, {(unsigned long)(( gfp_t)0x100000u), \22__GFP_HARDWALL\22}, {(unsigned long)(( gfp_t)0x200000u), \22__GFP_THISNODE\22}, {(unsigned long)(( gfp_t)0x10u), \22__GFP_RECLAIMABLE\22}, {(unsigned long)(( gfp_t)0x08u), \22__GFP_MOVABLE\22}, {(unsigned long)(( gfp_t)0x400000u), \22__GFP_ACCOUNT\22}, {(unsigned long)(( gfp_t)0x1000u), \22__GFP_WRITE\22}, {(unsigned long)(( gfp_t)(0x400u|0x800u)), \22__GFP_RECLAIM\22}, {(unsigned long)(( gfp_t)0x400u), \22__GFP_DIRECT_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800u), \22__GFP_KSWAPD_RECLAIM\22}, {(unsigned long)(( gfp_t)0x800000u), \22__GFP_ZEROTAGS\22}, {(unsigned long)(( gfp_t)0x1000000u),\22__GFP_SKIP_KASAN_POISON\22} ) : \22none\22\00", align 1
@event_mm_page_alloc = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_page_alloc, %union.anon.91 { ptr @__tracepoint_mm_page_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_page_alloc }, ptr @print_fmt_mm_page_alloc, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_page_alloc = internal global ptr @event_mm_page_alloc, section "_ftrace_events", align 4
@trace_event_fields_mm_page = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.127, %union.anon.89 { %struct.anon.90 { ptr @.str.184, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.185, %union.anon.89 { %struct.anon.90 { ptr @.str.186, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.176, %union.anon.89 { %struct.anon.90 { ptr @.str.189, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_page = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_mm_page, ptr @perf_trace_mm_page, ptr @trace_event_reg, ptr @trace_event_fields_mm_page, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_page, i64 24), ptr getelementptr (i8, ptr @event_class_mm_page, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_page = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_page, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_page = internal global [225 x i8] c"\22page=%p pfn=0x%lx order=%u migratetype=%d percpu_refill=%d\22, REC->pfn != -1UL ? (mem_map + ((REC->pfn) - (__pv_phys_pfn_offset))) : ((void *)0), REC->pfn != -1UL ? REC->pfn : 0, REC->order, REC->migratetype, REC->order == 0\00", align 1
@event_mm_page_alloc_zone_locked = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_page, %union.anon.91 { ptr @__tracepoint_mm_page_alloc_zone_locked }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_page }, ptr @print_fmt_mm_page, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_page_alloc_zone_locked = internal global ptr @event_mm_page_alloc_zone_locked, section "_ftrace_events", align 4
@trace_event_fields_mm_page_pcpu_drain = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.127, %union.anon.89 { %struct.anon.90 { ptr @.str.184, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.185, %union.anon.89 { %struct.anon.90 { ptr @.str.186, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.176, %union.anon.89 { %struct.anon.90 { ptr @.str.189, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_page_pcpu_drain = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_mm_page_pcpu_drain, ptr @perf_trace_mm_page_pcpu_drain, ptr @trace_event_reg, ptr @trace_event_fields_mm_page_pcpu_drain, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_page_pcpu_drain, i64 24), ptr getelementptr (i8, ptr @event_class_mm_page_pcpu_drain, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_page_pcpu_drain = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_page_pcpu_drain, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_page_pcpu_drain = internal global [135 x i8] c"\22page=%p pfn=0x%lx order=%d migratetype=%d\22, (mem_map + ((REC->pfn) - (__pv_phys_pfn_offset))), REC->pfn, REC->order, REC->migratetype\00", align 1
@event_mm_page_pcpu_drain = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_page_pcpu_drain, %union.anon.91 { ptr @__tracepoint_mm_page_pcpu_drain }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_page_pcpu_drain }, ptr @print_fmt_mm_page_pcpu_drain, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_page_pcpu_drain = internal global ptr @event_mm_page_pcpu_drain, section "_ftrace_events", align 4
@trace_event_fields_mm_page_alloc_extfrag = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.127, %union.anon.89 { %struct.anon.90 { ptr @.str.184, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.176, %union.anon.89 { %struct.anon.90 { ptr @.str.193, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.176, %union.anon.89 { %struct.anon.90 { ptr @.str.194, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.176, %union.anon.89 { %struct.anon.90 { ptr @.str.195, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.176, %union.anon.89 { %struct.anon.90 { ptr @.str.196, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.176, %union.anon.89 { %struct.anon.90 { ptr @.str.197, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_page_alloc_extfrag = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_mm_page_alloc_extfrag, ptr @perf_trace_mm_page_alloc_extfrag, ptr @trace_event_reg, ptr @trace_event_fields_mm_page_alloc_extfrag, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_page_alloc_extfrag, i64 24), ptr getelementptr (i8, ptr @event_class_mm_page_alloc_extfrag, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_page_alloc_extfrag = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_page_alloc_extfrag, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_page_alloc_extfrag = internal global [364 x i8] c"\22page=%p pfn=0x%lx alloc_order=%d fallback_order=%d pageblock_order=%d alloc_migratetype=%d fallback_migratetype=%d fragmenting=%d change_ownership=%d\22, (mem_map + ((REC->pfn) - (__pv_phys_pfn_offset))), REC->pfn, REC->alloc_order, REC->fallback_order, (12-1), REC->alloc_migratetype, REC->fallback_migratetype, REC->fallback_order < (12-1), REC->change_ownership\00", align 1
@event_mm_page_alloc_extfrag = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_page_alloc_extfrag, %union.anon.91 { ptr @__tracepoint_mm_page_alloc_extfrag }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_page_alloc_extfrag }, ptr @print_fmt_mm_page_alloc_extfrag, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_page_alloc_extfrag = internal global ptr @event_mm_page_alloc_extfrag, section "_ftrace_events", align 4
@trace_event_fields_rss_stat = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.185, %union.anon.89 { %struct.anon.90 { ptr @.str.199, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.185, %union.anon.89 { %struct.anon.90 { ptr @.str.200, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.176, %union.anon.89 { %struct.anon.90 { ptr @.str.201, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.202, %union.anon.89 { %struct.anon.90 { ptr @.str.203, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rss_stat = internal global %struct.trace_event_class { ptr @str__kmem__trace_system_name, ptr @trace_event_raw_event_rss_stat, ptr @perf_trace_rss_stat, ptr @trace_event_reg, ptr @trace_event_fields_rss_stat, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rss_stat, i64 24), ptr getelementptr (i8, ptr @event_class_rss_stat, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rss_stat = internal global %struct.trace_event_functions { ptr @trace_raw_output_rss_stat, ptr null, ptr null, ptr null }, align 4
@print_fmt_rss_stat = internal global [238 x i8] c"\22mm_id=%u curr=%d type=%s size=%ldB\22, REC->mm_id, REC->curr, __print_symbolic(REC->member, { MM_FILEPAGES, \22MM_FILEPAGES\22 }, { MM_ANONPAGES, \22MM_ANONPAGES\22 }, { MM_SWAPENTS, \22MM_SWAPENTS\22 }, { MM_SHMEMPAGES, \22MM_SHMEMPAGES\22 }), REC->size\00", align 1
@event_rss_stat = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rss_stat, %union.anon.91 { ptr @__tracepoint_rss_stat }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rss_stat }, ptr @print_fmt_rss_stat, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rss_stat = internal global ptr @event_rss_stat, section "_ftrace_events", align 4
@slab_caches = dso_local global %struct.list_head { ptr @slab_caches, ptr @slab_caches }, align 4
@slab_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @slab_mutex, i64 12), ptr getelementptr (i8, ptr @slab_mutex, i64 12) } }, align 4
@__setup_str_slub_nomerge = internal constant [13 x i8] c"slub_nomerge\00", section ".init.rodata", align 1
@__setup_slub_nomerge = internal global %struct.obs_kernel_param { ptr @__setup_str_slub_nomerge, ptr @setup_slab_nomerge, i32 0 }, section ".init.setup", align 4
@__setup_str_slub_merge = internal constant [11 x i8] c"slub_merge\00", section ".init.rodata", align 1
@__setup_slub_merge = internal global %struct.obs_kernel_param { ptr @__setup_str_slub_merge, ptr @setup_slab_merge, i32 0 }, section ".init.setup", align 4
@__setup_str_setup_slab_nomerge = internal constant [13 x i8] c"slab_nomerge\00", section ".init.rodata", align 1
@__setup_setup_slab_nomerge = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_slab_nomerge, ptr @setup_slab_nomerge, i32 0 }, section ".init.setup", align 4
@__setup_str_setup_slab_merge = internal constant [11 x i8] c"slab_merge\00", section ".init.rodata", align 1
@__setup_setup_slab_merge = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_slab_merge, ptr @setup_slab_merge, i32 0 }, section ".init.setup", align 4
@__kstrtab_kmem_cache_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_size = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_size to i32), ptr @__kstrtab_kmem_cache_size, ptr @__kstrtabns_kmem_cache_size }, section "___ksymtab+kmem_cache_size", align 4
@slab_nomerge = internal unnamed_addr global i1 false, align 1
@slub_debug_enabled = external dso_local global %struct.static_key_false, align 4
@.str.25 = private unnamed_addr constant [17 x i8] c"mm/slab_common.c\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"%s: Failed to create slab '%s'. Error %d\0A\00", align 1
@__func__.kmem_cache_create_usercopy = private unnamed_addr constant [27 x i8] c"kmem_cache_create_usercopy\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"\014%s(%s) failed with error %d\0A\00", align 1
@__kstrtab_kmem_cache_create_usercopy = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_create_usercopy = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_create_usercopy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_create_usercopy to i32), ptr @__kstrtab_kmem_cache_create_usercopy, ptr @__kstrtabns_kmem_cache_create_usercopy }, section "___ksymtab+kmem_cache_create_usercopy", align 4
@__kstrtab_kmem_cache_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_create = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_create to i32), ptr @__kstrtab_kmem_cache_create, ptr @__kstrtabns_kmem_cache_create }, section "___ksymtab+kmem_cache_create", align 4
@kmem_cache = dso_local local_unnamed_addr global ptr null, align 4
@.str.28 = private unnamed_addr constant [57 x i8] c"%s %s: Slab cache still has objects when called from %pS\00", align 1
@__func__.kmem_cache_destroy = private unnamed_addr constant [19 x i8] c"kmem_cache_destroy\00", align 1
@__kstrtab_kmem_cache_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_destroy to i32), ptr @__kstrtab_kmem_cache_destroy, ptr @__kstrtabns_kmem_cache_destroy }, section "___ksymtab+kmem_cache_destroy", align 4
@__kstrtab_kmem_cache_shrink = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_shrink = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_shrink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_shrink to i32), ptr @__kstrtab_kmem_cache_shrink, ptr @__kstrtabns_kmem_cache_shrink }, section "___ksymtab+kmem_cache_shrink", align 4
@slab_state = dso_local local_unnamed_addr global i32 0, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_kmem_valid_obj = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_valid_obj = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_valid_obj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_valid_obj to i32), ptr @__kstrtab_kmem_valid_obj, ptr @__kstrtabns_kmem_valid_obj }, section "___ksymtab_gpl+kmem_valid_obj", align 4
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kmem_dump_obj.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmem_dump_obj.__already_done.30 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"\01c non-slab memory.\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"\01c slab%s %s\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"\01c slab%s\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"\01c start %px\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"\01c data offset %lu\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"\01c pointer offset %lu\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"\01c size %u\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"\01c allocated at %pS\0A\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"\016    %pS\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"\01c Free path:\0A\00", align 1
@__kstrtab_kmem_dump_obj = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_dump_obj = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_dump_obj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_dump_obj to i32), ptr @__kstrtab_kmem_dump_obj, ptr @__kstrtabns_kmem_dump_obj }, section "___ksymtab_gpl+kmem_dump_obj", align 4
@.str.42 = private unnamed_addr constant [55 x i8] c"Creation of kmalloc slab %s size=%u failed. Reason %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"Out of memory when creating slab %s\0A\00", align 1
@kmalloc_caches = dso_local global [3 x [14 x ptr]] zeroinitializer, section ".data..ro_after_init", align 4
@__kstrtab_kmalloc_caches = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmalloc_caches = external dso_local constant [0 x i8], align 1
@__ksymtab_kmalloc_caches = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmalloc_caches to i32), ptr @__kstrtab_kmalloc_caches, ptr @__kstrtabns_kmalloc_caches }, section "___ksymtab+kmalloc_caches", align 4
@size_index = internal unnamed_addr global [24 x i8] c"\03\04\05\05\06\06\06\06\01\01\01\01\07\07\07\07\02\02\02\02\02\02\02\02", section ".data..ro_after_init", align 1
@kmalloc_slab.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"kmalloc-0\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"kmalloc-rcl-0\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"dma-kmalloc-0\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"kmalloc-96\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-96\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-96\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"kmalloc-192\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-192\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-192\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"kmalloc-8\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"kmalloc-rcl-8\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"dma-kmalloc-8\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"kmalloc-16\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-16\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-16\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"kmalloc-32\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-32\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-32\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"kmalloc-64\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-64\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-64\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"kmalloc-128\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-128\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-128\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"kmalloc-256\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-256\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-256\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"kmalloc-512\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-512\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-512\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"kmalloc-1k\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-1k\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-1k\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"kmalloc-2k\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-2k\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-2k\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"kmalloc-4k\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-4k\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-4k\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"kmalloc-8k\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-8k\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-8k\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"kmalloc-16k\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-16k\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-16k\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"kmalloc-32k\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-32k\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-32k\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"kmalloc-64k\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-64k\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-64k\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"kmalloc-128k\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"kmalloc-rcl-128k\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"dma-kmalloc-128k\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"kmalloc-256k\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"kmalloc-rcl-256k\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"dma-kmalloc-256k\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"kmalloc-512k\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"kmalloc-rcl-512k\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"dma-kmalloc-512k\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"kmalloc-1M\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-1M\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-1M\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"kmalloc-2M\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-2M\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-2M\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"kmalloc-4M\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-4M\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-4M\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"kmalloc-8M\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-8M\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-8M\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"kmalloc-16M\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-16M\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-16M\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"kmalloc-32M\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-32M\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-32M\00", align 1
@kmalloc_info = dso_local local_unnamed_addr constant [26 x %struct.kmalloc_info_struct] [%struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46], i32 0 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49], i32 96 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52], i32 192 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55], i32 8 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58], i32 16 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61], i32 32 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.62, ptr @.str.63, ptr @.str.64], i32 64 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67], i32 128 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.68, ptr @.str.69, ptr @.str.70], i32 256 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.71, ptr @.str.72, ptr @.str.73], i32 512 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76], i32 1024 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.79], i32 2048 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82], i32 4096 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.85], i32 8192 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.88], i32 16384 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.89, ptr @.str.90, ptr @.str.91], i32 32768 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.92, ptr @.str.93, ptr @.str.94], i32 65536 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.97], i32 131072 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.98, ptr @.str.99, ptr @.str.100], i32 262144 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.101, ptr @.str.102, ptr @.str.103], i32 524288 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.104, ptr @.str.105, ptr @.str.106], i32 1048576 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.107, ptr @.str.108, ptr @.str.109], i32 2097152 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.110, ptr @.str.111, ptr @.str.112], i32 4194304 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.113, ptr @.str.114, ptr @.str.115], i32 8388608 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.116, ptr @.str.117, ptr @.str.118], i32 16777216 }, %struct.kmalloc_info_struct { [3 x ptr] [ptr @.str.119, ptr @.str.120, ptr @.str.121], i32 33554432 }], section ".init.rodata", align 4
@.str.122 = private unnamed_addr constant [76 x i8] c"\014Unexpected gfp: %#x (%pGg). Fixing up to gfp: %#x (%pGg). Fix your code!\0A\00", align 1
@__kstrtab_kmalloc_order = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmalloc_order = external dso_local constant [0 x i8], align 1
@__ksymtab_kmalloc_order = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmalloc_order to i32), ptr @__kstrtab_kmalloc_order, ptr @__kstrtabns_kmalloc_order }, section "___ksymtab+kmalloc_order", align 4
@__kstrtab_kmalloc_order_trace = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmalloc_order_trace = external dso_local constant [0 x i8], align 1
@__ksymtab_kmalloc_order_trace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmalloc_order_trace to i32), ptr @__kstrtab_kmalloc_order_trace, ptr @__kstrtabns_kmalloc_order_trace }, section "___ksymtab+kmalloc_order_trace", align 4
@.str.123 = private unnamed_addr constant [54 x i8] c"\014excessive unreclaimable slab but cannot dump stats\0A\00", align 1
@.str.124 = private unnamed_addr constant [28 x i8] c"\016Unreclaimable slab info:\0A\00", align 1
@.str.125 = private unnamed_addr constant [49 x i8] c"\016Name                      Used          Total\0A\00", align 1
@.str.126 = private unnamed_addr constant [25 x i8] c"\016%-17s %10luKB %10luKB\0A\00", align 1
@__initcall__kmod_slab_common__330_1160_slab_proc_init6 = internal global ptr @slab_proc_init, section ".initcall6.init", align 4
@__kstrtab_krealloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_krealloc = external dso_local constant [0 x i8], align 1
@__ksymtab_krealloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @krealloc to i32), ptr @__kstrtab_krealloc, ptr @__kstrtabns_krealloc }, section "___ksymtab+krealloc", align 4
@__kstrtab_kfree_sensitive = external dso_local constant [0 x i8], align 1
@__kstrtabns_kfree_sensitive = external dso_local constant [0 x i8], align 1
@__ksymtab_kfree_sensitive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kfree_sensitive to i32), ptr @__kstrtab_kfree_sensitive, ptr @__kstrtabns_kfree_sensitive }, section "___ksymtab+kfree_sensitive", align 4
@__kstrtab_ksize = external dso_local constant [0 x i8], align 1
@__kstrtabns_ksize = external dso_local constant [0 x i8], align 1
@__ksymtab_ksize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ksize to i32), ptr @__kstrtab_ksize, ptr @__kstrtabns_ksize }, section "___ksymtab+ksize", align 4
@__kstrtab___tracepoint_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_kmalloc to i32), ptr @__kstrtab___tracepoint_kmalloc, ptr @__kstrtabns___tracepoint_kmalloc }, section "___ksymtab+__tracepoint_kmalloc", align 4
@__kstrtab___traceiter_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_kmalloc to i32), ptr @__kstrtab___traceiter_kmalloc, ptr @__kstrtabns___traceiter_kmalloc }, section "___ksymtab+__traceiter_kmalloc", align 4
@__kstrtab___SCK__tp_func_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_kmalloc to i32), ptr @__kstrtab___SCK__tp_func_kmalloc, ptr @__kstrtabns___SCK__tp_func_kmalloc }, section "___ksymtab+__SCK__tp_func_kmalloc", align 4
@__kstrtab___tracepoint_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_kmem_cache_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_kmem_cache_alloc to i32), ptr @__kstrtab___tracepoint_kmem_cache_alloc, ptr @__kstrtabns___tracepoint_kmem_cache_alloc }, section "___ksymtab+__tracepoint_kmem_cache_alloc", align 4
@__kstrtab___traceiter_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_kmem_cache_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_kmem_cache_alloc to i32), ptr @__kstrtab___traceiter_kmem_cache_alloc, ptr @__kstrtabns___traceiter_kmem_cache_alloc }, section "___ksymtab+__traceiter_kmem_cache_alloc", align 4
@__kstrtab___SCK__tp_func_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_kmem_cache_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_kmem_cache_alloc to i32), ptr @__kstrtab___SCK__tp_func_kmem_cache_alloc, ptr @__kstrtabns___SCK__tp_func_kmem_cache_alloc }, section "___ksymtab+__SCK__tp_func_kmem_cache_alloc", align 4
@__kstrtab___tracepoint_kmalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_kmalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_kmalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_kmalloc_node to i32), ptr @__kstrtab___tracepoint_kmalloc_node, ptr @__kstrtabns___tracepoint_kmalloc_node }, section "___ksymtab+__tracepoint_kmalloc_node", align 4
@__kstrtab___traceiter_kmalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_kmalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_kmalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_kmalloc_node to i32), ptr @__kstrtab___traceiter_kmalloc_node, ptr @__kstrtabns___traceiter_kmalloc_node }, section "___ksymtab+__traceiter_kmalloc_node", align 4
@__kstrtab___SCK__tp_func_kmalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_kmalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_kmalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_kmalloc_node to i32), ptr @__kstrtab___SCK__tp_func_kmalloc_node, ptr @__kstrtabns___SCK__tp_func_kmalloc_node }, section "___ksymtab+__SCK__tp_func_kmalloc_node", align 4
@__kstrtab___tracepoint_kmem_cache_alloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_kmem_cache_alloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_kmem_cache_alloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_kmem_cache_alloc_node to i32), ptr @__kstrtab___tracepoint_kmem_cache_alloc_node, ptr @__kstrtabns___tracepoint_kmem_cache_alloc_node }, section "___ksymtab+__tracepoint_kmem_cache_alloc_node", align 4
@__kstrtab___traceiter_kmem_cache_alloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_kmem_cache_alloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_kmem_cache_alloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_kmem_cache_alloc_node to i32), ptr @__kstrtab___traceiter_kmem_cache_alloc_node, ptr @__kstrtabns___traceiter_kmem_cache_alloc_node }, section "___ksymtab+__traceiter_kmem_cache_alloc_node", align 4
@__kstrtab___SCK__tp_func_kmem_cache_alloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_kmem_cache_alloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_kmem_cache_alloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_kmem_cache_alloc_node to i32), ptr @__kstrtab___SCK__tp_func_kmem_cache_alloc_node, ptr @__kstrtabns___SCK__tp_func_kmem_cache_alloc_node }, section "___ksymtab+__SCK__tp_func_kmem_cache_alloc_node", align 4
@__kstrtab___tracepoint_kfree = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_kfree = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_kfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_kfree to i32), ptr @__kstrtab___tracepoint_kfree, ptr @__kstrtabns___tracepoint_kfree }, section "___ksymtab+__tracepoint_kfree", align 4
@__kstrtab___traceiter_kfree = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_kfree = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_kfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_kfree to i32), ptr @__kstrtab___traceiter_kfree, ptr @__kstrtabns___traceiter_kfree }, section "___ksymtab+__traceiter_kfree", align 4
@__kstrtab___SCK__tp_func_kfree = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_kfree = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_kfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_kfree to i32), ptr @__kstrtab___SCK__tp_func_kfree, ptr @__kstrtabns___SCK__tp_func_kfree }, section "___ksymtab+__SCK__tp_func_kfree", align 4
@__kstrtab___tracepoint_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_kmem_cache_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_kmem_cache_free to i32), ptr @__kstrtab___tracepoint_kmem_cache_free, ptr @__kstrtabns___tracepoint_kmem_cache_free }, section "___ksymtab+__tracepoint_kmem_cache_free", align 4
@__kstrtab___traceiter_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_kmem_cache_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_kmem_cache_free to i32), ptr @__kstrtab___traceiter_kmem_cache_free, ptr @__kstrtabns___traceiter_kmem_cache_free }, section "___ksymtab+__traceiter_kmem_cache_free", align 4
@__kstrtab___SCK__tp_func_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_kmem_cache_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_kmem_cache_free to i32), ptr @__kstrtab___SCK__tp_func_kmem_cache_free, ptr @__kstrtabns___SCK__tp_func_kmem_cache_free }, section "___ksymtab+__SCK__tp_func_kmem_cache_free", align 4
@.str.127 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"call_site\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"const void *\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"bytes_req\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"bytes_alloc\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"gfp_t\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"gfp_flags\00", align 1
@.str.136 = private unnamed_addr constant [65 x i8] c"call_site=%pS ptr=%p bytes_req=%zu bytes_alloc=%zu gfp_flags=%s\0A\00", align 1
@trace_raw_output_kmem_alloc.__flags = internal constant [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 18621642, ptr @.str.137 }, %struct.trace_print_flags { i32 18620618, ptr @.str.138 }, %struct.trace_print_flags { i32 17829066, ptr @.str.139 }, %struct.trace_print_flags { i32 1051842, ptr @.str.140 }, %struct.trace_print_flags { i32 1051840, ptr @.str.141 }, %struct.trace_print_flags { i32 4197568, ptr @.str.142 }, %struct.trace_print_flags { i32 3264, ptr @.str.143 }, %struct.trace_print_flags { i32 3136, ptr @.str.144 }, %struct.trace_print_flags { i32 2592, ptr @.str.145 }, %struct.trace_print_flags { i32 3072, ptr @.str.146 }, %struct.trace_print_flags { i32 2048, ptr @.str.147 }, %struct.trace_print_flags { i32 1, ptr @.str.148 }, %struct.trace_print_flags { i32 2, ptr @.str.149 }, %struct.trace_print_flags { i32 4, ptr @.str.150 }, %struct.trace_print_flags { i32 32, ptr @.str.151 }, %struct.trace_print_flags { i32 512, ptr @.str.152 }, %struct.trace_print_flags { i32 64, ptr @.str.153 }, %struct.trace_print_flags { i32 128, ptr @.str.154 }, %struct.trace_print_flags { i32 8192, ptr @.str.155 }, %struct.trace_print_flags { i32 16384, ptr @.str.156 }, %struct.trace_print_flags { i32 32768, ptr @.str.157 }, %struct.trace_print_flags { i32 65536, ptr @.str.158 }, %struct.trace_print_flags { i32 262144, ptr @.str.159 }, %struct.trace_print_flags { i32 256, ptr @.str.160 }, %struct.trace_print_flags { i32 524288, ptr @.str.161 }, %struct.trace_print_flags { i32 131072, ptr @.str.162 }, %struct.trace_print_flags { i32 1048576, ptr @.str.163 }, %struct.trace_print_flags { i32 2097152, ptr @.str.164 }, %struct.trace_print_flags { i32 16, ptr @.str.165 }, %struct.trace_print_flags { i32 8, ptr @.str.166 }, %struct.trace_print_flags { i32 4194304, ptr @.str.167 }, %struct.trace_print_flags { i32 4096, ptr @.str.168 }, %struct.trace_print_flags { i32 3072, ptr @.str.169 }, %struct.trace_print_flags { i32 1024, ptr @.str.170 }, %struct.trace_print_flags { i32 2048, ptr @.str.171 }, %struct.trace_print_flags { i32 8388608, ptr @.str.172 }, %struct.trace_print_flags { i32 16777216, ptr @.str.173 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.137 = private unnamed_addr constant [14 x i8] c"GFP_TRANSHUGE\00", align 1
@.str.138 = private unnamed_addr constant [20 x i8] c"GFP_TRANSHUGE_LIGHT\00", align 1
@.str.139 = private unnamed_addr constant [21 x i8] c"GFP_HIGHUSER_MOVABLE\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"GFP_HIGHUSER\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"GFP_USER\00", align 1
@.str.142 = private unnamed_addr constant [19 x i8] c"GFP_KERNEL_ACCOUNT\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"GFP_KERNEL\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"GFP_NOFS\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"GFP_ATOMIC\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"GFP_NOIO\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"GFP_NOWAIT\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"GFP_DMA\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"__GFP_HIGHMEM\00", align 1
@.str.150 = private unnamed_addr constant [10 x i8] c"GFP_DMA32\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"__GFP_HIGH\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"__GFP_ATOMIC\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"__GFP_IO\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"__GFP_FS\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"__GFP_NOWARN\00", align 1
@.str.156 = private unnamed_addr constant [20 x i8] c"__GFP_RETRY_MAYFAIL\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"__GFP_NOFAIL\00", align 1
@.str.158 = private unnamed_addr constant [14 x i8] c"__GFP_NORETRY\00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"__GFP_COMP\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"__GFP_ZERO\00", align 1
@.str.161 = private unnamed_addr constant [17 x i8] c"__GFP_NOMEMALLOC\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"__GFP_MEMALLOC\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"__GFP_HARDWALL\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"__GFP_THISNODE\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"__GFP_RECLAIMABLE\00", align 1
@.str.166 = private unnamed_addr constant [14 x i8] c"__GFP_MOVABLE\00", align 1
@.str.167 = private unnamed_addr constant [14 x i8] c"__GFP_ACCOUNT\00", align 1
@.str.168 = private unnamed_addr constant [12 x i8] c"__GFP_WRITE\00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c"__GFP_RECLAIM\00", align 1
@.str.170 = private unnamed_addr constant [21 x i8] c"__GFP_DIRECT_RECLAIM\00", align 1
@.str.171 = private unnamed_addr constant [21 x i8] c"__GFP_KSWAPD_RECLAIM\00", align 1
@.str.172 = private unnamed_addr constant [15 x i8] c"__GFP_ZEROTAGS\00", align 1
@.str.173 = private unnamed_addr constant [24 x i8] c"__GFP_SKIP_KASAN_POISON\00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.176 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.178 = private unnamed_addr constant [73 x i8] c"call_site=%pS ptr=%p bytes_req=%zu bytes_alloc=%zu gfp_flags=%s node=%d\0A\00", align 1
@trace_raw_output_kmem_alloc_node.__flags = internal constant [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 18621642, ptr @.str.137 }, %struct.trace_print_flags { i32 18620618, ptr @.str.138 }, %struct.trace_print_flags { i32 17829066, ptr @.str.139 }, %struct.trace_print_flags { i32 1051842, ptr @.str.140 }, %struct.trace_print_flags { i32 1051840, ptr @.str.141 }, %struct.trace_print_flags { i32 4197568, ptr @.str.142 }, %struct.trace_print_flags { i32 3264, ptr @.str.143 }, %struct.trace_print_flags { i32 3136, ptr @.str.144 }, %struct.trace_print_flags { i32 2592, ptr @.str.145 }, %struct.trace_print_flags { i32 3072, ptr @.str.146 }, %struct.trace_print_flags { i32 2048, ptr @.str.147 }, %struct.trace_print_flags { i32 1, ptr @.str.148 }, %struct.trace_print_flags { i32 2, ptr @.str.149 }, %struct.trace_print_flags { i32 4, ptr @.str.150 }, %struct.trace_print_flags { i32 32, ptr @.str.151 }, %struct.trace_print_flags { i32 512, ptr @.str.152 }, %struct.trace_print_flags { i32 64, ptr @.str.153 }, %struct.trace_print_flags { i32 128, ptr @.str.154 }, %struct.trace_print_flags { i32 8192, ptr @.str.155 }, %struct.trace_print_flags { i32 16384, ptr @.str.156 }, %struct.trace_print_flags { i32 32768, ptr @.str.157 }, %struct.trace_print_flags { i32 65536, ptr @.str.158 }, %struct.trace_print_flags { i32 262144, ptr @.str.159 }, %struct.trace_print_flags { i32 256, ptr @.str.160 }, %struct.trace_print_flags { i32 524288, ptr @.str.161 }, %struct.trace_print_flags { i32 131072, ptr @.str.162 }, %struct.trace_print_flags { i32 1048576, ptr @.str.163 }, %struct.trace_print_flags { i32 2097152, ptr @.str.164 }, %struct.trace_print_flags { i32 16, ptr @.str.165 }, %struct.trace_print_flags { i32 8, ptr @.str.166 }, %struct.trace_print_flags { i32 4194304, ptr @.str.167 }, %struct.trace_print_flags { i32 4096, ptr @.str.168 }, %struct.trace_print_flags { i32 3072, ptr @.str.169 }, %struct.trace_print_flags { i32 1024, ptr @.str.170 }, %struct.trace_print_flags { i32 2048, ptr @.str.171 }, %struct.trace_print_flags { i32 8388608, ptr @.str.172 }, %struct.trace_print_flags { i32 16777216, ptr @.str.173 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.179 = private unnamed_addr constant [22 x i8] c"call_site=%pS ptr=%p\0A\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.181 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.182 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.183 = private unnamed_addr constant [30 x i8] c"call_site=%pS ptr=%p name=%s\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.184 = private unnamed_addr constant [4 x i8] c"pfn\00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.187 = private unnamed_addr constant [28 x i8] c"page=%p pfn=0x%lx order=%d\0A\00", align 1
@.str.188 = private unnamed_addr constant [27 x i8] c"page=%p pfn=0x%lx order=0\0A\00", align 1
@.str.189 = private unnamed_addr constant [12 x i8] c"migratetype\00", align 1
@.str.190 = private unnamed_addr constant [56 x i8] c"page=%p pfn=0x%lx order=%d migratetype=%d gfp_flags=%s\0A\00", align 1
@trace_raw_output_mm_page_alloc.__flags = internal constant [38 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 18621642, ptr @.str.137 }, %struct.trace_print_flags { i32 18620618, ptr @.str.138 }, %struct.trace_print_flags { i32 17829066, ptr @.str.139 }, %struct.trace_print_flags { i32 1051842, ptr @.str.140 }, %struct.trace_print_flags { i32 1051840, ptr @.str.141 }, %struct.trace_print_flags { i32 4197568, ptr @.str.142 }, %struct.trace_print_flags { i32 3264, ptr @.str.143 }, %struct.trace_print_flags { i32 3136, ptr @.str.144 }, %struct.trace_print_flags { i32 2592, ptr @.str.145 }, %struct.trace_print_flags { i32 3072, ptr @.str.146 }, %struct.trace_print_flags { i32 2048, ptr @.str.147 }, %struct.trace_print_flags { i32 1, ptr @.str.148 }, %struct.trace_print_flags { i32 2, ptr @.str.149 }, %struct.trace_print_flags { i32 4, ptr @.str.150 }, %struct.trace_print_flags { i32 32, ptr @.str.151 }, %struct.trace_print_flags { i32 512, ptr @.str.152 }, %struct.trace_print_flags { i32 64, ptr @.str.153 }, %struct.trace_print_flags { i32 128, ptr @.str.154 }, %struct.trace_print_flags { i32 8192, ptr @.str.155 }, %struct.trace_print_flags { i32 16384, ptr @.str.156 }, %struct.trace_print_flags { i32 32768, ptr @.str.157 }, %struct.trace_print_flags { i32 65536, ptr @.str.158 }, %struct.trace_print_flags { i32 262144, ptr @.str.159 }, %struct.trace_print_flags { i32 256, ptr @.str.160 }, %struct.trace_print_flags { i32 524288, ptr @.str.161 }, %struct.trace_print_flags { i32 131072, ptr @.str.162 }, %struct.trace_print_flags { i32 1048576, ptr @.str.163 }, %struct.trace_print_flags { i32 2097152, ptr @.str.164 }, %struct.trace_print_flags { i32 16, ptr @.str.165 }, %struct.trace_print_flags { i32 8, ptr @.str.166 }, %struct.trace_print_flags { i32 4194304, ptr @.str.167 }, %struct.trace_print_flags { i32 4096, ptr @.str.168 }, %struct.trace_print_flags { i32 3072, ptr @.str.169 }, %struct.trace_print_flags { i32 1024, ptr @.str.170 }, %struct.trace_print_flags { i32 2048, ptr @.str.171 }, %struct.trace_print_flags { i32 8388608, ptr @.str.172 }, %struct.trace_print_flags { i32 16777216, ptr @.str.173 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.191 = private unnamed_addr constant [60 x i8] c"page=%p pfn=0x%lx order=%u migratetype=%d percpu_refill=%d\0A\00", align 1
@.str.192 = private unnamed_addr constant [43 x i8] c"page=%p pfn=0x%lx order=%d migratetype=%d\0A\00", align 1
@.str.193 = private unnamed_addr constant [12 x i8] c"alloc_order\00", align 1
@.str.194 = private unnamed_addr constant [15 x i8] c"fallback_order\00", align 1
@.str.195 = private unnamed_addr constant [18 x i8] c"alloc_migratetype\00", align 1
@.str.196 = private unnamed_addr constant [21 x i8] c"fallback_migratetype\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"change_ownership\00", align 1
@.str.198 = private unnamed_addr constant [151 x i8] c"page=%p pfn=0x%lx alloc_order=%d fallback_order=%d pageblock_order=%d alloc_migratetype=%d fallback_migratetype=%d fragmenting=%d change_ownership=%d\0A\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"mm_id\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"curr\00", align 1
@.str.201 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.204 = private unnamed_addr constant [36 x i8] c"mm_id=%u curr=%d type=%s size=%ldB\0A\00", align 1
@trace_raw_output_rss_stat.symbols = internal constant [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.21 }, %struct.trace_print_flags { i32 1, ptr @.str.22 }, %struct.trace_print_flags { i32 2, ptr @.str.23 }, %struct.trace_print_flags { i32 3, ptr @.str.24 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.205 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.206 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@slab_caches_to_rcu_destroy = internal global %struct.list_head { ptr @slab_caches_to_rcu_destroy, ptr @slab_caches_to_rcu_destroy }, align 4
@slab_caches_to_rcu_destroy_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @slab_caches_to_rcu_destroy_work, i64 4), ptr getelementptr (i8, ptr @slab_caches_to_rcu_destroy_work, i64 4) }, ptr @slab_caches_to_rcu_destroy_workfn }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.208 = private unnamed_addr constant [9 x i8] c"slabinfo\00", align 1
@slabinfo_proc_ops = internal constant %struct.proc_ops { i32 1, ptr @slabinfo_open, ptr @seq_read, ptr null, ptr @slabinfo_write, ptr @seq_lseek, ptr @seq_release, ptr null, ptr null, ptr null, ptr null }, align 4
@slabinfo_op = internal constant %struct.seq_operations { ptr @slab_start, ptr @slab_stop, ptr @slab_next, ptr @slab_show }, align 4
@.str.209 = private unnamed_addr constant [25 x i8] c"slabinfo - version: 2.1\0A\00", align 1
@.str.210 = private unnamed_addr constant [81 x i8] c"# name            <active_objs> <num_objs> <objsize> <objperslab> <pagesperslab>\00", align 1
@.str.211 = private unnamed_addr constant [48 x i8] c" : tunables <limit> <batchcount> <sharedfactor>\00", align 1
@.str.212 = private unnamed_addr constant [53 x i8] c" : slabdata <active_slabs> <num_slabs> <sharedavail>\00", align 1
@.str.213 = private unnamed_addr constant [28 x i8] c"%-17s %6lu %6lu %6u %4u %4d\00", align 1
@.str.214 = private unnamed_addr constant [24 x i8] c" : tunables %4u %4u %4u\00", align 1
@.str.215 = private unnamed_addr constant [27 x i8] c" : slabdata %6lu %6lu %6lu\00", align 1
@llvm.compiler.used = appending global [149 x ptr] [ptr @TRACE_SYSTEM_COMPACT_COMPLETE, ptr @TRACE_SYSTEM_COMPACT_CONTENDED, ptr @TRACE_SYSTEM_COMPACT_CONTINUE, ptr @TRACE_SYSTEM_COMPACT_DEFERRED, ptr @TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, ptr @TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, ptr @TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, ptr @TRACE_SYSTEM_COMPACT_PRIO_ASYNC, ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, ptr @TRACE_SYSTEM_COMPACT_SKIPPED, ptr @TRACE_SYSTEM_COMPACT_SUCCESS, ptr @TRACE_SYSTEM_LRU_ACTIVE_ANON, ptr @TRACE_SYSTEM_LRU_ACTIVE_FILE, ptr @TRACE_SYSTEM_LRU_INACTIVE_ANON, ptr @TRACE_SYSTEM_LRU_INACTIVE_FILE, ptr @TRACE_SYSTEM_LRU_UNEVICTABLE, ptr @TRACE_SYSTEM_MM_ANONPAGES, ptr @TRACE_SYSTEM_MM_FILEPAGES, ptr @TRACE_SYSTEM_MM_SHMEMPAGES, ptr @TRACE_SYSTEM_MM_SWAPENTS, ptr @TRACE_SYSTEM_ZONE_DMA, ptr @TRACE_SYSTEM_ZONE_HIGHMEM, ptr @TRACE_SYSTEM_ZONE_MOVABLE, ptr @TRACE_SYSTEM_ZONE_NORMAL, ptr @__TRACE_SYSTEM_COMPACT_COMPLETE, ptr @__TRACE_SYSTEM_COMPACT_CONTENDED, ptr @__TRACE_SYSTEM_COMPACT_CONTINUE, ptr @__TRACE_SYSTEM_COMPACT_DEFERRED, ptr @__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, ptr @__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, ptr @__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, ptr @__TRACE_SYSTEM_COMPACT_PRIO_ASYNC, ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, ptr @__TRACE_SYSTEM_COMPACT_SKIPPED, ptr @__TRACE_SYSTEM_COMPACT_SUCCESS, ptr @__TRACE_SYSTEM_LRU_ACTIVE_ANON, ptr @__TRACE_SYSTEM_LRU_ACTIVE_FILE, ptr @__TRACE_SYSTEM_LRU_INACTIVE_ANON, ptr @__TRACE_SYSTEM_LRU_INACTIVE_FILE, ptr @__TRACE_SYSTEM_LRU_UNEVICTABLE, ptr @__TRACE_SYSTEM_MM_ANONPAGES, ptr @__TRACE_SYSTEM_MM_FILEPAGES, ptr @__TRACE_SYSTEM_MM_SHMEMPAGES, ptr @__TRACE_SYSTEM_MM_SWAPENTS, ptr @__TRACE_SYSTEM_ZONE_DMA, ptr @__TRACE_SYSTEM_ZONE_HIGHMEM, ptr @__TRACE_SYSTEM_ZONE_MOVABLE, ptr @__TRACE_SYSTEM_ZONE_NORMAL, ptr @__event_kfree, ptr @__event_kmalloc, ptr @__event_kmalloc_node, ptr @__event_kmem_cache_alloc, ptr @__event_kmem_cache_alloc_node, ptr @__event_kmem_cache_free, ptr @__event_mm_page_alloc, ptr @__event_mm_page_alloc_extfrag, ptr @__event_mm_page_alloc_zone_locked, ptr @__event_mm_page_free, ptr @__event_mm_page_free_batched, ptr @__event_mm_page_pcpu_drain, ptr @__event_rss_stat, ptr @__initcall__kmod_slab_common__330_1160_slab_proc_init6, ptr @__ksymtab___SCK__tp_func_kfree, ptr @__ksymtab___SCK__tp_func_kmalloc, ptr @__ksymtab___SCK__tp_func_kmalloc_node, ptr @__ksymtab___SCK__tp_func_kmem_cache_alloc, ptr @__ksymtab___SCK__tp_func_kmem_cache_alloc_node, ptr @__ksymtab___SCK__tp_func_kmem_cache_free, ptr @__ksymtab___traceiter_kfree, ptr @__ksymtab___traceiter_kmalloc, ptr @__ksymtab___traceiter_kmalloc_node, ptr @__ksymtab___traceiter_kmem_cache_alloc, ptr @__ksymtab___traceiter_kmem_cache_alloc_node, ptr @__ksymtab___traceiter_kmem_cache_free, ptr @__ksymtab___tracepoint_kfree, ptr @__ksymtab___tracepoint_kmalloc, ptr @__ksymtab___tracepoint_kmalloc_node, ptr @__ksymtab___tracepoint_kmem_cache_alloc, ptr @__ksymtab___tracepoint_kmem_cache_alloc_node, ptr @__ksymtab___tracepoint_kmem_cache_free, ptr @__ksymtab_kfree_sensitive, ptr @__ksymtab_kmalloc_caches, ptr @__ksymtab_kmalloc_order, ptr @__ksymtab_kmalloc_order_trace, ptr @__ksymtab_kmem_cache_create, ptr @__ksymtab_kmem_cache_create_usercopy, ptr @__ksymtab_kmem_cache_destroy, ptr @__ksymtab_kmem_cache_shrink, ptr @__ksymtab_kmem_cache_size, ptr @__ksymtab_kmem_dump_obj, ptr @__ksymtab_kmem_valid_obj, ptr @__ksymtab_krealloc, ptr @__ksymtab_ksize, ptr @__setup_setup_slab_merge, ptr @__setup_setup_slab_nomerge, ptr @__setup_slub_merge, ptr @__setup_slub_nomerge, ptr @__tracepoint_kfree, ptr @__tracepoint_kmalloc, ptr @__tracepoint_kmalloc_node, ptr @__tracepoint_kmem_cache_alloc, ptr @__tracepoint_kmem_cache_alloc_node, ptr @__tracepoint_kmem_cache_free, ptr @__tracepoint_mm_page_alloc, ptr @__tracepoint_mm_page_alloc_extfrag, ptr @__tracepoint_mm_page_alloc_zone_locked, ptr @__tracepoint_mm_page_free, ptr @__tracepoint_mm_page_free_batched, ptr @__tracepoint_mm_page_pcpu_drain, ptr @__tracepoint_ptr_kfree, ptr @__tracepoint_ptr_kmalloc, ptr @__tracepoint_ptr_kmalloc_node, ptr @__tracepoint_ptr_kmem_cache_alloc, ptr @__tracepoint_ptr_kmem_cache_alloc_node, ptr @__tracepoint_ptr_kmem_cache_free, ptr @__tracepoint_ptr_mm_page_alloc, ptr @__tracepoint_ptr_mm_page_alloc_extfrag, ptr @__tracepoint_ptr_mm_page_alloc_zone_locked, ptr @__tracepoint_ptr_mm_page_free, ptr @__tracepoint_ptr_mm_page_free_batched, ptr @__tracepoint_ptr_mm_page_pcpu_drain, ptr @__tracepoint_ptr_rss_stat, ptr @__tracepoint_rss_stat, ptr @event_class_kfree, ptr @event_class_kmem_alloc, ptr @event_class_kmem_alloc_node, ptr @event_class_kmem_cache_free, ptr @event_class_mm_page, ptr @event_class_mm_page_alloc, ptr @event_class_mm_page_alloc_extfrag, ptr @event_class_mm_page_free, ptr @event_class_mm_page_free_batched, ptr @event_class_mm_page_pcpu_drain, ptr @event_class_rss_stat, ptr @event_kfree, ptr @event_kmalloc, ptr @event_kmalloc_node, ptr @event_kmem_cache_alloc, ptr @event_kmem_cache_alloc_node, ptr @event_kmem_cache_free, ptr @event_mm_page_alloc, ptr @event_mm_page_alloc_extfrag, ptr @event_mm_page_alloc_zone_locked, ptr @event_mm_page_free, ptr @event_mm_page_free_batched, ptr @event_mm_page_pcpu_drain, ptr @event_rss_stat], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kmalloc(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kmalloc, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #20
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kmem_cache_alloc(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kmem_cache_alloc, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #20
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kmalloc_node(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kmalloc_node, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #20
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kmem_cache_alloc_node(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kmem_cache_alloc_node, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #20
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kfree(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, ptr noundef %2) #20
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kmem_cache_free(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kmem_cache_free, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, ptr noundef %3) #20
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_page_free(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_free, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #20
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_page_free_batched(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_free_batched, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #20
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_page_alloc(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_alloc, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #20
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_page_alloc_zone_locked(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_alloc_zone_locked, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #20
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_page_pcpu_drain(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_pcpu_drain, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #20
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_page_alloc_extfrag(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_alloc_extfrag, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #20
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rss_stat(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rss_stat, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #20
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kmem_alloc(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %18, i32 0, i32 2
  store ptr %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %18, i32 0, i32 3
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %18, i32 0, i32 4
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %18, i32 0, i32 5
  store i32 %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #20
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_kmem_alloc(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #17, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #20
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #20
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %24, i32 0, i32 2
  store ptr %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %24, i32 0, i32 3
  store i32 %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %24, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %24, i32 0, i32 5
  store i32 %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #20
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kmem_alloc_node(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %7
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %17, label %28, label %18

18:                                               ; preds = %16, %13, %7
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 32) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %19, i32 0, i32 1
  store i32 %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %19, i32 0, i32 2
  store ptr %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %19, i32 0, i32 3
  store i32 %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %19, i32 0, i32 4
  store i32 %4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %19, i32 0, i32 5
  store i32 %5, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %19, i32 0, i32 6
  store i32 %6, ptr %27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #20
  br label %28

28:                                               ; preds = %21, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_kmem_alloc_node(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  store i32 0, ptr %9, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #17, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21, %7
  %25 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 4
  %29 = call ptr @llvm.returnaddress(i32 0) #20
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %28, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %28, i32 0, i32 11
  store i32 %33, ptr %34, align 4
  %35 = call i32 @llvm.read_register.i32(metadata !0) #20
  %36 = getelementptr [18 x i32], ptr %28, i32 0, i32 13
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [18 x i32], ptr %28, i32 0, i32 16
  store i32 19, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %25, i32 0, i32 1
  store i32 %1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %25, i32 0, i32 2
  store ptr %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %25, i32 0, i32 3
  store i32 %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %25, i32 0, i32 4
  store i32 %4, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %25, i32 0, i32 5
  store i32 %5, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %25, i32 0, i32 6
  store i32 %6, ptr %43, align 4
  %44 = load i32, ptr %9, align 4
  %45 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %25, i32 noundef 36, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %17, ptr noundef null) #20
  br label %46

46:                                               ; preds = %27, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kfree(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_kfree, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_kfree, ptr %15, i32 0, i32 2
  store ptr %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #20
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_kfree(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #17, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #20
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #20
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_kfree, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_kfree, ptr %21, i32 0, i32 2
  store ptr %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #20
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kmem_cache_free(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %14, label %30, label %15

15:                                               ; preds = %13, %10, %4
  %16 = icmp eq ptr %3, null
  %17 = select i1 %16, ptr @.str.180, ptr %3
  %18 = tail call i32 @strlen(ptr noundef %17) #20
  %19 = add i32 %18, 21
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %19) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65556
  %25 = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %20, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %20, i32 0, i32 1
  store i32 %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %20, i32 0, i32 2
  store ptr %2, ptr %27, align 4
  %28 = getelementptr i8, ptr %20, i32 20
  %29 = call ptr @strcpy(ptr noundef %28, ptr noundef %17)
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #20
  br label %30

30:                                               ; preds = %22, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_kmem_cache_free(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = icmp eq ptr %3, null
  %8 = select i1 %7, ptr @.str.180, ptr %3
  %9 = tail call i32 @strlen(ptr noundef %8) #20
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65556
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #17, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %23, %4
  %27 = add i32 %9, 32
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #20
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #20
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %30, i32 0, i32 3
  store i32 %11, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %30, i32 0, i32 1
  store i32 %1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %30, i32 0, i32 2
  store ptr %2, ptr %45, align 4
  %46 = getelementptr i8, ptr %30, i32 20
  %47 = call ptr @strcpy(ptr noundef %46, ptr noundef %8)
  %48 = load i32, ptr %6, align 4
  %49 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %19, ptr noundef null) #20
  br label %50

50:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_page_free(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %13, label %27, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %1 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %19, %20
  %22 = ashr exact i32 %21, 5
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %24 = add i32 %22, %23
  %25 = getelementptr inbounds %struct.trace_event_raw_mm_page_free, ptr %15, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_mm_page_free, ptr %15, i32 0, i32 2
  store i32 %2, ptr %26, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #20
  br label %27

27:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_page_free(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #17, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #20
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #20
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = load ptr, ptr @mem_map, align 4
  %35 = ptrtoint ptr %1 to i32
  %36 = ptrtoint ptr %34 to i32
  %37 = sub i32 %35, %36
  %38 = ashr exact i32 %37, 5
  %39 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %40 = add i32 %38, %39
  %41 = getelementptr inbounds %struct.trace_event_raw_mm_page_free, ptr %21, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_mm_page_free, ptr %21, i32 0, i32 2
  store i32 %2, ptr %42, align 4
  %43 = load i32, ptr %5, align 4
  %44 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %43, ptr noundef %0, i64 noundef 1, ptr noundef %44, ptr noundef %13, ptr noundef null) #20
  br label %45

45:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_page_free_batched(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %12, label %25, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %1 to i32
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %18, %19
  %21 = ashr exact i32 %20, 5
  %22 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %23 = add i32 %21, %22
  %24 = getelementptr inbounds %struct.trace_event_raw_mm_page_free_batched, ptr %14, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #20
  br label %25

25:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_page_free_batched(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #17, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #20
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #20
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %1 to i32
  %35 = ptrtoint ptr %33 to i32
  %36 = sub i32 %34, %35
  %37 = ashr exact i32 %36, 5
  %38 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %39 = add i32 %37, %38
  %40 = getelementptr inbounds %struct.trace_event_raw_mm_page_free_batched, ptr %20, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %4, align 4
  %42 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %41, ptr noundef %0, i64 noundef 1, ptr noundef %42, ptr noundef %12, ptr noundef null) #20
  br label %43

43:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_page_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %5
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %15, label %33, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %16
  %20 = icmp eq ptr %1, null
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %1 to i32
  %23 = ptrtoint ptr %21 to i32
  %24 = sub i32 %22, %23
  %25 = ashr exact i32 %24, 5
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %27 = add i32 %25, %26
  %28 = select i1 %20, i32 -1, i32 %27
  %29 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %17, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %17, i32 0, i32 2
  store i32 %2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %17, i32 0, i32 3
  store i32 %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %17, i32 0, i32 4
  store i32 %4, ptr %32, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #20
  br label %33

33:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_page_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #17, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %51, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #20
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #20
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = icmp eq ptr %1, null
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %1 to i32
  %39 = ptrtoint ptr %37 to i32
  %40 = sub i32 %38, %39
  %41 = ashr exact i32 %40, 5
  %42 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %43 = add i32 %41, %42
  %44 = select i1 %36, i32 -1, i32 %43
  %45 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %23, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %23, i32 0, i32 2
  store i32 %2, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %23, i32 0, i32 3
  store i32 %3, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %23, i32 0, i32 4
  store i32 %4, ptr %48, align 4
  %49 = load i32, ptr %7, align 4
  %50 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %49, ptr noundef %0, i64 noundef 1, ptr noundef %50, ptr noundef %15, ptr noundef null) #20
  br label %51

51:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %14, label %31, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = icmp eq ptr %1, null
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %1 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %21, %22
  %24 = ashr exact i32 %23, 5
  %25 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %26 = add i32 %24, %25
  %27 = select i1 %19, i32 -1, i32 %26
  %28 = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %16, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %16, i32 0, i32 2
  store i32 %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %16, i32 0, i32 3
  store i32 %3, ptr %30, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #20
  br label %31

31:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #17, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #20
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #20
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = icmp eq ptr %1, null
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %1 to i32
  %38 = ptrtoint ptr %36 to i32
  %39 = sub i32 %37, %38
  %40 = ashr exact i32 %39, 5
  %41 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %42 = add i32 %40, %41
  %43 = select i1 %35, i32 -1, i32 %42
  %44 = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %22, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %22, i32 0, i32 2
  store i32 %2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %22, i32 0, i32 3
  store i32 %3, ptr %46, align 4
  %47 = load i32, ptr %6, align 4
  %48 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %47, ptr noundef %0, i64 noundef 1, ptr noundef %48, ptr noundef %14, ptr noundef null) #20
  br label %49

49:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_page_pcpu_drain(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %14, label %31, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = icmp eq ptr %1, null
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %1 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %21, %22
  %24 = ashr exact i32 %23, 5
  %25 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %26 = add i32 %24, %25
  %27 = select i1 %19, i32 -1, i32 %26
  %28 = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %16, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %16, i32 0, i32 2
  store i32 %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %16, i32 0, i32 3
  store i32 %3, ptr %30, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #20
  br label %31

31:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_page_pcpu_drain(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #17, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #20
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #20
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = icmp eq ptr %1, null
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %1 to i32
  %38 = ptrtoint ptr %36 to i32
  %39 = sub i32 %37, %38
  %40 = ashr exact i32 %39, 5
  %41 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %42 = add i32 %40, %41
  %43 = select i1 %35, i32 -1, i32 %42
  %44 = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %22, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %22, i32 0, i32 2
  store i32 %2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %22, i32 0, i32 3
  store i32 %3, ptr %46, align 4
  %47 = load i32, ptr %6, align 4
  %48 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %47, ptr noundef %0, i64 noundef 1, ptr noundef %48, ptr noundef %14, ptr noundef null) #20
  br label %49

49:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_page_alloc_extfrag(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %16, label %37, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 32) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %1 to i32
  %23 = ptrtoint ptr %21 to i32
  %24 = sub i32 %22, %23
  %25 = ashr exact i32 %24, 5
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %27 = add i32 %25, %26
  %28 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %18, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %18, i32 0, i32 2
  store i32 %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %18, i32 0, i32 3
  store i32 %3, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %18, i32 0, i32 4
  store i32 %4, ptr %31, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %18, i32 0, i32 5
  store i32 %5, ptr %32, align 4
  %33 = call i32 @get_pfnblock_flags_mask(ptr noundef %1, i32 noundef %27, i32 noundef 7) #20
  %34 = icmp eq i32 %33, %4
  %35 = zext i1 %34 to i32
  %36 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %18, i32 0, i32 6
  store i32 %35, ptr %36, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #20
  br label %37

37:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_page_alloc_extfrag(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #17, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %55, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %55, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #20
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #20
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %1 to i32
  %39 = ptrtoint ptr %37 to i32
  %40 = sub i32 %38, %39
  %41 = ashr exact i32 %40, 5
  %42 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %43 = add i32 %41, %42
  %44 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %24, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %24, i32 0, i32 2
  store i32 %2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %24, i32 0, i32 3
  store i32 %3, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %24, i32 0, i32 4
  store i32 %4, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %24, i32 0, i32 5
  store i32 %5, ptr %48, align 4
  %49 = call i32 @get_pfnblock_flags_mask(ptr noundef %1, i32 noundef %43, i32 noundef 7) #20
  %50 = icmp eq i32 %49, %4
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %24, i32 0, i32 6
  store i32 %51, ptr %52, align 4
  %53 = load i32, ptr %8, align 4
  %54 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 36, i32 noundef %53, ptr noundef %0, i64 noundef 1, ptr noundef %54, ptr noundef %16, ptr noundef null) #20
  br label %55

55:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rss_stat(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %4
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #20
  br i1 %15, label %34, label %16

16:                                               ; preds = %14, %11, %4
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !9
  %20 = call i32 @ptr_to_hashval(ptr noundef %1, ptr noundef nonnull %5) #20
  %21 = icmp eq i32 %20, 0
  %22 = load i32, ptr %5, align 4
  %23 = select i1 %21, i32 %22, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  %24 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %17, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = tail call ptr @llvm.thread.pointer() #20
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 37
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %1
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %17, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %17, i32 0, i32 3
  store i32 %2, ptr %31, align 4
  %32 = shl i32 %3, 12
  %33 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %17, i32 0, i32 4
  store i32 %32, ptr %33, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #20
  br label %34

34:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rss_stat(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #17, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %52, label %22

22:                                               ; preds = %19, %4
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #20
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #20
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #20
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #20
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 0, ptr %5, align 4, !annotation !9
  %36 = call i32 @ptr_to_hashval(ptr noundef %1, ptr noundef nonnull %5) #20
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr %5, align 4
  %39 = select i1 %37, i32 %38, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  %40 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %23, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = tail call ptr @llvm.thread.pointer() #20
  %42 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 37
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %1
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %23, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %23, i32 0, i32 3
  store i32 %2, ptr %47, align 4
  %48 = shl i32 %3, 12
  %49 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %23, i32 0, i32 4
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %7, align 4
  %51 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %50, ptr noundef %0, i64 noundef 1, ptr noundef %51, ptr noundef %15, ptr noundef null) #20
  br label %52

52:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @setup_slab_nomerge(ptr nocapture noundef readnone %0) #3 section ".init.text" {
  store i1 true, ptr @slab_nomerge, align 1
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @setup_slab_merge(ptr nocapture noundef readnone %0) #3 section ".init.text" {
  store i1 false, ptr @slab_nomerge, align 1
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @kmem_cache_size(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__kmem_cache_free_bulk(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  br label %7

7:                                                ; preds = %13, %5
  %8 = phi i32 [ 0, %5 ], [ %14, %13 ]
  %9 = getelementptr ptr, ptr %2, i32 %8
  %10 = load ptr, ptr %9, align 4
  br i1 %6, label %12, label %11

11:                                               ; preds = %7
  tail call void @kmem_cache_free(ptr noundef nonnull %0, ptr noundef %10) #20
  br label %13

12:                                               ; preds = %7
  tail call void @kfree(ptr noundef %10) #20
  br label %13

13:                                               ; preds = %12, %11
  %14 = add nuw i32 %8, 1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %7

16:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kmem_cache_alloc_bulk(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %24, %4
  %7 = phi i32 [ %25, %24 ], [ 0, %4 ]
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %1) #20
  %9 = getelementptr ptr, ptr %3, i32 %7
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %11
  %14 = icmp eq ptr %0, null
  br label %15

15:                                               ; preds = %21, %13
  %16 = phi i32 [ 0, %13 ], [ %22, %21 ]
  %17 = getelementptr ptr, ptr %3, i32 %16
  %18 = load ptr, ptr %17, align 4
  br i1 %14, label %20, label %19

19:                                               ; preds = %15
  tail call void @kmem_cache_free(ptr noundef nonnull %0, ptr noundef %18) #20
  br label %21

20:                                               ; preds = %15
  tail call void @kfree(ptr noundef %18) #20
  br label %21

21:                                               ; preds = %20, %19
  %22 = add nuw i32 %16, 1
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %27, label %15

24:                                               ; preds = %6
  %25 = add nuw i32 %7, 1
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %27, label %6

27:                                               ; preds = %24, %21, %11, %4
  %28 = phi i32 [ 0, %11 ], [ 0, %4 ], [ 0, %21 ], [ %2, %24 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @slab_unmergeable(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i1, ptr @slab_nomerge, align 1
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 11078656
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 22
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 13
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 31
  br label %20

20:                                               ; preds = %16, %12, %8, %3, %1
  %21 = phi i32 [ 1, %3 ], [ 1, %1 ], [ 1, %8 ], [ 1, %12 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_mergeable(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef readnone %4) local_unnamed_addr #0 {
  %6 = load i1, ptr @slab_nomerge, align 1
  %7 = icmp ne ptr %4, null
  %8 = or i1 %7, %6
  br i1 %8, label %76, label %9

9:                                                ; preds = %5
  %10 = add i32 %0, 3
  %11 = and i32 %10, -4
  %12 = and i32 %2, 8192
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %14, %9
  %15 = phi i32 [ %16, %14 ], [ 64, %9 ]
  %16 = lshr i32 %15, 1
  %17 = icmp ult i32 %16, %11
  br i1 %17, label %18, label %14

18:                                               ; preds = %14
  %19 = tail call i32 @llvm.umax.i32(i32 %15, i32 %1) #20
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi i32 [ %19, %18 ], [ %1, %9 ]
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 8) #20
  %23 = add i32 %22, 3
  %24 = and i32 %23, -4
  %25 = add i32 %11, -1
  %26 = add i32 %25, %24
  %27 = sub i32 0, %24
  %28 = and i32 %26, %27
  %29 = tail call i32 @kmem_cache_flags(i32 noundef %28, i32 noundef %2, ptr noundef %3) #20
  %30 = and i32 %29, 11078656
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %20
  %33 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @slab_caches, i32 0, i32 1), align 4
  %34 = icmp eq ptr %33, @slab_caches
  br i1 %34, label %76, label %35

35:                                               ; preds = %32
  %36 = load i1, ptr @slab_nomerge, align 1
  br label %37

37:                                               ; preds = %70, %35
  %38 = phi ptr [ %33, %35 ], [ %72, %70 ]
  br i1 %36, label %70, label %39

39:                                               ; preds = %37
  %40 = getelementptr i8, ptr %38, i32 -76
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 11078656
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %38, i32 -20
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %38, i32 48
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %38, i32 -24
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %38, i32 -68
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %58, %28
  br i1 %59, label %70, label %60

60:                                               ; preds = %56
  %61 = xor i32 %41, %29
  %62 = and i32 %61, 180224
  %63 = icmp ne i32 %62, 0
  %64 = and i32 %58, %27
  %65 = icmp ne i32 %64, %58
  %66 = select i1 %63, i1 true, i1 %65
  %67 = sub i32 %58, %28
  %68 = icmp ugt i32 %67, 3
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %60, %56, %52, %48, %44, %39, %37
  %71 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, @slab_caches
  br i1 %73, label %76, label %37

74:                                               ; preds = %60
  %75 = getelementptr i8, ptr %38, i32 -80
  br label %76

76:                                               ; preds = %74, %70, %32, %20, %5
  %77 = phi ptr [ null, %5 ], [ null, %20 ], [ %75, %74 ], [ null, %32 ], [ null, %70 ]
  ret ptr %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmem_cache_flags(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kmem_cache_create_usercopy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = and i32 %3, 2166016
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr @static_key_initialized, align 1, !range !13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14, !prof !11

13:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.205, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.206, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @slub_debug_enabled) #20
  br label %14

14:                                               ; preds = %13, %10
  %15 = load volatile i32, ptr @slub_debug_enabled, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load volatile i32, ptr @slub_debug_enabled, align 4
  %19 = icmp ne i32 %18, 1
  %20 = load i1, ptr @static_key_enable.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %25, !prof !11

23:                                               ; preds = %17
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.205, i32 noundef 321, i32 noundef 9, ptr noundef null) #20
  br label %25

24:                                               ; preds = %14
  store volatile i32 1, ptr @slub_debug_enabled, align 4
  br label %25

25:                                               ; preds = %24, %23, %17, %7
  tail call void @mutex_lock(ptr noundef nonnull @slab_mutex) #20
  %26 = and i32 %3, -12578049
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %100

28:                                               ; preds = %25
  %29 = and i32 %3, 11529472
  %30 = icmp eq i32 %5, 0
  %31 = icmp ne i32 %4, 0
  %32 = and i1 %31, %30
  br i1 %32, label %39, label %33, !prof !11

33:                                               ; preds = %28
  %34 = icmp ult i32 %1, %5
  %35 = sub i32 %1, %5
  %36 = icmp ult i32 %35, %4
  %37 = or i1 %34, %36
  br i1 %37, label %39, label %38, !prof !11

38:                                               ; preds = %33
  br i1 %30, label %41, label %45

39:                                               ; preds = %33, %28
  %40 = phi i32 [ 344, %28 ], [ 345, %33 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef %40, i32 noundef 9, ptr noundef null) #20
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i32 [ %4, %38 ], [ 0, %39 ]
  %43 = tail call ptr @__kmem_cache_alias(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %29, ptr noundef %6) #20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %95

45:                                               ; preds = %41, %38
  %46 = phi i32 [ 0, %41 ], [ %5, %38 ]
  %47 = phi i32 [ %42, %41 ], [ %4, %38 ]
  %48 = tail call ptr @kstrdup_const(ptr noundef %0, i32 noundef 3264) #20
  %49 = icmp eq ptr %48, null
  br i1 %49, label %100, label %50

50:                                               ; preds = %45
  %51 = and i32 %3, 8192
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %53, %50
  %54 = phi i32 [ %55, %53 ], [ 64, %50 ]
  %55 = lshr i32 %54, 1
  %56 = icmp ult i32 %55, %1
  br i1 %56, label %57, label %53

57:                                               ; preds = %53
  %58 = tail call i32 @llvm.umax.i32(i32 %54, i32 %2) #20
  br label %59

59:                                               ; preds = %57, %50
  %60 = phi i32 [ %58, %57 ], [ %2, %50 ]
  %61 = tail call i32 @llvm.umax.i32(i32 %60, i32 8) #20
  %62 = add i32 %61, 3
  %63 = and i32 %62, -4
  %64 = add i32 %47, %46
  %65 = icmp ugt i32 %64, %1
  br i1 %65, label %66, label %67, !prof !11

66:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 242, i32 noundef 9, ptr noundef null) #20
  br label %67

67:                                               ; preds = %66, %59
  %68 = load ptr, ptr @kmem_cache, align 4
  %69 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %68, i32 noundef 3520) #20
  %70 = icmp eq ptr %69, null
  br i1 %70, label %97, label %71

71:                                               ; preds = %67
  %72 = select i1 %65, i32 0, i32 %47
  %73 = select i1 %65, i32 0, i32 %46
  %74 = getelementptr inbounds %struct.kmem_cache, ptr %69, i32 0, i32 18
  store ptr %48, ptr %74, align 4
  %75 = getelementptr inbounds %struct.kmem_cache, ptr %69, i32 0, i32 4
  store i32 %1, ptr %75, align 8
  %76 = getelementptr inbounds %struct.kmem_cache, ptr %69, i32 0, i32 3
  store i32 %1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.kmem_cache, ptr %69, i32 0, i32 16
  store i32 %63, ptr %77, align 4
  %78 = getelementptr inbounds %struct.kmem_cache, ptr %69, i32 0, i32 14
  store ptr %6, ptr %78, align 4
  %79 = getelementptr inbounds %struct.kmem_cache, ptr %69, i32 0, i32 21
  store i32 %72, ptr %79, align 4
  %80 = getelementptr inbounds %struct.kmem_cache, ptr %69, i32 0, i32 22
  store i32 %73, ptr %80, align 8
  %81 = tail call i32 @__kmem_cache_create(ptr noundef nonnull %69, i32 noundef %29) #20
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.kmem_cache, ptr %69, i32 0, i32 13
  store i32 1, ptr %84, align 8
  %85 = getelementptr inbounds %struct.kmem_cache, ptr %69, i32 0, i32 19
  %86 = load ptr, ptr @slab_caches, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  store ptr %85, ptr %87, align 4
  store ptr %86, ptr %85, align 8
  %88 = getelementptr inbounds %struct.kmem_cache, ptr %69, i32 0, i32 19, i32 1
  store ptr @slab_caches, ptr %88, align 4
  store volatile ptr %85, ptr @slab_caches, align 4
  br label %92

89:                                               ; preds = %71
  %90 = load ptr, ptr @kmem_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %90, ptr noundef nonnull %69) #20
  %91 = inttoptr i32 %81 to ptr
  br label %92

92:                                               ; preds = %89, %83
  %93 = phi ptr [ %69, %83 ], [ %91, %89 ]
  %94 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %97, label %95

95:                                               ; preds = %92, %41
  %96 = phi ptr [ %93, %92 ], [ %43, %41 ]
  tail call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #20
  br label %108

97:                                               ; preds = %92, %67
  %98 = phi ptr [ %93, %92 ], [ inttoptr (i32 -12 to ptr), %67 ]
  %99 = ptrtoint ptr %98 to i32
  tail call void @kfree_const(ptr noundef nonnull %48) #20
  br label %100

100:                                              ; preds = %97, %45, %25
  %101 = phi i32 [ %29, %97 ], [ %29, %45 ], [ %3, %25 ]
  %102 = phi i32 [ %99, %97 ], [ -12, %45 ], [ -22, %25 ]
  tail call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #20
  %103 = and i32 %101, 262144
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.kmem_cache_create_usercopy, ptr noundef %0, i32 noundef %102) #21
  unreachable

106:                                              ; preds = %100
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.kmem_cache_create_usercopy, ptr noundef %0, i32 noundef %102) #22
  tail call void @dump_stack() #22
  br label %108

108:                                              ; preds = %106, %95
  %109 = phi ptr [ null, %106 ], [ %96, %95 ]
  ret ptr %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmem_cache_alias(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kmem_cache_create(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = tail call ptr @kmem_cache_create_usercopy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef %4)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @slab_kmem_cache_release(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @__kmem_cache_release(ptr noundef %0) #20
  %2 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree_const(ptr noundef %3) #20
  %4 = load ptr, ptr @kmem_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef %0) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kmem_cache_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kmem_cache_destroy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3, !prof !11

3:                                                ; preds = %1
  tail call void @cpus_read_lock() #20
  tail call void @mutex_lock(ptr noundef nonnull @slab_mutex) #20
  %4 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = tail call i32 @__kmem_cache_shutdown(ptr noundef nonnull %0) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 19
  %13 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 19, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  %17 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 524288
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  tail call void @sysfs_slab_unlink(ptr noundef nonnull %0) #20
  %22 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @slab_caches_to_rcu_destroy, i32 0, i32 1), align 4
  store ptr %12, ptr getelementptr inbounds (%struct.list_head, ptr @slab_caches_to_rcu_destroy, i32 0, i32 1), align 4
  store ptr @slab_caches_to_rcu_destroy, ptr %12, align 4
  store ptr %22, ptr %13, align 4
  store volatile ptr %12, ptr %22, align 4
  %23 = load ptr, ptr @system_wq, align 4
  %24 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %23, ptr noundef nonnull @slab_caches_to_rcu_destroy_work) #20
  br label %30

25:                                               ; preds = %11
  tail call void @debugfs_slab_release(ptr noundef nonnull %0) #20
  tail call void @sysfs_slab_unlink(ptr noundef nonnull %0) #20
  tail call void @sysfs_slab_release(ptr noundef nonnull %0) #20
  br label %30

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 504, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.kmem_cache_destroy, ptr noundef %28, ptr noundef %29) #20
  br label %30

30:                                               ; preds = %26, %25, %21, %3
  tail call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #20
  tail call void @cpus_read_unlock() #20
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kmem_cache_shrink(ptr noundef %0) #0 {
  %2 = tail call i32 @__kmem_cache_shrink(ptr noundef %0) #20
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kmem_cache_shrink(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @slab_is_available() local_unnamed_addr #5 {
  %1 = load i32, ptr @slab_state, align 4
  %2 = icmp ugt i32 %1, 2
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kmem_valid_obj(ptr noundef %0) #0 {
  %2 = icmp uge ptr %0, inttoptr (i32 4096 to ptr)
  %3 = icmp ugt ptr %0, inttoptr (i32 -1073741825 to ptr)
  %4 = and i1 %2, %3
  %5 = load ptr, ptr @high_memory, align 4
  %6 = icmp ugt ptr %5, %0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  %10 = add i32 %9, 1073741824
  %11 = lshr i32 %10, 12
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %13 = add i32 %12, %11
  %14 = tail call i32 @pfn_valid(i32 noundef %13) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr @mem_map, align 4
  %18 = getelementptr %struct.page, ptr %17, i32 %11, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !10

22:                                               ; preds = %16
  %23 = add i32 %19, -1
  br label %27

24:                                               ; preds = %16
  %25 = getelementptr %struct.page, ptr %17, i32 %11
  %26 = ptrtoint ptr %25 to i32
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ]
  %29 = inttoptr i32 %28 to ptr
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 512
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %27, %8, %1
  %34 = phi i1 [ %32, %27 ], [ false, %8 ], [ false, %1 ]
  ret i1 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kmem_dump_obj(ptr noundef %0) #0 {
  %2 = alloca %struct.kmem_obj_info, align 4
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(152) %2, i8 0, i32 152, i1 false)
  %3 = ptrtoint ptr %0 to i32
  %4 = icmp ugt ptr %0, inttoptr (i32 -1073741825 to ptr)
  %5 = load ptr, ptr @high_memory, align 4
  %6 = icmp ugt ptr %5, %0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = add i32 %3, 1073741824
  %10 = lshr i32 %9, 12
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %12 = add i32 %11, %10
  %13 = tail call i32 @pfn_valid(i32 noundef %12) #20
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %8, %1
  %16 = phi i1 [ false, %1 ], [ %14, %8 ]
  %17 = load i1, ptr @kmem_dump_obj.__already_done, align 1
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %20, label %19, !prof !10

19:                                               ; preds = %15
  store i1 true, ptr @kmem_dump_obj.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 581, i32 noundef 9, ptr noundef null) #20
  br label %20

20:                                               ; preds = %19, %15
  br i1 %16, label %21, label %263

21:                                               ; preds = %20
  %22 = load ptr, ptr @mem_map, align 4
  %23 = add i32 %3, 1073741824
  %24 = lshr i32 %23, 12
  %25 = getelementptr %struct.page, ptr %22, i32 %24, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29, !prof !10

29:                                               ; preds = %21
  %30 = add i32 %26, -1
  br label %34

31:                                               ; preds = %21
  %32 = getelementptr %struct.page, ptr %22, i32 %24
  %33 = ptrtoint ptr %32 to i32
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %33, %31 ]
  %36 = inttoptr i32 %35 to ptr
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr null, ptr %36
  %41 = icmp eq ptr %40, null
  %42 = load i1, ptr @kmem_dump_obj.__already_done.30, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !11

45:                                               ; preds = %34
  store i1 true, ptr @kmem_dump_obj.__already_done.30, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 584, i32 noundef 9, ptr noundef null) #20
  br label %46

46:                                               ; preds = %45, %34
  br i1 %41, label %47, label %49

47:                                               ; preds = %46
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #22
  br label %263

49:                                               ; preds = %46
  call void @kmem_obj_info(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %40) #20
  %50 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.kmem_cache, ptr %51, i32 0, i32 18
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.29, ptr noundef %55) #22
  br label %59

57:                                               ; preds = %49
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29) #22
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull %61) #22
  br label %65

65:                                               ; preds = %63, %59
  %66 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %67) #22
  br label %71

71:                                               ; preds = %69, %65
  %72 = load ptr, ptr %60, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = ptrtoint ptr %72 to i32
  %76 = load i32, ptr %66, align 4
  %77 = add i32 %76, %75
  %78 = sub i32 %3, %77
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %78) #22
  br label %80

80:                                               ; preds = %74, %71
  %81 = load ptr, ptr %50, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.kmem_cache, ptr %81, i32 0, i32 22
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %85) #22
  br label %89

89:                                               ; preds = %87, %83, %80
  %90 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull %91) #22
  br label %97

95:                                               ; preds = %89
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #22
  br label %97

97:                                               ; preds = %95, %93
  %98 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 0
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %178, label %101

101:                                              ; preds = %97
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %99) #22
  %103 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %178, label %106

106:                                              ; preds = %101
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %104) #22
  %108 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %178, label %111

111:                                              ; preds = %106
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %109) #22
  %113 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %178, label %116

116:                                              ; preds = %111
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %114) #22
  %118 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 4
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %178, label %121

121:                                              ; preds = %116
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %119) #22
  %123 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 5
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %178, label %126

126:                                              ; preds = %121
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %124) #22
  %128 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 6
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %178, label %131

131:                                              ; preds = %126
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %129) #22
  %133 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 7
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %178, label %136

136:                                              ; preds = %131
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %134) #22
  %138 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 8
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %178, label %141

141:                                              ; preds = %136
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %139) #22
  %143 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 9
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %178, label %146

146:                                              ; preds = %141
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %144) #22
  %148 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 10
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %178, label %151

151:                                              ; preds = %146
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %149) #22
  %153 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 11
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %178, label %156

156:                                              ; preds = %151
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %154) #22
  %158 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 12
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %178, label %161

161:                                              ; preds = %156
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %159) #22
  %163 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 13
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %178, label %166

166:                                              ; preds = %161
  %167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %164) #22
  %168 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 14
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %178, label %171

171:                                              ; preds = %166
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %169) #22
  %173 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 6, i32 15
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %174) #22
  br label %178

178:                                              ; preds = %176, %171, %166, %161, %156, %151, %146, %141, %136, %131, %126, %121, %116, %111, %106, %101, %97
  %179 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %263, label %182

182:                                              ; preds = %178
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #22
  %184 = load ptr, ptr %179, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %263, label %186

186:                                              ; preds = %182
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %184) #22
  %188 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %263, label %191

191:                                              ; preds = %186
  %192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %189) #22
  %193 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 2
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %263, label %196

196:                                              ; preds = %191
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %194) #22
  %198 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 3
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %263, label %201

201:                                              ; preds = %196
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %199) #22
  %203 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 4
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %263, label %206

206:                                              ; preds = %201
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %204) #22
  %208 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 5
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %263, label %211

211:                                              ; preds = %206
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %209) #22
  %213 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 6
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %263, label %216

216:                                              ; preds = %211
  %217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %214) #22
  %218 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 7
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %263, label %221

221:                                              ; preds = %216
  %222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %219) #22
  %223 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 8
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %263, label %226

226:                                              ; preds = %221
  %227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %224) #22
  %228 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 9
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %263, label %231

231:                                              ; preds = %226
  %232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %229) #22
  %233 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 10
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %263, label %236

236:                                              ; preds = %231
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %234) #22
  %238 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 11
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %263, label %241

241:                                              ; preds = %236
  %242 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %239) #22
  %243 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 12
  %244 = load ptr, ptr %243, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %263, label %246

246:                                              ; preds = %241
  %247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %244) #22
  %248 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 13
  %249 = load ptr, ptr %248, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %263, label %251

251:                                              ; preds = %246
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %249) #22
  %253 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 14
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %263, label %256

256:                                              ; preds = %251
  %257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %254) #22
  %258 = getelementptr inbounds %struct.kmem_obj_info, ptr %2, i32 0, i32 7, i32 15
  %259 = load ptr, ptr %258, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %263, label %261

261:                                              ; preds = %256
  %262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %259) #22
  br label %263

263:                                              ; preds = %261, %256, %251, %246, %241, %236, %231, %226, %221, %216, %211, %206, %201, %196, %191, %186, %182, %178, %47, %20
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #20
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_obj_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @create_boot_cache(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #10 section ".init.text" {
  %7 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  store i32 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  store i32 %2, ptr %9, align 4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @llvm.ctpop.i32(i32 %2) #20, !range !14
  %13 = icmp ult i32 %12, 2
  %14 = tail call i32 @llvm.umax.i32(i32 %2, i32 64)
  %15 = select i1 %13, i32 %14, i32 64
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i32 [ 64, %6 ], [ %15, %11 ]
  %18 = and i32 %3, 8192
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %20, %16
  %21 = phi i32 [ %22, %20 ], [ 64, %16 ]
  %22 = lshr i32 %21, 1
  %23 = icmp ult i32 %22, %2
  br i1 %23, label %24, label %20

24:                                               ; preds = %20
  %25 = tail call i32 @llvm.umax.i32(i32 %21, i32 %17) #20
  br label %26

26:                                               ; preds = %24, %16
  %27 = phi i32 [ %25, %24 ], [ %17, %16 ]
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 8) #20
  %29 = add i32 %28, 3
  %30 = and i32 %29, -4
  %31 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 16
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 21
  store i32 %4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 22
  store i32 %5, ptr %33, align 4
  %34 = tail call i32 @__kmem_cache_create(ptr noundef %0, i32 noundef %3) #20
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.42, ptr noundef %1, i32 noundef %2, i32 noundef %34) #21
  unreachable

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 13
  store i32 -1, ptr %38, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kmem_cache_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @create_kmalloc_cache(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #10 section ".init.text" {
  %6 = load ptr, ptr @kmem_cache, align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 2304) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.43, ptr noundef %0) #21
  unreachable

10:                                               ; preds = %5
  tail call void @create_boot_cache(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #23
  %11 = getelementptr inbounds %struct.kmem_cache, ptr %7, i32 0, i32 19
  %12 = load ptr, ptr @slab_caches, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store ptr %12, ptr %11, align 8
  %14 = getelementptr inbounds %struct.kmem_cache, ptr %7, i32 0, i32 19, i32 1
  store ptr @slab_caches, ptr %14, align 4
  store volatile ptr %11, ptr @slab_caches, align 4
  %15 = getelementptr inbounds %struct.kmem_cache, ptr %7, i32 0, i32 13
  store i32 1, ptr %15, align 8
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kmalloc_slab(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %0, 193
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %0, -1
  %8 = lshr i32 %7, 3
  %9 = getelementptr [24 x i8], ptr @size_index, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  br label %23

12:                                               ; preds = %2
  %13 = icmp ugt i32 %0, 8192
  %14 = load i1, ptr @kmalloc_slab.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %12
  store i1 true, ptr @kmalloc_slab.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 731, i32 noundef 9, ptr noundef null) #20
  br label %18

18:                                               ; preds = %17, %12
  br i1 %13, label %35, label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %0, -1
  %21 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 false) #20, !range !14
  %22 = sub nuw nsw i32 32, %21
  br label %23

23:                                               ; preds = %19, %6
  %24 = phi i32 [ %11, %6 ], [ %22, %19 ]
  %25 = and i32 %1, 17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !10

27:                                               ; preds = %23
  %28 = and i32 %1, 1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 1, i32 2
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ 0, %23 ], [ %30, %27 ]
  %33 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %32, i32 %24
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %31, %18, %4
  %36 = phi ptr [ %34, %31 ], [ inttoptr (i32 16 to ptr), %4 ], [ null, %18 ]
  ret ptr %36
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync)
define dso_local void @setup_kmalloc_cache_index_table() local_unnamed_addr #11 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 8, %0 ], [ %6, %1 ]
  %3 = add nsw i32 %2, -1
  %4 = lshr i32 %3, 3
  %5 = getelementptr [24 x i8], ptr @size_index, i32 0, i32 %4
  store i8 6, ptr %5, align 1
  %6 = add nuw nsw i32 %2, 8
  %7 = icmp ult i32 %2, 56
  br i1 %7, label %1, label %8

8:                                                ; preds = %1
  store i32 117901063, ptr getelementptr inbounds ([24 x i8], ptr @size_index, i32 0, i32 8), align 1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @create_kmalloc_caches(i32 noundef %0) local_unnamed_addr #10 section ".init.text" {
  br label %2

2:                                                ; preds = %20, %1
  %3 = phi i32 [ 0, %1 ], [ %21, %20 ]
  %4 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %3, i32 2
  br label %5

5:                                                ; preds = %17, %2
  %6 = phi i32 [ 6, %2 ], [ %18, %17 ]
  %7 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %3, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call fastcc void @new_kmalloc_cache(i32 noundef %6, i32 noundef %3, i32 noundef %0) #23
  br label %11

11:                                               ; preds = %10, %5
  %12 = icmp eq i32 %6, 7
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = load ptr, ptr %4, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call fastcc void @new_kmalloc_cache(i32 noundef 2, i32 noundef %3, i32 noundef %0) #23
  br label %17

17:                                               ; preds = %16, %13, %11
  %18 = add nuw nsw i32 %6, 1
  %19 = icmp eq i32 %18, 14
  br i1 %19, label %20, label %5

20:                                               ; preds = %17
  %21 = add nuw nsw i32 %3, 1
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %2

23:                                               ; preds = %20
  store i32 3, ptr @slab_state, align 4
  %24 = or i32 %0, 16384
  br label %25

25:                                               ; preds = %37, %23
  %26 = phi i32 [ 0, %23 ], [ %38, %37 ]
  %27 = getelementptr [14 x ptr], ptr @kmalloc_caches, i32 0, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = getelementptr [26 x %struct.kmalloc_info_struct], ptr @kmalloc_info, i32 0, i32 %26, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr [26 x %struct.kmalloc_info_struct], ptr @kmalloc_info, i32 0, i32 %26, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = tail call ptr @create_kmalloc_cache(ptr noundef %32, i32 noundef %34, i32 noundef %24, i32 noundef 0, i32 noundef %34) #23
  %36 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 2, i32 %26
  store ptr %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %30, %25
  %38 = add nuw nsw i32 %26, 1
  %39 = icmp eq i32 %38, 14
  br i1 %39, label %40, label %25

40:                                               ; preds = %37
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @new_kmalloc_cache(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 section ".init.text" {
  %4 = icmp eq i32 %1, 1
  %5 = or i32 %2, 131072
  %6 = select i1 %4, i32 %5, i32 %2
  %7 = getelementptr [26 x %struct.kmalloc_info_struct], ptr @kmalloc_info, i32 0, i32 %0
  %8 = getelementptr [3 x ptr], ptr %7, i32 0, i32 %1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr [26 x %struct.kmalloc_info_struct], ptr @kmalloc_info, i32 0, i32 %0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr @create_kmalloc_cache(ptr noundef %9, i32 noundef %11, i32 noundef %6, i32 noundef 0, i32 noundef %11) #23
  %13 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %1, i32 %0
  store ptr %12, ptr %13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kmalloc_fix_flags(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %4 = and i32 %0, -33554426
  store i32 %4, ptr %3, align 4
  %5 = and i32 %0, 33554425
  store i32 %5, ptr %2, align 4
  %6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef %4, ptr noundef nonnull %3, i32 noundef %5, ptr noundef nonnull %2) #22
  call void @dump_stack() #22
  %7 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @kmalloc_order(i32 %0, i32 noundef %1, i32 noundef %2) #12 {
  %4 = and i32 %1, -33554426
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

6:                                                ; preds = %3
  %7 = tail call i32 @kmalloc_fix_flags(i32 noundef %1)
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %1, %3 ]
  %10 = or i32 %9, 262144
  %11 = tail call ptr @__alloc_pages(i32 noundef %10, i32 noundef %2, i32 noundef 0, ptr noundef null) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !11

13:                                               ; preds = %8
  %14 = tail call ptr @page_address(ptr noundef nonnull %11) #20
  %15 = shl i32 4096, %2
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 6, i32 noundef %15) #20
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ %14, %13 ], [ null, %8 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @kmalloc_order_trace(i32 noundef %0, i32 noundef %1, i32 noundef %2) #12 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = and i32 %1, -33554426
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !10

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store i32 %6, ptr %5, align 4
  %9 = and i32 %1, 33554425
  store i32 %9, ptr %4, align 4
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef %6, ptr noundef nonnull %5, i32 noundef %9, ptr noundef nonnull %4) #22
  call void @dump_stack() #22
  %11 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ %1, %3 ]
  %14 = or i32 %13, 262144
  %15 = call ptr @__alloc_pages(i32 noundef %14, i32 noundef %2, i32 noundef 0, ptr noundef null) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !11

17:                                               ; preds = %12
  %18 = shl i32 4096, %2
  br label %22

19:                                               ; preds = %12
  %20 = call ptr @page_address(ptr noundef nonnull %15) #20
  %21 = shl i32 4096, %2
  call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 6, i32 noundef %21) #20
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %18, %17 ], [ %21, %19 ]
  %24 = phi ptr [ null, %17 ], [ %20, %19 ]
  %25 = call ptr @llvm.returnaddress(i32 0)
  %26 = ptrtoint ptr %25 to i32
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kmalloc, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %22
  %30 = tail call ptr @llvm.thread.pointer() #20
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %29
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !15
  %41 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kmalloc, i32 0, i32 7), align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %43, %40
  %44 = phi ptr [ %48, %43 ], [ %41, %40 ]
  %45 = load volatile ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.tracepoint_func, ptr %44, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  call void %45(ptr noundef %47, i32 noundef %26, ptr noundef %24, i32 noundef %0, i32 noundef %23, i32 noundef %1) #20
  %48 = getelementptr %struct.tracepoint_func, ptr %44, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %43

51:                                               ; preds = %43, %40
  call void asm sideeffect "", "~{memory}"() #20, !srcloc !16
  br label %52

52:                                               ; preds = %51, %29, %22
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dump_unreclaimable_slab() local_unnamed_addr #0 {
  %1 = alloca %struct.slabinfo, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %1, i8 0, i32 40, i1 false), !annotation !9
  %2 = tail call i32 @mutex_trylock(ptr noundef nonnull @slab_mutex) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #22
  br label %38

6:                                                ; preds = %0
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #22
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125) #22
  %9 = load ptr, ptr @slab_caches, align 4
  %10 = icmp eq ptr %9, @slab_caches
  br i1 %10, label %37, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.slabinfo, ptr %1, i32 0, i32 1
  br label %13

13:                                               ; preds = %34, %11
  %14 = phi ptr [ %9, %11 ], [ %35, %34 ]
  %15 = getelementptr i8, ptr %14, i32 -76
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 131072
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %14, i32 -80
  call void @get_slabinfo(ptr noundef %20, ptr noundef nonnull %1) #20
  %21 = load i32, ptr %12, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %14, i32 -4
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %1, align 4
  %27 = getelementptr i8, ptr %14, i32 -68
  %28 = load i32, ptr %27, align 4
  %29 = mul i32 %28, %26
  %30 = lshr i32 %29, 10
  %31 = mul i32 %28, %21
  %32 = lshr i32 %31, 10
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %25, i32 noundef %30, i32 noundef %32) #22
  br label %34

34:                                               ; preds = %23, %19, %13
  %35 = load ptr, ptr %14, align 4
  %36 = icmp eq ptr %35, @slab_caches
  br i1 %36, label %37, label %13

37:                                               ; preds = %34, %6
  call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #20
  br label %38

38:                                               ; preds = %37, %4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_slabinfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @slab_proc_init() #10 section ".init.text" {
  %1 = tail call ptr @proc_create(ptr noundef nonnull @.str.208, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @slabinfo_proc_ops) #20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(1) uwtable(sync)
define dso_local noalias ptr @krealloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #13 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %26, label %5, !prof !11

5:                                                ; preds = %3
  %6 = icmp ult ptr %0, inttoptr (i32 17 to ptr)
  br i1 %6, label %9, label %7, !prof !11

7:                                                ; preds = %5
  %8 = tail call i32 @__ksize(ptr noundef %0) #20
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %8, %7 ], [ 0, %5 ]
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.returnaddress(i32 0) #20
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call ptr @__kmalloc_track_caller(i32 noundef %1, i32 noundef %2, i32 noundef %14) #20
  %16 = icmp ne ptr %15, null
  %17 = icmp ne ptr %0, null
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %15, ptr nonnull align 1 %0, i32 %10, i1 false) #20
  br label %23

20:                                               ; preds = %12, %9
  %21 = phi ptr [ %15, %12 ], [ %0, %9 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20, %19
  %24 = phi ptr [ %15, %19 ], [ %21, %20 ]
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %3
  %27 = phi ptr [ inttoptr (i32 16 to ptr), %3 ], [ %24, %23 ]
  tail call void @kfree(ptr noundef %0) #20
  br label %28

28:                                               ; preds = %26, %23, %20
  %29 = phi ptr [ %0, %23 ], [ null, %20 ], [ %27, %26 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kfree_sensitive(ptr noundef %0) #0 {
  %2 = icmp ult ptr %0, inttoptr (i32 17 to ptr)
  br i1 %2, label %7, label %3, !prof !11

3:                                                ; preds = %1
  %4 = tail call i32 @__ksize(ptr noundef %0) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr align 1 %0, i8 0, i32 %4, i1 false) #20
  tail call void asm sideeffect "", "r,~{memory}"(ptr %0) #20, !srcloc !17
  br label %7

7:                                                ; preds = %6, %3, %1
  tail call void @kfree(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksize(ptr noundef %0) #0 {
  %2 = icmp ult ptr %0, inttoptr (i32 17 to ptr)
  br i1 %2, label %5, label %3, !prof !11

3:                                                ; preds = %1
  %4 = tail call i32 @__ksize(ptr noundef %0) #20
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ksize(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @should_failslab(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #14 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kmem_alloc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %7, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %7, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %7, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc, ptr %7, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.174, i32 noundef %21, ptr noundef nonnull @trace_raw_output_kmem_alloc.__flags) #20
  br label %25

25:                                               ; preds = %23, %10
  %26 = phi ptr [ %24, %23 ], [ @.str.175, %10 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.136, ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef %26) #20
  %27 = tail call i32 @trace_handle_return(ptr noundef %4) #20
  br label %28

28:                                               ; preds = %25, %3
  %29 = phi i32 [ %27, %25 ], [ %8, %3 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kmem_alloc_node(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %30

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %7, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %7, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %7, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %7, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.174, i32 noundef %21, ptr noundef nonnull @trace_raw_output_kmem_alloc_node.__flags) #20
  br label %25

25:                                               ; preds = %23, %10
  %26 = phi ptr [ %24, %23 ], [ @.str.175, %10 ]
  %27 = getelementptr inbounds %struct.trace_event_raw_kmem_alloc_node, ptr %7, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.178, ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef %26, i32 noundef %28) #20
  %29 = tail call i32 @trace_handle_return(ptr noundef %4) #20
  br label %30

30:                                               ; preds = %25, %3
  %31 = phi i32 [ %29, %25 ], [ %8, %3 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kfree(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_kfree, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_raw_kfree, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef %12, ptr noundef %14) #20
  %15 = tail call i32 @trace_handle_return(ptr noundef %9) #20
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kmem_cache_free(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_kmem_cache_free, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 65535
  %18 = getelementptr i8, ptr %5, i32 %17
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.183, ptr noundef %12, ptr noundef %14, ptr noundef %18) #20
  %19 = tail call i32 @trace_handle_return(ptr noundef %9) #20
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ %19, %8 ], [ %6, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_page_free(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr @mem_map, align 4
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_page_free, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = sub i32 %12, %13
  %15 = getelementptr %struct.page, ptr %10, i32 %14
  %16 = getelementptr inbounds %struct.trace_event_raw_mm_page_free, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.187, ptr noundef %15, i32 noundef %12, i32 noundef %17) #20
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #20
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_page_free_batched(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr @mem_map, align 4
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_page_free_batched, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = sub i32 %12, %13
  %15 = getelementptr %struct.page, ptr %10, i32 %14
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.188, ptr noundef %15, i32 noundef %12) #20
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #20
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_page_alloc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %32

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, -1
  %14 = load ptr, ptr @mem_map, align 4
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %16 = sub i32 %12, %15
  %17 = getelementptr %struct.page, ptr %14, i32 %16
  %18 = select i1 %13, ptr null, ptr %17
  %19 = select i1 %13, i32 0, i32 %12
  %20 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %7, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %7, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc, ptr %7, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %10
  %28 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.174, i32 noundef %25, ptr noundef nonnull @trace_raw_output_mm_page_alloc.__flags) #20
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ @.str.175, %10 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.190, ptr noundef %18, i32 noundef %19, i32 noundef %21, i32 noundef %23, ptr noundef %30) #20
  %31 = tail call i32 @trace_handle_return(ptr noundef %4) #20
  br label %32

32:                                               ; preds = %29, %3
  %33 = phi i32 [ %31, %29 ], [ %8, %3 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_page(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  %13 = load ptr, ptr @mem_map, align 4
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %15 = sub i32 %11, %14
  %16 = getelementptr %struct.page, ptr %13, i32 %15
  %17 = select i1 %12, ptr null, ptr %16
  %18 = select i1 %12, i32 0, i32 %11
  %19 = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %5, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_mm_page, ptr %5, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %20, 0
  %24 = zext i1 %23 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.191, ptr noundef %17, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #20
  %25 = tail call i32 @trace_handle_return(ptr noundef %9) #20
  br label %26

26:                                               ; preds = %8, %3
  %27 = phi i32 [ %25, %8 ], [ %6, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_page_pcpu_drain(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr @mem_map, align 4
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = sub i32 %12, %13
  %15 = getelementptr %struct.page, ptr %10, i32 %14
  %16 = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_mm_page_pcpu_drain, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.192, ptr noundef %15, i32 noundef %12, i32 noundef %17, i32 noundef %19) #20
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #20
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_page_alloc_extfrag(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr @mem_map, align 4
  %11 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = sub i32 %12, %13
  %15 = getelementptr %struct.page, ptr %10, i32 %14
  %16 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %5, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %5, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %19, 11
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.trace_event_raw_mm_page_alloc_extfrag, ptr %5, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.198, ptr noundef %15, i32 noundef %12, i32 noundef %17, i32 noundef %19, i32 noundef 11, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #20
  %28 = tail call i32 @trace_handle_return(ptr noundef %9) #20
  br label %29

29:                                               ; preds = %8, %3
  %30 = phi i32 [ %28, %8 ], [ %6, %3 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptr_to_hashval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rss_stat(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #20
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %16, ptr noundef nonnull @trace_raw_output_rss_stat.symbols) #20
  %18 = getelementptr inbounds %struct.trace_event_raw_rss_stat, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.204, i32 noundef %12, i32 noundef %14, ptr noundef %17, i32 noundef %19) #20
  %20 = tail call i32 @trace_handle_return(ptr noundef %10) #20
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kmem_cache_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_slab_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_slab_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_slab_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @slab_caches_to_rcu_destroy_workfn(ptr nocapture noundef readnone %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void @mutex_lock(ptr noundef nonnull @slab_mutex) #20
  %4 = load volatile ptr, ptr @slab_caches_to_rcu_destroy, align 4
  %5 = icmp eq ptr %4, @slab_caches_to_rcu_destroy
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @slab_caches_to_rcu_destroy, i32 0, i32 1), align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %2, ptr %9, align 4
  store ptr %4, ptr %2, align 8
  store ptr %7, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr @slab_caches_to_rcu_destroy, ptr @slab_caches_to_rcu_destroy, align 4
  store ptr @slab_caches_to_rcu_destroy, ptr getelementptr inbounds (%struct.list_head, ptr @slab_caches_to_rcu_destroy, i32 0, i32 1), align 4
  br label %11

11:                                               ; preds = %6, %1
  call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #20
  %12 = load volatile ptr, ptr %2, align 8
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  call void @rcu_barrier() #20
  %15 = load ptr, ptr %2, align 8
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %22, label %17

17:                                               ; preds = %17, %14
  %18 = phi ptr [ %20, %17 ], [ %15, %14 ]
  %19 = getelementptr i8, ptr %18, i32 -80
  %20 = load ptr, ptr %18, align 4
  call void @debugfs_slab_release(ptr noundef %19) #20
  call void @sysfs_slab_release(ptr noundef %19) #20
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %17

22:                                               ; preds = %17, %14, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slabinfo_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @slabinfo_op) #20
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slabinfo_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @slab_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @slab_mutex) #20
  %3 = load i64, ptr %1, align 8
  %4 = tail call ptr @seq_list_start(ptr noundef nonnull @slab_caches, i64 noundef %3) #20
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @slab_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @slab_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef nonnull @slab_caches, ptr noundef %2) #20
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slab_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.slabinfo, align 4
  %4 = load ptr, ptr @slab_caches, align 4
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.209) #20
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.210) #20
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.211) #20
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.212) #20
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #20
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr i8, ptr %1, i32 -80
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i64 40, i1 false) #20
  call void @get_slabinfo(ptr noundef %8, ptr noundef nonnull %3) #20
  %9 = getelementptr i8, ptr %1, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %3, align 4
  %12 = getelementptr inbounds %struct.slabinfo, ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %1, i32 -68
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.slabinfo, ptr %3, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.slabinfo, ptr %3, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = shl nuw i32 1, %19
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.213, ptr noundef %10, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %20) #20
  %21 = getelementptr inbounds %struct.slabinfo, ptr %3, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.slabinfo, ptr %3, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.slabinfo, ptr %3, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.214, i32 noundef %22, i32 noundef %24, i32 noundef %26) #20
  %27 = getelementptr inbounds %struct.slabinfo, ptr %3, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.slabinfo, ptr %3, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.slabinfo, ptr %3, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.215, i32 noundef %28, i32 noundef %30, i32 noundef %32) #20
  call void @slabinfo_show_stats(ptr noundef %0, ptr noundef %8) #20
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @slabinfo_show_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #18

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind null_pointer_is_valid sspstrong allocsize(1) uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind readonly }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { argmemonly nofree nounwind willreturn }
attributes #20 = { nounwind }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { cold }

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
!12 = !{i64 711834}
!13 = !{i8 0, i8 2}
!14 = !{i32 0, i32 33}
!15 = !{i64 2153375842}
!16 = !{i64 2153376066}
!17 = !{i64 2148895454}
