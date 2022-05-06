; ModuleID = '/llk/IR/mm/swap.c_pt.bc'
source_filename = "../mm/swap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___put_page:\09\09\09\09\09"
module asm "\09.asciz \09\22__put_page\22\09\09\09\09\09"
module asm "__kstrtabns___put_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_pages_list:\09\09\09\09\09"
module asm "\09.asciz \09\22put_pages_list\22\09\09\09\09\09"
module asm "__kstrtabns_put_pages_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_kernel_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22get_kernel_pages\22\09\09\09\09\09"
module asm "__kstrtabns_get_kernel_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_mark_accessed:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_mark_accessed\22\09\09\09\09\09"
module asm "__kstrtabns_folio_mark_accessed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_add_lru:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_add_lru\22\09\09\09\09\09"
module asm "__kstrtabns_folio_add_lru:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_release_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22release_pages\22\09\09\09\09\09"
module asm "__kstrtabns_release_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pagevec_release:\09\09\09\09\09"
module asm "\09.asciz \09\22__pagevec_release\22\09\09\09\09\09"
module asm "__kstrtabns___pagevec_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pagevec_lookup_range:\09\09\09\09\09"
module asm "\09.asciz \09\22pagevec_lookup_range\22\09\09\09\09\09"
module asm "__kstrtabns_pagevec_lookup_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pagevec_lookup_range_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22pagevec_lookup_range_tag\22\09\09\09\09\09"
module asm "__kstrtabns_pagevec_lookup_range_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.94 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.96, %struct.trace_event, ptr, ptr, %union.anon.97, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.96 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.97 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lru_rotate = type { %struct.local_lock_t, %struct.pagevec }
%struct.local_lock_t = type {}
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.lru_pvecs = type { %struct.local_lock_t, %struct.pagevec, %struct.pagevec, %struct.pagevec, %struct.pagevec, %struct.pagevec }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.vm_event_state = type { [71 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mm_lru_insertion = type { %struct.trace_entry, ptr, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.anon = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mm_lru_activate = type { %struct.trace_entry, ptr, i32, [0 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.69, %struct.atomic_t }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.kvec = type { ptr, i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.folio_batch = type { i8, i8, [15 x ptr] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mm_lru_insertion = internal constant [17 x i8] c"mm_lru_insertion\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_lru_insertion = dso_local global %struct.static_call_key { ptr @__traceiter_mm_lru_insertion }, align 4
@__tracepoint_mm_lru_insertion = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_lru_insertion, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_lru_insertion, ptr null, ptr @__traceiter_mm_lru_insertion, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_lru_insertion = internal constant ptr @__tracepoint_mm_lru_insertion, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_lru_activate = internal constant [16 x i8] c"mm_lru_activate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_lru_activate = dso_local global %struct.static_call_key { ptr @__traceiter_mm_lru_activate }, align 4
@__tracepoint_mm_lru_activate = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_lru_activate, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_lru_activate, ptr null, ptr @__traceiter_mm_lru_activate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_lru_activate = internal constant ptr @__tracepoint_mm_lru_activate, section "__tracepoints_ptrs", align 4
@str__pagemap__trace_system_name = internal constant [8 x i8] c"pagemap\00", align 1
@trace_event_fields_mm_lru_insertion = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.94 { %struct.anon.95 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.94 { %struct.anon.95 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.94 { %struct.anon.95 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.94 { %struct.anon.95 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_lru_insertion = internal global %struct.trace_event_class { ptr @str__pagemap__trace_system_name, ptr @trace_event_raw_event_mm_lru_insertion, ptr @perf_trace_mm_lru_insertion, ptr @trace_event_reg, ptr @trace_event_fields_mm_lru_insertion, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_lru_insertion, i64 24), ptr getelementptr (i8, ptr @event_class_mm_lru_insertion, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_lru_insertion = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_lru_insertion, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_lru_insertion = internal global [283 x i8] c"\22folio=%p pfn=0x%lx lru=%d flags=%s%s%s%s%s%s\22, REC->folio, REC->pfn, REC->lru, REC->flags & 0x0001u ? \22M\22 : \22 \22, REC->flags & 0x0002u ? \22a\22 : \22f\22, REC->flags & 0x0008u ? \22s\22 : \22 \22, REC->flags & 0x0010u ? \22b\22 : \22 \22, REC->flags & 0x0020u ? \22d\22 : \22 \22, REC->flags & 0x0040u ? \22B\22 : \22 \22\00", align 1
@event_mm_lru_insertion = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_lru_insertion, %union.anon.96 { ptr @__tracepoint_mm_lru_insertion }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_lru_insertion }, ptr @print_fmt_mm_lru_insertion, ptr null, %union.anon.97 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_lru_insertion = internal global ptr @event_mm_lru_insertion, section "_ftrace_events", align 4
@trace_event_fields_mm_lru_activate = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.94 { %struct.anon.95 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.94 { %struct.anon.95 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_lru_activate = internal global %struct.trace_event_class { ptr @str__pagemap__trace_system_name, ptr @trace_event_raw_event_mm_lru_activate, ptr @perf_trace_mm_lru_activate, ptr @trace_event_reg, ptr @trace_event_fields_mm_lru_activate, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_lru_activate, i64 24), ptr getelementptr (i8, ptr @event_class_mm_lru_activate, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_lru_activate = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_lru_activate, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_lru_activate = internal global [43 x i8] c"\22folio=%p pfn=0x%lx\22, REC->folio, REC->pfn\00", align 1
@event_mm_lru_activate = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_lru_activate, %union.anon.96 { ptr @__tracepoint_mm_lru_activate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_lru_activate }, ptr @print_fmt_mm_lru_activate, ptr null, %union.anon.97 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_lru_activate = internal global ptr @event_mm_lru_activate, section "_ftrace_events", align 4
@__kstrtab___put_page = external dso_local constant [0 x i8], align 1
@__kstrtabns___put_page = external dso_local constant [0 x i8], align 1
@__ksymtab___put_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__put_page to i32), ptr @__kstrtab___put_page, ptr @__kstrtabns___put_page }, section "___ksymtab+__put_page", align 4
@__kstrtab_put_pages_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_pages_list = external dso_local constant [0 x i8], align 1
@__ksymtab_put_pages_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_pages_list to i32), ptr @__kstrtab_put_pages_list, ptr @__kstrtabns_put_pages_list }, section "___ksymtab+put_pages_list", align 4
@.str = private unnamed_addr constant [10 x i8] c"mm/swap.c\00", align 1
@__kstrtab_get_kernel_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_kernel_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_get_kernel_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_kernel_pages to i32), ptr @__kstrtab_get_kernel_pages, ptr @__kstrtabns_get_kernel_pages }, section "___ksymtab_gpl+get_kernel_pages", align 4
@lru_rotate = internal global %struct.lru_rotate { %struct.local_lock_t undef, %struct.pagevec zeroinitializer }, section ".data..percpu", align 4
@__kstrtab_folio_mark_accessed = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_mark_accessed = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_mark_accessed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_mark_accessed to i32), ptr @__kstrtab_folio_mark_accessed, ptr @__kstrtabns_folio_mark_accessed }, section "___ksymtab+folio_mark_accessed", align 4
@lru_pvecs = internal global %struct.lru_pvecs { %struct.local_lock_t undef, %struct.pagevec zeroinitializer, %struct.pagevec zeroinitializer, %struct.pagevec zeroinitializer, %struct.pagevec zeroinitializer, %struct.pagevec zeroinitializer }, section ".data..percpu", align 4
@__kstrtab_folio_add_lru = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_add_lru = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_add_lru = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_add_lru to i32), ptr @__kstrtab_folio_add_lru, ptr @__kstrtabns_folio_add_lru }, section "___ksymtab+folio_add_lru", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__lru_add_drain_all.lru_drain_gen = internal global i32 0, align 4
@__lru_add_drain_all.has_work = internal global %struct.cpumask zeroinitializer, align 4
@__lru_add_drain_all.lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @__lru_add_drain_all.lock, i64 12), ptr getelementptr (i8, ptr @__lru_add_drain_all.lock, i64 12) } }, align 4
@mm_percpu_wq = external dso_local local_unnamed_addr global ptr, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@lru_add_drain_work = internal global %struct.work_struct zeroinitializer, section ".data..percpu", align 4
@lru_disable_count = dso_local global %struct.atomic_t zeroinitializer, align 4
@__kstrtab_release_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_release_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_release_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @release_pages to i32), ptr @__kstrtab_release_pages, ptr @__kstrtabns_release_pages }, section "___ksymtab+release_pages", align 4
@__kstrtab___pagevec_release = external dso_local constant [0 x i8], align 1
@__kstrtabns___pagevec_release = external dso_local constant [0 x i8], align 1
@__ksymtab___pagevec_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pagevec_release to i32), ptr @__kstrtab___pagevec_release, ptr @__kstrtabns___pagevec_release }, section "___ksymtab+__pagevec_release", align 4
@__kstrtab_pagevec_lookup_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_pagevec_lookup_range = external dso_local constant [0 x i8], align 1
@__ksymtab_pagevec_lookup_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pagevec_lookup_range to i32), ptr @__kstrtab_pagevec_lookup_range, ptr @__kstrtabns_pagevec_lookup_range }, section "___ksymtab+pagevec_lookup_range", align 4
@__kstrtab_pagevec_lookup_range_tag = external dso_local constant [0 x i8], align 1
@__kstrtabns_pagevec_lookup_range_tag = external dso_local constant [0 x i8], align 1
@__ksymtab_pagevec_lookup_range_tag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pagevec_lookup_range_tag to i32), ptr @__kstrtab_pagevec_lookup_range_tag, ptr @__kstrtabns_pagevec_lookup_range_tag }, section "___ksymtab+pagevec_lookup_range_tag", align 4
@page_cluster = dso_local local_unnamed_addr global i32 0, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"struct folio *\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"folio\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pfn\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"enum lru_list\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"lru\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"folio=%p pfn=0x%lx lru=%d flags=%s%s%s%s%s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"folio=%p pfn=0x%lx\0A\00", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@compound_page_dtors = external dso_local local_unnamed_addr constant [2 x ptr], align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@llvm.compiler.used = appending global [19 x ptr] [ptr @__event_mm_lru_activate, ptr @__event_mm_lru_insertion, ptr @__ksymtab___pagevec_release, ptr @__ksymtab___put_page, ptr @__ksymtab_folio_add_lru, ptr @__ksymtab_folio_mark_accessed, ptr @__ksymtab_get_kernel_pages, ptr @__ksymtab_pagevec_lookup_range, ptr @__ksymtab_pagevec_lookup_range_tag, ptr @__ksymtab_put_pages_list, ptr @__ksymtab_release_pages, ptr @__tracepoint_mm_lru_activate, ptr @__tracepoint_mm_lru_insertion, ptr @__tracepoint_ptr_mm_lru_activate, ptr @__tracepoint_ptr_mm_lru_insertion, ptr @event_class_mm_lru_activate, ptr @event_class_mm_lru_insertion, ptr @event_mm_lru_activate, ptr @event_mm_lru_insertion], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_lru_insertion(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_lru_insertion, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #11
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_lru_activate(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_lru_activate, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #11
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_lru_insertion(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #11
  br i1 %12, label %73, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 24) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %73, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %1 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %19, %20
  %22 = ashr exact i32 %21, 5
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %24 = add i32 %22, %23
  %25 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %14, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = load volatile i32, ptr %1, align 4
  %27 = and i32 %26, 1048576
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %16
  %30 = load volatile i32, ptr %1, align 4
  %31 = lshr i32 %30, 18
  %32 = and i32 %31, 2
  %33 = load volatile i32, ptr %1, align 4
  %34 = lshr i32 %33, 5
  %35 = and i32 %34, 1
  %36 = or i32 %35, %32
  %37 = xor i32 %36, 2
  br label %38

38:                                               ; preds = %29, %16
  %39 = phi i32 [ %37, %29 ], [ 4, %16 ]
  %40 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %14, i32 0, i32 3
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 4, i32 2
  %47 = call zeroext i1 @folio_mapped(ptr noundef %1) #11
  %48 = zext i1 %47 to i32
  %49 = or i32 %46, %48
  %50 = load volatile i32, ptr %1, align 4
  %51 = and i32 %50, 524288
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %38
  %54 = load volatile i32, ptr %1, align 4
  %55 = lshr i32 %54, 7
  %56 = and i32 %55, 8
  br label %57

57:                                               ; preds = %53, %38
  %58 = phi i32 [ 0, %38 ], [ %56, %53 ]
  %59 = or i32 %49, %58
  %60 = load volatile i32, ptr %1, align 4
  %61 = lshr i32 %60, 15
  %62 = and i32 %61, 16
  %63 = or i32 %59, %62
  %64 = load volatile i32, ptr %1, align 4
  %65 = lshr i32 %64, 12
  %66 = and i32 %65, 32
  %67 = or i32 %63, %66
  %68 = load volatile i32, ptr %1, align 4
  %69 = lshr i32 %68, 7
  %70 = and i32 %69, 64
  %71 = or i32 %67, %70
  %72 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %14, i32 0, i32 4
  store i32 %71, ptr %72, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #11
  br label %73

73:                                               ; preds = %57, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_lru_insertion(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #9, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %91, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %91, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #11
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #11
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = load ptr, ptr @mem_map, align 4
  %35 = ptrtoint ptr %1 to i32
  %36 = ptrtoint ptr %34 to i32
  %37 = sub i32 %35, %36
  %38 = ashr exact i32 %37, 5
  %39 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %40 = add i32 %38, %39
  %41 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %20, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  %42 = load volatile i32, ptr %1, align 4
  %43 = and i32 %42, 1048576
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %22
  %46 = load volatile i32, ptr %1, align 4
  %47 = lshr i32 %46, 18
  %48 = and i32 %47, 2
  %49 = load volatile i32, ptr %1, align 4
  %50 = lshr i32 %49, 5
  %51 = and i32 %50, 1
  %52 = or i32 %51, %48
  %53 = xor i32 %52, 2
  br label %54

54:                                               ; preds = %45, %22
  %55 = phi i32 [ %53, %45 ], [ 4, %22 ]
  %56 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %20, i32 0, i32 3
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 4, i32 2
  %63 = call zeroext i1 @folio_mapped(ptr noundef %1) #11
  %64 = zext i1 %63 to i32
  %65 = or i32 %62, %64
  %66 = load volatile i32, ptr %1, align 4
  %67 = and i32 %66, 524288
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %54
  %70 = load volatile i32, ptr %1, align 4
  %71 = lshr i32 %70, 7
  %72 = and i32 %71, 8
  br label %73

73:                                               ; preds = %69, %54
  %74 = phi i32 [ 0, %54 ], [ %72, %69 ]
  %75 = or i32 %65, %74
  %76 = load volatile i32, ptr %1, align 4
  %77 = lshr i32 %76, 15
  %78 = and i32 %77, 16
  %79 = or i32 %75, %78
  %80 = load volatile i32, ptr %1, align 4
  %81 = lshr i32 %80, 12
  %82 = and i32 %81, 32
  %83 = or i32 %79, %82
  %84 = load volatile i32, ptr %1, align 4
  %85 = lshr i32 %84, 7
  %86 = and i32 %85, 64
  %87 = or i32 %83, %86
  %88 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %20, i32 0, i32 4
  store i32 %87, ptr %88, align 4
  %89 = load i32, ptr %4, align 4
  %90 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 28, i32 noundef %89, ptr noundef %0, i64 noundef 1, ptr noundef %90, ptr noundef %12, ptr noundef null) #11
  br label %91

91:                                               ; preds = %73, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_lru_activate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #11
  br i1 %12, label %26, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 16) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_mm_lru_activate, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %1 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %19, %20
  %22 = ashr exact i32 %21, 5
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %24 = add i32 %22, %23
  %25 = getelementptr inbounds %struct.trace_event_raw_mm_lru_activate, ptr %14, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #11
  br label %26

26:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_lru_activate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #9, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #11
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #11
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_mm_lru_activate, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = load ptr, ptr @mem_map, align 4
  %35 = ptrtoint ptr %1 to i32
  %36 = ptrtoint ptr %34 to i32
  %37 = sub i32 %35, %36
  %38 = ashr exact i32 %37, 5
  %39 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %40 = add i32 %38, %39
  %41 = getelementptr inbounds %struct.trace_event_raw_mm_lru_activate, ptr %20, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %4, align 4
  %43 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 20, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %12, ptr noundef null) #11
  br label %44

44:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__put_page(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 65536
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10, !prof !10

10:                                               ; preds = %5, %1
  tail call fastcc void @__page_cache_release(ptr noundef %0) #11
  %11 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = getelementptr [2 x ptr], ptr @compound_page_dtors, i32 0, i32 %13
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0) #11
  br label %18

16:                                               ; preds = %5
  tail call fastcc void @__page_cache_release(ptr noundef %0) #11
  %17 = load volatile i32, ptr %6, align 4
  tail call void @free_unref_page(ptr noundef %0, i32 noundef 0) #11
  br label %18

18:                                               ; preds = %16, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_pages_list(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %35, label %4

4:                                                ; preds = %33, %1
  %5 = phi ptr [ %7, %33 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #11, !srcloc !14
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #11, !srcloc !15
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  br label %33

17:                                               ; preds = %4
  %18 = load volatile i32, ptr %6, align 4
  %19 = and i32 %18, 65536
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call fastcc void @__page_cache_release(ptr noundef %6) #11
  %26 = getelementptr i8, ptr %5, i32 36
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = getelementptr [2 x ptr], ptr @compound_page_dtors, i32 0, i32 %28
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %6) #11
  br label %33

31:                                               ; preds = %17
  %32 = and i32 %18, -129
  store i32 %32, ptr %6, align 4
  br label %33

33:                                               ; preds = %31, %21, %12
  %34 = icmp eq ptr %7, %0
  br i1 %34, label %35, label %4

35:                                               ; preds = %33, %1
  tail call void @free_unref_page_list(ptr noundef %0) #11
  store volatile ptr %0, ptr %0, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %36, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_unref_page_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_kernel_pages(ptr nocapture noundef readonly %0, i32 noundef %1, i32 %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %25, %4
  %7 = phi i32 [ %30, %25 ], [ 0, %4 ]
  %8 = getelementptr %struct.kvec, ptr %0, i32 %7, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 4096
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 182, i32 noundef 9, ptr noundef null) #11
  br label %32

12:                                               ; preds = %6
  %13 = getelementptr %struct.kvec, ptr %0, i32 %7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @__kmap_to_page(ptr noundef %14) #11
  %16 = getelementptr ptr, ptr %3, i32 %7
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !10

21:                                               ; preds = %12
  %22 = add i32 %18, -1
  br label %25

23:                                               ; preds = %12
  %24 = ptrtoint ptr %15 to i32
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #11, !srcloc !14
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #11, !srcloc !17
  %30 = add nuw nsw i32 %7, 1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %32, label %6

32:                                               ; preds = %25, %11, %4
  %33 = phi i32 [ %7, %11 ], [ 0, %4 ], [ %1, %25 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_rotate_reclaimable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %48

5:                                                ; preds = %1
  %6 = load volatile i32, ptr %0, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %5
  %10 = load volatile i32, ptr %0, align 4
  %11 = and i32 %10, 1048576
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = load volatile i32, ptr %0, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #11, !srcloc !14
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #11, !srcloc !17
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !18
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #9, !srcloc !12
  %24 = add i32 %23, ptrtoint (ptr @lru_rotate to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = load i8, ptr %25, align 4
  %27 = add i8 %26, 1
  store i8 %27, ptr %25, align 4
  %28 = zext i8 %26 to i32
  %29 = getelementptr %struct.pagevec, ptr %25, i32 0, i32 2, i32 %28
  store ptr %0, ptr %29, align 4
  %30 = icmp eq i8 %27, 15
  br i1 %30, label %43, label %31

31:                                               ; preds = %17
  %32 = load volatile i32, ptr %0, align 4
  %33 = and i32 %32, 65536
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load volatile i32, ptr @lru_disable_count, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40, %35, %31, %17
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %25, ptr noundef nonnull @pagevec_move_tail_fn)
  br label %44

44:                                               ; preds = %43, %40
  %45 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %46 = inttoptr i32 %45 to ptr
  %47 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %46) #9, !srcloc !12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #11, !srcloc !19
  br label %48

48:                                               ; preds = %44, %13, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pagevec_lru_move_fn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i8, ptr %0, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %59, label %5

5:                                                ; preds = %47, %2
  %6 = phi ptr [ %49, %47 ], [ null, %2 ]
  %7 = phi i32 [ %50, %47 ], [ 0, %2 ]
  %8 = phi i32 [ %48, %47 ], [ 0, %2 ]
  %9 = getelementptr %struct.pagevec, ptr %0, i32 0, i32 2, i32 %7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %12 = load volatile i32, ptr %11, align 4
  %13 = load volatile i32, ptr %11, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !10

16:                                               ; preds = %5
  %17 = add i32 %13, -1
  br label %20

18:                                               ; preds = %5
  %19 = ptrtoint ptr %10 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %22) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %20
  %26 = icmp eq ptr %6, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = getelementptr i8, ptr %6, i32 -3776
  %29 = icmp eq ptr %28, @contig_page_data
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.lruvec, ptr %6, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %8) #11
  br label %32

32:                                               ; preds = %30, %25
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1)) #11
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi i32 [ %33, %32 ], [ %8, %27 ]
  %36 = phi ptr [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24), %32 ], [ %6, %27 ]
  tail call void %1(ptr noundef %10, ptr noundef nonnull %36) #11
  %37 = load volatile i32, ptr %11, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !10

40:                                               ; preds = %34
  %41 = add i32 %37, -1
  br label %44

42:                                               ; preds = %34
  %43 = ptrtoint ptr %10 to i32
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = inttoptr i32 %45 to ptr
  tail call void @_set_bit(i32 noundef 4, ptr noundef %46) #11
  br label %47

47:                                               ; preds = %44, %20
  %48 = phi i32 [ %8, %20 ], [ %35, %44 ]
  %49 = phi ptr [ %6, %20 ], [ %36, %44 ]
  %50 = add nuw nsw i32 %7, 1
  %51 = load i8, ptr %0, align 4
  %52 = zext i8 %51 to i32
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %5, label %54

54:                                               ; preds = %47
  %55 = icmp eq ptr %49, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.lruvec, ptr %49, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %48) #11
  %58 = load i8, ptr %0, align 4
  br label %59

59:                                               ; preds = %56, %54, %2
  %60 = phi i8 [ %58, %56 ], [ %51, %54 ], [ 0, %2 ]
  %61 = getelementptr inbounds %struct.pagevec, ptr %0, i32 0, i32 2
  %62 = zext i8 %60 to i32
  tail call void @release_pages(ptr noundef %61, i32 noundef %62)
  store i8 0, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pagevec_move_tail_fn(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !10

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1048576
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %93

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  %19 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  %23 = load volatile i32, ptr %13, align 4
  %24 = and i32 %23, 1048576
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load volatile i32, ptr %13, align 4
  %28 = lshr i32 %27, 18
  %29 = and i32 %28, 2
  %30 = load volatile i32, ptr %13, align 4
  %31 = lshr i32 %30, 5
  %32 = and i32 %31, 1
  %33 = or i32 %32, %29
  %34 = xor i32 %33, 2
  br label %35

35:                                               ; preds = %26, %17
  %36 = phi i32 [ %34, %26 ], [ 4, %17 ]
  %37 = load volatile i32, ptr %13, align 4
  %38 = and i32 %37, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr %struct.page, ptr %13, i32 1, i32 1, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i32 [ %42, %40 ], [ 1, %35 ]
  %45 = lshr i32 %23, 30
  %46 = sub i32 0, %44
  %47 = getelementptr i8, ptr %1, i32 -3776
  tail call void @__mod_node_page_state(ptr noundef %47, i32 noundef %36, i32 noundef %46) #11
  %48 = getelementptr [4 x %struct.zone], ptr %47, i32 0, i32 %45
  %49 = add nsw i32 %36, 1
  tail call void @__mod_zone_page_state(ptr noundef %48, i32 noundef %49, i32 noundef %46) #11
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %13) #11
  %50 = load volatile i32, ptr %13, align 4
  %51 = and i32 %50, 1048576
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load volatile i32, ptr %13, align 4
  %55 = lshr i32 %54, 18
  %56 = and i32 %55, 2
  %57 = load volatile i32, ptr %13, align 4
  %58 = lshr i32 %57, 5
  %59 = and i32 %58, 1
  %60 = or i32 %59, %56
  %61 = xor i32 %60, 2
  br label %62

62:                                               ; preds = %53, %43
  %63 = phi i32 [ %61, %53 ], [ 4, %43 ]
  %64 = load volatile i32, ptr %13, align 4
  %65 = and i32 %64, 65536
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = getelementptr %struct.page, ptr %13, i32 1, i32 1, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi i32 [ %69, %67 ], [ 1, %62 ]
  %72 = lshr i32 %50, 30
  tail call void @__mod_node_page_state(ptr noundef %47, i32 noundef %63, i32 noundef %71) #11
  %73 = getelementptr [4 x %struct.zone], ptr %47, i32 0, i32 %72
  %74 = add nsw i32 %63, 1
  tail call void @__mod_zone_page_state(ptr noundef %73, i32 noundef %74, i32 noundef %71) #11
  %75 = getelementptr [5 x %struct.list_head], ptr %1, i32 0, i32 %63
  %76 = getelementptr [5 x %struct.list_head], ptr %1, i32 0, i32 %63, i32 1
  %77 = load ptr, ptr %76, align 4
  store ptr %18, ptr %76, align 4
  store ptr %75, ptr %18, align 4
  store ptr %77, ptr %19, align 4
  store volatile ptr %18, ptr %77, align 4
  %78 = load volatile i32, ptr %13, align 4
  %79 = and i32 %78, 65536
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = getelementptr %struct.page, ptr %13, i32 1, i32 1, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  br label %84

84:                                               ; preds = %81, %70
  %85 = phi i32 [ %83, %81 ], [ 1, %70 ]
  %86 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %87 = inttoptr i32 %86 to ptr
  %88 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %87) #9, !srcloc !12
  %89 = add i32 %88, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 42) to i32)
  %90 = inttoptr i32 %89 to ptr
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, %85
  store i32 %92, ptr %90, align 4
  br label %93

93:                                               ; preds = %84, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lru_note_cost(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lruvec, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #11
  br i1 %1, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.lruvec, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %2
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.lruvec, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  br label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.lruvec, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %2
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.lruvec, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %11, %5
  %18 = phi i32 [ %14, %11 ], [ %10, %5 ]
  %19 = phi i32 [ %16, %11 ], [ %8, %5 ]
  %20 = load volatile i32, ptr @vm_node_stat, align 4
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0) #11
  %22 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0) #11
  %24 = add nuw i32 %23, %21
  %25 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0) #11
  %27 = add i32 %24, %26
  %28 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 0) #11
  %30 = add i32 %27, %29
  %31 = add i32 %18, %19
  %32 = lshr i32 %30, 2
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.lruvec, ptr %0, i32 0, i32 2
  %36 = getelementptr inbounds %struct.lruvec, ptr %0, i32 0, i32 3
  %37 = lshr i32 %19, 1
  store i32 %37, ptr %36, align 4
  %38 = lshr i32 %18, 1
  store i32 %38, ptr %35, align 4
  br label %39

39:                                               ; preds = %34, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %40 = load i16, ptr %4, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lru_note_cost_folio(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 524288
  %4 = icmp eq i32 %3, 0
  %5 = load volatile i32, ptr %0, align 4
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ %10, %8 ], [ 1, %1 ]
  tail call void @_raw_spin_lock_irq(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1)) #11
  br i1 %4, label %13, label %17

13:                                               ; preds = %11
  %14 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 3), align 16
  %15 = add i32 %14, %12
  store i32 %15, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 3), align 16
  %16 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 2), align 4
  br label %21

17:                                               ; preds = %11
  %18 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 2), align 4
  %19 = add i32 %18, %12
  store i32 %19, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 2), align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 3), align 16
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %19, %17 ], [ %16, %13 ]
  %23 = phi i32 [ %20, %17 ], [ %15, %13 ]
  %24 = load volatile i32, ptr @vm_node_stat, align 4
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #11
  %26 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 0) #11
  %28 = add nuw i32 %27, %25
  %29 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 0) #11
  %31 = add i32 %28, %30
  %32 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 0) #11
  %34 = add i32 %31, %33
  %35 = add i32 %23, %22
  %36 = lshr i32 %34, 2
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %21
  %39 = lshr i32 %23, 1
  store i32 %39, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 3), align 16
  %40 = lshr i32 %22, 1
  store i32 %40, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 2), align 4
  br label %41

41:                                               ; preds = %38, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %42 = load i16, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1), align 8
  %43 = add i16 %42, 1
  store i16 %43, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1), align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_mark_accessed(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %0) #11
  br label %82

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %0, align 4
  %8 = and i32 %7, 1048576
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %82

10:                                               ; preds = %6
  %11 = load volatile i32, ptr %0, align 4
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %82

14:                                               ; preds = %10
  %15 = load volatile i32, ptr %0, align 4
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %60, label %18

18:                                               ; preds = %14
  %19 = load volatile i32, ptr %0, align 4
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %81, label %22

22:                                               ; preds = %18
  %23 = load volatile i32, ptr %0, align 4
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %22
  %27 = load volatile i32, ptr %0, align 4
  %28 = and i32 %27, 1048576
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #11, !srcloc !14
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #11, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %34) #9, !srcloc !12
  %36 = add i32 %35, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 5) to i32)
  %37 = inttoptr i32 %36 to ptr
  %38 = load i8, ptr %37, align 4
  %39 = add i8 %38, 1
  store i8 %39, ptr %37, align 4
  %40 = zext i8 %38 to i32
  %41 = getelementptr %struct.pagevec, ptr %37, i32 0, i32 2, i32 %40
  store ptr %0, ptr %41, align 4
  %42 = icmp eq i8 %39, 15
  br i1 %42, label %55, label %43

43:                                               ; preds = %30
  %44 = load volatile i32, ptr %0, align 4
  %45 = and i32 %44, 65536
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load volatile i32, ptr @lru_disable_count, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52, %47, %43, %30
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %37, ptr noundef nonnull @__activate_page) #11
  br label %56

56:                                               ; preds = %55, %52
  %57 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %58 = inttoptr i32 %57 to ptr
  %59 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %58) #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  br label %81

60:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %61 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %62 = inttoptr i32 %61 to ptr
  %63 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %62) #9, !srcloc !12
  %64 = add i32 %63, ptrtoint (ptr @lru_pvecs to i32)
  %65 = inttoptr i32 %64 to ptr
  %66 = load i8, ptr %65, align 4
  %67 = zext i8 %66 to i32
  br label %68

68:                                               ; preds = %71, %60
  %69 = phi i32 [ %67, %60 ], [ %72, %71 ]
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = add nsw i32 %69, -1
  %73 = getelementptr %struct.pagevec, ptr %65, i32 0, i32 2, i32 %72
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %0
  br i1 %75, label %76, label %68

76:                                               ; preds = %71
  tail call void @_set_bit(i32 noundef 5, ptr noundef %0) #11
  br label %77

77:                                               ; preds = %76, %68
  %78 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %79 = inttoptr i32 %78 to ptr
  %80 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %79) #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !28
  br label %81

81:                                               ; preds = %77, %56, %26, %22, %18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %0) #11
  tail call void @workingset_activation(ptr noundef %0) #11
  br label %82

82:                                               ; preds = %81, %10, %6, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_activation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_add_lru(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #11, !srcloc !14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #11, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %5) #9, !srcloc !12
  %7 = add i32 %6, ptrtoint (ptr @lru_pvecs to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load i8, ptr %8, align 4
  %10 = add i8 %9, 1
  store i8 %10, ptr %8, align 4
  %11 = zext i8 %9 to i32
  %12 = getelementptr %struct.pagevec, ptr %8, i32 0, i32 2, i32 %11
  store ptr %0, ptr %12, align 4
  %13 = icmp eq i8 %10, 15
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load volatile i32, ptr %0, align 4
  %16 = and i32 %15, 65536
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load volatile i32, ptr @lru_disable_count, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %18, %14, %1
  tail call void @__pagevec_lru_add(ptr noundef %8)
  br label %27

27:                                               ; preds = %26, %23
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pagevec_lru_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 4
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %137, label %4

4:                                                ; preds = %128, %1
  %5 = phi i32 [ %129, %128 ], [ 0, %1 ]
  %6 = phi ptr [ %31, %128 ], [ null, %1 ]
  %7 = phi i32 [ %30, %128 ], [ 0, %1 ]
  %8 = getelementptr %struct.pagevec, ptr %0, i32 0, i32 2, i32 %5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !10

14:                                               ; preds = %4
  %15 = add i32 %11, -1
  br label %18

16:                                               ; preds = %4
  %17 = ptrtoint ptr %9 to i32
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = inttoptr i32 %19 to ptr
  %21 = icmp eq ptr %6, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %6, i32 -3776
  %24 = icmp eq ptr %23, @contig_page_data
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.lruvec, ptr %6, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %7) #11
  br label %27

27:                                               ; preds = %25, %18
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1)) #11
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi i32 [ %28, %27 ], [ %7, %22 ]
  %31 = phi ptr [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24), %27 ], [ %6, %22 ]
  %32 = tail call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %20) #11
  %33 = icmp eq i32 %32, 0
  %34 = load volatile i32, ptr %20, align 4
  %35 = and i32 %34, 65536
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = getelementptr %struct.page, ptr %20, i32 1, i32 1, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %29
  %41 = phi i32 [ %39, %37 ], [ 1, %29 ]
  tail call void @_set_bit(i32 noundef 4, ptr noundef %20) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !32
  %42 = tail call ptr @folio_mapping(ptr noundef %20) #11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.address_space, ptr %42, i32 0, i32 10
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !33
  br label %60

50:                                               ; preds = %44, %40
  %51 = load volatile i32, ptr %20, align 4
  %52 = and i32 %51, 2097152
  %53 = icmp eq i32 %52, 0
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !33
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  br i1 %33, label %71, label %55

55:                                               ; preds = %54
  %56 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %57 = inttoptr i32 %56 to ptr
  %58 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %57) #9, !srcloc !12
  %59 = add i32 %58, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 64) to i32)
  br label %66

60:                                               ; preds = %50, %49
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %20) #11
  tail call void @_set_bit(i32 noundef 20, ptr noundef %20) #11
  br i1 %33, label %61, label %71

61:                                               ; preds = %60
  %62 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %63 = inttoptr i32 %62 to ptr
  %64 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %63) #9, !srcloc !12
  %65 = add i32 %64, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 62) to i32)
  br label %66

66:                                               ; preds = %61, %55
  %67 = phi i32 [ %59, %55 ], [ %65, %61 ]
  %68 = inttoptr i32 %67 to ptr
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %41
  store i32 %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %66, %60, %54
  %72 = load volatile i32, ptr %20, align 4
  %73 = and i32 %72, 1048576
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load volatile i32, ptr %20, align 4
  %77 = lshr i32 %76, 18
  %78 = and i32 %77, 2
  %79 = load volatile i32, ptr %20, align 4
  %80 = lshr i32 %79, 5
  %81 = and i32 %80, 1
  %82 = or i32 %81, %78
  %83 = xor i32 %82, 2
  br label %84

84:                                               ; preds = %75, %71
  %85 = phi i32 [ %83, %75 ], [ 4, %71 ]
  %86 = load volatile i32, ptr %20, align 4
  %87 = and i32 %86, 65536
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = getelementptr %struct.page, ptr %20, i32 1, i32 1, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi i32 [ %91, %89 ], [ 1, %84 ]
  %94 = lshr i32 %72, 30
  %95 = getelementptr i8, ptr %31, i32 -3776
  tail call void @__mod_node_page_state(ptr noundef %95, i32 noundef %85, i32 noundef %93) #11
  %96 = getelementptr [4 x %struct.zone], ptr %95, i32 0, i32 %94
  %97 = add nsw i32 %85, 1
  tail call void @__mod_zone_page_state(ptr noundef %96, i32 noundef %97, i32 noundef %93) #11
  %98 = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 1
  %99 = getelementptr [5 x %struct.list_head], ptr %31, i32 0, i32 %85
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  store ptr %98, ptr %101, align 4
  store ptr %100, ptr %98, align 4
  %102 = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 1, i32 1
  store ptr %99, ptr %102, align 4
  store volatile ptr %98, ptr %99, align 4
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_lru_insertion, i32 0, i32 1), align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %92
  %106 = tail call ptr @llvm.thread.pointer() #11
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 5
  %110 = getelementptr i32, ptr @__cpu_online_mask, i32 %109
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %108, 31
  %113 = shl nuw i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %105
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %117 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_lru_insertion, i32 0, i32 7), align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %127, label %119

119:                                              ; preds = %119, %116
  %120 = phi ptr [ %124, %119 ], [ %117, %116 ]
  %121 = load volatile ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.tracepoint_func, ptr %120, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  tail call void %121(ptr noundef %123, ptr noundef %20) #11
  %124 = getelementptr %struct.tracepoint_func, ptr %120, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %119

127:                                              ; preds = %119, %116
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !35
  br label %128

128:                                              ; preds = %127, %105, %92
  %129 = add nuw nsw i32 %5, 1
  %130 = load i8, ptr %0, align 4
  %131 = zext i8 %130 to i32
  %132 = icmp ult i32 %129, %131
  br i1 %132, label %4, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.lruvec, ptr %31, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %134, i32 noundef %30) #11
  %135 = load i8, ptr %0, align 4
  %136 = zext i8 %135 to i32
  br label %137

137:                                              ; preds = %133, %1
  %138 = phi i32 [ %136, %133 ], [ 0, %1 ]
  %139 = getelementptr inbounds %struct.pagevec, ptr %0, i32 0, i32 2
  tail call void @release_pages(ptr noundef %139, i32 noundef %138)
  store i8 0, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lru_cache_add_inactive_or_unevictable(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 268723200
  %6 = icmp eq i32 %5, 8192
  br i1 %6, label %7, label %33, !prof !11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !10

12:                                               ; preds = %7
  %13 = add i32 %9, -1
  br label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %0 to i32
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 21, ptr noundef %18) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i32, ptr %0, align 4
  %23 = lshr i32 %22, 30
  %24 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %23
  tail call void @__mod_zone_page_state(ptr noundef %24, i32 noundef 7, i32 noundef 1) #11
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !18
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #9, !srcloc !12
  %29 = add i32 %28, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 65) to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #11, !srcloc !19
  br label %33

33:                                               ; preds = %21, %16, %2
  tail call void @lru_cache_add(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lru_add_drain_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @lru_pvecs to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  tail call void @__pagevec_lru_add(ptr noundef %5)
  %9 = load i32, ptr %2, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %3, %1 ], [ %9, %8 ]
  %12 = add i32 %11, ptrtoint (ptr @lru_rotate to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !18
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #9, !srcloc !12
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %13, ptr noundef nonnull @pagevec_move_tail_fn)
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #9, !srcloc !12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #11, !srcloc !19
  %24 = load i32, ptr %2, align 4
  br label %25

25:                                               ; preds = %16, %10
  %26 = phi i32 [ %11, %10 ], [ %24, %16 ]
  %27 = add i32 %26, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 2) to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %28, ptr noundef nonnull @lru_deactivate_file_fn)
  %32 = load i32, ptr %2, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi i32 [ %26, %25 ], [ %32, %31 ]
  %35 = add i32 %34, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 3) to i32)
  %36 = inttoptr i32 %35 to ptr
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %36, ptr noundef nonnull @lru_deactivate_fn)
  %40 = load i32, ptr %2, align 4
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi i32 [ %34, %33 ], [ %40, %39 ]
  %43 = add i32 %42, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 4) to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %44, ptr noundef nonnull @lru_lazyfree_fn)
  %48 = load i32, ptr %2, align 4
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi i32 [ %48, %47 ], [ %42, %41 ]
  %51 = add i32 %50, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 5) to i32)
  %52 = inttoptr i32 %51 to ptr
  %53 = load i8, ptr %52, align 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %52, ptr noundef nonnull @__activate_page) #11
  br label %56

56:                                               ; preds = %55, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lru_deactivate_file_fn(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !10

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  %17 = load volatile i32, ptr %3, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !10

20:                                               ; preds = %11
  %21 = add i32 %17, -1
  br label %24

22:                                               ; preds = %11
  %23 = ptrtoint ptr %0 to i32
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = inttoptr i32 %25 to ptr
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1048576
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %230

30:                                               ; preds = %24
  %31 = tail call zeroext i1 @page_mapped(ptr noundef %0) #11
  br i1 %31, label %230, label %32

32:                                               ; preds = %30
  %33 = load volatile i32, ptr %3, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !10

36:                                               ; preds = %32
  %37 = add i32 %33, -1
  br label %40

38:                                               ; preds = %32
  %39 = ptrtoint ptr %0 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.anon, ptr %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.anon, ptr %42, i32 0, i32 1, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %43, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %45, ptr %47, align 4
  store volatile ptr %46, ptr %45, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %43, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %44, align 4
  %48 = load volatile i32, ptr %42, align 4
  %49 = and i32 %48, 1048576
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = load volatile i32, ptr %42, align 4
  %53 = lshr i32 %52, 18
  %54 = and i32 %53, 2
  %55 = load volatile i32, ptr %42, align 4
  %56 = lshr i32 %55, 5
  %57 = and i32 %56, 1
  %58 = or i32 %57, %54
  %59 = xor i32 %58, 2
  br label %60

60:                                               ; preds = %51, %40
  %61 = phi i32 [ %59, %51 ], [ 4, %40 ]
  %62 = load volatile i32, ptr %42, align 4
  %63 = and i32 %62, 65536
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = getelementptr %struct.page, ptr %42, i32 1, i32 1, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi i32 [ %67, %65 ], [ 1, %60 ]
  %70 = lshr i32 %48, 30
  %71 = sub i32 0, %69
  %72 = getelementptr i8, ptr %1, i32 -3776
  tail call void @__mod_node_page_state(ptr noundef %72, i32 noundef %61, i32 noundef %71) #11
  %73 = getelementptr [4 x %struct.zone], ptr %72, i32 0, i32 %70
  %74 = add nsw i32 %61, 1
  tail call void @__mod_zone_page_state(ptr noundef %73, i32 noundef %74, i32 noundef %71) #11
  %75 = load volatile i32, ptr %3, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78, !prof !10

78:                                               ; preds = %68
  %79 = add i32 %75, -1
  br label %82

80:                                               ; preds = %68
  %81 = ptrtoint ptr %0 to i32
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = inttoptr i32 %83 to ptr
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %84) #11
  %85 = load volatile i32, ptr %3, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88, !prof !10

88:                                               ; preds = %82
  %89 = add i32 %85, -1
  br label %92

90:                                               ; preds = %82
  %91 = ptrtoint ptr %0 to i32
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = inttoptr i32 %93 to ptr
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %94) #11
  %95 = load volatile i32, ptr %3, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98, !prof !10

98:                                               ; preds = %92
  %99 = add i32 %95, -1
  br label %102

100:                                              ; preds = %92
  %101 = ptrtoint ptr %0 to i32
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = inttoptr i32 %103 to ptr
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %105, 32768
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = load volatile i32, ptr %3, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112, !prof !10

112:                                              ; preds = %108
  %113 = add i32 %109, -1
  br label %116

114:                                              ; preds = %108
  %115 = ptrtoint ptr %0 to i32
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  %118 = inttoptr i32 %117 to ptr
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %119, 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %173, label %122

122:                                              ; preds = %116, %102
  %123 = load volatile i32, ptr %3, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126, !prof !10

126:                                              ; preds = %122
  %127 = add i32 %123, -1
  br label %130

128:                                              ; preds = %122
  %129 = ptrtoint ptr %0 to i32
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = inttoptr i32 %131 to ptr
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %133, 1048576
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load volatile i32, ptr %132, align 4
  %138 = lshr i32 %137, 18
  %139 = and i32 %138, 2
  %140 = load volatile i32, ptr %132, align 4
  %141 = lshr i32 %140, 5
  %142 = and i32 %141, 1
  %143 = or i32 %142, %139
  %144 = xor i32 %143, 2
  br label %145

145:                                              ; preds = %136, %130
  %146 = phi i32 [ %144, %136 ], [ 4, %130 ]
  %147 = load volatile i32, ptr %132, align 4
  %148 = and i32 %147, 65536
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %145
  %151 = getelementptr %struct.page, ptr %132, i32 1, i32 1, i32 0, i32 2
  %152 = load i32, ptr %151, align 4
  br label %153

153:                                              ; preds = %150, %145
  %154 = phi i32 [ %152, %150 ], [ 1, %145 ]
  %155 = lshr i32 %133, 30
  tail call void @__mod_node_page_state(ptr noundef %72, i32 noundef %146, i32 noundef %154) #11
  %156 = getelementptr [4 x %struct.zone], ptr %72, i32 0, i32 %155
  %157 = add nsw i32 %146, 1
  tail call void @__mod_zone_page_state(ptr noundef %156, i32 noundef %157, i32 noundef %154) #11
  %158 = getelementptr inbounds %struct.anon, ptr %132, i32 0, i32 1
  %159 = getelementptr [5 x %struct.list_head], ptr %1, i32 0, i32 %146
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.list_head, ptr %160, i32 0, i32 1
  store ptr %158, ptr %161, align 4
  store ptr %160, ptr %158, align 4
  %162 = getelementptr inbounds %struct.anon, ptr %132, i32 0, i32 1, i32 1
  store ptr %159, ptr %162, align 4
  store volatile ptr %158, ptr %159, align 4
  %163 = load volatile i32, ptr %3, align 4
  %164 = and i32 %163, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166, !prof !10

166:                                              ; preds = %153
  %167 = add i32 %163, -1
  br label %170

168:                                              ; preds = %153
  %169 = ptrtoint ptr %0 to i32
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %172 = inttoptr i32 %171 to ptr
  tail call void @_set_bit(i32 noundef 18, ptr noundef %172) #11
  br label %221

173:                                              ; preds = %116
  %174 = load volatile i32, ptr %3, align 4
  %175 = and i32 %174, 1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177, !prof !10

177:                                              ; preds = %173
  %178 = add i32 %174, -1
  br label %181

179:                                              ; preds = %173
  %180 = ptrtoint ptr %0 to i32
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  %183 = inttoptr i32 %182 to ptr
  %184 = load volatile i32, ptr %183, align 4
  %185 = and i32 %184, 1048576
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %181
  %188 = load volatile i32, ptr %183, align 4
  %189 = lshr i32 %188, 18
  %190 = and i32 %189, 2
  %191 = load volatile i32, ptr %183, align 4
  %192 = lshr i32 %191, 5
  %193 = and i32 %192, 1
  %194 = or i32 %193, %190
  %195 = xor i32 %194, 2
  br label %196

196:                                              ; preds = %187, %181
  %197 = phi i32 [ %195, %187 ], [ 4, %181 ]
  %198 = load volatile i32, ptr %183, align 4
  %199 = and i32 %198, 65536
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %196
  %202 = getelementptr %struct.page, ptr %183, i32 1, i32 1, i32 0, i32 2
  %203 = load i32, ptr %202, align 4
  br label %204

204:                                              ; preds = %201, %196
  %205 = phi i32 [ %203, %201 ], [ 1, %196 ]
  %206 = lshr i32 %184, 30
  tail call void @__mod_node_page_state(ptr noundef %72, i32 noundef %197, i32 noundef %205) #11
  %207 = getelementptr [4 x %struct.zone], ptr %72, i32 0, i32 %206
  %208 = add nsw i32 %197, 1
  tail call void @__mod_zone_page_state(ptr noundef %207, i32 noundef %208, i32 noundef %205) #11
  %209 = getelementptr inbounds %struct.anon, ptr %183, i32 0, i32 1
  %210 = getelementptr [5 x %struct.list_head], ptr %1, i32 0, i32 %197
  %211 = getelementptr [5 x %struct.list_head], ptr %1, i32 0, i32 %197, i32 1
  %212 = load ptr, ptr %211, align 4
  store ptr %209, ptr %211, align 4
  store ptr %210, ptr %209, align 4
  %213 = getelementptr inbounds %struct.anon, ptr %183, i32 0, i32 1, i32 1
  store ptr %212, ptr %213, align 4
  store volatile ptr %209, ptr %212, align 4
  %214 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %215 = inttoptr i32 %214 to ptr
  %216 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %215) #9, !srcloc !12
  %217 = add i32 %216, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 42) to i32)
  %218 = inttoptr i32 %217 to ptr
  %219 = load i32, ptr %218, align 4
  %220 = add i32 %219, 1
  store i32 %220, ptr %218, align 4
  br label %221

221:                                              ; preds = %204, %170
  br i1 %16, label %230, label %222

222:                                              ; preds = %221
  %223 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %224 = inttoptr i32 %223 to ptr
  %225 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %224) #9, !srcloc !12
  %226 = add i32 %225, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 18) to i32)
  %227 = inttoptr i32 %226 to ptr
  %228 = load i32, ptr %227, align 4
  %229 = add i32 %228, 1
  store i32 %229, ptr %227, align 4
  br label %230

230:                                              ; preds = %222, %221, %30, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lru_deactivate_fn(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !10

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %141, label %17

17:                                               ; preds = %11
  %18 = load volatile i32, ptr %3, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !10

21:                                               ; preds = %17
  %22 = add i32 %18, -1
  br label %25

23:                                               ; preds = %17
  %24 = ptrtoint ptr %0 to i32
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = inttoptr i32 %26 to ptr
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1048576
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %141

31:                                               ; preds = %25
  %32 = load volatile i32, ptr %3, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35, !prof !10

35:                                               ; preds = %31
  %36 = add i32 %32, -1
  br label %39

37:                                               ; preds = %31
  %38 = ptrtoint ptr %0 to i32
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.anon, ptr %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.anon, ptr %41, i32 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %42, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %42, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  %47 = load volatile i32, ptr %41, align 4
  %48 = and i32 %47, 1048576
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load volatile i32, ptr %41, align 4
  %52 = lshr i32 %51, 18
  %53 = and i32 %52, 2
  %54 = load volatile i32, ptr %41, align 4
  %55 = lshr i32 %54, 5
  %56 = and i32 %55, 1
  %57 = or i32 %56, %53
  %58 = xor i32 %57, 2
  br label %59

59:                                               ; preds = %50, %39
  %60 = phi i32 [ %58, %50 ], [ 4, %39 ]
  %61 = load volatile i32, ptr %41, align 4
  %62 = and i32 %61, 65536
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = getelementptr %struct.page, ptr %41, i32 1, i32 1, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = phi i32 [ %66, %64 ], [ 1, %59 ]
  %69 = lshr i32 %47, 30
  %70 = sub i32 0, %68
  %71 = getelementptr i8, ptr %1, i32 -3776
  tail call void @__mod_node_page_state(ptr noundef %71, i32 noundef %60, i32 noundef %70) #11
  %72 = getelementptr [4 x %struct.zone], ptr %71, i32 0, i32 %69
  %73 = add nsw i32 %60, 1
  tail call void @__mod_zone_page_state(ptr noundef %72, i32 noundef %73, i32 noundef %70) #11
  %74 = load volatile i32, ptr %3, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77, !prof !10

77:                                               ; preds = %67
  %78 = add i32 %74, -1
  br label %81

79:                                               ; preds = %67
  %80 = ptrtoint ptr %0 to i32
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = inttoptr i32 %82 to ptr
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %83) #11
  %84 = load volatile i32, ptr %3, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87, !prof !10

87:                                               ; preds = %81
  %88 = add i32 %84, -1
  br label %91

89:                                               ; preds = %81
  %90 = ptrtoint ptr %0 to i32
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = inttoptr i32 %92 to ptr
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %93) #11
  %94 = load volatile i32, ptr %3, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97, !prof !10

97:                                               ; preds = %91
  %98 = add i32 %94, -1
  br label %101

99:                                               ; preds = %91
  %100 = ptrtoint ptr %0 to i32
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = inttoptr i32 %102 to ptr
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %104, 1048576
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = load volatile i32, ptr %103, align 4
  %109 = lshr i32 %108, 18
  %110 = and i32 %109, 2
  %111 = load volatile i32, ptr %103, align 4
  %112 = lshr i32 %111, 5
  %113 = and i32 %112, 1
  %114 = or i32 %113, %110
  %115 = xor i32 %114, 2
  br label %116

116:                                              ; preds = %107, %101
  %117 = phi i32 [ %115, %107 ], [ 4, %101 ]
  %118 = load volatile i32, ptr %103, align 4
  %119 = and i32 %118, 65536
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = getelementptr %struct.page, ptr %103, i32 1, i32 1, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  br label %124

124:                                              ; preds = %121, %116
  %125 = phi i32 [ %123, %121 ], [ 1, %116 ]
  %126 = lshr i32 %104, 30
  tail call void @__mod_node_page_state(ptr noundef %71, i32 noundef %117, i32 noundef %125) #11
  %127 = getelementptr [4 x %struct.zone], ptr %71, i32 0, i32 %126
  %128 = add nsw i32 %117, 1
  tail call void @__mod_zone_page_state(ptr noundef %127, i32 noundef %128, i32 noundef %125) #11
  %129 = getelementptr inbounds %struct.anon, ptr %103, i32 0, i32 1
  %130 = getelementptr [5 x %struct.list_head], ptr %1, i32 0, i32 %117
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  store ptr %129, ptr %132, align 4
  store ptr %131, ptr %129, align 4
  %133 = getelementptr inbounds %struct.anon, ptr %103, i32 0, i32 1, i32 1
  store ptr %130, ptr %133, align 4
  store volatile ptr %129, ptr %130, align 4
  %134 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %135 = inttoptr i32 %134 to ptr
  %136 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %135) #9, !srcloc !12
  %137 = add i32 %136, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 18) to i32)
  %138 = inttoptr i32 %137 to ptr
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, 1
  store i32 %140, ptr %138, align 4
  br label %141

141:                                              ; preds = %124, %25, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lru_lazyfree_fn(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !10

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %185, label %19

19:                                               ; preds = %11
  %20 = load volatile i32, ptr %3, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !10

23:                                               ; preds = %19
  %24 = add i32 %20, -1
  br label %27

25:                                               ; preds = %19
  %26 = ptrtoint ptr %0 to i32
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = inttoptr i32 %28 to ptr
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 524288
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %185, label %33

33:                                               ; preds = %27
  %34 = load volatile i32, ptr %3, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37, !prof !10

37:                                               ; preds = %33
  %38 = add i32 %34, -1
  br label %41

39:                                               ; preds = %33
  %40 = ptrtoint ptr %0 to i32
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = inttoptr i32 %42 to ptr
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 524288
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load volatile i32, ptr %43, align 4
  %49 = and i32 %48, 1024
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %185

51:                                               ; preds = %47, %41
  %52 = load volatile i32, ptr %3, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55, !prof !10

55:                                               ; preds = %51
  %56 = add i32 %52, -1
  br label %59

57:                                               ; preds = %51
  %58 = ptrtoint ptr %0 to i32
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = inttoptr i32 %60 to ptr
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 1048576
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %185

65:                                               ; preds = %59
  %66 = load volatile i32, ptr %3, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69, !prof !10

69:                                               ; preds = %65
  %70 = add i32 %66, -1
  br label %73

71:                                               ; preds = %65
  %72 = ptrtoint ptr %0 to i32
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = inttoptr i32 %74 to ptr
  %76 = getelementptr inbounds %struct.anon, ptr %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.anon, ptr %75, i32 0, i32 1, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %76, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  store ptr %78, ptr %80, align 4
  store volatile ptr %79, ptr %78, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %76, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %77, align 4
  %81 = load volatile i32, ptr %75, align 4
  %82 = and i32 %81, 1048576
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %73
  %85 = load volatile i32, ptr %75, align 4
  %86 = lshr i32 %85, 18
  %87 = and i32 %86, 2
  %88 = load volatile i32, ptr %75, align 4
  %89 = lshr i32 %88, 5
  %90 = and i32 %89, 1
  %91 = or i32 %90, %87
  %92 = xor i32 %91, 2
  br label %93

93:                                               ; preds = %84, %73
  %94 = phi i32 [ %92, %84 ], [ 4, %73 ]
  %95 = load volatile i32, ptr %75, align 4
  %96 = and i32 %95, 65536
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = getelementptr %struct.page, ptr %75, i32 1, i32 1, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi i32 [ %100, %98 ], [ 1, %93 ]
  %103 = lshr i32 %81, 30
  %104 = sub i32 0, %102
  %105 = getelementptr i8, ptr %1, i32 -3776
  tail call void @__mod_node_page_state(ptr noundef %105, i32 noundef %94, i32 noundef %104) #11
  %106 = getelementptr [4 x %struct.zone], ptr %105, i32 0, i32 %103
  %107 = add nsw i32 %94, 1
  tail call void @__mod_zone_page_state(ptr noundef %106, i32 noundef %107, i32 noundef %104) #11
  %108 = load volatile i32, ptr %3, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111, !prof !10

111:                                              ; preds = %101
  %112 = add i32 %108, -1
  br label %115

113:                                              ; preds = %101
  %114 = ptrtoint ptr %0 to i32
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = inttoptr i32 %116 to ptr
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %117) #11
  %118 = load volatile i32, ptr %3, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121, !prof !10

121:                                              ; preds = %115
  %122 = add i32 %118, -1
  br label %125

123:                                              ; preds = %115
  %124 = ptrtoint ptr %0 to i32
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = inttoptr i32 %126 to ptr
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %127) #11
  %128 = load volatile i32, ptr %3, align 4
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131, !prof !10

131:                                              ; preds = %125
  %132 = add i32 %128, -1
  br label %135

133:                                              ; preds = %125
  %134 = ptrtoint ptr %0 to i32
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = inttoptr i32 %136 to ptr
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %137) #11
  %138 = load volatile i32, ptr %3, align 4
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141, !prof !10

141:                                              ; preds = %135
  %142 = add i32 %138, -1
  br label %145

143:                                              ; preds = %135
  %144 = ptrtoint ptr %0 to i32
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = inttoptr i32 %146 to ptr
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %148, 1048576
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %145
  %152 = load volatile i32, ptr %147, align 4
  %153 = lshr i32 %152, 18
  %154 = and i32 %153, 2
  %155 = load volatile i32, ptr %147, align 4
  %156 = lshr i32 %155, 5
  %157 = and i32 %156, 1
  %158 = or i32 %157, %154
  %159 = xor i32 %158, 2
  br label %160

160:                                              ; preds = %151, %145
  %161 = phi i32 [ %159, %151 ], [ 4, %145 ]
  %162 = load volatile i32, ptr %147, align 4
  %163 = and i32 %162, 65536
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %160
  %166 = getelementptr %struct.page, ptr %147, i32 1, i32 1, i32 0, i32 2
  %167 = load i32, ptr %166, align 4
  br label %168

168:                                              ; preds = %165, %160
  %169 = phi i32 [ %167, %165 ], [ 1, %160 ]
  %170 = lshr i32 %148, 30
  tail call void @__mod_node_page_state(ptr noundef %105, i32 noundef %161, i32 noundef %169) #11
  %171 = getelementptr [4 x %struct.zone], ptr %105, i32 0, i32 %170
  %172 = add nsw i32 %161, 1
  tail call void @__mod_zone_page_state(ptr noundef %171, i32 noundef %172, i32 noundef %169) #11
  %173 = getelementptr inbounds %struct.anon, ptr %147, i32 0, i32 1
  %174 = getelementptr [5 x %struct.list_head], ptr %1, i32 0, i32 %161
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.list_head, ptr %175, i32 0, i32 1
  store ptr %173, ptr %176, align 4
  store ptr %175, ptr %173, align 4
  %177 = getelementptr inbounds %struct.anon, ptr %147, i32 0, i32 1, i32 1
  store ptr %174, ptr %177, align 4
  store volatile ptr %173, ptr %174, align 4
  %178 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %179 = inttoptr i32 %178 to ptr
  %180 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %179) #9, !srcloc !12
  %181 = add i32 %180, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 19) to i32)
  %182 = inttoptr i32 %181 to ptr
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %183, 1
  store i32 %184, ptr %182, align 4
  br label %185

185:                                              ; preds = %168, %59, %47, %27, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @deactivate_file_page(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1048576
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #11, !srcloc !14
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 1, ptr elementtype(i32) %17) #11, !srcloc !37
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !39
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #9, !srcloc !12
  %25 = add i32 %24, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 2) to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = load i8, ptr %26, align 4
  %28 = add i8 %27, 1
  store i8 %28, ptr %26, align 4
  %29 = zext i8 %27 to i32
  %30 = getelementptr %struct.pagevec, ptr %26, i32 0, i32 2, i32 %29
  store ptr %0, ptr %30, align 4
  %31 = icmp eq i8 %28, 15
  br i1 %31, label %43, label %32

32:                                               ; preds = %21
  %33 = load volatile i32, ptr %0, align 4
  %34 = and i32 %33, 65536
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load volatile i32, ptr %2, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load volatile i32, ptr @lru_disable_count, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40, %36, %32, %21
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %26, ptr noundef nonnull @lru_deactivate_file_fn)
  br label %44

44:                                               ; preds = %43, %40
  %45 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %46 = inttoptr i32 %45 to ptr
  %47 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %46) #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !40
  br label %48

48:                                               ; preds = %44, %16, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @deactivate_page(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %83, label %16

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %2, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !10

20:                                               ; preds = %16
  %21 = add i32 %17, -1
  br label %24

22:                                               ; preds = %16
  %23 = ptrtoint ptr %0 to i32
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = inttoptr i32 %25 to ptr
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %83, label %30

30:                                               ; preds = %24
  %31 = load volatile i32, ptr %2, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !10

34:                                               ; preds = %30
  %35 = add i32 %31, -1
  br label %38

36:                                               ; preds = %30
  %37 = ptrtoint ptr %0 to i32
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = inttoptr i32 %39 to ptr
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1048576
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !41
  %45 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %46 = inttoptr i32 %45 to ptr
  %47 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %46) #9, !srcloc !12
  %48 = add i32 %47, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 3) to i32)
  %49 = inttoptr i32 %48 to ptr
  %50 = load volatile i32, ptr %2, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !10

53:                                               ; preds = %44
  %54 = add i32 %50, -1
  br label %57

55:                                               ; preds = %44
  %56 = ptrtoint ptr %0 to i32
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #11, !srcloc !14
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #11, !srcloc !17
  %62 = load i8, ptr %49, align 4
  %63 = add i8 %62, 1
  store i8 %63, ptr %49, align 4
  %64 = zext i8 %62 to i32
  %65 = getelementptr %struct.pagevec, ptr %49, i32 0, i32 2, i32 %64
  store ptr %0, ptr %65, align 4
  %66 = icmp eq i8 %63, 15
  br i1 %66, label %78, label %67

67:                                               ; preds = %57
  %68 = load volatile i32, ptr %0, align 4
  %69 = and i32 %68, 65536
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load volatile i32, ptr %2, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load volatile i32, ptr @lru_disable_count, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75, %71, %67, %57
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %49, ptr noundef nonnull @lru_deactivate_fn)
  br label %79

79:                                               ; preds = %78, %75
  %80 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %81 = inttoptr i32 %80 to ptr
  %82 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %81) #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !42
  br label %83

83:                                               ; preds = %79, %38, %24, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mark_page_lazyfree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %117, label %16

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %2, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !10

20:                                               ; preds = %16
  %21 = add i32 %17, -1
  br label %24

22:                                               ; preds = %16
  %23 = ptrtoint ptr %0 to i32
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %117, label %32

32:                                               ; preds = %24
  %33 = load volatile i32, ptr %2, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !10

36:                                               ; preds = %32
  %37 = add i32 %33, -1
  br label %40

38:                                               ; preds = %32
  %39 = ptrtoint ptr %0 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = inttoptr i32 %41 to ptr
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 524288
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %117, label %46

46:                                               ; preds = %40
  %47 = load volatile i32, ptr %2, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50, !prof !10

50:                                               ; preds = %46
  %51 = add i32 %47, -1
  br label %54

52:                                               ; preds = %46
  %53 = ptrtoint ptr %0 to i32
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = inttoptr i32 %55 to ptr
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 524288
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load volatile i32, ptr %56, align 4
  %62 = and i32 %61, 1024
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %117

64:                                               ; preds = %60, %54
  %65 = load volatile i32, ptr %2, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68, !prof !10

68:                                               ; preds = %64
  %69 = add i32 %65, -1
  br label %72

70:                                               ; preds = %64
  %71 = ptrtoint ptr %0 to i32
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = inttoptr i32 %73 to ptr
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %75, 1048576
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %117

78:                                               ; preds = %72
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !43
  %79 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %80 = inttoptr i32 %79 to ptr
  %81 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %80) #9, !srcloc !12
  %82 = add i32 %81, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 4) to i32)
  %83 = inttoptr i32 %82 to ptr
  %84 = load volatile i32, ptr %2, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87, !prof !10

87:                                               ; preds = %78
  %88 = add i32 %84, -1
  br label %91

89:                                               ; preds = %78
  %90 = ptrtoint ptr %0 to i32
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = inttoptr i32 %92 to ptr
  %94 = getelementptr inbounds %struct.page, ptr %93, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %94) #11, !srcloc !14
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 1, ptr elementtype(i32) %94) #11, !srcloc !17
  %96 = load i8, ptr %83, align 4
  %97 = add i8 %96, 1
  store i8 %97, ptr %83, align 4
  %98 = zext i8 %96 to i32
  %99 = getelementptr %struct.pagevec, ptr %83, i32 0, i32 2, i32 %98
  store ptr %0, ptr %99, align 4
  %100 = icmp eq i8 %97, 15
  br i1 %100, label %112, label %101

101:                                              ; preds = %91
  %102 = load volatile i32, ptr %0, align 4
  %103 = and i32 %102, 65536
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load volatile i32, ptr %2, align 4
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load volatile i32, ptr @lru_disable_count, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109, %105, %101, %91
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %83, ptr noundef nonnull @lru_lazyfree_fn)
  br label %113

113:                                              ; preds = %112, %109
  %114 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %115 = inttoptr i32 %114 to ptr
  %116 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %115) #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !44
  br label %117

117:                                              ; preds = %113, %72, %60, %40, %24, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lru_add_drain() local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !45
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #9, !srcloc !12
  %4 = tail call ptr @llvm.thread.pointer() #11
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  tail call void @lru_add_drain_cpu(i32 noundef %6)
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lru_add_drain_cpu_zone(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !47
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #9, !srcloc !12
  %5 = tail call ptr @llvm.thread.pointer() #11
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  tail call void @lru_add_drain_cpu(i32 noundef %7)
  tail call void @drain_local_pages(ptr noundef %0) #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_local_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__lru_add_drain_all(i1 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @mm_percpu_wq, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !11

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 780, i32 noundef 9, ptr noundef null) #11
  br label %84

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !49
  %6 = load volatile i32, ptr @__lru_add_drain_all.lru_drain_gen, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !50
  tail call void @mutex_lock(ptr noundef nonnull @__lru_add_drain_all.lock) #11
  %7 = load i32, ptr @__lru_add_drain_all.lru_drain_gen, align 4
  %8 = icmp eq i32 %6, %7
  %9 = or i1 %8, %0
  br i1 %9, label %10, label %83, !prof !10

10:                                               ; preds = %5
  %11 = add i32 %7, 1
  store volatile i32 %11, ptr @__lru_add_drain_all.lru_drain_gen, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !51
  store i32 0, ptr @__lru_add_drain_all.has_work, align 4
  %12 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #12
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %69, %10
  %16 = phi i32 [ %13, %10 ], [ %71, %69 ]
  %17 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__lru_add_drain_all.has_work) #12
  %18 = icmp ult i32 %17, %16
  br i1 %18, label %73, label %83

19:                                               ; preds = %69, %10
  %20 = phi i32 [ %70, %69 ], [ %12, %10 ]
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, ptrtoint (ptr @lru_add_drain_work to i32)
  %24 = inttoptr i32 %23 to ptr
  br i1 %0, label %57, label %25

25:                                               ; preds = %19
  %26 = add i32 %22, ptrtoint (ptr @lru_pvecs to i32)
  %27 = inttoptr i32 %26 to ptr
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %25
  %31 = add i32 %22, ptrtoint (ptr @lru_rotate to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = add i32 %22, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 2) to i32)
  %37 = inttoptr i32 %36 to ptr
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = add i32 %22, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 3) to i32)
  %42 = inttoptr i32 %41 to ptr
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = add i32 %22, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 4) to i32)
  %47 = inttoptr i32 %46 to ptr
  %48 = load i8, ptr %47, align 4
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = add i32 %22, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 5) to i32)
  %52 = inttoptr i32 %51 to ptr
  %53 = load i8, ptr %52, align 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = tail call zeroext i1 @has_bh_in_lru(i32 noundef %20, ptr noundef null) #11
  br i1 %56, label %57, label %69

57:                                               ; preds = %55, %50, %45, %40, %35, %30, %25, %19
  store i32 -32, ptr %24, align 4
  %58 = getelementptr inbounds %struct.work_struct, ptr %24, i32 0, i32 1
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.work_struct, ptr %24, i32 0, i32 1, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.work_struct, ptr %24, i32 0, i32 2
  store ptr @lru_add_drain_per_cpu, ptr %60, align 4
  %61 = load ptr, ptr @mm_percpu_wq, align 4
  %62 = tail call zeroext i1 @queue_work_on(i32 noundef %20, ptr noundef %61, ptr noundef %24) #11
  %63 = and i32 %20, 31
  %64 = shl nuw i32 1, %63
  %65 = lshr i32 %20, 5
  %66 = getelementptr i32, ptr @__lru_add_drain_all.has_work, i32 %65
  %67 = load i32, ptr %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, ptr %66, align 4
  br label %69

69:                                               ; preds = %57, %55
  %70 = tail call i32 @cpumask_next(i32 noundef %20, ptr noundef nonnull @__cpu_online_mask) #12
  %71 = load i32, ptr @nr_cpu_ids, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %19, label %15

73:                                               ; preds = %73, %15
  %74 = phi i32 [ %80, %73 ], [ %17, %15 ]
  %75 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, ptrtoint (ptr @lru_add_drain_work to i32)
  %78 = inttoptr i32 %77 to ptr
  %79 = tail call zeroext i1 @flush_work(ptr noundef %78) #11
  %80 = tail call i32 @cpumask_next(i32 noundef %74, ptr noundef nonnull @__lru_add_drain_all.has_work) #12
  %81 = load i32, ptr @nr_cpu_ids, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %73, label %83

83:                                               ; preds = %73, %15, %5
  tail call void @mutex_unlock(ptr noundef nonnull @__lru_add_drain_all.lock) #11
  br label %84

84:                                               ; preds = %83, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @has_bh_in_lru(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lru_add_drain_per_cpu(ptr nocapture noundef readnone %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !52
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #9, !srcloc !12
  %5 = tail call ptr @llvm.thread.pointer() #11
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  tail call void @lru_add_drain_cpu(i32 noundef %7) #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !53
  tail call void @invalidate_bh_lrus_cpu() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lru_add_drain_all() local_unnamed_addr #0 {
  tail call void @__lru_add_drain_all(i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lru_cache_disable() local_unnamed_addr #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @lru_disable_count) #11, !srcloc !14
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @lru_disable_count, ptr nonnull @lru_disable_count, i32 1, ptr nonnull elementtype(i32) @lru_disable_count) #11, !srcloc !17
  tail call void @__lru_add_drain_all(i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @release_pages(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %160

6:                                                ; preds = %150, %2
  %7 = phi i32 [ %154, %150 ], [ 0, %2 ]
  %8 = phi i32 [ %153, %150 ], [ 0, %2 ]
  %9 = phi ptr [ %152, %150 ], [ null, %2 ]
  %10 = phi i32 [ %151, %150 ], [ 0, %2 ]
  %11 = getelementptr ptr, ptr %0, i32 %7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !10

17:                                               ; preds = %6
  %18 = add i32 %14, -1
  br label %21

19:                                               ; preds = %6
  %20 = ptrtoint ptr %12 to i32
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = inttoptr i32 %22 to ptr
  %24 = icmp eq ptr %9, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = add i32 %8, 1
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.lruvec, ptr %9, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %10) #11
  br label %30

30:                                               ; preds = %28, %25, %21
  %31 = phi ptr [ null, %28 ], [ %9, %25 ], [ null, %21 ]
  %32 = phi i32 [ 32, %28 ], [ %26, %25 ], [ %8, %21 ]
  %33 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #11, !srcloc !14
  %34 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #11, !srcloc !15
  %35 = extractvalue { i32, i32 } %34, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %150

37:                                               ; preds = %30
  %38 = load volatile i32, ptr %23, align 4
  %39 = and i32 %38, 65536
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41, %37
  %47 = icmp eq ptr %31, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.lruvec, ptr %31, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %10) #11
  br label %50

50:                                               ; preds = %48, %46
  call fastcc void @__page_cache_release(ptr noundef %23) #11
  %51 = getelementptr %struct.page, ptr %23, i32 1, i32 1, i32 0, i32 0, i32 1
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i32
  %54 = getelementptr [2 x ptr], ptr @compound_page_dtors, i32 0, i32 %53
  %55 = load ptr, ptr %54, align 4
  call void %55(ptr noundef %23) #11
  br label %150

56:                                               ; preds = %41
  %57 = load volatile i32, ptr %42, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60, !prof !10

60:                                               ; preds = %56
  %61 = add i32 %57, -1
  %62 = inttoptr i32 %61 to ptr
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi ptr [ %23, %56 ], [ %62, %60 ]
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %141, label %68

68:                                               ; preds = %63
  %69 = icmp eq ptr %31, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %68
  %71 = getelementptr i8, ptr %31, i32 -3776
  %72 = icmp eq ptr %71, @contig_page_data
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.lruvec, ptr %31, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %74, i32 noundef %10) #11
  br label %75

75:                                               ; preds = %73, %68
  %76 = call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1)) #11
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi i32 [ %76, %75 ], [ %10, %70 ]
  %79 = phi ptr [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24), %75 ], [ %31, %70 ]
  %80 = icmp eq ptr %31, %79
  %81 = select i1 %80, i32 %32, i32 0
  %82 = load volatile i32, ptr %42, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85, !prof !10

85:                                               ; preds = %77
  %86 = add i32 %82, -1
  %87 = inttoptr i32 %86 to ptr
  br label %88

88:                                               ; preds = %85, %77
  %89 = phi ptr [ %23, %77 ], [ %87, %85 ]
  %90 = getelementptr inbounds %struct.anon, ptr %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.anon, ptr %89, i32 0, i32 1, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %90, align 4
  %94 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  store ptr %92, ptr %94, align 4
  store volatile ptr %93, ptr %92, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %90, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %91, align 4
  %95 = load volatile i32, ptr %89, align 4
  %96 = and i32 %95, 1048576
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %88
  %99 = load volatile i32, ptr %89, align 4
  %100 = lshr i32 %99, 18
  %101 = and i32 %100, 2
  %102 = load volatile i32, ptr %89, align 4
  %103 = lshr i32 %102, 5
  %104 = and i32 %103, 1
  %105 = or i32 %104, %101
  %106 = xor i32 %105, 2
  br label %107

107:                                              ; preds = %98, %88
  %108 = phi i32 [ %106, %98 ], [ 4, %88 ]
  %109 = load volatile i32, ptr %89, align 4
  %110 = and i32 %109, 65536
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = getelementptr %struct.page, ptr %89, i32 1, i32 1, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  br label %115

115:                                              ; preds = %112, %107
  %116 = phi i32 [ %114, %112 ], [ 1, %107 ]
  %117 = lshr i32 %95, 30
  %118 = sub i32 0, %116
  %119 = getelementptr i8, ptr %79, i32 -3776
  call void @__mod_node_page_state(ptr noundef %119, i32 noundef %108, i32 noundef %118) #11
  %120 = getelementptr [4 x %struct.zone], ptr %119, i32 0, i32 %117
  %121 = add nsw i32 %108, 1
  call void @__mod_zone_page_state(ptr noundef %120, i32 noundef %121, i32 noundef %118) #11
  %122 = load volatile i32, ptr %42, align 4
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125, !prof !10

125:                                              ; preds = %115
  %126 = add i32 %122, -1
  %127 = inttoptr i32 %126 to ptr
  br label %128

128:                                              ; preds = %125, %115
  %129 = phi ptr [ %23, %115 ], [ %127, %125 ]
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, -17
  store i32 %131, ptr %129, align 4
  %132 = load volatile i32, ptr %129, align 4
  %133 = and i32 %132, 32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = load volatile i32, ptr %129, align 4
  %137 = and i32 %136, 1048576
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135, %128
  %140 = and i32 %132, -1048609
  store i32 %140, ptr %129, align 4
  br label %141

141:                                              ; preds = %139, %135, %63
  %142 = phi i32 [ %10, %63 ], [ %78, %135 ], [ %78, %139 ]
  %143 = phi ptr [ %31, %63 ], [ %79, %135 ], [ %79, %139 ]
  %144 = phi i32 [ %32, %63 ], [ %81, %135 ], [ %81, %139 ]
  %145 = load i32, ptr %23, align 4
  %146 = and i32 %145, -129
  store i32 %146, ptr %23, align 4
  %147 = load ptr, ptr %3, align 8
  %148 = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  store ptr %42, ptr %148, align 4
  store ptr %147, ptr %42, align 4
  %149 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %3, ptr %149, align 4
  store volatile ptr %42, ptr %3, align 8
  br label %150

150:                                              ; preds = %141, %50, %30
  %151 = phi i32 [ %10, %30 ], [ %142, %141 ], [ %10, %50 ]
  %152 = phi ptr [ %31, %30 ], [ %143, %141 ], [ null, %50 ]
  %153 = phi i32 [ %32, %30 ], [ %144, %141 ], [ %32, %50 ]
  %154 = add nuw nsw i32 %7, 1
  %155 = icmp eq i32 %154, %1
  br i1 %155, label %156, label %6

156:                                              ; preds = %150
  %157 = icmp eq ptr %152, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %156
  %159 = getelementptr inbounds %struct.lruvec, ptr %152, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %159, i32 noundef %151) #11
  br label %160

160:                                              ; preds = %158, %156, %2
  call void @free_unref_page_list(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pagevec_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pagevec, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 1, !range !54
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !45
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #9, !srcloc !12
  %9 = tail call ptr @llvm.thread.pointer() #11
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  tail call void @lru_add_drain_cpu(i32 noundef %11) #11
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !46
  store i8 1, ptr %2, align 1
  br label %15

15:                                               ; preds = %5, %1
  %16 = getelementptr inbounds %struct.pagevec, ptr %0, i32 0, i32 2
  %17 = load i8, ptr %0, align 4
  %18 = zext i8 %17 to i32
  tail call void @release_pages(ptr noundef %16, i32 noundef %18)
  store i8 0, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_batch_remove_exceptionals(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = load i8, ptr %0, align 4
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %17, %1
  %5 = phi i8 [ %18, %17 ], [ %2, %1 ]
  %6 = phi i32 [ %19, %17 ], [ 0, %1 ]
  %7 = phi i32 [ %20, %17 ], [ 0, %1 ]
  %8 = getelementptr %struct.folio_batch, ptr %0, i32 0, i32 2, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = add i32 %6, 1
  %15 = getelementptr %struct.folio_batch, ptr %0, i32 0, i32 2, i32 %6
  store ptr %9, ptr %15, align 4
  %16 = load i8, ptr %0, align 4
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i8 [ %5, %4 ], [ %16, %13 ]
  %19 = phi i32 [ %6, %4 ], [ %14, %13 ]
  %20 = add nuw nsw i32 %7, 1
  %21 = zext i8 %18 to i32
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %4, label %23

23:                                               ; preds = %17, %1
  %24 = phi i32 [ 0, %1 ], [ %19, %17 ]
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pagevec_lookup_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pagevec, ptr %0, i32 0, i32 2
  %6 = tail call i32 @find_get_pages_range(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 15, ptr noundef %5) #11
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %0, align 4
  %8 = and i32 %6, 255
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_pages_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pagevec_lookup_range_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.pagevec, ptr %0, i32 0, i32 2
  %7 = tail call i32 @find_get_pages_range_tag(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 15, ptr noundef %6) #11
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr %0, align 4
  %9 = and i32 %7, 255
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_pages_range_tag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @swap_setup() local_unnamed_addr #7 section ".init.text" {
  %1 = load volatile i32, ptr @_totalram_pages, align 4
  %2 = icmp ult i32 %1, 4096
  %3 = select i1 %2, i32 2, i32 3
  store i32 %3, ptr @page_cluster, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_lru_insertion(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #11
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %37

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @.str.10, ptr @.str.9
  %21 = and i32 %17, 2
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @.str.12, ptr @.str.11
  %24 = and i32 %17, 8
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @.str.10, ptr @.str.13
  %27 = and i32 %17, 16
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr @.str.10, ptr @.str.14
  %30 = and i32 %17, 32
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, ptr @.str.10, ptr @.str.15
  %33 = and i32 %17, 64
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.10, ptr @.str.16
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %20, ptr noundef nonnull %23, ptr noundef nonnull %26, ptr noundef nonnull %29, ptr noundef nonnull %32, ptr noundef nonnull %35) #11
  %36 = tail call i32 @trace_handle_return(ptr noundef %9) #11
  br label %37

37:                                               ; preds = %8, %3
  %38 = phi i32 [ %36, %8 ], [ %6, %3 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_lru_activate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #11
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mm_lru_activate, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_mm_lru_activate, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %11, i32 noundef %13) #11
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #11
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__page_cache_release(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %82, label %16

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %2, align 4
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1)) #11
  %19 = load volatile i32, ptr %2, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !10

22:                                               ; preds = %16
  %23 = add i32 %19, -1
  br label %26

24:                                               ; preds = %16
  %25 = ptrtoint ptr %0 to i32
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  %34 = load volatile i32, ptr %28, align 4
  %35 = and i32 %34, 1048576
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load volatile i32, ptr %28, align 4
  %39 = lshr i32 %38, 18
  %40 = and i32 %39, 2
  %41 = load volatile i32, ptr %28, align 4
  %42 = lshr i32 %41, 5
  %43 = and i32 %42, 1
  %44 = or i32 %43, %40
  %45 = xor i32 %44, 2
  br label %46

46:                                               ; preds = %37, %26
  %47 = phi i32 [ %45, %37 ], [ 4, %26 ]
  %48 = load volatile i32, ptr %28, align 4
  %49 = and i32 %48, 65536
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = getelementptr %struct.page, ptr %28, i32 1, i32 1, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i32 [ %53, %51 ], [ 1, %46 ]
  %56 = lshr i32 %34, 30
  %57 = sub i32 0, %55
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %47, i32 noundef %57) #11
  %58 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %56
  %59 = add nsw i32 %47, 1
  tail call void @__mod_zone_page_state(ptr noundef %58, i32 noundef %59, i32 noundef %57) #11
  %60 = load volatile i32, ptr %2, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63, !prof !10

63:                                               ; preds = %54
  %64 = add i32 %60, -1
  br label %67

65:                                               ; preds = %54
  %66 = ptrtoint ptr %0 to i32
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = inttoptr i32 %68 to ptr
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, -17
  store i32 %71, ptr %69, align 4
  %72 = load volatile i32, ptr %69, align 4
  %73 = and i32 %72, 32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %67
  %76 = load volatile i32, ptr %69, align 4
  %77 = and i32 %76, 1048576
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75, %67
  %80 = and i32 %72, -1048609
  store i32 %80, ptr %69, align 4
  br label %81

81:                                               ; preds = %79, %75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24, i32 1), i32 noundef %18) #11
  br label %82

82:                                               ; preds = %81, %10
  %83 = load i32, ptr %0, align 4
  %84 = and i32 %83, -129
  store i32 %84, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_unref_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__activate_page(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !10

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %123

17:                                               ; preds = %11
  %18 = load volatile i32, ptr %13, align 4
  %19 = and i32 %18, 1048576
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %123

21:                                               ; preds = %17
  %22 = load volatile i32, ptr %13, align 4
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr %struct.page, ptr %13, i32 1, i32 1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i32 [ %27, %25 ], [ 1, %21 ]
  %30 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  %31 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %30, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %33, ptr %32, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %31, align 4
  %35 = load volatile i32, ptr %13, align 4
  %36 = and i32 %35, 1048576
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load volatile i32, ptr %13, align 4
  %40 = lshr i32 %39, 18
  %41 = and i32 %40, 2
  %42 = load volatile i32, ptr %13, align 4
  %43 = lshr i32 %42, 5
  %44 = and i32 %43, 1
  %45 = or i32 %44, %41
  %46 = xor i32 %45, 2
  br label %47

47:                                               ; preds = %38, %28
  %48 = phi i32 [ %46, %38 ], [ 4, %28 ]
  %49 = load volatile i32, ptr %13, align 4
  %50 = and i32 %49, 65536
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = getelementptr %struct.page, ptr %13, i32 1, i32 1, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = phi i32 [ %54, %52 ], [ 1, %47 ]
  %57 = lshr i32 %35, 30
  %58 = sub i32 0, %56
  %59 = getelementptr i8, ptr %1, i32 -3776
  tail call void @__mod_node_page_state(ptr noundef %59, i32 noundef %48, i32 noundef %58) #11
  %60 = getelementptr [4 x %struct.zone], ptr %59, i32 0, i32 %57
  %61 = add nsw i32 %48, 1
  tail call void @__mod_zone_page_state(ptr noundef %60, i32 noundef %61, i32 noundef %58) #11
  tail call void @_set_bit(i32 noundef 5, ptr noundef %13) #11
  %62 = load volatile i32, ptr %13, align 4
  %63 = and i32 %62, 1048576
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %55
  %66 = load volatile i32, ptr %13, align 4
  %67 = lshr i32 %66, 18
  %68 = and i32 %67, 2
  %69 = load volatile i32, ptr %13, align 4
  %70 = lshr i32 %69, 5
  %71 = and i32 %70, 1
  %72 = or i32 %71, %68
  %73 = xor i32 %72, 2
  br label %74

74:                                               ; preds = %65, %55
  %75 = phi i32 [ %73, %65 ], [ 4, %55 ]
  %76 = load volatile i32, ptr %13, align 4
  %77 = and i32 %76, 65536
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = getelementptr %struct.page, ptr %13, i32 1, i32 1, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %74
  %83 = phi i32 [ %81, %79 ], [ 1, %74 ]
  %84 = lshr i32 %62, 30
  tail call void @__mod_node_page_state(ptr noundef %59, i32 noundef %75, i32 noundef %83) #11
  %85 = getelementptr [4 x %struct.zone], ptr %59, i32 0, i32 %84
  %86 = add nsw i32 %75, 1
  tail call void @__mod_zone_page_state(ptr noundef %85, i32 noundef %86, i32 noundef %83) #11
  %87 = getelementptr [5 x %struct.list_head], ptr %1, i32 0, i32 %75
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  store ptr %30, ptr %89, align 4
  store ptr %88, ptr %30, align 4
  store ptr %87, ptr %31, align 4
  store volatile ptr %30, ptr %87, align 4
  %90 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_lru_activate, i32 0, i32 1), align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %82
  %93 = tail call ptr @llvm.thread.pointer() #11
  %94 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 5
  %97 = getelementptr i32, ptr @__cpu_online_mask, i32 %96
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %95, 31
  %100 = shl nuw i32 1, %99
  %101 = and i32 %100, %98
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %92
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !55
  %104 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_lru_activate, i32 0, i32 7), align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %106, %103
  %107 = phi ptr [ %111, %106 ], [ %104, %103 ]
  %108 = load volatile ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.tracepoint_func, ptr %107, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  tail call void %108(ptr noundef %110, ptr noundef %13) #11
  %111 = getelementptr %struct.tracepoint_func, ptr %107, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %106

114:                                              ; preds = %106, %103
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !56
  br label %115

115:                                              ; preds = %114, %92, %82
  %116 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %117 = inttoptr i32 %116 to ptr
  %118 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %117) #9, !srcloc !12
  %119 = add i32 %118, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 17) to i32)
  %120 = inttoptr i32 %119 to ptr
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, %29
  store i32 %122, ptr %120, align 4
  br label %123

123:                                              ; preds = %115, %17, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bh_lrus_cpu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold mustprogress nofree norecurse nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }

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
!12 = !{i64 795975}
!13 = !{i64 2148473662}
!14 = !{i64 871597, i64 2148361568, i64 2148361594, i64 2148361641, i64 2148361663, i64 2148361691, i64 2148361711}
!15 = !{i64 2148376024, i64 2148376056, i64 2148376085, i64 2148376119, i64 2148376150, i64 2148376173}
!16 = !{i64 2148473865}
!17 = !{i64 2148372983, i64 2148373009, i64 2148373038, i64 2148373072, i64 2148373103, i64 2148373126}
!18 = !{i64 777275, i64 777336}
!19 = !{i64 780292}
!20 = !{i64 2149038663}
!21 = !{i64 2149034487}
!22 = !{i64 2149034562, i64 2149034589, i64 2149034636, i64 2149034658, i64 2149034686, i64 2149034706}
!23 = !{i64 777520}
!24 = !{i64 2149062807}
!25 = !{i64 2154467870}
!26 = !{i64 2154470422}
!27 = !{i64 2154470618}
!28 = !{i64 2154473104}
!29 = !{i64 2154474987}
!30 = !{i64 2154477473}
!31 = !{i64 2154524284}
!32 = !{i64 2149437435}
!33 = !{i64 2149437652}
!34 = !{i64 2153622994}
!35 = !{i64 2153623148}
!36 = !{i64 2148372490}
!37 = !{i64 858166, i64 858191, i64 858213, i64 858229, i64 858241, i64 858261, i64 858285, i64 858301, i64 858313}
!38 = !{i64 2148372616}
!39 = !{i64 2154487243}
!40 = !{i64 2154489861}
!41 = !{i64 2154490057}
!42 = !{i64 2154492620}
!43 = !{i64 2154492816}
!44 = !{i64 2154495357}
!45 = !{i64 2154495553}
!46 = !{i64 2154497374}
!47 = !{i64 2154499587}
!48 = !{i64 2154501408}
!49 = !{i64 2154503058}
!50 = !{i64 2154508850}
!51 = !{i64 2154511193}
!52 = !{i64 2154497570}
!53 = !{i64 2154499391}
!54 = !{i8 0, i8 2}
!55 = !{i64 2153638858}
!56 = !{i64 2153639010}
