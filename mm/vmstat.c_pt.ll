; ModuleID = '/llk/IR/mm/vmstat.c_pt.bc'
source_filename = "../mm/vmstat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_event_states:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_event_states\22\09\09\09\09\09"
module asm "__kstrtabns_vm_event_states:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_all_vm_events:\09\09\09\09\09"
module asm "\09.asciz \09\22all_vm_events\22\09\09\09\09\09"
module asm "__kstrtabns_all_vm_events:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_zone_stat:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_zone_stat\22\09\09\09\09\09"
module asm "__kstrtabns_vm_zone_stat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_node_stat:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_node_stat\22\09\09\09\09\09"
module asm "__kstrtabns_vm_node_stat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mod_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__mod_zone_page_state\22\09\09\09\09\09"
module asm "__kstrtabns___mod_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mod_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__mod_node_page_state\22\09\09\09\09\09"
module asm "__kstrtabns___mod_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inc_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__inc_zone_page_state\22\09\09\09\09\09"
module asm "__kstrtabns___inc_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inc_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__inc_node_page_state\22\09\09\09\09\09"
module asm "__kstrtabns___inc_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dec_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__dec_zone_page_state\22\09\09\09\09\09"
module asm "__kstrtabns___dec_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dec_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__dec_node_page_state\22\09\09\09\09\09"
module asm "__kstrtabns___dec_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mod_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22mod_zone_page_state\22\09\09\09\09\09"
module asm "__kstrtabns_mod_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inc_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22inc_zone_page_state\22\09\09\09\09\09"
module asm "__kstrtabns_inc_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dec_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22dec_zone_page_state\22\09\09\09\09\09"
module asm "__kstrtabns_dec_zone_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inc_node_state:\09\09\09\09\09"
module asm "\09.asciz \09\22inc_node_state\22\09\09\09\09\09"
module asm "__kstrtabns_inc_node_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mod_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22mod_node_page_state\22\09\09\09\09\09"
module asm "__kstrtabns_mod_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inc_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22inc_node_page_state\22\09\09\09\09\09"
module asm "__kstrtabns_inc_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dec_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22dec_node_page_state\22\09\09\09\09\09"
module asm "__kstrtabns_dec_node_page_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vm_event_state = type { [71 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.per_cpu_nodestat = type { i8, [40 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.64, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@vm_event_states = dso_local global %struct.vm_event_state zeroinitializer, section ".data..percpu", align 4
@__kstrtab_vm_event_states = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_event_states = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_event_states = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_event_states to i32), ptr @__kstrtab_vm_event_states, ptr @__kstrtabns_vm_event_states }, section "___ksymtab+vm_event_states", align 4
@__kstrtab_all_vm_events = external dso_local constant [0 x i8], align 1
@__kstrtabns_all_vm_events = external dso_local constant [0 x i8], align 1
@__ksymtab_all_vm_events = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @all_vm_events to i32), ptr @__kstrtab_all_vm_events, ptr @__kstrtabns_all_vm_events }, section "___ksymtab_gpl+all_vm_events", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@vm_zone_stat = dso_local global [10 x %struct.atomic_t] zeroinitializer, section ".data..cacheline_aligned", align 64
@__kstrtab_vm_zone_stat = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_zone_stat = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_zone_stat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_zone_stat to i32), ptr @__kstrtab_vm_zone_stat, ptr @__kstrtabns_vm_zone_stat }, section "___ksymtab+vm_zone_stat", align 4
@vm_node_stat = dso_local global [40 x %struct.atomic_t] zeroinitializer, section ".data..cacheline_aligned", align 64
@__kstrtab_vm_node_stat = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_node_stat = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_node_stat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_node_stat to i32), ptr @__kstrtab_vm_node_stat, ptr @__kstrtabns_vm_node_stat }, section "___ksymtab+vm_node_stat", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab___mod_zone_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___mod_zone_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab___mod_zone_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mod_zone_page_state to i32), ptr @__kstrtab___mod_zone_page_state, ptr @__kstrtabns___mod_zone_page_state }, section "___ksymtab+__mod_zone_page_state", align 4
@__kstrtab___mod_node_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___mod_node_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab___mod_node_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mod_node_page_state to i32), ptr @__kstrtab___mod_node_page_state, ptr @__kstrtabns___mod_node_page_state }, section "___ksymtab+__mod_node_page_state", align 4
@__kstrtab___inc_zone_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___inc_zone_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab___inc_zone_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inc_zone_page_state to i32), ptr @__kstrtab___inc_zone_page_state, ptr @__kstrtabns___inc_zone_page_state }, section "___ksymtab+__inc_zone_page_state", align 4
@__kstrtab___inc_node_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___inc_node_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab___inc_node_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inc_node_page_state to i32), ptr @__kstrtab___inc_node_page_state, ptr @__kstrtabns___inc_node_page_state }, section "___ksymtab+__inc_node_page_state", align 4
@__kstrtab___dec_zone_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___dec_zone_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab___dec_zone_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dec_zone_page_state to i32), ptr @__kstrtab___dec_zone_page_state, ptr @__kstrtabns___dec_zone_page_state }, section "___ksymtab+__dec_zone_page_state", align 4
@__kstrtab___dec_node_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___dec_node_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab___dec_node_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dec_node_page_state to i32), ptr @__kstrtab___dec_node_page_state, ptr @__kstrtabns___dec_node_page_state }, section "___ksymtab+__dec_node_page_state", align 4
@__kstrtab_mod_zone_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_mod_zone_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab_mod_zone_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mod_zone_page_state to i32), ptr @__kstrtab_mod_zone_page_state, ptr @__kstrtabns_mod_zone_page_state }, section "___ksymtab+mod_zone_page_state", align 4
@__kstrtab_inc_zone_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_inc_zone_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab_inc_zone_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inc_zone_page_state to i32), ptr @__kstrtab_inc_zone_page_state, ptr @__kstrtabns_inc_zone_page_state }, section "___ksymtab+inc_zone_page_state", align 4
@__kstrtab_dec_zone_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_dec_zone_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab_dec_zone_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dec_zone_page_state to i32), ptr @__kstrtab_dec_zone_page_state, ptr @__kstrtabns_dec_zone_page_state }, section "___ksymtab+dec_zone_page_state", align 4
@__kstrtab_inc_node_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_inc_node_state = external dso_local constant [0 x i8], align 1
@__ksymtab_inc_node_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inc_node_state to i32), ptr @__kstrtab_inc_node_state, ptr @__kstrtabns_inc_node_state }, section "___ksymtab+inc_node_state", align 4
@__kstrtab_mod_node_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_mod_node_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab_mod_node_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mod_node_page_state to i32), ptr @__kstrtab_mod_node_page_state, ptr @__kstrtabns_mod_node_page_state }, section "___ksymtab+mod_node_page_state", align 4
@__kstrtab_inc_node_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_inc_node_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab_inc_node_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inc_node_page_state to i32), ptr @__kstrtab_inc_node_page_state, ptr @__kstrtabns_inc_node_page_state }, section "___ksymtab+inc_node_page_state", align 4
@__kstrtab_dec_node_page_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_dec_node_page_state = external dso_local constant [0 x i8], align 1
@__ksymtab_dec_node_page_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dec_node_page_state to i32), ptr @__kstrtab_dec_node_page_state, ptr @__kstrtabns_dec_node_page_state }, section "___ksymtab+dec_node_page_state", align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"nr_free_pages\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"nr_zone_inactive_anon\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"nr_zone_active_anon\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"nr_zone_inactive_file\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"nr_zone_active_file\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"nr_zone_unevictable\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"nr_zone_write_pending\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"nr_mlock\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"nr_bounce\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"nr_free_cma\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"nr_inactive_anon\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"nr_active_anon\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"nr_inactive_file\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"nr_active_file\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"nr_unevictable\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"nr_slab_reclaimable\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"nr_slab_unreclaimable\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"nr_isolated_anon\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"nr_isolated_file\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"workingset_nodes\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"workingset_refault_anon\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"workingset_refault_file\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"workingset_activate_anon\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"workingset_activate_file\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"workingset_restore_anon\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"workingset_restore_file\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"workingset_nodereclaim\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"nr_anon_pages\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"nr_mapped\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"nr_file_pages\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"nr_dirty\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"nr_writeback\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"nr_writeback_temp\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"nr_shmem\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"nr_shmem_hugepages\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"nr_shmem_pmdmapped\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"nr_file_hugepages\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"nr_file_pmdmapped\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"nr_anon_transparent_hugepages\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"nr_vmscan_write\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"nr_vmscan_immediate_reclaim\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"nr_dirtied\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"nr_written\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"nr_throttled_written\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"nr_kernel_misc_reclaimable\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"nr_foll_pin_acquired\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"nr_foll_pin_released\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"nr_kernel_stack\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"nr_page_table_pages\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"nr_swapcached\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"nr_dirty_threshold\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"nr_dirty_background_threshold\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"pgpgin\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"pgpgout\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"pswpin\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"pswpout\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"pgalloc_dma\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"pgalloc_normal\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"pgalloc_high\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"pgalloc_movable\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"allocstall_dma\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"allocstall_normal\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"allocstall_high\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"allocstall_movable\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"pgskip_dma\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"pgskip_normal\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"pgskip_high\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"pgskip_movable\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"pgfree\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"pgactivate\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"pgdeactivate\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"pglazyfree\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"pgfault\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"pgmajfault\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"pglazyfreed\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"pgrefill\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"pgreuse\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"pgsteal_kswapd\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"pgsteal_direct\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"pgdemote_kswapd\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"pgdemote_direct\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"pgscan_kswapd\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"pgscan_direct\00", align 1
@.str.86 = private unnamed_addr constant [23 x i8] c"pgscan_direct_throttle\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"pgscan_anon\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"pgscan_file\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"pgsteal_anon\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"pgsteal_file\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"pginodesteal\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"slabs_scanned\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"kswapd_inodesteal\00", align 1
@.str.94 = private unnamed_addr constant [29 x i8] c"kswapd_low_wmark_hit_quickly\00", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"kswapd_high_wmark_hit_quickly\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"pageoutrun\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"pgrotated\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"drop_pagecache\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"drop_slab\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"oom_kill\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"pgmigrate_success\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"pgmigrate_fail\00", align 1
@.str.103 = private unnamed_addr constant [22 x i8] c"thp_migration_success\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"thp_migration_fail\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"thp_migration_split\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"compact_migrate_scanned\00", align 1
@.str.107 = private unnamed_addr constant [21 x i8] c"compact_free_scanned\00", align 1
@.str.108 = private unnamed_addr constant [17 x i8] c"compact_isolated\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"compact_stall\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"compact_fail\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"compact_success\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"compact_daemon_wake\00", align 1
@.str.113 = private unnamed_addr constant [31 x i8] c"compact_daemon_migrate_scanned\00", align 1
@.str.114 = private unnamed_addr constant [28 x i8] c"compact_daemon_free_scanned\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"cma_alloc_success\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"cma_alloc_fail\00", align 1
@.str.117 = private unnamed_addr constant [23 x i8] c"unevictable_pgs_culled\00", align 1
@.str.118 = private unnamed_addr constant [24 x i8] c"unevictable_pgs_scanned\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"unevictable_pgs_rescued\00", align 1
@.str.120 = private unnamed_addr constant [24 x i8] c"unevictable_pgs_mlocked\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c"unevictable_pgs_munlocked\00", align 1
@.str.122 = private unnamed_addr constant [24 x i8] c"unevictable_pgs_cleared\00", align 1
@.str.123 = private unnamed_addr constant [25 x i8] c"unevictable_pgs_stranded\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"swap_ra\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"swap_ra_hit\00", align 1
@vmstat_text = dso_local local_unnamed_addr constant [123 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125], align 4
@sysctl_stat_interval = dso_local local_unnamed_addr global i32 100, section ".data..read_mostly", align 4
@.str.126 = private unnamed_addr constant [14 x i8] c"\014%s: %s %ld\0A\00", align 1
@__func__.vmstat_refresh = private unnamed_addr constant [15 x i8] c"vmstat_refresh\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@vmstat_work = internal global %struct.delayed_work zeroinitializer, section ".data..percpu", align 4
@.str.127 = private unnamed_addr constant [13 x i8] c"mm_percpu_wq\00", align 1
@mm_percpu_wq = dso_local local_unnamed_addr global ptr null, align 4
@.str.128 = private unnamed_addr constant [15 x i8] c"mm/vmstat:dead\00", align 1
@.str.129 = private unnamed_addr constant [51 x i8] c"\013vmstat: failed to register 'dead' hotplug state\0A\00", align 1
@.str.130 = private unnamed_addr constant [17 x i8] c"mm/vmstat:online\00", align 1
@.str.131 = private unnamed_addr constant [53 x i8] c"\013vmstat: failed to register 'online' hotplug state\0A\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"buddyinfo\00", align 1
@fragmentation_op = internal constant %struct.seq_operations { ptr @frag_start, ptr @frag_stop, ptr @frag_next, ptr @frag_show }, align 4
@.str.133 = private unnamed_addr constant [13 x i8] c"pagetypeinfo\00", align 1
@pagetypeinfo_op = internal constant %struct.seq_operations { ptr @frag_start, ptr @frag_stop, ptr @frag_next, ptr @pagetypeinfo_show }, align 4
@.str.134 = private unnamed_addr constant [7 x i8] c"vmstat\00", align 1
@vmstat_op = internal constant %struct.seq_operations { ptr @vmstat_start, ptr @vmstat_stop, ptr @vmstat_next, ptr @vmstat_show }, align 4
@.str.135 = private unnamed_addr constant [9 x i8] c"zoneinfo\00", align 1
@zoneinfo_op = internal constant %struct.seq_operations { ptr @frag_start, ptr @frag_stop, ptr @frag_next, ptr @zoneinfo_show }, align 4
@__initcall__kmod_vmstat__258_2239_extfrag_debug_init6 = internal global ptr @extfrag_debug_init, section ".initcall6.init", align 4
@vm_numa_event = dso_local local_unnamed_addr global [0 x %struct.atomic_t] zeroinitializer, section ".data..cacheline_aligned", align 64
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@__fragmentation_index.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"mm/vmstat.c\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@shepherd = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @shepherd, i64 4), ptr getelementptr (i8, ptr @shepherd, i64 4) }, ptr @vmstat_shepherd }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2621440 }, ptr null, i32 0 }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.137 = private unnamed_addr constant [19 x i8] c"Node %d, zone %8s \00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"%6lu \00", align 1
@.str.139 = private unnamed_addr constant [22 x i8] c"Page block order: %d\0A\00", align 1
@.str.140 = private unnamed_addr constant [23 x i8] c"Pages per block:  %lu\0A\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"%-43s \00", align 1
@.str.142 = private unnamed_addr constant [43 x i8] c"Free pages count per migrate type at order\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"%6d \00", align 1
@.str.144 = private unnamed_addr constant [31 x i8] c"Node %4d, zone %8s, type %12s \00", align 1
@migratetype_names = external dso_local local_unnamed_addr constant [6 x ptr], align 4
@.str.145 = private unnamed_addr constant [8 x i8] c"%s%6lu \00", align 1
@.str.146 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.147 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"\0A%-23s\00", align 1
@.str.149 = private unnamed_addr constant [23 x i8] c"Number of blocks type \00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"%12s \00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.151 = private unnamed_addr constant [7 x i8] c"%12lu \00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.152 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"nr_unstable 0\0A\00", align 1
@.str.154 = private unnamed_addr constant [18 x i8] c"Node %d, zone %8s\00", align 1
@.str.155 = private unnamed_addr constant [18 x i8] c"\0A  per-node stats\00", align 1
@.str.156 = private unnamed_addr constant [17 x i8] c"\0A      %-12s %lu\00", align 1
@.str.157 = private unnamed_addr constant [190 x i8] c"\0A  pages free     %lu\0A        boost    %lu\0A        min      %lu\0A        low      %lu\0A        high     %lu\0A        spanned  %lu\0A        present  %lu\0A        managed  %lu\0A        cma      %lu\00", align 1
@.str.158 = private unnamed_addr constant [26 x i8] c"\0A        protection: (%ld\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c", %ld\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"\0A  pagesets\00", align 1
@.str.161 = private unnamed_addr constant [85 x i8] c"\0A    cpu: %i\0A              count: %i\0A              high:  %i\0A              batch: %i\00", align 1
@.str.162 = private unnamed_addr constant [26 x i8] c"\0A  vm stats threshold: %d\00", align 1
@.str.163 = private unnamed_addr constant [54 x i8] c"\0A  node_unreclaimable:  %u\0A  start_pfn:           %lu\00", align 1
@.str.164 = private unnamed_addr constant [8 x i8] c"extfrag\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"unusable_index\00", align 1
@unusable_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @unusable_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.166 = private unnamed_addr constant [14 x i8] c"extfrag_index\00", align 1
@extfrag_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @extfrag_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@unusable_sops = internal constant %struct.seq_operations { ptr @frag_start, ptr @frag_stop, ptr @frag_next, ptr @unusable_show }, align 4
@.str.167 = private unnamed_addr constant [9 x i8] c"%d.%03d \00", align 1
@extfrag_sops = internal constant %struct.seq_operations { ptr @frag_start, ptr @frag_stop, ptr @frag_next, ptr @extfrag_show }, align 4
@.str.168 = private unnamed_addr constant [10 x i8] c"%2d.%03d \00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__initcall__kmod_vmstat__258_2239_extfrag_debug_init6, ptr @__ksymtab___dec_node_page_state, ptr @__ksymtab___dec_zone_page_state, ptr @__ksymtab___inc_node_page_state, ptr @__ksymtab___inc_zone_page_state, ptr @__ksymtab___mod_node_page_state, ptr @__ksymtab___mod_zone_page_state, ptr @__ksymtab_all_vm_events, ptr @__ksymtab_dec_node_page_state, ptr @__ksymtab_dec_zone_page_state, ptr @__ksymtab_inc_node_page_state, ptr @__ksymtab_inc_node_state, ptr @__ksymtab_inc_zone_page_state, ptr @__ksymtab_mod_node_page_state, ptr @__ksymtab_mod_zone_page_state, ptr @__ksymtab_vm_event_states, ptr @__ksymtab_vm_node_stat, ptr @__ksymtab_vm_zone_stat], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @all_vm_events(ptr nocapture noundef %0) #0 {
  tail call void @cpus_read_lock() #15
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(284) %0, i8 0, i32 284, i1 false) #15
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %9, label %24

5:                                                ; preds = %15
  %6 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_online_mask) #16
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %6, %5 ], [ %2, %1 ]
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @vm_event_states to i32)
  %14 = inttoptr i32 %13 to ptr
  br label %15

15:                                               ; preds = %15, %9
  %16 = phi i32 [ 0, %9 ], [ %22, %15 ]
  %17 = getelementptr [71 x i32], ptr %14, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i32, ptr %0, i32 %16
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  store i32 %21, ptr %19, align 4
  %22 = add nuw nsw i32 %16, 1
  %23 = icmp eq i32 %22, 71
  br i1 %23, label %5, label %15

24:                                               ; preds = %5, %1
  tail call void @cpus_read_unlock() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vm_events_fold_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @vm_event_states to i32)
  %5 = inttoptr i32 %4 to ptr
  br label %6

6:                                                ; preds = %6, %1
  %7 = phi i32 [ 0, %1 ], [ %20, %6 ]
  %8 = getelementptr [71 x i32], ptr %5, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !9
  %11 = getelementptr [71 x i32], ptr @vm_event_states, i32 0, i32 %7
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #10, !srcloc !10
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %9
  store i32 %19, ptr %17, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #15, !srcloc !11
  store i32 0, ptr %8, align 4
  %20 = add nuw nsw i32 %7, 1
  %21 = icmp eq i32 %20, 71
  br i1 %21, label %22, label %6

22:                                               ; preds = %6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @calculate_pressure_threshold(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr [3 x i32], ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr %0, align 64
  %5 = sub i32 %3, %4
  %6 = load volatile i32, ptr @__num_online_cpus, align 4
  %7 = udiv i32 %5, %6
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 125)
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @calculate_normal_threshold(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 11
  %3 = load volatile i32, ptr %2, align 4
  %4 = lshr i32 %3, 15
  %5 = load volatile i32, ptr @__num_online_cpus, align 4
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 false) #15, !range !12
  %8 = mul nsw i32 %7, -2
  %9 = add nsw i32 %8, 64
  %10 = select i1 %6, i32 0, i32 %9
  %11 = icmp ult i32 %3, 32768
  %12 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 false) #15, !range !12
  %13 = sub nuw nsw i32 33, %12
  %14 = select i1 %11, i32 1, i32 %13
  %15 = mul nuw nsw i32 %10, %14
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 125)
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @refresh_zone_stat_thresholds() local_unnamed_addr #0 {
  %1 = tail call ptr @first_online_pgdat() #15
  %2 = icmp eq ptr %1, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %21, %0
  %4 = phi ptr [ %22, %21 ], [ %1, %0 ]
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pglist_data, ptr %4, i32 0, i32 28
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %5, %8 ], [ %18, %10 ]
  %12 = load ptr, ptr %9, align 64
  %13 = ptrtoint ptr %12 to i32
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = inttoptr i32 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_online_mask) #16
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %10, label %21

21:                                               ; preds = %10, %3
  %22 = tail call ptr @next_online_pgdat(ptr noundef nonnull %4) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %3

24:                                               ; preds = %21, %0
  %25 = tail call ptr @first_online_pgdat() #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %97, label %27

27:                                               ; preds = %94, %24
  %28 = phi ptr [ %95, %94 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.zone, ptr %28, i32 0, i32 13
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %94, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.zone, ptr %28, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.zone, ptr %28, i32 0, i32 11
  %36 = load volatile i32, ptr %35, align 4
  %37 = lshr i32 %36, 15
  %38 = load volatile i32, ptr @__num_online_cpus, align 4
  %39 = icmp eq i32 %38, 0
  %40 = tail call i32 @llvm.ctlz.i32(i32 %38, i1 false) #15, !range !12
  %41 = mul nsw i32 %40, -2
  %42 = add nsw i32 %41, 64
  %43 = select i1 %39, i32 0, i32 %42
  %44 = icmp ult i32 %36, 32768
  %45 = tail call i32 @llvm.ctlz.i32(i32 %37, i1 false) #15, !range !12
  %46 = sub nuw nsw i32 33, %45
  %47 = select i1 %44, i32 1, i32 %46
  %48 = mul nuw nsw i32 %43, %47
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 125) #15
  %50 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  %51 = load i32, ptr @nr_cpu_ids, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %32
  %54 = trunc i32 %49 to i8
  %55 = getelementptr inbounds %struct.zone, ptr %28, i32 0, i32 6
  %56 = getelementptr inbounds %struct.pglist_data, ptr %34, i32 0, i32 28
  br label %57

57:                                               ; preds = %57, %53
  %58 = phi i32 [ %50, %53 ], [ %75, %57 ]
  %59 = load ptr, ptr %55, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %60
  %64 = inttoptr i32 %63 to ptr
  %65 = getelementptr inbounds %struct.per_cpu_zonestat, ptr %64, i32 0, i32 1
  store i8 %54, ptr %65, align 1
  %66 = load ptr, ptr %56, align 64
  %67 = ptrtoint ptr %66 to i32
  %68 = load i32, ptr %61, align 4
  %69 = add i32 %68, %67
  %70 = inttoptr i32 %69 to ptr
  %71 = load i8, ptr %70, align 1
  %72 = sext i8 %71 to i32
  %73 = tail call i32 @llvm.smax.i32(i32 %49, i32 %72)
  %74 = trunc i32 %73 to i8
  store i8 %74, ptr %70, align 1
  %75 = tail call i32 @cpumask_next(i32 noundef %58, ptr noundef nonnull @__cpu_online_mask) #16
  %76 = load i32, ptr @nr_cpu_ids, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %57, label %78

78:                                               ; preds = %57, %32
  %79 = getelementptr [3 x i32], ptr %28, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.zone, ptr %28, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = load i32, ptr %28, align 64
  %84 = sub i32 %80, %83
  %85 = load volatile i32, ptr @__num_online_cpus, align 4
  %86 = mul i32 %85, %49
  %87 = icmp ugt i32 %86, %84
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = getelementptr [3 x i32], ptr %28, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  %91 = add i32 %86, %82
  %92 = add i32 %91, %90
  %93 = getelementptr inbounds %struct.zone, ptr %28, i32 0, i32 25
  store i32 %92, ptr %93, align 64
  br label %94

94:                                               ; preds = %88, %78, %27
  %95 = tail call ptr @next_zone(ptr noundef nonnull %28) #15
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %27

97:                                               ; preds = %94, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_online_pgdat(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_zone(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_pgdat_percpu_threshold(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %31, %2
  %7 = phi i32 [ %32, %31 ], [ 0, %2 ]
  %8 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 %7, i32 25
  %9 = load i32, ptr %8, align 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %6
  %12 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 %7
  %13 = tail call i32 %1(ptr noundef %12) #15
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  %16 = icmp ult i32 %15, %14
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = trunc i32 %13 to i8
  %19 = getelementptr [4 x %struct.zone], ptr %0, i32 0, i32 %7, i32 6
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ %15, %17 ], [ %29, %20 ]
  %22 = load ptr, ptr %19, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.per_cpu_zonestat, ptr %27, i32 0, i32 1
  store i8 %18, ptr %28, align 1
  %29 = tail call i32 @cpumask_next(i32 noundef %21, ptr noundef nonnull @__cpu_online_mask) #16
  %30 = icmp ult i32 %29, %14
  br i1 %30, label %20, label %31

31:                                               ; preds = %20, %11, %6
  %32 = add nuw nsw i32 %7, 1
  %33 = load i32, ptr %3, align 8
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %6, label %35

35:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__mod_zone_page_state(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #10, !srcloc !10
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = sext i8 %13 to i32
  %15 = add i32 %14, %2
  %16 = getelementptr inbounds %struct.per_cpu_zonestat, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  %18 = add i32 %10, %17
  %19 = inttoptr i32 %18 to ptr
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %20 to i32
  %22 = tail call i32 @llvm.abs.i32(i32 %15, i1 false)
  %23 = icmp sgt i32 %22, %21
  br i1 %23, label %24, label %29, !prof !13

24:                                               ; preds = %3
  %25 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #15, !srcloc !14
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 %15, ptr elementtype(i32) %25) #15, !srcloc !15
  %27 = getelementptr [10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #15, !srcloc !14
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 %15, ptr elementtype(i32) %27) #15, !srcloc !15
  br label %29

29:                                               ; preds = %24, %3
  %30 = phi i32 [ 0, %24 ], [ %15, %3 ]
  %31 = trunc i32 %30 to i8
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %33) #10, !srcloc !10
  %35 = add i32 %34, %7
  %36 = inttoptr i32 %35 to ptr
  store i8 %31, ptr %36, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__mod_node_page_state(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 28
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.per_cpu_nodestat, ptr %5, i32 0, i32 1
  %7 = getelementptr i8, ptr %6, i32 %1
  %8 = add i32 %1, -5
  %9 = icmp ult i32 %8, 2
  %10 = ashr i32 %2, 12
  %11 = select i1 %9, i32 %10, i32 %2
  %12 = ptrtoint ptr %7 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #10, !srcloc !10
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = add i32 %11, %19
  %21 = ptrtoint ptr %5 to i32
  %22 = add i32 %15, %21
  %23 = inttoptr i32 %22 to ptr
  %24 = load i8, ptr %23, align 1
  %25 = sext i8 %24 to i32
  %26 = tail call i32 @llvm.abs.i32(i32 %20, i1 false)
  %27 = icmp sgt i32 %26, %25
  br i1 %27, label %28, label %33, !prof !13

28:                                               ; preds = %3
  %29 = getelementptr %struct.pglist_data, ptr %0, i32 0, i32 29, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #15, !srcloc !14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 %20, ptr elementtype(i32) %29) #15, !srcloc !15
  %31 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #15, !srcloc !14
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 %20, ptr elementtype(i32) %31) #15, !srcloc !15
  br label %33

33:                                               ; preds = %28, %3
  %34 = phi i32 [ 0, %28 ], [ %20, %3 ]
  %35 = trunc i32 %34 to i8
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %37) #10, !srcloc !10
  %39 = add i32 %38, %12
  %40 = inttoptr i32 %39 to ptr
  store i8 %35, ptr %40, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__inc_zone_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #10, !srcloc !10
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = add i8 %12, 1
  store i8 %13, ptr %11, align 1
  %14 = getelementptr inbounds %struct.per_cpu_zonestat, ptr %4, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #10, !srcloc !10
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = icmp sgt i8 %13, %21
  br i1 %22, label %23, label %38, !prof !13

23:                                               ; preds = %2
  %24 = sext i8 %13 to i32
  %25 = ashr i8 %21, 1
  %26 = sext i8 %25 to i32
  %27 = add nsw i32 %26, %24
  %28 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #15, !srcloc !14
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 %27, ptr elementtype(i32) %28) #15, !srcloc !15
  %30 = getelementptr [10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #15, !srcloc !14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 %27, ptr elementtype(i32) %30) #15, !srcloc !15
  %32 = sub nsw i8 0, %25
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %34) #10, !srcloc !10
  %36 = add i32 %35, %6
  %37 = inttoptr i32 %36 to ptr
  store i8 %32, ptr %37, align 1
  br label %38

38:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__inc_node_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 28
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.per_cpu_nodestat, ptr %4, i32 0, i32 1
  %6 = getelementptr i8, ptr %5, i32 %1
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #10, !srcloc !10
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = add i8 %13, 1
  store i8 %14, ptr %12, align 1
  %15 = ptrtoint ptr %4 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #10, !srcloc !10
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = icmp sgt i8 %14, %21
  br i1 %22, label %23, label %38, !prof !13

23:                                               ; preds = %2
  %24 = sext i8 %14 to i32
  %25 = ashr i8 %21, 1
  %26 = sext i8 %25 to i32
  %27 = add nsw i32 %26, %24
  %28 = getelementptr %struct.pglist_data, ptr %0, i32 0, i32 29, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #15, !srcloc !14
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 %27, ptr elementtype(i32) %28) #15, !srcloc !15
  %30 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #15, !srcloc !14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 %27, ptr elementtype(i32) %30) #15, !srcloc !15
  %32 = sub nsw i8 0, %25
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %34) #10, !srcloc !10
  %36 = add i32 %35, %7
  %37 = inttoptr i32 %36 to ptr
  store i8 %32, ptr %37, align 1
  br label %38

38:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__inc_zone_page_state(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = lshr i32 %3, 30
  %5 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %4, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %1
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #10, !srcloc !10
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = add i8 %14, 1
  store i8 %15, ptr %13, align 1
  %16 = getelementptr inbounds %struct.per_cpu_zonestat, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #10, !srcloc !10
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i8, ptr %22, align 1
  %24 = icmp sgt i8 %15, %23
  br i1 %24, label %25, label %40, !prof !13

25:                                               ; preds = %2
  %26 = sext i8 %15 to i32
  %27 = ashr i8 %23, 1
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %28, %26
  %30 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %4, i32 37, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #15, !srcloc !14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 %29, ptr elementtype(i32) %30) #15, !srcloc !15
  %32 = getelementptr [10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #15, !srcloc !14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 %29, ptr elementtype(i32) %32) #15, !srcloc !15
  %34 = sub nsw i8 0, %27
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #10, !srcloc !10
  %38 = add i32 %37, %8
  %39 = inttoptr i32 %38 to ptr
  store i8 %34, ptr %39, align 1
  br label %40

40:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__inc_node_page_state(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 28), align 64
  %4 = getelementptr inbounds %struct.per_cpu_nodestat, ptr %3, i32 0, i32 1
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #10, !srcloc !10
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = add i8 %12, 1
  store i8 %13, ptr %11, align 1
  %14 = ptrtoint ptr %3 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #10, !srcloc !10
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = load i8, ptr %19, align 1
  %21 = icmp sgt i8 %13, %20
  br i1 %21, label %22, label %37, !prof !13

22:                                               ; preds = %2
  %23 = sext i8 %13 to i32
  %24 = ashr i8 %20, 1
  %25 = sext i8 %24 to i32
  %26 = add nsw i32 %25, %23
  %27 = getelementptr %struct.pglist_data, ptr @contig_page_data, i32 0, i32 29, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #15, !srcloc !14
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 %26, ptr elementtype(i32) %27) #15, !srcloc !15
  %29 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #15, !srcloc !14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 %26, ptr elementtype(i32) %29) #15, !srcloc !15
  %31 = sub nsw i8 0, %24
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %33) #10, !srcloc !10
  %35 = add i32 %34, %6
  %36 = inttoptr i32 %35 to ptr
  store i8 %31, ptr %36, align 1
  br label %37

37:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__dec_zone_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #10, !srcloc !10
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = add i8 %12, -1
  store i8 %13, ptr %11, align 1
  %14 = getelementptr inbounds %struct.per_cpu_zonestat, ptr %4, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #10, !srcloc !10
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %13 to i32
  %23 = sext i8 %21 to i32
  %24 = sub nsw i32 0, %23
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %39, !prof !13

26:                                               ; preds = %2
  %27 = ashr i8 %21, 1
  %28 = sext i8 %27 to i32
  %29 = sub nsw i32 %22, %28
  %30 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #15, !srcloc !14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 %29, ptr elementtype(i32) %30) #15, !srcloc !15
  %32 = getelementptr [10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #15, !srcloc !14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 %29, ptr elementtype(i32) %32) #15, !srcloc !15
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %35) #10, !srcloc !10
  %37 = add i32 %36, %6
  %38 = inttoptr i32 %37 to ptr
  store i8 %27, ptr %38, align 1
  br label %39

39:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__dec_node_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 28
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.per_cpu_nodestat, ptr %4, i32 0, i32 1
  %6 = getelementptr i8, ptr %5, i32 %1
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #10, !srcloc !10
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = add i8 %13, -1
  store i8 %14, ptr %12, align 1
  %15 = ptrtoint ptr %4 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #10, !srcloc !10
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %14 to i32
  %23 = sext i8 %21 to i32
  %24 = sub nsw i32 0, %23
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %39, !prof !13

26:                                               ; preds = %2
  %27 = ashr i8 %21, 1
  %28 = sext i8 %27 to i32
  %29 = sub nsw i32 %22, %28
  %30 = getelementptr %struct.pglist_data, ptr %0, i32 0, i32 29, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #15, !srcloc !14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 %29, ptr elementtype(i32) %30) #15, !srcloc !15
  %32 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #15, !srcloc !14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 %29, ptr elementtype(i32) %32) #15, !srcloc !15
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %35) #10, !srcloc !10
  %37 = add i32 %36, %7
  %38 = inttoptr i32 %37 to ptr
  store i8 %27, ptr %38, align 1
  br label %39

39:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__dec_zone_page_state(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = lshr i32 %3, 30
  %5 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %4, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %1
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #10, !srcloc !10
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = add i8 %14, -1
  store i8 %15, ptr %13, align 1
  %16 = getelementptr inbounds %struct.per_cpu_zonestat, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #10, !srcloc !10
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i8, ptr %22, align 1
  %24 = sext i8 %15 to i32
  %25 = sext i8 %23 to i32
  %26 = sub nsw i32 0, %25
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %41, !prof !13

28:                                               ; preds = %2
  %29 = ashr i8 %23, 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %24, %30
  %32 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %4, i32 37, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #15, !srcloc !14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 %31, ptr elementtype(i32) %32) #15, !srcloc !15
  %34 = getelementptr [10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #15, !srcloc !14
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 %31, ptr elementtype(i32) %34) #15, !srcloc !15
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %37) #10, !srcloc !10
  %39 = add i32 %38, %8
  %40 = inttoptr i32 %39 to ptr
  store i8 %29, ptr %40, align 1
  br label %41

41:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__dec_node_page_state(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 28), align 64
  %4 = getelementptr inbounds %struct.per_cpu_nodestat, ptr %3, i32 0, i32 1
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #10, !srcloc !10
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = add i8 %12, -1
  store i8 %13, ptr %11, align 1
  %14 = ptrtoint ptr %3 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #10, !srcloc !10
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %13 to i32
  %22 = sext i8 %20 to i32
  %23 = sub nsw i32 0, %22
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %38, !prof !13

25:                                               ; preds = %2
  %26 = ashr i8 %20, 1
  %27 = sext i8 %26 to i32
  %28 = sub nsw i32 %21, %27
  %29 = getelementptr %struct.pglist_data, ptr @contig_page_data, i32 0, i32 29, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #15, !srcloc !14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 %28, ptr elementtype(i32) %29) #15, !srcloc !15
  %31 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #15, !srcloc !14
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 %28, ptr elementtype(i32) %31) #15, !srcloc !15
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %34) #10, !srcloc !10
  %36 = add i32 %35, %6
  %37 = inttoptr i32 %36 to ptr
  store i8 %26, ptr %37, align 1
  br label %38

38:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mod_zone_page_state(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !9
  %5 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %1
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #10, !srcloc !10
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = sext i8 %14 to i32
  %16 = add i32 %15, %2
  %17 = getelementptr inbounds %struct.per_cpu_zonestat, ptr %6, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  %19 = add i32 %11, %18
  %20 = inttoptr i32 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %21 to i32
  %23 = tail call i32 @llvm.abs.i32(i32 %16, i1 false) #15
  %24 = icmp sgt i32 %23, %22
  br i1 %24, label %25, label %30, !prof !13

25:                                               ; preds = %3
  %26 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #15, !srcloc !14
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 %16, ptr elementtype(i32) %26) #15, !srcloc !15
  %28 = getelementptr [10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #15, !srcloc !14
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 %16, ptr elementtype(i32) %28) #15, !srcloc !15
  br label %30

30:                                               ; preds = %25, %3
  %31 = phi i32 [ 0, %25 ], [ %16, %3 ]
  %32 = trunc i32 %31 to i8
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %34) #10, !srcloc !10
  %36 = add i32 %35, %8
  %37 = inttoptr i32 %36 to ptr
  store i8 %32, ptr %37, align 1
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #15, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inc_zone_page_state(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = lshr i32 %3, 30
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !9
  %6 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %4, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 %1
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #10, !srcloc !10
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = load i8, ptr %14, align 1
  %16 = add i8 %15, 1
  store i8 %16, ptr %14, align 1
  %17 = getelementptr inbounds %struct.per_cpu_zonestat, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #10, !srcloc !10
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = load i8, ptr %23, align 1
  %25 = icmp sgt i8 %16, %24
  br i1 %25, label %26, label %41, !prof !13

26:                                               ; preds = %2
  %27 = sext i8 %16 to i32
  %28 = ashr i8 %24, 1
  %29 = sext i8 %28 to i32
  %30 = add nsw i32 %29, %27
  %31 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %4, i32 37, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #15, !srcloc !14
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 %30, ptr elementtype(i32) %31) #15, !srcloc !15
  %33 = getelementptr [10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #15, !srcloc !14
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 %30, ptr elementtype(i32) %33) #15, !srcloc !15
  %35 = sub nsw i8 0, %28
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %37) #10, !srcloc !10
  %39 = add i32 %38, %9
  %40 = inttoptr i32 %39 to ptr
  store i8 %35, ptr %40, align 1
  br label %41

41:                                               ; preds = %26, %2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #15, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dec_zone_page_state(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !9
  %4 = load i32, ptr %0, align 4
  %5 = lshr i32 %4, 30
  %6 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %5, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 %1
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #10, !srcloc !10
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = load i8, ptr %14, align 1
  %16 = add i8 %15, -1
  store i8 %16, ptr %14, align 1
  %17 = getelementptr inbounds %struct.per_cpu_zonestat, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #10, !srcloc !10
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = load i8, ptr %23, align 1
  %25 = sext i8 %16 to i32
  %26 = sext i8 %24 to i32
  %27 = sub nsw i32 0, %26
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %42, !prof !13

29:                                               ; preds = %2
  %30 = ashr i8 %24, 1
  %31 = sext i8 %30 to i32
  %32 = sub nsw i32 %25, %31
  %33 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %5, i32 37, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #15, !srcloc !14
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 %32, ptr elementtype(i32) %33) #15, !srcloc !15
  %35 = getelementptr [10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #15, !srcloc !14
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 %32, ptr elementtype(i32) %35) #15, !srcloc !15
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #10, !srcloc !10
  %40 = add i32 %39, %9
  %41 = inttoptr i32 %40 to ptr
  store i8 %30, ptr %41, align 1
  br label %42

42:                                               ; preds = %29, %2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #15, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inc_node_state(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !9
  %4 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 28
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.per_cpu_nodestat, ptr %5, i32 0, i32 1
  %7 = getelementptr i8, ptr %6, i32 %1
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #10, !srcloc !10
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = add i8 %14, 1
  store i8 %15, ptr %13, align 1
  %16 = ptrtoint ptr %5 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #10, !srcloc !10
  %20 = add i32 %19, %16
  %21 = inttoptr i32 %20 to ptr
  %22 = load i8, ptr %21, align 1
  %23 = icmp sgt i8 %15, %22
  br i1 %23, label %24, label %39, !prof !13

24:                                               ; preds = %2
  %25 = sext i8 %15 to i32
  %26 = ashr i8 %22, 1
  %27 = sext i8 %26 to i32
  %28 = add nsw i32 %27, %25
  %29 = getelementptr %struct.pglist_data, ptr %0, i32 0, i32 29, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #15, !srcloc !14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 %28, ptr elementtype(i32) %29) #15, !srcloc !15
  %31 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #15, !srcloc !14
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 %28, ptr elementtype(i32) %31) #15, !srcloc !15
  %33 = sub nsw i8 0, %26
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %35) #10, !srcloc !10
  %37 = add i32 %36, %8
  %38 = inttoptr i32 %37 to ptr
  store i8 %33, ptr %38, align 1
  br label %39

39:                                               ; preds = %24, %2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #15, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mod_node_page_state(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !9
  %5 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 28
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.per_cpu_nodestat, ptr %6, i32 0, i32 1
  %8 = getelementptr i8, ptr %7, i32 %1
  %9 = add i32 %1, -5
  %10 = icmp ult i32 %9, 2
  %11 = ashr i32 %2, 12
  %12 = select i1 %10, i32 %11, i32 %2
  %13 = ptrtoint ptr %8 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #10, !srcloc !10
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = load i8, ptr %18, align 1
  %20 = sext i8 %19 to i32
  %21 = add i32 %12, %20
  %22 = ptrtoint ptr %6 to i32
  %23 = add i32 %16, %22
  %24 = inttoptr i32 %23 to ptr
  %25 = load i8, ptr %24, align 1
  %26 = sext i8 %25 to i32
  %27 = tail call i32 @llvm.abs.i32(i32 %21, i1 false) #15
  %28 = icmp sgt i32 %27, %26
  br i1 %28, label %29, label %34, !prof !13

29:                                               ; preds = %3
  %30 = getelementptr %struct.pglist_data, ptr %0, i32 0, i32 29, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #15, !srcloc !14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 %21, ptr elementtype(i32) %30) #15, !srcloc !15
  %32 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #15, !srcloc !14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 %21, ptr elementtype(i32) %32) #15, !srcloc !15
  br label %34

34:                                               ; preds = %29, %3
  %35 = phi i32 [ 0, %29 ], [ %21, %3 ]
  %36 = trunc i32 %35 to i8
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #10, !srcloc !10
  %40 = add i32 %39, %13
  %41 = inttoptr i32 %40 to ptr
  store i8 %36, ptr %41, align 1
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #15, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inc_node_page_state(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !9
  %4 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 28), align 64
  %5 = getelementptr inbounds %struct.per_cpu_nodestat, ptr %4, i32 0, i32 1
  %6 = getelementptr i8, ptr %5, i32 %1
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #10, !srcloc !10
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = add i8 %13, 1
  store i8 %14, ptr %12, align 1
  %15 = ptrtoint ptr %4 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #10, !srcloc !10
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = icmp sgt i8 %14, %21
  br i1 %22, label %23, label %38, !prof !13

23:                                               ; preds = %2
  %24 = sext i8 %14 to i32
  %25 = ashr i8 %21, 1
  %26 = sext i8 %25 to i32
  %27 = add nsw i32 %26, %24
  %28 = getelementptr %struct.pglist_data, ptr @contig_page_data, i32 0, i32 29, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #15, !srcloc !14
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 %27, ptr elementtype(i32) %28) #15, !srcloc !15
  %30 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #15, !srcloc !14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 %27, ptr elementtype(i32) %30) #15, !srcloc !15
  %32 = sub nsw i8 0, %25
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %34) #10, !srcloc !10
  %36 = add i32 %35, %7
  %37 = inttoptr i32 %36 to ptr
  store i8 %32, ptr %37, align 1
  br label %38

38:                                               ; preds = %23, %2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #15, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dec_node_page_state(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !9
  %4 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 28), align 64
  %5 = getelementptr inbounds %struct.per_cpu_nodestat, ptr %4, i32 0, i32 1
  %6 = getelementptr i8, ptr %5, i32 %1
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #10, !srcloc !10
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = add i8 %13, -1
  store i8 %14, ptr %12, align 1
  %15 = ptrtoint ptr %4 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #10, !srcloc !10
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %14 to i32
  %23 = sext i8 %21 to i32
  %24 = sub nsw i32 0, %23
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %39, !prof !13

26:                                               ; preds = %2
  %27 = ashr i8 %21, 1
  %28 = sext i8 %27 to i32
  %29 = sub nsw i32 %22, %28
  %30 = getelementptr %struct.pglist_data, ptr @contig_page_data, i32 0, i32 29, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #15, !srcloc !14
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 %29, ptr elementtype(i32) %30) #15, !srcloc !15
  %32 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #15, !srcloc !14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 %29, ptr elementtype(i32) %32) #15, !srcloc !15
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %35) #10, !srcloc !10
  %37 = add i32 %36, %7
  %38 = inttoptr i32 %37 to ptr
  store i8 %27, ptr %38, align 1
  br label %39

39:                                               ; preds = %26, %2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #15, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_vm_stats_fold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [10 x i32], align 4
  %3 = alloca [40 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %3, i8 0, i32 160, i1 false)
  %4 = tail call ptr @first_online_pgdat() #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  br label %8

8:                                                ; preds = %35, %6
  %9 = phi ptr [ %4, %6 ], [ %36, %35 ]
  %10 = getelementptr inbounds %struct.zone, ptr %9, i32 0, i32 13
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.zone, ptr %9, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, %16
  %19 = inttoptr i32 %18 to ptr
  br label %20

20:                                               ; preds = %32, %13
  %21 = phi i32 [ 0, %13 ], [ %33, %32 ]
  %22 = getelementptr [10 x i8], ptr %19, i32 0, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = sext i8 %23 to i32
  store i8 0, ptr %22, align 1
  %27 = getelementptr %struct.zone, ptr %9, i32 0, i32 37, i32 %21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #15, !srcloc !14
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 %26, ptr elementtype(i32) %27) #15, !srcloc !15
  %29 = getelementptr [10 x i32], ptr %2, i32 0, i32 %21
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %26
  store i32 %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %25, %20
  %33 = add nuw nsw i32 %21, 1
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %20

35:                                               ; preds = %32, %8
  %36 = tail call ptr @next_zone(ptr noundef nonnull %9) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %8

38:                                               ; preds = %35, %1
  %39 = tail call ptr @first_online_pgdat() #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %69, label %41

41:                                               ; preds = %38
  %42 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  br label %43

43:                                               ; preds = %66, %41
  %44 = phi ptr [ %39, %41 ], [ %67, %66 ]
  %45 = getelementptr inbounds %struct.pglist_data, ptr %44, i32 0, i32 28
  %46 = load ptr, ptr %45, align 64
  %47 = ptrtoint ptr %46 to i32
  %48 = load i32, ptr %42, align 4
  %49 = add i32 %48, %47
  %50 = inttoptr i32 %49 to ptr
  br label %51

51:                                               ; preds = %63, %43
  %52 = phi i32 [ 0, %43 ], [ %64, %63 ]
  %53 = getelementptr %struct.per_cpu_nodestat, ptr %50, i32 0, i32 1, i32 %52
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = sext i8 %54 to i32
  store i8 0, ptr %53, align 1
  %58 = getelementptr %struct.pglist_data, ptr %44, i32 0, i32 29, i32 %52
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #15, !srcloc !14
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 %57, ptr elementtype(i32) %58) #15, !srcloc !15
  %60 = getelementptr [40 x i32], ptr %3, i32 0, i32 %52
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, %57
  store i32 %62, ptr %60, align 4
  br label %63

63:                                               ; preds = %56, %51
  %64 = add nuw nsw i32 %52, 1
  %65 = icmp eq i32 %64, 40
  br i1 %65, label %66, label %51

66:                                               ; preds = %63
  %67 = tail call ptr @next_online_pgdat(ptr noundef nonnull %44) #15
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %43

69:                                               ; preds = %66, %38
  %70 = call fastcc i32 @fold_diff(ptr noundef nonnull %2, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fold_diff(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @vm_zone_stat) #15, !srcloc !14
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @vm_zone_stat, ptr nonnull @vm_zone_stat, i32 %3, ptr nonnull elementtype(i32) @vm_zone_stat) #15, !srcloc !15
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 1, %5 ], [ 0, %2 ]
  %9 = getelementptr i32, ptr %0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 1)) #15, !srcloc !14
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 1), ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 1), i32 %10, ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 1)) #15, !srcloc !15
  %14 = add nuw nsw i32 %8, 1
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i32 [ %14, %12 ], [ %8, %7 ]
  %17 = getelementptr i32, ptr %0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 2)) #15, !srcloc !14
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 2), ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 2), i32 %18, ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 2)) #15, !srcloc !15
  %22 = add nuw nsw i32 %16, 1
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i32 [ %22, %20 ], [ %16, %15 ]
  %25 = getelementptr i32, ptr %0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 3)) #15, !srcloc !14
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 3), ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 3), i32 %26, ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 3)) #15, !srcloc !15
  %30 = add nuw nsw i32 %24, 1
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi i32 [ %30, %28 ], [ %24, %23 ]
  %33 = getelementptr i32, ptr %0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 4)) #15, !srcloc !14
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 4), ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 4), i32 %34, ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 4)) #15, !srcloc !15
  %38 = add nuw nsw i32 %32, 1
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %38, %36 ], [ %32, %31 ]
  %41 = getelementptr i32, ptr %0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 5)) #15, !srcloc !14
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 5), ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 5), i32 %42, ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 5)) #15, !srcloc !15
  %46 = add nuw nsw i32 %40, 1
  br label %47

47:                                               ; preds = %44, %39
  %48 = phi i32 [ %46, %44 ], [ %40, %39 ]
  %49 = getelementptr i32, ptr %0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 6)) #15, !srcloc !14
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 6), ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 6), i32 %50, ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 6)) #15, !srcloc !15
  %54 = add nuw nsw i32 %48, 1
  br label %55

55:                                               ; preds = %52, %47
  %56 = phi i32 [ %54, %52 ], [ %48, %47 ]
  %57 = getelementptr i32, ptr %0, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 7)) #15, !srcloc !14
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 7), ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 7), i32 %58, ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 7)) #15, !srcloc !15
  %62 = add nuw nsw i32 %56, 1
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi i32 [ %62, %60 ], [ %56, %55 ]
  %65 = getelementptr i32, ptr %0, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 8)) #15, !srcloc !14
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 8), ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 8), i32 %66, ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 8)) #15, !srcloc !15
  %70 = add nuw nsw i32 %64, 1
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi i32 [ %70, %68 ], [ %64, %63 ]
  %73 = getelementptr i32, ptr %0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 9)) #15, !srcloc !14
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 9), ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 9), i32 %74, ptr elementtype(i32) getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 9)) #15, !srcloc !15
  %78 = add nuw nsw i32 %72, 1
  br label %79

79:                                               ; preds = %76, %71
  %80 = phi i32 [ %72, %71 ], [ %78, %76 ]
  br label %81

81:                                               ; preds = %91, %79
  %82 = phi i32 [ %92, %91 ], [ %80, %79 ]
  %83 = phi i32 [ %93, %91 ], [ 0, %79 ]
  %84 = getelementptr i32, ptr %1, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %83
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %88) #15, !srcloc !14
  %89 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %88, ptr %88, i32 %85, ptr elementtype(i32) %88) #15, !srcloc !15
  %90 = add i32 %82, 1
  br label %91

91:                                               ; preds = %87, %81
  %92 = phi i32 [ %90, %87 ], [ %82, %81 ]
  %93 = add nuw nsw i32 %83, 1
  %94 = icmp eq i32 %93, 40
  br i1 %94, label %95, label %81

95:                                               ; preds = %91
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drain_zonestat(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %5 = getelementptr [10 x i8], ptr %1, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = sext i8 %6 to i32
  store i8 0, ptr %5, align 1
  %10 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 %4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #15, !srcloc !14
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 %9, ptr elementtype(i32) %10) #15, !srcloc !15
  %12 = getelementptr [10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 %4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #15, !srcloc !14
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 %9, ptr elementtype(i32) %12) #15, !srcloc !15
  br label %14

14:                                               ; preds = %8, %3
  %15 = add nuw nsw i32 %4, 1
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %3

17:                                               ; preds = %14
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @extfrag_for_order(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 1
  %8 = add i32 %7, %4
  %9 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 2, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 2
  %12 = add i32 %11, %8
  %13 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 3, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 3
  %16 = add i32 %15, %12
  %17 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 4, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 4
  %20 = add i32 %19, %16
  %21 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 5, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 5
  %24 = add i32 %23, %20
  %25 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 6, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 6
  %28 = add i32 %27, %24
  %29 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 7, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %30, 7
  %32 = add i32 %31, %28
  %33 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 8, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 8
  %36 = add i32 %35, %32
  %37 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 9, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 9
  %40 = add i32 %39, %36
  %41 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 10, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 10
  %44 = add i32 %43, %40
  %45 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 11, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 %46, 11
  %48 = add i32 %47, %44
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %114, label %50

50:                                               ; preds = %2
  %51 = icmp eq i32 %1, 0
  %52 = sub i32 0, %1
  %53 = shl i32 %4, %52
  %54 = select i1 %51, i32 %53, i32 0
  %55 = icmp ugt i32 %1, 1
  %56 = sub i32 1, %1
  %57 = shl i32 %6, %56
  %58 = select i1 %55, i32 0, i32 %57
  %59 = add i32 %54, %58
  %60 = icmp ugt i32 %1, 2
  %61 = sub i32 2, %1
  %62 = shl i32 %10, %61
  %63 = select i1 %60, i32 0, i32 %62
  %64 = add i32 %59, %63
  %65 = icmp ugt i32 %1, 3
  %66 = sub i32 3, %1
  %67 = shl i32 %14, %66
  %68 = select i1 %65, i32 0, i32 %67
  %69 = add i32 %64, %68
  %70 = icmp ugt i32 %1, 4
  %71 = sub i32 4, %1
  %72 = shl i32 %18, %71
  %73 = select i1 %70, i32 0, i32 %72
  %74 = add i32 %69, %73
  %75 = icmp ugt i32 %1, 5
  %76 = sub i32 5, %1
  %77 = shl i32 %22, %76
  %78 = select i1 %75, i32 0, i32 %77
  %79 = add i32 %74, %78
  %80 = icmp ugt i32 %1, 6
  %81 = sub i32 6, %1
  %82 = shl i32 %26, %81
  %83 = select i1 %80, i32 0, i32 %82
  %84 = add i32 %79, %83
  %85 = icmp ugt i32 %1, 7
  %86 = sub i32 7, %1
  %87 = shl i32 %30, %86
  %88 = select i1 %85, i32 0, i32 %87
  %89 = add i32 %84, %88
  %90 = icmp ugt i32 %1, 8
  %91 = sub i32 8, %1
  %92 = shl i32 %34, %91
  %93 = select i1 %90, i32 0, i32 %92
  %94 = add i32 %89, %93
  %95 = icmp ugt i32 %1, 9
  %96 = sub i32 9, %1
  %97 = shl i32 %38, %96
  %98 = select i1 %95, i32 0, i32 %97
  %99 = add i32 %94, %98
  %100 = icmp ugt i32 %1, 10
  %101 = sub i32 10, %1
  %102 = shl i32 %42, %101
  %103 = select i1 %100, i32 0, i32 %102
  %104 = add i32 %99, %103
  %105 = icmp ugt i32 %1, 11
  %106 = sub i32 11, %1
  %107 = shl i32 %46, %106
  %108 = select i1 %105, i32 0, i32 %107
  %109 = add i32 %104, %108
  %110 = shl i32 %109, %1
  %111 = sub i32 %48, %110
  %112 = mul i32 %111, 100
  %113 = udiv i32 %112, %48
  br label %114

114:                                              ; preds = %50, %2
  %115 = phi i32 [ 0, %2 ], [ %113, %50 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fragmentation_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = sub i32 0, %1
  %7 = shl i32 %4, %6
  %8 = select i1 %5, i32 %7, i32 0
  %9 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %4
  %12 = shl i32 %10, 1
  %13 = add i32 %12, %4
  %14 = icmp ugt i32 %1, 1
  %15 = sub i32 1, %1
  %16 = shl i32 %10, %15
  %17 = select i1 %14, i32 0, i32 %16
  %18 = add i32 %8, %17
  %19 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %11
  %22 = shl i32 %20, 2
  %23 = add i32 %22, %13
  %24 = icmp ugt i32 %1, 2
  %25 = sub i32 2, %1
  %26 = shl i32 %20, %25
  %27 = select i1 %24, i32 0, i32 %26
  %28 = add i32 %18, %27
  %29 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 3, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %21
  %32 = shl i32 %30, 3
  %33 = add i32 %32, %23
  %34 = icmp ugt i32 %1, 3
  %35 = sub i32 3, %1
  %36 = shl i32 %30, %35
  %37 = select i1 %34, i32 0, i32 %36
  %38 = add i32 %28, %37
  %39 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 4, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %31
  %42 = shl i32 %40, 4
  %43 = add i32 %42, %33
  %44 = icmp ugt i32 %1, 4
  %45 = sub i32 4, %1
  %46 = shl i32 %40, %45
  %47 = select i1 %44, i32 0, i32 %46
  %48 = add i32 %38, %47
  %49 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 5, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %41
  %52 = shl i32 %50, 5
  %53 = add i32 %52, %43
  %54 = icmp ugt i32 %1, 5
  %55 = sub i32 5, %1
  %56 = shl i32 %50, %55
  %57 = select i1 %54, i32 0, i32 %56
  %58 = add i32 %48, %57
  %59 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 6, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %51
  %62 = shl i32 %60, 6
  %63 = add i32 %62, %53
  %64 = icmp ugt i32 %1, 6
  %65 = sub i32 6, %1
  %66 = shl i32 %60, %65
  %67 = select i1 %64, i32 0, i32 %66
  %68 = add i32 %58, %67
  %69 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 7, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %61
  %72 = shl i32 %70, 7
  %73 = add i32 %72, %63
  %74 = icmp ugt i32 %1, 7
  %75 = sub i32 7, %1
  %76 = shl i32 %70, %75
  %77 = select i1 %74, i32 0, i32 %76
  %78 = add i32 %68, %77
  %79 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 8, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, %71
  %82 = shl i32 %80, 8
  %83 = add i32 %82, %73
  %84 = icmp ugt i32 %1, 8
  %85 = sub i32 8, %1
  %86 = shl i32 %80, %85
  %87 = select i1 %84, i32 0, i32 %86
  %88 = add i32 %78, %87
  %89 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 9, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %81
  %92 = shl i32 %90, 9
  %93 = add i32 %92, %83
  %94 = icmp ugt i32 %1, 9
  %95 = sub i32 9, %1
  %96 = shl i32 %90, %95
  %97 = select i1 %94, i32 0, i32 %96
  %98 = add i32 %88, %97
  %99 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 10, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, %91
  %102 = shl i32 %100, 10
  %103 = add i32 %102, %93
  %104 = icmp ugt i32 %1, 10
  %105 = sub i32 10, %1
  %106 = shl i32 %100, %105
  %107 = select i1 %104, i32 0, i32 %106
  %108 = add i32 %98, %107
  %109 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 11, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, %101
  %112 = shl i32 %110, 11
  %113 = add i32 %112, %103
  %114 = icmp ugt i32 %1, 11
  %115 = sub i32 11, %1
  %116 = shl i32 %110, %115
  %117 = select i1 %114, i32 0, i32 %116
  %118 = shl nuw i32 1, %1
  %119 = load i1, ptr @__fragmentation_index.__already_done, align 1
  %120 = xor i1 %119, true
  %121 = select i1 %114, i1 %120, i1 false
  br i1 %121, label %122, label %123, !prof !13

122:                                              ; preds = %2
  store i1 true, ptr @__fragmentation_index.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.136, i32 noundef 1103, i32 noundef 9, ptr noundef null) #15
  br label %123

123:                                              ; preds = %122, %2
  %124 = icmp eq i32 %111, 0
  %125 = select i1 %114, i1 true, i1 %124
  br i1 %125, label %154, label %126

126:                                              ; preds = %123
  %127 = sub i32 0, %117
  %128 = icmp eq i32 %108, %127
  br i1 %128, label %129, label %154

129:                                              ; preds = %126
  %130 = zext i32 %113 to i64
  %131 = mul nuw nsw i64 %130, 1000
  %132 = icmp ult i64 %131, 4294967296
  br i1 %132, label %133, label %137, !prof !16

133:                                              ; preds = %129
  %134 = trunc i64 %131 to i32
  %135 = lshr i32 %134, %1
  %136 = zext i32 %135 to i64
  br label %140

137:                                              ; preds = %129
  %138 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %118, i64 %131) #17, !srcloc !17
  %139 = extractvalue { i64, i64 } %138, 1
  br label %140

140:                                              ; preds = %137, %133
  %141 = phi i64 [ %136, %133 ], [ %139, %137 ]
  %142 = add i64 %141, 1000
  %143 = icmp ult i64 %142, 4294967296
  br i1 %143, label %144, label %147, !prof !16

144:                                              ; preds = %140
  %145 = trunc i64 %142 to i32
  %146 = udiv i32 %145, %111
  br label %151

147:                                              ; preds = %140
  %148 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %111, i64 %142) #17, !srcloc !17
  %149 = extractvalue { i64, i64 } %148, 1
  %150 = trunc i64 %149 to i32
  br label %151

151:                                              ; preds = %147, %144
  %152 = phi i32 [ %146, %144 ], [ %150, %147 ]
  %153 = sub i32 1000, %152
  br label %154

154:                                              ; preds = %151, %126, %123
  %155 = phi i32 [ %153, %151 ], [ 0, %123 ], [ -1000, %126 ]
  ret i32 %155
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vmstat_refresh(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @schedule_on_each_cpu(ptr noundef nonnull @refresh_vm_stats) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %72

8:                                                ; preds = %5
  %9 = load volatile i32, ptr @vm_zone_stat, align 64
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.vmstat_refresh, ptr noundef nonnull @.str.3, i32 noundef %9) #18
  br label %13

13:                                               ; preds = %11, %8
  %14 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 1), align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.vmstat_refresh, ptr noundef nonnull @.str.4, i32 noundef %14) #18
  br label %18

18:                                               ; preds = %16, %13
  %19 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 2), align 8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.vmstat_refresh, ptr noundef nonnull @.str.5, i32 noundef %19) #18
  br label %23

23:                                               ; preds = %21, %18
  %24 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 3), align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.vmstat_refresh, ptr noundef nonnull @.str.6, i32 noundef %24) #18
  br label %28

28:                                               ; preds = %26, %23
  %29 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 4), align 16
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.vmstat_refresh, ptr noundef nonnull @.str.7, i32 noundef %29) #18
  br label %33

33:                                               ; preds = %31, %28
  %34 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 5), align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.vmstat_refresh, ptr noundef nonnull @.str.8, i32 noundef %34) #18
  br label %38

38:                                               ; preds = %36, %33
  %39 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 7), align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.vmstat_refresh, ptr noundef nonnull @.str.10, i32 noundef %39) #18
  br label %43

43:                                               ; preds = %41, %38
  %44 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 8), align 32
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.vmstat_refresh, ptr noundef nonnull @.str.11, i32 noundef %44) #18
  br label %48

48:                                               ; preds = %46, %43
  br label %49

49:                                               ; preds = %61, %48
  %50 = phi i32 [ %62, %61 ], [ 0, %48 ]
  %51 = icmp eq i32 %50, 21
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %50
  %54 = load volatile i32, ptr %53, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = add nuw nsw i32 %50, 10
  %58 = getelementptr [0 x ptr], ptr @vmstat_text, i32 0, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.vmstat_refresh, ptr noundef %59, i32 noundef %54) #18
  br label %61

61:                                               ; preds = %56, %52, %49
  %62 = add nuw nsw i32 %50, 1
  %63 = icmp eq i32 %62, 40
  br i1 %63, label %64, label %49

64:                                               ; preds = %61
  %65 = icmp eq i32 %1, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %3, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, ptr %4, align 8
  %70 = add i64 %69, %68
  store i64 %70, ptr %4, align 8
  br label %72

71:                                               ; preds = %64
  store i32 0, ptr %3, align 4
  br label %72

72:                                               ; preds = %71, %66, %5
  %73 = phi i32 [ %6, %5 ], [ 0, %71 ], [ 0, %66 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_on_each_cpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @refresh_vm_stats(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call fastcc i32 @refresh_cpu_vm_stats()
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @quiet_vmstat() local_unnamed_addr #0 {
  %1 = load i32, ptr @system_state, align 4
  %2 = icmp eq i32 %1, 3
  br i1 %2, label %3, label %19

3:                                                ; preds = %0
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %5) #10, !srcloc !10
  %7 = add i32 %6, ptrtoint (ptr @vmstat_work to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @llvm.thread.pointer() #15
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = tail call fastcc zeroext i1 @need_update(i32 noundef %15)
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @refresh_cpu_vm_stats()
  br label %19

19:                                               ; preds = %17, %12, %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @need_update(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @first_online_pgdat() #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  br label %6

6:                                                ; preds = %35, %4
  %7 = phi ptr [ null, %4 ], [ %36, %35 ]
  %8 = phi ptr [ %2, %4 ], [ %37, %35 ]
  %9 = getelementptr inbounds %struct.zone, ptr %8, i32 0, i32 13
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.zone, ptr %8, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = load i32, ptr %5, align 4
  %17 = add i32 %16, %15
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call ptr @memchr_inv(ptr noundef %18, i32 noundef 0, i32 noundef 10) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.zone, ptr %8, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %7, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.pglist_data, ptr %23, i32 0, i32 28
  %27 = load ptr, ptr %26, align 64
  %28 = ptrtoint ptr %27 to i32
  %29 = load i32, ptr %5, align 4
  %30 = add i32 %29, %28
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.per_cpu_nodestat, ptr %31, i32 0, i32 1
  %33 = tail call ptr @memchr_inv(ptr noundef %32, i32 noundef 0, i32 noundef 40) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %25, %21, %6
  %36 = phi ptr [ %7, %6 ], [ %7, %21 ], [ %23, %25 ]
  %37 = tail call ptr @next_zone(ptr noundef nonnull %8) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %6

39:                                               ; preds = %35, %25, %12, %1
  %40 = phi i1 [ false, %1 ], [ true, %25 ], [ true, %12 ], [ false, %35 ]
  ret i1 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @refresh_cpu_vm_stats() unnamed_addr #0 {
  %1 = alloca [10 x i32], align 4
  %2 = alloca [40 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %1, i8 0, i32 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %2, i8 0, i32 160, i1 false)
  %3 = tail call ptr @first_online_pgdat() #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %35, %0
  %6 = phi ptr [ %36, %35 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.zone, ptr %6, i32 0, i32 13
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.zone, ptr %6, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %32, %10
  %14 = phi i32 [ 0, %10 ], [ %33, %32 ]
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !9
  %16 = getelementptr [10 x i8], ptr %12, i32 0, i32 %14
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #10, !srcloc !10
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i8, ptr %22, align 1
  store i8 0, ptr %22, align 1
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #15, !srcloc !11
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %13
  %26 = sext i8 %23 to i32
  %27 = getelementptr %struct.zone, ptr %6, i32 0, i32 37, i32 %14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #15, !srcloc !14
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 %26, ptr elementtype(i32) %27) #15, !srcloc !15
  %29 = getelementptr [10 x i32], ptr %1, i32 0, i32 %14
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %26
  store i32 %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %25, %13
  %33 = add nuw nsw i32 %14, 1
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %13

35:                                               ; preds = %32, %5
  %36 = tail call ptr @next_zone(ptr noundef nonnull %6) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %5

38:                                               ; preds = %35, %0
  %39 = tail call ptr @first_online_pgdat() #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %70, label %41

41:                                               ; preds = %67, %38
  %42 = phi ptr [ %68, %67 ], [ %39, %38 ]
  %43 = getelementptr inbounds %struct.pglist_data, ptr %42, i32 0, i32 28
  %44 = load ptr, ptr %43, align 64
  br label %45

45:                                               ; preds = %64, %41
  %46 = phi i32 [ 0, %41 ], [ %65, %64 ]
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !9
  %48 = getelementptr %struct.per_cpu_nodestat, ptr %44, i32 0, i32 1, i32 %46
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %51) #10, !srcloc !10
  %53 = add i32 %52, %49
  %54 = inttoptr i32 %53 to ptr
  %55 = load i8, ptr %54, align 1
  store i8 0, ptr %54, align 1
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #15, !srcloc !11
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %45
  %58 = sext i8 %55 to i32
  %59 = getelementptr %struct.pglist_data, ptr %42, i32 0, i32 29, i32 %46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #15, !srcloc !14
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 %58, ptr elementtype(i32) %59) #15, !srcloc !15
  %61 = getelementptr [40 x i32], ptr %2, i32 0, i32 %46
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %58
  store i32 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %57, %45
  %65 = add nuw nsw i32 %46, 1
  %66 = icmp eq i32 %65, 40
  br i1 %66, label %67, label %45

67:                                               ; preds = %64
  %68 = tail call ptr @next_online_pgdat(ptr noundef nonnull %42) #15
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %41

70:                                               ; preds = %67, %38
  %71 = call fastcc i32 @fold_diff(ptr noundef nonnull %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #15
  ret i32 %71
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @init_mm_internals() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.127, i32 noundef 8, i32 noundef 0) #15
  store ptr %1, ptr @mm_percpu_wq, align 4
  %2 = tail call i32 @__cpuhp_setup_state(i32 noundef 15, ptr noundef nonnull @.str.128, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @vmstat_cpu_dead, i1 noundef zeroext false) #15
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129) #18
  br label %6

6:                                                ; preds = %4, %0
  %7 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.130, i1 noundef zeroext false, ptr noundef nonnull @vmstat_cpu_online, ptr noundef nonnull @vmstat_cpu_down_prep, i1 noundef zeroext false) #15
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #18
  br label %11

11:                                               ; preds = %9, %6
  tail call void @cpus_read_lock() #15
  %12 = load i32, ptr @__cpu_online_mask, align 4
  %13 = and i32 %12, 65535
  %14 = tail call i32 @__sw_hweight32(i32 noundef %13) #15
  tail call void @cpus_read_unlock() #15
  tail call fastcc void @start_shepherd_timer() #19
  %15 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.132, i16 noundef zeroext 292, ptr noundef null, ptr noundef nonnull @fragmentation_op, i32 noundef 0, ptr noundef null) #15
  %16 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.133, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @pagetypeinfo_op, i32 noundef 0, ptr noundef null) #15
  %17 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.134, i16 noundef zeroext 292, ptr noundef null, ptr noundef nonnull @vmstat_op, i32 noundef 0, ptr noundef null) #15
  %18 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.135, i16 noundef zeroext 292, ptr noundef null, ptr noundef nonnull @zoneinfo_op, i32 noundef 0, ptr noundef null) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vmstat_cpu_dead(i32 noundef %0) #0 {
  tail call void @refresh_zone_stat_thresholds()
  %2 = load i32, ptr @__cpu_online_mask, align 4
  %3 = and i32 %2, 65535
  %4 = tail call i32 @__sw_hweight32(i32 noundef %3) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vmstat_cpu_online(i32 noundef %0) #0 {
  tail call void @refresh_zone_stat_thresholds()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vmstat_cpu_down_prep(i32 noundef %0) #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @vmstat_work to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %5) #15
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @start_shepherd_timer() unnamed_addr #8 section ".init.text" {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %26

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %23, %4 ], [ %1, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @vmstat_work to i32)
  %9 = inttoptr i32 %8 to ptr
  store i32 -32, ptr %9, align 4
  %10 = load i32, ptr %6, align 4
  %11 = add i32 %10, ptrtoint (ptr @vmstat_work to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.work_struct, ptr %12, i32 0, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.work_struct, ptr %12, i32 0, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = load i32, ptr %6, align 4
  %16 = add i32 %15, ptrtoint (ptr @vmstat_work to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.work_struct, ptr %17, i32 0, i32 2
  store ptr @vmstat_update, ptr %18, align 4
  %19 = load i32, ptr %6, align 4
  %20 = add i32 %19, ptrtoint (ptr @vmstat_work to i32)
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.delayed_work, ptr %21, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %22, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef null, ptr noundef null) #15
  %23 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #16
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %4, label %26

26:                                               ; preds = %4, %0
  %27 = load i32, ptr @sysctl_stat_interval, align 4
  %28 = tail call i32 @round_jiffies_relative(i32 noundef %27) #15
  %29 = load ptr, ptr @system_wq, align 4
  %30 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %29, ptr noundef nonnull @shepherd, i32 noundef %28) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @extfrag_debug_init() #8 section ".init.text" {
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.164, ptr noundef null) #15
  %2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.165, i16 noundef zeroext 292, ptr noundef %1, ptr noundef null, ptr noundef nonnull @unusable_fops) #15
  %3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.166, i16 noundef zeroext 292, ptr noundef %1, ptr noundef null, ptr noundef nonnull @extfrag_fops) #15
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vmstat_update(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call fastcc i32 @refresh_cpu_vm_stats()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #15
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = load ptr, ptr @mm_percpu_wq, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #10, !srcloc !10
  %12 = add i32 %11, ptrtoint (ptr @vmstat_work to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr @sysctl_stat_interval, align 4
  %15 = tail call i32 @round_jiffies_relative(i32 noundef %14) #15
  %16 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef %7, ptr noundef %8, ptr noundef %13, i32 noundef %15) #15
  br label %17

17:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vmstat_shepherd(ptr nocapture noundef readnone %0) #0 {
  tail call void @cpus_read_lock() #15
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %24

5:                                                ; preds = %19, %1
  %6 = phi i32 [ %21, %19 ], [ %2, %1 ]
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @vmstat_work to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = tail call fastcc zeroext i1 @need_update(i32 noundef %6)
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load ptr, ptr @mm_percpu_wq, align 4
  %18 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef %6, ptr noundef %17, ptr noundef %10, i32 noundef 0) #15
  br label %19

19:                                               ; preds = %16, %14, %5
  %20 = tail call i32 @__cond_resched() #15
  %21 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef nonnull @__cpu_online_mask) #16
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %5, label %24

24:                                               ; preds = %19, %1
  tail call void @cpus_read_unlock() #15
  %25 = load i32, ptr @sysctl_stat_interval, align 4
  %26 = tail call i32 @round_jiffies_relative(i32 noundef %25) #15
  %27 = load ptr, ptr @system_wq, align 4
  %28 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %27, ptr noundef nonnull @shepherd, i32 noundef %26) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @frag_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = tail call ptr @first_online_pgdat() #15
  %5 = icmp ne ptr %4, null
  %6 = icmp ne i64 %3, 0
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %16

8:                                                ; preds = %8, %2
  %9 = phi i64 [ %11, %8 ], [ %3, %2 ]
  %10 = phi ptr [ %12, %8 ], [ %4, %2 ]
  %11 = add i64 %9, -1
  %12 = tail call ptr @next_online_pgdat(ptr noundef nonnull %10) #15
  %13 = icmp ne ptr %12, null
  %14 = icmp ne i64 %11, 0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %8, label %16

16:                                               ; preds = %8, %2
  %17 = phi ptr [ %4, %2 ], [ %12, %8 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @frag_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #12 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @frag_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = tail call ptr @next_online_pgdat(ptr noundef %1) #15
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @frag_show(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @walk_zones_in_node(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull @frag_show_print)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @walk_zones_in_node(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  br i1 %2, label %5, label %11

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr %struct.zone, ptr %1, i32 1
  br label %15

11:                                               ; preds = %5, %4
  %12 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 22
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #15
  tail call void %3(ptr noundef %0, ptr noundef %1, ptr noundef %1) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #15
  %14 = getelementptr %struct.zone, ptr %1, i32 1
  br i1 %2, label %15, label %22

15:                                               ; preds = %11, %9
  %16 = phi ptr [ %10, %9 ], [ %14, %11 ]
  %17 = getelementptr %struct.zone, ptr %1, i32 1, i32 13
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = getelementptr %struct.zone, ptr %1, i32 2
  br label %27

22:                                               ; preds = %15, %11
  %23 = phi ptr [ %16, %15 ], [ %14, %11 ]
  %24 = getelementptr %struct.zone, ptr %1, i32 1, i32 22
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #15
  tail call void %3(ptr noundef %0, ptr noundef %1, ptr noundef %23) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #15
  %26 = getelementptr %struct.zone, ptr %1, i32 2
  br i1 %2, label %27, label %34

27:                                               ; preds = %22, %20
  %28 = phi ptr [ %21, %20 ], [ %26, %22 ]
  %29 = getelementptr %struct.zone, ptr %1, i32 2, i32 13
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = getelementptr %struct.zone, ptr %1, i32 3
  br label %39

34:                                               ; preds = %27, %22
  %35 = phi ptr [ %28, %27 ], [ %26, %22 ]
  %36 = getelementptr %struct.zone, ptr %1, i32 2, i32 22
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #15
  tail call void %3(ptr noundef %0, ptr noundef %1, ptr noundef %35) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #15
  %38 = getelementptr %struct.zone, ptr %1, i32 3
  br i1 %2, label %39, label %44

39:                                               ; preds = %34, %32
  %40 = phi ptr [ %33, %32 ], [ %38, %34 ]
  %41 = getelementptr %struct.zone, ptr %1, i32 3, i32 13
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39, %34
  %45 = phi ptr [ %40, %39 ], [ %38, %34 ]
  %46 = getelementptr %struct.zone, ptr %1, i32 3, i32 22
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #15
  tail call void %3(ptr noundef %0, ptr noundef %1, ptr noundef %45) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %47) #15
  br label %48

48:                                               ; preds = %44, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @frag_show_print(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.pglist_data, ptr %1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 15
  %7 = load ptr, ptr %6, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.137, i32 noundef %5, ptr noundef %7) #15
  %8 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.138, i32 noundef %9) #15
  %10 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 1, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.138, i32 noundef %11) #15
  %12 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.138, i32 noundef %13) #15
  %14 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 3, i32 1
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.138, i32 noundef %15) #15
  %16 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 4, i32 1
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.138, i32 noundef %17) #15
  %18 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 5, i32 1
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.138, i32 noundef %19) #15
  %20 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 6, i32 1
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.138, i32 noundef %21) #15
  %22 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 7, i32 1
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.138, i32 noundef %23) #15
  %24 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 8, i32 1
  %25 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.138, i32 noundef %25) #15
  %26 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 9, i32 1
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.138, i32 noundef %27) #15
  %28 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 10, i32 1
  %29 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.138, i32 noundef %29) #15
  %30 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 11, i32 1
  %31 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.138, i32 noundef %31) #15
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pagetypeinfo_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pglist_data, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.139, i32 noundef 11) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.140, i32 noundef 2048) #15
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 0) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 1) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 2) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 3) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 4) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 5) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 6) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 7) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 8) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 9) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 10) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.143, i32 noundef 11) #15
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #15
  tail call fastcc void @walk_zones_in_node(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull @pagetypeinfo_showfree_print) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.149) #15
  %7 = load ptr, ptr @migratetype_names, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.150, ptr noundef %7) #15
  %8 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 1), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.150, ptr noundef %8) #15
  %9 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 2), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.150, ptr noundef %9) #15
  %10 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 3), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.150, ptr noundef %10) #15
  %11 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 4), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.150, ptr noundef %11) #15
  %12 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @migratetype_names, i32 0, i32 5), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.150, ptr noundef %12) #15
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #15
  tail call fastcc void @walk_zones_in_node(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull @pagetypeinfo_showblockcount_print) #15
  br label %13

13:                                               ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pagetypeinfo_showfree_print(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pglist_data, ptr %1, i32 0, i32 7
  %5 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 15
  %6 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 22
  br label %7

7:                                                ; preds = %33, %3
  %8 = phi i32 [ 0, %3 ], [ %34, %33 ]
  %9 = load i32, ptr %4, align 4
  %10 = load ptr, ptr %5, align 16
  %11 = getelementptr [6 x ptr], ptr @migratetype_names, i32 0, i32 %8
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.144, i32 noundef %9, ptr noundef %10, ptr noundef %12) #15
  br label %13

13:                                               ; preds = %25, %7
  %14 = phi i32 [ 0, %7 ], [ %31, %25 ]
  %15 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 %14
  %16 = getelementptr [6 x %struct.list_head], ptr %15, i32 0, i32 %8
  br label %17

17:                                               ; preds = %22, %13
  %18 = phi i32 [ 0, %13 ], [ %23, %22 ]
  %19 = phi ptr [ %16, %13 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %16
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = add nuw nsw i32 %18, 1
  %24 = icmp eq i32 %23, 100000
  br i1 %24, label %25, label %17

25:                                               ; preds = %22, %17
  %26 = phi i32 [ %18, %17 ], [ 100000, %22 ]
  %27 = phi ptr [ @.str.147, %17 ], [ @.str.146, %22 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.145, ptr noundef nonnull %27, i32 noundef %26) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !18
  %28 = load i16, ptr %6, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !20
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  %30 = tail call i32 @__cond_resched() #15
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #15
  %31 = add nuw nsw i32 %14, 1
  %32 = icmp eq i32 %31, 12
  br i1 %32, label %33, label %13

33:                                               ; preds = %25
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #15
  %34 = add nuw nsw i32 %8, 1
  %35 = icmp eq i32 %34, 6
  br i1 %35, label %36, label %7

36:                                               ; preds = %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pagetypeinfo_showblockcount_print(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = alloca [6 x i32], align 4
  %5 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %51

11:                                               ; preds = %36, %3
  %12 = phi i32 [ %37, %36 ], [ %6, %3 ]
  %13 = tail call i32 @pfn_valid(i32 noundef %12) #15
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr @mem_map, align 4
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %17 = sub i32 %12, %16
  %18 = getelementptr %struct.page, ptr %15, i32 %17
  %19 = icmp eq ptr %18, null
  %20 = select i1 %14, i1 true, i1 %19
  br i1 %20, label %36, label %21

21:                                               ; preds = %11
  %22 = load i32, ptr %18, align 4
  %23 = lshr i32 %22, 30
  %24 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %23
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = shl i32 %17, 5
  %28 = ashr exact i32 %27, 5
  %29 = add i32 %28, %16
  %30 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %18, i32 noundef %29, i32 noundef 7) #15
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = getelementptr [6 x i32], ptr %4, i32 0, i32 %30
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %26, %21, %11
  %37 = add i32 %12, 2048
  %38 = icmp ult i32 %37, %9
  br i1 %38, label %11, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %4, align 4
  %41 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %39, %3
  %52 = phi i32 [ %50, %39 ], [ 0, %3 ]
  %53 = phi i32 [ %48, %39 ], [ 0, %3 ]
  %54 = phi i32 [ %46, %39 ], [ 0, %3 ]
  %55 = phi i32 [ %44, %39 ], [ 0, %3 ]
  %56 = phi i32 [ %42, %39 ], [ 0, %3 ]
  %57 = phi i32 [ %40, %39 ], [ 0, %3 ]
  %58 = getelementptr inbounds %struct.pglist_data, ptr %1, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 15
  %61 = load ptr, ptr %60, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.137, i32 noundef %59, ptr noundef %61) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.151, i32 noundef %57) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.151, i32 noundef %56) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.151, i32 noundef %55) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.151, i32 noundef %54) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.151, i32 noundef %53) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.151, i32 noundef %52) #15
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vmstat_start(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = icmp sgt i64 %3, 122
  br i1 %4, label %84, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 492) #20
  %8 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  store ptr %7, ptr %8, align 8
  %9 = icmp eq ptr %7, null
  br i1 %9, label %84, label %10

10:                                               ; preds = %5
  %11 = load volatile i32, ptr @vm_zone_stat, align 64
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 0) #15
  store i32 %12, ptr %7, align 8
  %13 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 1), align 4
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0) #15
  %15 = getelementptr i32, ptr %7, i32 1
  store i32 %14, ptr %15, align 4
  %16 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 2), align 8
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0) #15
  %18 = getelementptr i32, ptr %7, i32 2
  store i32 %17, ptr %18, align 8
  %19 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 3), align 4
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0) #15
  %21 = getelementptr i32, ptr %7, i32 3
  store i32 %20, ptr %21, align 4
  %22 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 4), align 16
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0) #15
  %24 = getelementptr i32, ptr %7, i32 4
  store i32 %23, ptr %24, align 8
  %25 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 5), align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0) #15
  %27 = getelementptr i32, ptr %7, i32 5
  store i32 %26, ptr %27, align 4
  %28 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 6), align 8
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 0) #15
  %30 = getelementptr i32, ptr %7, i32 6
  store i32 %29, ptr %30, align 8
  %31 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 7), align 4
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0) #15
  %33 = getelementptr i32, ptr %7, i32 7
  store i32 %32, ptr %33, align 4
  %34 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 8), align 32
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 0) #15
  %36 = getelementptr i32, ptr %7, i32 8
  store i32 %35, ptr %36, align 8
  %37 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 9), align 4
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0) #15
  %39 = getelementptr i32, ptr %7, i32 9
  store i32 %38, ptr %39, align 4
  %40 = getelementptr i32, ptr %7, i32 10
  br label %41

41:                                               ; preds = %41, %10
  %42 = phi i32 [ 0, %10 ], [ %47, %41 ]
  %43 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 0) #15
  %46 = getelementptr i32, ptr %40, i32 %42
  store i32 %45, ptr %46, align 4
  %47 = add nuw nsw i32 %42, 1
  %48 = icmp eq i32 %47, 40
  br i1 %48, label %49, label %41

49:                                               ; preds = %41
  %50 = getelementptr i32, ptr %7, i32 50
  %51 = getelementptr i32, ptr %7, i32 51
  tail call void @global_dirty_limits(ptr noundef %51, ptr noundef %50) #15
  %52 = getelementptr i32, ptr %7, i32 52
  tail call void @cpus_read_lock() #15
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(284) %52, i8 0, i32 284, i1 false) #15
  %53 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %59, label %74

56:                                               ; preds = %65
  %57 = tail call i32 @cpumask_next(i32 noundef %60, ptr noundef nonnull @__cpu_online_mask) #16
  %58 = icmp ult i32 %57, %54
  br i1 %58, label %59, label %74

59:                                               ; preds = %56, %49
  %60 = phi i32 [ %57, %56 ], [ %53, %49 ]
  %61 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, ptrtoint (ptr @vm_event_states to i32)
  %64 = inttoptr i32 %63 to ptr
  br label %65

65:                                               ; preds = %65, %59
  %66 = phi i32 [ 0, %59 ], [ %72, %65 ]
  %67 = getelementptr [71 x i32], ptr %64, i32 0, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr i32, ptr %52, i32 %66
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %68
  store i32 %71, ptr %69, align 4
  %72 = add nuw nsw i32 %66, 1
  %73 = icmp eq i32 %72, 71
  br i1 %73, label %56, label %65

74:                                               ; preds = %56, %49
  tail call void @cpus_read_unlock() #15
  %75 = load i32, ptr %52, align 8
  %76 = lshr i32 %75, 1
  store i32 %76, ptr %52, align 8
  %77 = getelementptr i32, ptr %7, i32 53
  %78 = load i32, ptr %77, align 4
  %79 = lshr i32 %78, 1
  store i32 %79, ptr %77, align 4
  %80 = load ptr, ptr %8, align 8
  %81 = load i64, ptr %1, align 8
  %82 = trunc i64 %81 to i32
  %83 = getelementptr i32, ptr %80, i32 %82
  br label %84

84:                                               ; preds = %74, %5, %2
  %85 = phi ptr [ %83, %74 ], [ null, %2 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vmstat_stop(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #15
  store ptr null, ptr %3, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @vmstat_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #13 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = icmp sgt i64 %5, 122
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = trunc i64 %5 to i32
  %11 = getelementptr i32, ptr %9, i32 %10
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ %11, %7 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vmstat_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %1 to i32
  %6 = ptrtoint ptr %4 to i32
  %7 = sub i32 %5, %6
  %8 = ashr exact i32 %7, 2
  %9 = getelementptr [123 x ptr], ptr @vmstat_text, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef %10) #15
  %11 = load i32, ptr %1, align 4
  %12 = zext i32 %11 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.152, i64 noundef %12) #15
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #15
  %13 = icmp eq i32 %7, 488
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.153) #15
  br label %15

15:                                               ; preds = %14, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @global_dirty_limits(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zoneinfo_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 22
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  tail call fastcc void @zoneinfo_show_print(ptr noundef %0, ptr noundef %1, ptr noundef %1) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #15
  %5 = getelementptr %struct.zone, ptr %1, i32 1
  %6 = getelementptr %struct.zone, ptr %1, i32 1, i32 22
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  tail call fastcc void @zoneinfo_show_print(ptr noundef %0, ptr noundef %1, ptr noundef %5) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #15
  %8 = getelementptr %struct.zone, ptr %1, i32 2
  %9 = getelementptr %struct.zone, ptr %1, i32 2, i32 22
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #15
  tail call fastcc void @zoneinfo_show_print(ptr noundef %0, ptr noundef %1, ptr noundef %8) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #15
  %11 = getelementptr %struct.zone, ptr %1, i32 3
  %12 = getelementptr %struct.zone, ptr %1, i32 3, i32 22
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #15
  tail call fastcc void @zoneinfo_show_print(ptr noundef %0, ptr noundef %1, ptr noundef %11) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @zoneinfo_show_print(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pglist_data, ptr %1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 15
  %7 = load ptr, ptr %6, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.154, i32 noundef %5, ptr noundef %7) #15
  %8 = getelementptr [4 x %struct.zone], ptr %1, i32 0, i32 0, i32 13
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = getelementptr [4 x %struct.zone], ptr %1, i32 0, i32 1, i32 13
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr [4 x %struct.zone], ptr %1, i32 0, i32 2, i32 13
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr [4 x %struct.zone], ptr %1, i32 0, i32 3, i32 13
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %19, %15, %11, %3
  %24 = phi i32 [ 0, %3 ], [ 1, %11 ], [ 2, %15 ], [ 3, %19 ]
  %25 = getelementptr [4 x %struct.zone], ptr %1, i32 0, i32 %24
  %26 = icmp eq ptr %25, %2
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.155) #15
  br label %28

28:                                               ; preds = %28, %27
  %29 = phi i32 [ 0, %27 ], [ %36, %28 ]
  %30 = getelementptr [40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0) #15
  %33 = add nuw nsw i32 %29, 10
  %34 = getelementptr [0 x ptr], ptr @vmstat_text, i32 0, i32 %33
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef %35, i32 noundef %32) #15
  %36 = add nuw nsw i32 %29, 1
  %37 = icmp eq i32 %36, 40
  br i1 %37, label %38, label %28

38:                                               ; preds = %28, %23, %19
  %39 = getelementptr %struct.zone, ptr %2, i32 0, i32 37, i32 0
  %40 = load volatile i32, ptr %39, align 4
  %41 = tail call i32 @llvm.smax.i32(i32 %40, i32 0) #15
  %42 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %2, align 64
  %45 = add i32 %44, %43
  %46 = getelementptr [3 x i32], ptr %2, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %43
  %49 = getelementptr [3 x i32], ptr %2, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, %43
  %52 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 12
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 13
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 11
  %57 = load volatile i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 14
  %59 = load i32, ptr %58, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %48, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59) #15
  %60 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.158, i32 noundef %61) #15
  %62 = getelementptr %struct.zone, ptr %2, i32 0, i32 3, i32 1
  %63 = load i32, ptr %62, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.159, i32 noundef %63) #15
  %64 = getelementptr %struct.zone, ptr %2, i32 0, i32 3, i32 2
  %65 = load i32, ptr %64, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.159, i32 noundef %65) #15
  %66 = getelementptr %struct.zone, ptr %2, i32 0, i32 3, i32 3
  %67 = load i32, ptr %66, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.159, i32 noundef %67) #15
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 41) #15
  %68 = load i32, ptr %54, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %137, label %70

70:                                               ; preds = %38
  %71 = load volatile i32, ptr %39, align 4
  %72 = tail call i32 @llvm.smax.i32(i32 %71, i32 0) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.3, i32 noundef %72) #15
  %73 = getelementptr %struct.zone, ptr %2, i32 0, i32 37, i32 1
  %74 = load volatile i32, ptr %73, align 4
  %75 = tail call i32 @llvm.smax.i32(i32 %74, i32 0) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.4, i32 noundef %75) #15
  %76 = getelementptr %struct.zone, ptr %2, i32 0, i32 37, i32 2
  %77 = load volatile i32, ptr %76, align 4
  %78 = tail call i32 @llvm.smax.i32(i32 %77, i32 0) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.5, i32 noundef %78) #15
  %79 = getelementptr %struct.zone, ptr %2, i32 0, i32 37, i32 3
  %80 = load volatile i32, ptr %79, align 4
  %81 = tail call i32 @llvm.smax.i32(i32 %80, i32 0) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.6, i32 noundef %81) #15
  %82 = getelementptr %struct.zone, ptr %2, i32 0, i32 37, i32 4
  %83 = load volatile i32, ptr %82, align 4
  %84 = tail call i32 @llvm.smax.i32(i32 %83, i32 0) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.7, i32 noundef %84) #15
  %85 = getelementptr %struct.zone, ptr %2, i32 0, i32 37, i32 5
  %86 = load volatile i32, ptr %85, align 4
  %87 = tail call i32 @llvm.smax.i32(i32 %86, i32 0) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.8, i32 noundef %87) #15
  %88 = getelementptr %struct.zone, ptr %2, i32 0, i32 37, i32 6
  %89 = load volatile i32, ptr %88, align 4
  %90 = tail call i32 @llvm.smax.i32(i32 %89, i32 0) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.9, i32 noundef %90) #15
  %91 = getelementptr %struct.zone, ptr %2, i32 0, i32 37, i32 7
  %92 = load volatile i32, ptr %91, align 4
  %93 = tail call i32 @llvm.smax.i32(i32 %92, i32 0) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.10, i32 noundef %93) #15
  %94 = getelementptr %struct.zone, ptr %2, i32 0, i32 37, i32 8
  %95 = load volatile i32, ptr %94, align 4
  %96 = tail call i32 @llvm.smax.i32(i32 %95, i32 0) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.11, i32 noundef %96) #15
  %97 = getelementptr %struct.zone, ptr %2, i32 0, i32 37, i32 9
  %98 = load volatile i32, ptr %97, align 4
  %99 = tail call i32 @llvm.smax.i32(i32 %98, i32 0) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.12, i32 noundef %99) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.160) #15
  %100 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  %101 = load i32, ptr @nr_cpu_ids, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %70
  %104 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 5
  %105 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 6
  br label %106

106:                                              ; preds = %106, %103
  %107 = phi i32 [ %100, %103 ], [ %127, %106 ]
  %108 = load ptr, ptr %104, align 8
  %109 = ptrtoint ptr %108 to i32
  %110 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %107
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, %109
  %113 = inttoptr i32 %112 to ptr
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.per_cpu_pages, ptr %113, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.per_cpu_pages, ptr %113, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.161, i32 noundef %107, i32 noundef %114, i32 noundef %116, i32 noundef %118) #15
  %119 = load ptr, ptr %105, align 4
  %120 = ptrtoint ptr %119 to i32
  %121 = load i32, ptr %110, align 4
  %122 = add i32 %121, %120
  %123 = inttoptr i32 %122 to ptr
  %124 = getelementptr inbounds %struct.per_cpu_zonestat, ptr %123, i32 0, i32 1
  %125 = load i8, ptr %124, align 1
  %126 = sext i8 %125 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.162, i32 noundef %126) #15
  %127 = tail call i32 @cpumask_next(i32 noundef %107, ptr noundef nonnull @__cpu_online_mask) #16
  %128 = load i32, ptr @nr_cpu_ids, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %106, label %130

130:                                              ; preds = %106, %70
  %131 = getelementptr inbounds %struct.pglist_data, ptr %1, i32 0, i32 16
  %132 = load i32, ptr %131, align 4
  %133 = icmp sgt i32 %132, 15
  %134 = zext i1 %133 to i32
  %135 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 10
  %136 = load i32, ptr %135, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.163, i32 noundef %134, i32 noundef %136) #15
  br label %137

137:                                              ; preds = %130, %38
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unusable_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @unusable_sops) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.seq_file, ptr %11, i32 0, i32 11
  store ptr %7, ptr %12, align 8
  br label %13

13:                                               ; preds = %9, %5, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unusable_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pglist_data, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @walk_zones_in_node(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull @unusable_show_print)
  br label %7

7:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unusable_show_print(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.pglist_data, ptr %1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 15
  %7 = load ptr, ptr %6, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.137, i32 noundef %5, ptr noundef %7) #15
  %8 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 0, i32 1
  %9 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 1, i32 1
  %10 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 2, i32 1
  %11 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 3, i32 1
  %12 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 4, i32 1
  %13 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 5, i32 1
  %14 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 6, i32 1
  %15 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 7, i32 1
  %16 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 8, i32 1
  %17 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 9, i32 1
  %18 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 10, i32 1
  %19 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 11, i32 1
  br label %20

20:                                               ; preds = %127, %3
  %21 = phi i32 [ 0, %3 ], [ %133, %127 ]
  %22 = load i32, ptr %8, align 4
  %23 = load i32, ptr %9, align 4
  %24 = shl i32 %23, 1
  %25 = add i32 %24, %22
  %26 = load i32, ptr %10, align 4
  %27 = shl i32 %26, 2
  %28 = add i32 %27, %25
  %29 = load i32, ptr %11, align 4
  %30 = shl i32 %29, 3
  %31 = add i32 %30, %28
  %32 = load i32, ptr %12, align 4
  %33 = shl i32 %32, 4
  %34 = add i32 %33, %31
  %35 = load i32, ptr %13, align 4
  %36 = shl i32 %35, 5
  %37 = add i32 %36, %34
  %38 = load i32, ptr %14, align 4
  %39 = shl i32 %38, 6
  %40 = add i32 %39, %37
  %41 = load i32, ptr %15, align 4
  %42 = shl i32 %41, 7
  %43 = add i32 %42, %40
  %44 = load i32, ptr %16, align 4
  %45 = shl i32 %44, 8
  %46 = add i32 %45, %43
  %47 = load i32, ptr %17, align 4
  %48 = shl i32 %47, 9
  %49 = add i32 %48, %46
  %50 = load i32, ptr %18, align 4
  %51 = shl i32 %50, 10
  %52 = add i32 %51, %49
  %53 = load i32, ptr %19, align 4
  %54 = shl i32 %53, 11
  %55 = add i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %127, label %57

57:                                               ; preds = %20
  %58 = sub nuw nsw i32 11, %21
  %59 = shl i32 %53, %58
  %60 = icmp eq i32 %21, 0
  %61 = sub nsw i32 0, %21
  %62 = shl i32 %22, %61
  %63 = select i1 %60, i32 %62, i32 0
  %64 = icmp ugt i32 %21, 1
  %65 = sub nsw i32 1, %21
  %66 = shl i32 %23, %65
  %67 = select i1 %64, i32 0, i32 %66
  %68 = add i32 %63, %67
  %69 = icmp ugt i32 %21, 2
  %70 = sub nsw i32 2, %21
  %71 = shl i32 %26, %70
  %72 = select i1 %69, i32 0, i32 %71
  %73 = add i32 %68, %72
  %74 = icmp ugt i32 %21, 3
  %75 = sub nsw i32 3, %21
  %76 = shl i32 %29, %75
  %77 = select i1 %74, i32 0, i32 %76
  %78 = add i32 %73, %77
  %79 = icmp ugt i32 %21, 4
  %80 = sub nsw i32 4, %21
  %81 = shl i32 %32, %80
  %82 = select i1 %79, i32 0, i32 %81
  %83 = add i32 %78, %82
  %84 = icmp ugt i32 %21, 5
  %85 = sub nsw i32 5, %21
  %86 = shl i32 %35, %85
  %87 = select i1 %84, i32 0, i32 %86
  %88 = add i32 %83, %87
  %89 = icmp ugt i32 %21, 6
  %90 = sub nsw i32 6, %21
  %91 = shl i32 %38, %90
  %92 = select i1 %89, i32 0, i32 %91
  %93 = add i32 %88, %92
  %94 = icmp ugt i32 %21, 7
  %95 = sub nsw i32 7, %21
  %96 = shl i32 %41, %95
  %97 = select i1 %94, i32 0, i32 %96
  %98 = add i32 %93, %97
  %99 = icmp ugt i32 %21, 8
  %100 = sub nsw i32 8, %21
  %101 = shl i32 %44, %100
  %102 = select i1 %99, i32 0, i32 %101
  %103 = add i32 %98, %102
  %104 = icmp ugt i32 %21, 9
  %105 = sub nsw i32 9, %21
  %106 = shl i32 %47, %105
  %107 = select i1 %104, i32 0, i32 %106
  %108 = add i32 %103, %107
  %109 = icmp ugt i32 %21, 10
  %110 = sub nsw i32 10, %21
  %111 = shl i32 %50, %110
  %112 = select i1 %109, i32 0, i32 %111
  %113 = add i32 %108, %112
  %114 = add i32 %59, %113
  %115 = shl i32 %114, %21
  %116 = sub i32 %55, %115
  %117 = zext i32 %116 to i64
  %118 = mul nuw nsw i64 %117, 1000
  %119 = icmp ult i64 %118, 4294967296
  br i1 %119, label %120, label %123, !prof !16

120:                                              ; preds = %57
  %121 = trunc i64 %118 to i32
  %122 = udiv i32 %121, %55
  br label %127

123:                                              ; preds = %57
  %124 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %55, i64 %118) #17, !srcloc !17
  %125 = extractvalue { i64, i64 } %124, 1
  %126 = trunc i64 %125 to i32
  br label %127

127:                                              ; preds = %123, %120, %20
  %128 = phi i32 [ 1000, %20 ], [ %122, %120 ], [ %126, %123 ]
  %129 = freeze i32 %128
  %130 = sdiv i32 %129, 1000
  %131 = mul i32 %130, 1000
  %132 = sub i32 %129, %131
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.167, i32 noundef %130, i32 noundef %132) #15
  %133 = add nuw nsw i32 %21, 1
  %134 = icmp eq i32 %133, 12
  br i1 %134, label %135, label %20

135:                                              ; preds = %127
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @extfrag_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @extfrag_sops) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.seq_file, ptr %11, i32 0, i32 11
  store ptr %7, ptr %12, align 8
  br label %13

13:                                               ; preds = %9, %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @extfrag_show(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @walk_zones_in_node(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull @extfrag_show_print)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @extfrag_show_print(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.pglist_data, ptr %1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.zone, ptr %2, i32 0, i32 15
  %7 = load ptr, ptr %6, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.137, i32 noundef %5, ptr noundef %7) #15
  %8 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 0, i32 1
  %9 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 1, i32 1
  %10 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 2, i32 1
  %11 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 3, i32 1
  %12 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 4, i32 1
  %13 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 5, i32 1
  %14 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 6, i32 1
  %15 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 7, i32 1
  %16 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 8, i32 1
  %17 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 9, i32 1
  %18 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 10, i32 1
  %19 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 11, i32 1
  br label %20

20:                                               ; preds = %153, %3
  %21 = phi i32 [ 0, %3 ], [ %159, %153 ]
  %22 = load i32, ptr %8, align 4
  %23 = load i32, ptr %9, align 4
  %24 = add i32 %23, %22
  %25 = shl i32 %23, 1
  %26 = add i32 %25, %22
  %27 = load i32, ptr %10, align 4
  %28 = add i32 %27, %24
  %29 = shl i32 %27, 2
  %30 = add i32 %29, %26
  %31 = load i32, ptr %11, align 4
  %32 = add i32 %31, %28
  %33 = shl i32 %31, 3
  %34 = add i32 %33, %30
  %35 = load i32, ptr %12, align 4
  %36 = add i32 %35, %32
  %37 = shl i32 %35, 4
  %38 = add i32 %37, %34
  %39 = load i32, ptr %13, align 4
  %40 = add i32 %39, %36
  %41 = shl i32 %39, 5
  %42 = add i32 %41, %38
  %43 = load i32, ptr %14, align 4
  %44 = add i32 %43, %40
  %45 = shl i32 %43, 6
  %46 = add i32 %45, %42
  %47 = load i32, ptr %15, align 4
  %48 = add i32 %47, %44
  %49 = shl i32 %47, 7
  %50 = add i32 %49, %46
  %51 = load i32, ptr %16, align 4
  %52 = add i32 %51, %48
  %53 = shl i32 %51, 8
  %54 = add i32 %53, %50
  %55 = load i32, ptr %17, align 4
  %56 = add i32 %55, %52
  %57 = shl i32 %55, 9
  %58 = add i32 %57, %54
  %59 = load i32, ptr %18, align 4
  %60 = add i32 %59, %56
  %61 = shl i32 %59, 10
  %62 = add i32 %61, %58
  %63 = load i32, ptr %19, align 4
  %64 = add i32 %63, %60
  %65 = shl i32 %63, 11
  %66 = add i32 %65, %62
  %67 = shl nuw i32 1, %21
  %68 = icmp eq i32 %64, 0
  br i1 %68, label %153, label %69

69:                                               ; preds = %20
  %70 = sub nuw nsw i32 11, %21
  %71 = shl i32 %63, %70
  %72 = icmp eq i32 %21, 0
  %73 = sub nsw i32 0, %21
  %74 = shl i32 %22, %73
  %75 = select i1 %72, i32 %74, i32 0
  %76 = icmp ugt i32 %21, 1
  %77 = sub nsw i32 1, %21
  %78 = shl i32 %23, %77
  %79 = select i1 %76, i32 0, i32 %78
  %80 = add i32 %75, %79
  %81 = icmp ugt i32 %21, 2
  %82 = sub nsw i32 2, %21
  %83 = shl i32 %27, %82
  %84 = select i1 %81, i32 0, i32 %83
  %85 = add i32 %80, %84
  %86 = icmp ugt i32 %21, 3
  %87 = sub nsw i32 3, %21
  %88 = shl i32 %31, %87
  %89 = select i1 %86, i32 0, i32 %88
  %90 = add i32 %85, %89
  %91 = icmp ugt i32 %21, 4
  %92 = sub nsw i32 4, %21
  %93 = shl i32 %35, %92
  %94 = select i1 %91, i32 0, i32 %93
  %95 = add i32 %90, %94
  %96 = icmp ugt i32 %21, 5
  %97 = sub nsw i32 5, %21
  %98 = shl i32 %39, %97
  %99 = select i1 %96, i32 0, i32 %98
  %100 = add i32 %95, %99
  %101 = icmp ugt i32 %21, 6
  %102 = sub nsw i32 6, %21
  %103 = shl i32 %43, %102
  %104 = select i1 %101, i32 0, i32 %103
  %105 = add i32 %100, %104
  %106 = icmp ugt i32 %21, 7
  %107 = sub nsw i32 7, %21
  %108 = shl i32 %47, %107
  %109 = select i1 %106, i32 0, i32 %108
  %110 = add i32 %105, %109
  %111 = icmp ugt i32 %21, 8
  %112 = sub nsw i32 8, %21
  %113 = shl i32 %51, %112
  %114 = select i1 %111, i32 0, i32 %113
  %115 = add i32 %110, %114
  %116 = icmp ugt i32 %21, 9
  %117 = sub nsw i32 9, %21
  %118 = shl i32 %55, %117
  %119 = select i1 %116, i32 0, i32 %118
  %120 = add i32 %115, %119
  %121 = icmp ugt i32 %21, 10
  %122 = sub nsw i32 10, %21
  %123 = shl i32 %59, %122
  %124 = select i1 %121, i32 0, i32 %123
  %125 = add i32 %120, %124
  %126 = sub i32 0, %125
  %127 = icmp eq i32 %71, %126
  br i1 %127, label %128, label %153

128:                                              ; preds = %69
  %129 = zext i32 %66 to i64
  %130 = mul nuw nsw i64 %129, 1000
  %131 = icmp ult i64 %130, 4294967296
  br i1 %131, label %132, label %136, !prof !16

132:                                              ; preds = %128
  %133 = trunc i64 %130 to i32
  %134 = lshr i32 %133, %21
  %135 = zext i32 %134 to i64
  br label %139

136:                                              ; preds = %128
  %137 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %67, i64 %130) #17, !srcloc !17
  %138 = extractvalue { i64, i64 } %137, 1
  br label %139

139:                                              ; preds = %136, %132
  %140 = phi i64 [ %135, %132 ], [ %138, %136 ]
  %141 = add i64 %140, 1000
  %142 = icmp ult i64 %141, 4294967296
  br i1 %142, label %143, label %146, !prof !16

143:                                              ; preds = %139
  %144 = trunc i64 %141 to i32
  %145 = udiv i32 %144, %64
  br label %150

146:                                              ; preds = %139
  %147 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %64, i64 %141) #17, !srcloc !17
  %148 = extractvalue { i64, i64 } %147, 1
  %149 = trunc i64 %148 to i32
  br label %150

150:                                              ; preds = %146, %143
  %151 = phi i32 [ %145, %143 ], [ %149, %146 ]
  %152 = sub i32 1000, %151
  br label %153

153:                                              ; preds = %150, %69, %20
  %154 = phi i32 [ %152, %150 ], [ 0, %20 ], [ -1000, %69 ]
  %155 = freeze i32 %154
  %156 = sdiv i32 %155, 1000
  %157 = mul i32 %156, 1000
  %158 = sub i32 %155, %157
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.168, i32 noundef %156, i32 noundef %158) #15
  %159 = add nuw nsw i32 %21, 1
  %160 = icmp eq i32 %159, 12
  br i1 %160, label %161, label %20

161:                                              ; preds = %153
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold nounwind }
attributes #19 = { cold }
attributes #20 = { nounwind allocsize(2) }

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
!9 = !{i64 787096, i64 787157}
!10 = !{i64 805796}
!11 = !{i64 790113}
!12 = !{i32 0, i32 33}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 881418, i64 2148371389, i64 2148371415, i64 2148371462, i64 2148371484, i64 2148371512, i64 2148371532}
!15 = !{i64 2148382804, i64 2148382830, i64 2148382859, i64 2148382893, i64 2148382924, i64 2148382947}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2148232201, i64 2148232481, i64 2148232815, i64 2148233149}
!18 = !{i64 2149050022}
!19 = !{i64 2149045846}
!20 = !{i64 2149045921, i64 2149045948, i64 2149045995, i64 2149046017, i64 2149046045, i64 2149046065}
!21 = !{i64 787341}
!22 = !{i64 2149074166}
