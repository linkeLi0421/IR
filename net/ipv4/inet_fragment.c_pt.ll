; ModuleID = '/llk/IR/net/ipv4/inet_fragment.c_pt.bc'
source_filename = "../net/ipv4/inet_fragment.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_frag_ecn_table:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_frag_ecn_table\22\09\09\09\09\09"
module asm "__kstrtabns_ip_frag_ecn_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frags_init:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frags_init\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frags_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frags_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frags_fini\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frags_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fqdir_init:\09\09\09\09\09"
module asm "\09.asciz \09\22fqdir_init\22\09\09\09\09\09"
module asm "__kstrtabns_fqdir_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fqdir_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22fqdir_exit\22\09\09\09\09\09"
module asm "__kstrtabns_fqdir_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_kill:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_kill\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_kill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_rbtree_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_rbtree_purge\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_rbtree_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_find:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_find\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_queue_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_queue_insert\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_queue_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_reasm_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_reasm_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_reasm_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_reasm_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_reasm_finish\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_reasm_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_frag_pull_head:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_frag_pull_head\22\09\09\09\09\09"
module asm "__kstrtabns_inet_frag_pull_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.inet_frags = type { i32, ptr, ptr, ptr, ptr, ptr, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.fqdir = type { i32, i32, i32, i32, ptr, ptr, i8, [39 x i8], %struct.rhashtable, [40 x i8], %struct.atomic_t, %struct.work_struct, %struct.llist_node, [40 x i8] }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, ptr, ptr, i64, i32, i32, i8, i16, ptr, %struct.callback_head }
%struct.rhash_head = type { ptr }
%union.anon = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [32 x i8], [0 x ptr] }
%struct.lockdep_map = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.3, %union.anon.115, %union.anon.116, [48 x i8], %union.anon.117, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.119, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.115 = type { ptr }
%union.anon.116 = type { i64 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.121, i32, i32, i32, i16, i16, %union.anon.123, %union.anon.124, %union.anon.125, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i16 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@ip_frag_ecn_table = dso_local constant [16 x i8] c"\00\00\00\FF\00\FF\00\FF\00\FF\03\FF\03\FF\03\FF", align 1
@__kstrtab_ip_frag_ecn_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_frag_ecn_table = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_frag_ecn_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_frag_ecn_table to i32), ptr @__kstrtab_ip_frag_ecn_table, ptr @__kstrtabns_ip_frag_ecn_table }, section "___ksymtab+ip_frag_ecn_table", align 4
@__kstrtab_inet_frags_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frags_init = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frags_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frags_init to i32), ptr @__kstrtab_inet_frags_init, ptr @__kstrtabns_inet_frags_init }, section "___ksymtab+inet_frags_init", align 4
@__kstrtab_inet_frags_fini = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frags_fini = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frags_fini = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frags_fini to i32), ptr @__kstrtab_inet_frags_fini, ptr @__kstrtabns_inet_frags_fini }, section "___ksymtab+inet_frags_fini", align 4
@__kstrtab_fqdir_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_fqdir_init = external dso_local constant [0 x i8], align 1
@__ksymtab_fqdir_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fqdir_init to i32), ptr @__kstrtab_fqdir_init, ptr @__kstrtabns_fqdir_init }, section "___ksymtab+fqdir_init", align 4
@__initcall__kmod_inet_fragment__495_216_inet_frag_wq_init0 = internal global ptr @inet_frag_wq_init, section ".initcall0.init", align 4
@inet_frag_wq = internal unnamed_addr global ptr null, align 4
@__kstrtab_fqdir_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_fqdir_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_fqdir_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fqdir_exit to i32), ptr @__kstrtab_fqdir_exit, ptr @__kstrtabns_fqdir_exit }, section "___ksymtab+fqdir_exit", align 4
@__kstrtab_inet_frag_kill = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_kill = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_kill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_kill to i32), ptr @__kstrtab_inet_frag_kill, ptr @__kstrtabns_inet_frag_kill }, section "___ksymtab+inet_frag_kill", align 4
@__kstrtab_inet_frag_rbtree_purge = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_rbtree_purge = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_rbtree_purge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_rbtree_purge to i32), ptr @__kstrtab_inet_frag_rbtree_purge, ptr @__kstrtabns_inet_frag_rbtree_purge }, section "___ksymtab+inet_frag_rbtree_purge", align 4
@.str = private unnamed_addr constant [25 x i8] c"net/ipv4/inet_fragment.c\00", align 1
@__kstrtab_inet_frag_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_destroy to i32), ptr @__kstrtab_inet_frag_destroy, ptr @__kstrtabns_inet_frag_destroy }, section "___ksymtab+inet_frag_destroy", align 4
@__kstrtab_inet_frag_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_find = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_find to i32), ptr @__kstrtab_inet_frag_find, ptr @__kstrtabns_inet_frag_find }, section "___ksymtab+inet_frag_find", align 4
@__kstrtab_inet_frag_queue_insert = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_queue_insert = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_queue_insert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_queue_insert to i32), ptr @__kstrtab_inet_frag_queue_insert, ptr @__kstrtabns_inet_frag_queue_insert }, section "___ksymtab+inet_frag_queue_insert", align 4
@__kstrtab_inet_frag_reasm_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_reasm_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_reasm_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_reasm_prepare to i32), ptr @__kstrtab_inet_frag_reasm_prepare, ptr @__kstrtabns_inet_frag_reasm_prepare }, section "___ksymtab+inet_frag_reasm_prepare", align 4
@__kstrtab_inet_frag_reasm_finish = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_reasm_finish = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_reasm_finish = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_reasm_finish to i32), ptr @__kstrtab_inet_frag_reasm_finish, ptr @__kstrtabns_inet_frag_reasm_finish }, section "___ksymtab+inet_frag_reasm_finish", align 4
@__kstrtab_inet_frag_pull_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_frag_pull_head = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_frag_pull_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_frag_pull_head to i32), ptr @__kstrtab_inet_frag_pull_head, ptr @__kstrtabns_inet_frag_pull_head }, section "___ksymtab+inet_frag_pull_head", align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"inet_frag_wq\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not create inet frag workq\00", align 1
@fqdir_free_list = internal global %struct.llist_head zeroinitializer, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@fqdir_free_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @fqdir_free_work, i64 4), ptr getelementptr (i8, ptr @fqdir_free_work, i64 4) }, ptr @fqdir_free_fn }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [14 x ptr] [ptr @__initcall__kmod_inet_fragment__495_216_inet_frag_wq_init0, ptr @__ksymtab_fqdir_exit, ptr @__ksymtab_fqdir_init, ptr @__ksymtab_inet_frag_destroy, ptr @__ksymtab_inet_frag_find, ptr @__ksymtab_inet_frag_kill, ptr @__ksymtab_inet_frag_pull_head, ptr @__ksymtab_inet_frag_queue_insert, ptr @__ksymtab_inet_frag_rbtree_purge, ptr @__ksymtab_inet_frag_reasm_finish, ptr @__ksymtab_inet_frag_reasm_prepare, ptr @__ksymtab_inet_frags_fini, ptr @__ksymtab_inet_frags_init, ptr @__ksymtab_ip_frag_ecn_table], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_frags_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inet_frags, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = tail call ptr @kmem_cache_create(ptr noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %6 = getelementptr inbounds %struct.inet_frags, ptr %0, i32 0, i32 4
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inet_frags, ptr %0, i32 0, i32 7
  store volatile i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.inet_frags, ptr %0, i32 0, i32 8
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.inet_frags, ptr %0, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #10
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ 0, %8 ], [ -12, %1 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_frags_fini(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inet_frags, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #10, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #10, !srcloc !10
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %11, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #10
  br label %11

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %10 = getelementptr inbounds %struct.inet_frags, ptr %0, i32 0, i32 8
  tail call void @complete(ptr noundef %10) #10
  br label %11

11:                                               ; preds = %9, %8, %6
  %12 = getelementptr inbounds %struct.inet_frags, ptr %0, i32 0, i32 8
  tail call void @wait_for_completion(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.inet_frags, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  tail call void @kmem_cache_destroy(ptr noundef %14) #10
  store ptr null, ptr %13, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fqdir_init(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 4
  store ptr %1, ptr %8, align 16
  %9 = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 5
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 8
  %11 = getelementptr inbounds %struct.inet_frags, ptr %1, i32 0, i32 6
  %12 = tail call i32 @rhashtable_init(ptr noundef %10, ptr noundef %11) #10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #10
  br label %27

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.inet_frags, ptr %1, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #10, !srcloc !9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #10, !srcloc !13
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !14

20:                                               ; preds = %15
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24, !prof !11

24:                                               ; preds = %20, %15
  %25 = phi i32 [ 2, %15 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %25) #10
  br label %26

26:                                               ; preds = %24, %20
  store ptr %5, ptr %0, align 4
  br label %27

27:                                               ; preds = %26, %14, %3
  %28 = phi i32 [ %12, %14 ], [ 0, %26 ], [ -12, %3 ]
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @inet_frag_wq_init() #3 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str.3) #10
  store ptr %1, ptr @inet_frag_wq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4) #12
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fqdir_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 11
  store i32 -32, ptr %2, align 4
  %3 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 11, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 11, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 11, i32 2
  store ptr @fqdir_work_fn, ptr %5, align 4
  %6 = load ptr, ptr @inet_frag_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fqdir_work_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -132
  tail call void @rhashtable_free_and_destroy(ptr noundef %2, ptr noundef nonnull @inet_frags_free_cb, ptr noundef null) #10
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = tail call zeroext i1 @llist_add_batch(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @fqdir_free_list) #10
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef nonnull @fqdir_free_work) #10
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_frag_kill(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 2
  %3 = tail call i32 @del_timer(ptr noundef %2) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #10, !srcloc !9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #10, !srcloc !10
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %11, !prof !14

10:                                               ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 4) #10
  br label %11

11:                                               ; preds = %10, %5, %1
  %12 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 11
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %171

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  %19 = or i8 %13, 4
  store i8 %19, ptr %12, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %20 = getelementptr inbounds %struct.fqdir, ptr %18, i32 0, i32 6
  %21 = load volatile i8, ptr %20, align 8, !range !16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %167

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.fqdir, ptr %18, i32 0, i32 8
  %25 = getelementptr inbounds %struct.fqdir, ptr %18, i32 0, i32 4
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr inbounds %struct.inet_frags, ptr %26, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.inet_frags, ptr %26, i32 0, i32 6, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.inet_frags, ptr %26, i32 0, i32 6, i32 8
  %32 = load i32, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %33 = load volatile ptr, ptr %24, align 4
  %34 = inttoptr i32 %32 to ptr
  %35 = getelementptr inbounds %struct.fqdir, ptr %18, i32 0, i32 8, i32 3, i32 3
  %36 = icmp eq i32 %32, 0
  %37 = lshr i32 %28, 16
  %38 = icmp ult i32 %28, 65536
  %39 = getelementptr inbounds %struct.fqdir, ptr %18, i32 0, i32 8, i32 3, i32 1
  %40 = and i32 %30, 65535
  %41 = getelementptr inbounds %struct.fqdir, ptr %18, i32 0, i32 8, i32 3, i32 7
  %42 = getelementptr inbounds %struct.fqdir, ptr %18, i32 0, i32 8, i32 1
  br label %43

43:                                               ; preds = %157, %23
  %44 = phi ptr [ %33, %23 ], [ %159, %157 ]
  %45 = load i16, ptr %35, align 2
  %46 = zext i16 %45 to i32
  %47 = sub nsw i32 0, %46
  %48 = getelementptr i8, ptr %0, i32 %47
  br i1 %36, label %58, label %49, !prof !14

49:                                               ; preds = %43
  br i1 %38, label %50, label %53

50:                                               ; preds = %49
  %51 = load i16, ptr %39, align 2
  %52 = zext i16 %51 to i32
  br label %53

53:                                               ; preds = %50, %49
  %54 = phi i32 [ %52, %50 ], [ %37, %49 ]
  %55 = getelementptr inbounds %struct.bucket_table, ptr %44, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = tail call i32 %34(ptr noundef %48, i32 noundef %54, i32 noundef %56) #10
  br label %65

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.bucket_table, ptr %44, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr i8, ptr %48, i32 %40
  %62 = load ptr, ptr %41, align 4
  %63 = load i32, ptr %42, align 4
  %64 = tail call i32 %62(ptr noundef %61, i32 noundef %63, i32 noundef %60) #10
  br label %65

65:                                               ; preds = %58, %53
  %66 = phi i32 [ %57, %53 ], [ %64, %58 ]
  %67 = load i32, ptr %44, align 64
  %68 = add i32 %67, -1
  %69 = and i32 %68, %66
  %70 = getelementptr inbounds %struct.bucket_table, ptr %44, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73, !prof !11

73:                                               ; preds = %65
  %74 = tail call ptr @__rht_bucket_nested(ptr noundef %44, i32 noundef %69) #10
  br label %77

75:                                               ; preds = %65
  %76 = getelementptr %struct.bucket_table, ptr %44, i32 0, i32 8, i32 %69
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi ptr [ %74, %73 ], [ %76, %75 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %157, label %80

80:                                               ; preds = %77
  %81 = tail call ptr @llvm.thread.pointer() #10
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %83 = load volatile i32, ptr %82, align 4
  %84 = add i32 %83, 512
  store volatile i32 %84, ptr %82, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %85

85:                                               ; preds = %99, %80
  %86 = load volatile i32, ptr %78, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94, !prof !19

89:                                               ; preds = %85
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %78) #10, !srcloc !9
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %78, ptr nonnull %78, i32 1, ptr nonnull elementtype(i32) %78) #10, !srcloc !20
  %91 = extractvalue { i32, i32, i32 } %90, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %100, label %94, !prof !11

94:                                               ; preds = %89, %85
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  br label %95

95:                                               ; preds = %95, %94
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !24
  %96 = load volatile i32, ptr %78, align 4
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %95

99:                                               ; preds = %95
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %85

100:                                              ; preds = %89
  %101 = load ptr, ptr %78, align 4
  %102 = ptrtoint ptr %101 to i32
  %103 = and i32 %102, -2
  %104 = icmp eq i32 %103, 0
  %105 = ptrtoint ptr %78 to i32
  %106 = or i32 %105, 1
  %107 = select i1 %104, i32 %106, i32 %103
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %100
  %111 = inttoptr i32 %107 to ptr
  %112 = icmp eq ptr %111, %0
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load ptr, ptr %0, align 4
  br label %122

115:                                              ; preds = %128
  %116 = icmp eq ptr %130, %0
  br i1 %116, label %117, label %128

117:                                              ; preds = %115
  %118 = load ptr, ptr %0, align 4
  %119 = icmp eq ptr %129, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  store volatile ptr %118, ptr %129, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %78) #10, !srcloc !9
  %121 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %78, ptr nonnull %78, i32 1, ptr nonnull elementtype(i32) %78) #10, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  br label %136

122:                                              ; preds = %117, %113
  %123 = phi ptr [ %114, %113 ], [ %118, %117 ]
  %124 = ptrtoint ptr %123 to i32
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, ptr %123, ptr null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !30
  store volatile ptr %127, ptr %78, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  br label %136

128:                                              ; preds = %115, %110
  %129 = phi ptr [ %130, %115 ], [ %111, %110 ]
  %130 = load ptr, ptr %129, align 4
  %131 = ptrtoint ptr %130 to i32
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %115, label %134

134:                                              ; preds = %128, %100
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %78) #10, !srcloc !9
  %135 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %78, ptr nonnull %78, i32 1, ptr nonnull elementtype(i32) %78) #10, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  tail call fastcc void @local_bh_enable() #10
  br label %157

136:                                              ; preds = %122, %120
  tail call fastcc void @local_bh_enable() #10
  %137 = getelementptr inbounds %struct.fqdir, ptr %18, i32 0, i32 8, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %137) #10, !srcloc !9
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %137, ptr %137, i32 1, ptr elementtype(i32) %137) #10, !srcloc !32
  %139 = getelementptr inbounds %struct.fqdir, ptr %18, i32 0, i32 8, i32 3, i32 6
  %140 = load i8, ptr %139, align 2, !range !16
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %161, label %142

142:                                              ; preds = %136
  %143 = load volatile i32, ptr %137, align 4
  %144 = load i32, ptr %44, align 64
  %145 = mul i32 %144, 3
  %146 = udiv i32 %145, 10
  %147 = icmp ult i32 %143, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.fqdir, ptr %18, i32 0, i32 8, i32 3, i32 5
  %150 = load i16, ptr %149, align 4
  %151 = zext i16 %150 to i32
  %152 = icmp ugt i32 %144, %151
  br i1 %152, label %153, label %161, !prof !14

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.fqdir, ptr %18, i32 0, i32 8, i32 5
  %155 = load ptr, ptr @system_wq, align 4
  %156 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %155, ptr noundef %154) #10
  br label %161

157:                                              ; preds = %134, %77
  %158 = getelementptr inbounds %struct.bucket_table, ptr %44, i32 0, i32 5
  %159 = load volatile ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %43

161:                                              ; preds = %157, %153, %148, %142, %136
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %162 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %162) #10, !srcloc !9
  %163 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %162, ptr %162, i32 1, ptr elementtype(i32) %162) #10, !srcloc !10
  %164 = extractvalue { i32, i32, i32 } %163, 0
  %165 = icmp slt i32 %164, 2
  br i1 %165, label %166, label %170, !prof !14

166:                                              ; preds = %161
  tail call void @refcount_warn_saturate(ptr noundef %162, i32 noundef 4) #10
  br label %170

167:                                              ; preds = %16
  %168 = load i8, ptr %12, align 8
  %169 = or i8 %168, 8
  store i8 %169, ptr %12, align 8
  br label %170

170:                                              ; preds = %167, %166, %161
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  br label %171

171:                                              ; preds = %170, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_frag_rbtree_purge(ptr noundef %0) #0 {
  %2 = tail call ptr @rb_first(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %6

4:                                                ; preds = %10
  %5 = icmp eq ptr %9, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %8 = phi i32 [ %17, %4 ], [ 0, %1 ]
  %9 = tail call ptr @rb_next(ptr noundef nonnull %7) #10
  tail call void @rb_erase(ptr noundef nonnull %7, ptr noundef %0) #10
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i32 [ %8, %6 ], [ %17, %10 ]
  %12 = phi ptr [ %7, %6 ], [ %14, %10 ]
  %13 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 24
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 18
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, %11
  tail call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #10
  %18 = icmp eq ptr %14, null
  br i1 %18, label %4, label %10

19:                                               ; preds = %4, %1
  %20 = phi i32 [ 0, %1 ], [ %17, %4 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_frag_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 11
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !14

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #10
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 2
  %9 = tail call i32 @del_timer(ptr noundef %8) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 292, i32 noundef 9, ptr noundef null) #10
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fqdir, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 16
  %17 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 5
  %18 = tail call ptr @rb_first(ptr noundef %17) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %22

20:                                               ; preds = %26
  %21 = icmp eq ptr %25, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %20, %12
  %23 = phi ptr [ %25, %20 ], [ %18, %12 ]
  %24 = phi i32 [ %33, %20 ], [ 0, %12 ]
  %25 = tail call ptr @rb_next(ptr noundef nonnull %23) #10
  tail call void @rb_erase(ptr noundef nonnull %23, ptr noundef %17) #10
  br label %26

26:                                               ; preds = %26, %22
  %27 = phi i32 [ %24, %22 ], [ %33, %26 ]
  %28 = phi ptr [ %23, %22 ], [ %30, %26 ]
  %29 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 3, i32 24
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 18
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, %27
  tail call void @kfree_skb_reason(ptr noundef nonnull %28, i32 noundef 0) #10
  %34 = icmp eq ptr %30, null
  br i1 %34, label %20, label %26

35:                                               ; preds = %20, %12
  %36 = phi i32 [ 0, %12 ], [ %33, %20 ]
  %37 = load i32, ptr %16, align 4
  %38 = add i32 %37, %36
  %39 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 14
  tail call void @call_rcu(ptr noundef %39, ptr noundef nonnull @inet_frag_destroy_rcu) #10
  %40 = getelementptr inbounds %struct.fqdir, ptr %14, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #10, !srcloc !9
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 %38, ptr elementtype(i32) %40) #10, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inet_frag_destroy_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -112
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fqdir, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.inet_frags, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void %8(ptr noundef %2) #10
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.inet_frags, ptr %6, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_frag_find(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rhashtable_compare_arg, align 8
  %4 = alloca %struct.rhashtable_compare_arg, align 8
  %5 = load volatile i32, ptr %0, align 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %335, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 10
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, %5
  br i1 %10, label %335, label %11

11:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %12 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 8
  %13 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.inet_frags, ptr %14, i32 0, i32 6, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = inttoptr i32 %16 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store ptr %12, ptr %4, align 8
  %18 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %4, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  %19 = load volatile ptr, ptr %12, align 4
  %20 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 8, i32 3, i32 7
  %21 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 8, i32 1
  %22 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 8, i32 3, i32 1
  %23 = icmp eq i32 %16, 0
  %24 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 8, i32 3, i32 3
  br label %25

25:                                               ; preds = %85, %11
  %26 = phi ptr [ %19, %11 ], [ %87, %85 ]
  %27 = getelementptr inbounds %struct.bucket_table, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = load ptr, ptr %20, align 4
  %30 = load i32, ptr %21, align 4
  %31 = call i32 %29(ptr noundef %1, i32 noundef %30, i32 noundef %28) #10
  %32 = load i32, ptr %26, align 64
  %33 = add i32 %32, -1
  %34 = and i32 %33, %31
  %35 = getelementptr inbounds %struct.bucket_table, ptr %26, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !11

38:                                               ; preds = %25
  %39 = call ptr @rht_bucket_nested(ptr noundef %26, i32 noundef %34) #10
  br label %42

40:                                               ; preds = %25
  %41 = getelementptr %struct.bucket_table, ptr %26, i32 0, i32 8, i32 %34
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi ptr [ %39, %38 ], [ %41, %40 ]
  %44 = ptrtoint ptr %43 to i32
  %45 = or i32 %44, 1
  %46 = inttoptr i32 %45 to ptr
  br label %47

47:                                               ; preds = %82, %42
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  %48 = load volatile ptr, ptr %43, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = and i32 %49, -2
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 %45, i32 %50
  %53 = inttoptr i32 %52 to ptr
  %54 = and i32 %52, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %77, %47
  %57 = phi ptr [ %78, %77 ], [ %53, %47 ]
  %58 = load i16, ptr %24, align 2
  %59 = zext i16 %58 to i32
  %60 = sub nsw i32 0, %59
  %61 = getelementptr i8, ptr %57, i32 %60
  br i1 %23, label %65, label %62

62:                                               ; preds = %56
  %63 = call i32 %17(ptr noundef nonnull %4, ptr noundef %61) #10
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %90, label %77

65:                                               ; preds = %56
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr inbounds %struct.rhashtable, ptr %66, i32 0, i32 3, i32 2
  %68 = load i16, ptr %67, align 4
  %69 = zext i16 %68 to i32
  %70 = getelementptr i8, ptr %61, i32 %69
  %71 = load ptr, ptr %18, align 4
  %72 = getelementptr inbounds %struct.rhashtable, ptr %66, i32 0, i32 3, i32 1
  %73 = load i16, ptr %72, align 2
  %74 = zext i16 %73 to i32
  %75 = call i32 @bcmp(ptr %70, ptr %71, i32 %74) #10
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %65, %62
  %78 = load volatile ptr, ptr %57, align 4
  %79 = ptrtoint ptr %78 to i32
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %56, label %82

82:                                               ; preds = %77, %47
  %83 = phi ptr [ %53, %47 ], [ %78, %77 ]
  %84 = icmp eq ptr %83, %46
  br i1 %84, label %85, label %47

85:                                               ; preds = %82
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !35
  %86 = getelementptr inbounds %struct.bucket_table, ptr %26, i32 0, i32 5
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %25, !prof !11

89:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %98

90:                                               ; preds = %65, %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  %91 = icmp eq ptr %57, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %90
  %93 = load i16, ptr %24, align 2
  %94 = zext i16 %93 to i32
  %95 = sub nsw i32 0, %94
  %96 = getelementptr i8, ptr %57, i32 %95
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %305

98:                                               ; preds = %92, %90, %89
  %99 = load ptr, ptr %13, align 16
  %100 = getelementptr inbounds %struct.inet_frags, ptr %99, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %101, i32 noundef 2848) #10
  %103 = icmp eq ptr %102, null
  br i1 %103, label %333, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.inet_frag_queue, ptr %102, i32 0, i32 13
  store ptr %0, ptr %105, align 4
  %106 = getelementptr inbounds %struct.inet_frags, ptr %99, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  call void %107(ptr noundef nonnull %102, ptr noundef %1) #10
  %108 = load i32, ptr %99, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #10, !srcloc !9
  %109 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 %108, ptr elementtype(i32) %8) #10, !srcloc !36
  %110 = getelementptr inbounds %struct.inet_frag_queue, ptr %102, i32 0, i32 2
  %111 = getelementptr inbounds %struct.inet_frags, ptr %99, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  call void @init_timer_key(ptr noundef %110, ptr noundef %112, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %113 = getelementptr inbounds %struct.inet_frag_queue, ptr %102, i32 0, i32 3
  store i32 0, ptr %113, align 4
  %114 = getelementptr inbounds %struct.inet_frag_queue, ptr %102, i32 0, i32 4
  store volatile i32 3, ptr %114, align 8
  %115 = load volatile i32, ptr @jiffies, align 64
  %116 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 2
  %117 = load i32, ptr %116, align 8
  %118 = add i32 %117, %115
  %119 = call i32 @mod_timer(ptr noundef %110, i32 noundef %118) #10
  %120 = getelementptr inbounds %struct.inet_frag_queue, ptr %102, i32 0, i32 1
  %121 = getelementptr inbounds %struct.inet_frags, ptr %99, i32 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.inet_frags, ptr %99, i32 0, i32 6, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.inet_frags, ptr %99, i32 0, i32 6, i32 9
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 8, i32 3, i32 8
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %131, !prof !14

130:                                              ; preds = %104
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 980, 0\0A.popsection", ""() #10, !srcloc !37
  unreachable

131:                                              ; preds = %104
  %132 = getelementptr inbounds %struct.inet_frags, ptr %99, i32 0, i32 6, i32 8
  %133 = load i32, ptr %132, align 4
  %134 = inttoptr i32 %126 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr %12, ptr %3, align 8
  %135 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %3, i32 0, i32 1
  store ptr %120, ptr %135, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %136 = load volatile ptr, ptr %12, align 4
  %137 = inttoptr i32 %133 to ptr
  %138 = load i16, ptr %24, align 2
  %139 = zext i16 %138 to i32
  %140 = sub nsw i32 0, %139
  %141 = getelementptr i8, ptr %102, i32 %140
  %142 = icmp eq i32 %133, 0
  br i1 %142, label %154, label %143, !prof !14

143:                                              ; preds = %131
  %144 = lshr i32 %122, 16
  %145 = icmp ult i32 %122, 65536
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i16, ptr %22, align 2
  %148 = zext i16 %147 to i32
  br label %149

149:                                              ; preds = %146, %143
  %150 = phi i32 [ %148, %146 ], [ %144, %143 ]
  %151 = getelementptr inbounds %struct.bucket_table, ptr %136, i32 0, i32 2
  %152 = load i32, ptr %151, align 8
  %153 = call i32 %137(ptr noundef %141, i32 noundef %150, i32 noundef %152) #10
  br label %162

154:                                              ; preds = %131
  %155 = getelementptr inbounds %struct.bucket_table, ptr %136, i32 0, i32 2
  %156 = load i32, ptr %155, align 8
  %157 = and i32 %124, 65535
  %158 = getelementptr i8, ptr %141, i32 %157
  %159 = load ptr, ptr %20, align 4
  %160 = load i32, ptr %21, align 4
  %161 = call i32 %159(ptr noundef %158, i32 noundef %160, i32 noundef %156) #10
  br label %162

162:                                              ; preds = %154, %149
  %163 = phi i32 [ %153, %149 ], [ %161, %154 ]
  %164 = load i32, ptr %136, align 64
  %165 = add i32 %164, -1
  %166 = and i32 %165, %163
  %167 = getelementptr inbounds %struct.bucket_table, ptr %136, i32 0, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170, !prof !11

170:                                              ; preds = %162
  %171 = call ptr @rht_bucket_nested_insert(ptr noundef %12, ptr noundef %136, i32 noundef %166) #10
  br label %174

172:                                              ; preds = %162
  %173 = getelementptr %struct.bucket_table, ptr %136, i32 0, i32 8, i32 %166
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi ptr [ %171, %170 ], [ %173, %172 ]
  %176 = icmp eq ptr %175, null
  br i1 %176, label %293, label %177

177:                                              ; preds = %174
  %178 = tail call ptr @llvm.thread.pointer() #10
  %179 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 1
  %180 = load volatile i32, ptr %179, align 4
  %181 = add i32 %180, 512
  store volatile i32 %181, ptr %179, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %182

182:                                              ; preds = %196, %177
  %183 = load volatile i32, ptr %175, align 4
  %184 = and i32 %183, 1
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %191, !prof !19

186:                                              ; preds = %182
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %175) #10, !srcloc !9
  %187 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %175, ptr nonnull %175, i32 1, ptr nonnull elementtype(i32) %175) #10, !srcloc !20
  %188 = extractvalue { i32, i32, i32 } %187, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %189 = and i32 %188, 1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %197, label %191, !prof !11

191:                                              ; preds = %186, %182
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  br label %192

192:                                              ; preds = %192, %191
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !24
  %193 = load volatile i32, ptr %175, align 4
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %192

196:                                              ; preds = %192
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %182

197:                                              ; preds = %186
  %198 = getelementptr inbounds %struct.bucket_table, ptr %136, i32 0, i32 5
  %199 = load volatile ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %204, label %201, !prof !11

201:                                              ; preds = %264, %252, %197
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %175) #10, !srcloc !9
  %202 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %175, ptr nonnull %175, i32 1, ptr nonnull elementtype(i32) %175) #10, !srcloc !28
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  call fastcc void @local_bh_enable() #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %203 = call ptr @rhashtable_insert_slow(ptr noundef %12, ptr noundef %120, ptr noundef nonnull %102) #10
  br label %298

204:                                              ; preds = %197
  %205 = load ptr, ptr %175, align 4
  %206 = ptrtoint ptr %205 to i32
  %207 = and i32 %206, -2
  %208 = icmp eq i32 %207, 0
  %209 = ptrtoint ptr %175 to i32
  %210 = or i32 %209, 1
  %211 = select i1 %208, i32 %210, i32 %207
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %254

214:                                              ; preds = %204
  %215 = inttoptr i32 %211 to ptr
  %216 = icmp eq i32 %126, 0
  br label %217

217:                                              ; preds = %247, %214
  %218 = phi ptr [ %215, %214 ], [ %248, %247 ]
  %219 = phi i32 [ 16, %214 ], [ %220, %247 ]
  %220 = add i32 %219, -1
  %221 = load i16, ptr %24, align 2
  %222 = zext i16 %221 to i32
  %223 = sub nsw i32 0, %222
  %224 = getelementptr i8, ptr %218, i32 %223
  br i1 %216, label %232, label %225

225:                                              ; preds = %217
  %226 = call i32 %134(ptr noundef nonnull %3, ptr noundef %224) #10
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %225
  %229 = load i16, ptr %24, align 2
  %230 = zext i16 %229 to i32
  %231 = sub nsw i32 0, %230
  br label %244

232:                                              ; preds = %217
  %233 = load ptr, ptr %3, align 8
  %234 = getelementptr inbounds %struct.rhashtable, ptr %233, i32 0, i32 3, i32 2
  %235 = load i16, ptr %234, align 4
  %236 = zext i16 %235 to i32
  %237 = getelementptr i8, ptr %224, i32 %236
  %238 = load ptr, ptr %135, align 4
  %239 = getelementptr inbounds %struct.rhashtable, ptr %233, i32 0, i32 3, i32 1
  %240 = load i16, ptr %239, align 2
  %241 = zext i16 %240 to i32
  %242 = call i32 @bcmp(ptr %237, ptr %238, i32 %241) #10
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %232, %228
  %245 = phi i32 [ %231, %228 ], [ %223, %232 ]
  %246 = getelementptr i8, ptr %218, i32 %245
  br label %295

247:                                              ; preds = %232, %225
  %248 = load ptr, ptr %218, align 4
  %249 = ptrtoint ptr %248 to i32
  %250 = and i32 %249, 1
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %217, label %252

252:                                              ; preds = %247
  %253 = icmp slt i32 %220, 1
  br i1 %253, label %201, label %254

254:                                              ; preds = %252, %204
  %255 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 8, i32 8
  %256 = load volatile i32, ptr %255, align 4
  %257 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 8, i32 2
  %258 = load i32, ptr %257, align 4
  %259 = icmp ult i32 %256, %258
  br i1 %259, label %260, label %295, !prof !11

260:                                              ; preds = %254
  %261 = load volatile i32, ptr %255, align 4
  %262 = load i32, ptr %136, align 64
  %263 = icmp ugt i32 %261, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 8, i32 3, i32 4
  %266 = load i32, ptr %265, align 4
  %267 = icmp eq i32 %266, 0
  %268 = icmp ult i32 %262, %266
  %269 = select i1 %267, i1 true, i1 %268
  br i1 %269, label %201, label %270, !prof !14

270:                                              ; preds = %264, %260
  %271 = load ptr, ptr %175, align 4
  %272 = ptrtoint ptr %271 to i32
  %273 = and i32 %272, -2
  %274 = icmp eq i32 %273, 0
  %275 = select i1 %274, i32 %210, i32 %273
  %276 = inttoptr i32 %275 to ptr
  store volatile ptr %276, ptr %102, align 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %255) #10, !srcloc !9
  %277 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %255, ptr %255, i32 1, ptr elementtype(i32) %255) #10, !srcloc !36
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !30
  store volatile ptr %102, ptr %175, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  call fastcc void @local_bh_enable() #10
  %278 = load volatile i32, ptr %255, align 4
  %279 = load i32, ptr %136, align 64
  %280 = lshr i32 %279, 2
  %281 = mul nuw i32 %280, 3
  %282 = icmp ugt i32 %278, %281
  br i1 %282, label %283, label %293

283:                                              ; preds = %270
  %284 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 8, i32 3, i32 4
  %285 = load i32, ptr %284, align 4
  %286 = icmp eq i32 %285, 0
  %287 = icmp ult i32 %279, %285
  %288 = select i1 %286, i1 true, i1 %287
  br i1 %288, label %289, label %293

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.fqdir, ptr %0, i32 0, i32 8, i32 5
  %291 = load ptr, ptr @system_wq, align 4
  %292 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %291, ptr noundef %290) #10
  br label %293

293:                                              ; preds = %295, %289, %283, %270, %174
  %294 = phi ptr [ %296, %295 ], [ inttoptr (i32 -12 to ptr), %174 ], [ null, %289 ], [ null, %283 ], [ null, %270 ]
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  br label %298

295:                                              ; preds = %254, %244
  %296 = phi ptr [ %246, %244 ], [ inttoptr (i32 -7 to ptr), %254 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %175) #10, !srcloc !9
  %297 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %175, ptr nonnull %175, i32 1, ptr nonnull elementtype(i32) %175) #10, !srcloc !28
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  call fastcc void @local_bh_enable() #10
  br label %293

298:                                              ; preds = %293, %201
  %299 = phi ptr [ %203, %201 ], [ %294, %293 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  %300 = icmp eq ptr %299, null
  br i1 %300, label %333, label %301

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.inet_frag_queue, ptr %102, i32 0, i32 11
  %303 = load i8, ptr %302, align 8
  %304 = or i8 %303, 4
  store i8 %304, ptr %302, align 8
  call void @inet_frag_kill(ptr noundef nonnull %102) #10
  call void @inet_frag_destroy(ptr noundef nonnull %102) #10
  br label %305

305:                                              ; preds = %301, %92
  %306 = phi ptr [ %96, %92 ], [ %299, %301 ]
  %307 = icmp ugt ptr %306, inttoptr (i32 -4096 to ptr)
  br i1 %307, label %333, label %308

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.inet_frag_queue, ptr %306, i32 0, i32 4
  %310 = load volatile i32, ptr %309, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %324, label %312

312:                                              ; preds = %322, %308
  %313 = phi i32 [ %320, %322 ], [ %310, %308 ]
  %314 = add i32 %313, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %309) #10, !srcloc !9
  br label %315

315:                                              ; preds = %315, %312
  %316 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %309, ptr %309, i32 %313, i32 %314, ptr elementtype(i32) %309) #10, !srcloc !38
  %317 = extractvalue { i32, i32 } %316, 0
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %315

319:                                              ; preds = %315
  %320 = extractvalue { i32, i32 } %316, 1
  %321 = icmp eq i32 %320, %313
  br i1 %321, label %324, label %322, !prof !11

322:                                              ; preds = %319
  %323 = icmp eq i32 %320, 0
  br i1 %323, label %324, label %312

324:                                              ; preds = %322, %319, %308
  %325 = phi i32 [ 0, %308 ], [ 0, %322 ], [ %313, %319 ]
  %326 = add i32 %325, 1
  %327 = or i32 %326, %325
  %328 = icmp sgt i32 %327, -1
  br i1 %328, label %330, label %329, !prof !11

329:                                              ; preds = %324
  call void @refcount_warn_saturate(ptr noundef %309, i32 noundef 0) #10
  br label %330

330:                                              ; preds = %329, %324
  %331 = icmp eq i32 %325, 0
  %332 = select i1 %331, ptr null, ptr %306
  br label %333

333:                                              ; preds = %330, %305, %298, %98
  %334 = phi ptr [ null, %305 ], [ %332, %330 ], [ null, %98 ], [ %102, %298 ]
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  br label %335

335:                                              ; preds = %333, %7, %2
  %336 = phi ptr [ %334, %333 ], [ null, %7 ], [ null, %2 ]
  ret ptr %336
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_frag_queue_insert(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = ptrtoint ptr %1 to i32
  store i32 %9, ptr %1, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 5
  %18 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %15 to i32
  %20 = select i1 %16, ptr %17, ptr %18
  store i32 %19, ptr %1, align 4
  %21 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  store ptr null, ptr %22, align 4
  store ptr %1, ptr %20, align 4
  tail call void @rb_insert_color(ptr noundef %1, ptr noundef %17) #10
  store ptr %1, ptr %5, align 8
  store ptr %1, ptr %14, align 4
  br label %89

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, %25
  %29 = icmp ult i32 %28, %3
  br i1 %29, label %30, label %55

30:                                               ; preds = %23
  %31 = icmp ugt i32 %28, %2
  br i1 %31, label %91, label %32

32:                                               ; preds = %30
  %33 = icmp eq i32 %28, %2
  %34 = ptrtoint ptr %1 to i32
  store i32 %34, ptr %1, align 8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  store ptr null, ptr %35, align 8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  br i1 %33, label %41, label %47

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 3, i32 28
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %37
  store i32 %44, ptr %42, align 4
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 3, i32 24
  store ptr %1, ptr %46, align 8
  store ptr %1, ptr %5, align 8
  br label %89

47:                                               ; preds = %32
  %48 = icmp eq ptr %40, null
  %49 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 5
  %50 = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 1
  %51 = ptrtoint ptr %40 to i32
  %52 = select i1 %48, ptr %49, ptr %50
  store i32 %51, ptr %1, align 4
  %53 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  store ptr null, ptr %53, align 4
  %54 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  store ptr null, ptr %54, align 4
  store ptr %1, ptr %52, align 4
  tail call void @rb_insert_color(ptr noundef %1, ptr noundef %49) #10
  store ptr %1, ptr %5, align 8
  store ptr %1, ptr %39, align 4
  br label %89

55:                                               ; preds = %23
  %56 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %77, %55
  %59 = phi ptr [ %57, %55 ], [ %79, %77 ]
  %60 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp slt i32 %61, %3
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.rb_node, ptr %59, i32 0, i32 2
  br label %77

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3, i32 28
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, %61
  %69 = icmp sgt i32 %68, %2
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.rb_node, ptr %59, i32 0, i32 1
  br label %77

72:                                               ; preds = %65
  %73 = icmp sgt i32 %61, %2
  %74 = icmp slt i32 %68, %3
  %75 = select i1 %73, i1 true, i1 %74
  %76 = select i1 %75, i32 2, i32 1
  br label %91

77:                                               ; preds = %70, %63
  %78 = phi ptr [ %71, %70 ], [ %64, %63 ]
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %58

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  store ptr null, ptr %82, align 8
  %83 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %84, ptr %85, align 4
  %86 = ptrtoint ptr %59 to i32
  store i32 %86, ptr %1, align 4
  %87 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  store ptr null, ptr %87, align 4
  %88 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  store ptr null, ptr %88, align 4
  store ptr %1, ptr %78, align 4
  tail call void @rb_insert_color(ptr noundef %1, ptr noundef %56) #10
  br label %89

89:                                               ; preds = %81, %47, %41, %8
  %90 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  store i32 %2, ptr %90, align 4
  br label %91

91:                                               ; preds = %89, %72, %30
  %92 = phi i32 [ 0, %89 ], [ 2, %30 ], [ %76, %72 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_frag_reasm_prepare(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 5
  %5 = tail call ptr @rb_first(ptr noundef %4) #10
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %117, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 24
  store ptr %12, ptr %13, align 8
  %14 = load i32, ptr %1, align 8
  %15 = ptrtoint ptr %1 to i32
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 24
  store ptr %8, ptr %18, align 8
  br label %20

19:                                               ; preds = %10
  tail call void @rb_replace_node(ptr noundef %1, ptr noundef nonnull %8, ptr noundef %4) #10
  br label %20

20:                                               ; preds = %19, %17
  %21 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store ptr %8, ptr %21, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = tail call ptr @skb_morph(ptr noundef %1, ptr noundef %5) #10
  %27 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 24
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %11, align 8
  tail call void @rb_replace_node(ptr noundef %5, ptr noundef %1, ptr noundef %4) #10
  tail call void @consume_skb(ptr noundef %5) #10
  br label %29

29:                                               ; preds = %25, %3
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33, !prof !11

33:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 467, i32 noundef 9, ptr noundef null) #10
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %38 = load i8, ptr %37, align 2
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 10
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %60, label %48

48:                                               ; preds = %41
  %49 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %117

51:                                               ; preds = %48
  %52 = load i32, ptr %35, align 8
  %53 = icmp eq i32 %52, %36
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = sub i32 %52, %36
  %56 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 13
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.fqdir, ptr %57, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #10, !srcloc !9
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 %55, ptr elementtype(i32) %58) #10, !srcloc !36
  br label %60

60:                                               ; preds = %54, %51, %41, %34
  %61 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.skb_shared_info, ptr %62, i32 0, i32 6
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %117, label %66

66:                                               ; preds = %60
  %67 = tail call ptr @__alloc_skb(i32 noundef 0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %68 = icmp eq ptr %67, null
  br i1 %68, label %117, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %61, align 4
  %71 = getelementptr inbounds %struct.skb_shared_info, ptr %70, i32 0, i32 6
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 15
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.skb_shared_info, ptr %74, i32 0, i32 6
  store ptr %72, ptr %75, align 8
  %76 = load ptr, ptr %61, align 4
  %77 = getelementptr inbounds %struct.skb_shared_info, ptr %76, i32 0, i32 6
  store ptr null, ptr %77, align 8
  %78 = load ptr, ptr %61, align 4
  %79 = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 2
  %80 = load i8, ptr %79, align 2
  %81 = zext i8 %80 to i32
  %82 = icmp eq i8 %80, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %83, %69
  %84 = phi i32 [ %88, %83 ], [ 0, %69 ]
  %85 = phi i32 [ %89, %83 ], [ 0, %69 ]
  %86 = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %85, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, %84
  %89 = add nuw nsw i32 %85, 1
  %90 = icmp eq i32 %89, %81
  br i1 %90, label %91, label %83

91:                                               ; preds = %83, %69
  %92 = phi i32 [ 0, %69 ], [ %88, %83 ]
  %93 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %94 = load i32, ptr %93, align 4
  %95 = sub i32 %94, %92
  %96 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 6
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 5
  store i32 %95, ptr %97, align 8
  %98 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 18
  %99 = load i32, ptr %98, align 8
  %100 = load i32, ptr %35, align 8
  %101 = add i32 %100, %99
  store i32 %101, ptr %35, align 8
  %102 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 13, i32 0, i32 4
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %104 = load i16, ptr %103, align 8
  %105 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 13
  %106 = load i16, ptr %105, align 8
  %107 = and i16 %104, 96
  %108 = and i16 %106, -97
  %109 = or i16 %108, %107
  store i16 %109, ptr %105, align 8
  %110 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 13
  %111 = load ptr, ptr %110, align 4
  %112 = load i32, ptr %98, align 8
  %113 = getelementptr inbounds %struct.fqdir, ptr %111, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %113) #10, !srcloc !9
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %113, ptr %113, i32 %112, ptr elementtype(i32) %113) #10, !srcloc !36
  %115 = load ptr, ptr %61, align 4
  %116 = getelementptr inbounds %struct.skb_shared_info, ptr %115, i32 0, i32 6
  store ptr %67, ptr %116, align 8
  br label %117

117:                                              ; preds = %91, %66, %60, %48, %7
  %118 = phi ptr [ null, %7 ], [ null, %48 ], [ null, %66 ], [ %67, %91 ], [ %63, %60 ]
  ret ptr %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_replace_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_morph(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_frag_reasm_finish(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i1 noundef zeroext %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = ptrtoint ptr %8 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %17) #10
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %20 = load ptr, ptr %19, align 8
  %21 = tail call ptr @rb_next(ptr noundef %1) #10
  %22 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 5
  tail call void @rb_erase(ptr noundef %1, ptr noundef %22) #10
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %24 = load i32, ptr %23, align 8
  %25 = icmp ne ptr %21, null
  %26 = icmp ne ptr %20, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %99

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  br label %33

33:                                               ; preds = %94, %28
  %34 = phi i1 [ %25, %28 ], [ %96, %94 ]
  %35 = phi ptr [ %2, %28 ], [ %91, %94 ]
  %36 = phi ptr [ %21, %28 ], [ %95, %94 ]
  %37 = phi ptr [ %20, %28 ], [ %36, %94 ]
  %38 = phi i32 [ %24, %28 ], [ %90, %94 ]
  %39 = icmp eq ptr %37, null
  br i1 %39, label %89, label %40

40:                                               ; preds = %86, %33
  %41 = phi ptr [ %87, %86 ], [ %35, %33 ]
  %42 = phi ptr [ %45, %86 ], [ %37, %33 ]
  %43 = phi i32 [ %48, %86 ], [ %38, %33 ]
  %44 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 3, i32 24
  %45 = load ptr, ptr %44, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !39
  %46 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 18
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, %43
  %49 = load i16, ptr %29, align 8
  %50 = lshr i16 %49, 5
  %51 = and i16 %50, 3
  %52 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 13
  %53 = load i16, ptr %52, align 8
  %54 = lshr i16 %53, 5
  %55 = and i16 %54, 3
  %56 = icmp eq i16 %51, %55
  br i1 %56, label %59, label %57

57:                                               ; preds = %40
  %58 = and i16 %49, -97
  store i16 %58, ptr %29, align 8
  br label %69

59:                                               ; preds = %40
  %60 = icmp eq i16 %51, 2
  br i1 %60, label %61, label %69

61:                                               ; preds = %59
  %62 = load i32, ptr %30, align 4
  %63 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 13, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %62
  %66 = icmp ult i32 %65, %64
  %67 = zext i1 %66 to i32
  %68 = add i32 %65, %67
  store i32 %68, ptr %30, align 4
  br label %69

69:                                               ; preds = %61, %59, %57
  br i1 %3, label %70, label %75

70:                                               ; preds = %69
  %71 = call zeroext i1 @skb_try_coalesce(ptr noundef %1, ptr noundef nonnull %42, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i8, ptr %5, align 1, !range !16
  %74 = icmp ne i8 %73, 0
  call void @kfree_skb_partial(ptr noundef nonnull %42, i1 noundef zeroext %74) #10
  br label %86

75:                                               ; preds = %70, %69
  %76 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  %77 = load i32, ptr %76, align 8
  %78 = load i32, ptr %31, align 4
  %79 = add i32 %78, %77
  store i32 %79, ptr %31, align 4
  %80 = load i32, ptr %76, align 8
  %81 = load i32, ptr %32, align 8
  %82 = add i32 %81, %80
  store i32 %82, ptr %32, align 8
  %83 = load i32, ptr %46, align 8
  %84 = load i32, ptr %23, align 8
  %85 = add i32 %84, %83
  store i32 %85, ptr %23, align 8
  store ptr %42, ptr %41, align 4
  br label %86

86:                                               ; preds = %75, %72
  %87 = phi ptr [ %41, %72 ], [ %42, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %88 = icmp eq ptr %45, null
  br i1 %88, label %89, label %40

89:                                               ; preds = %86, %33
  %90 = phi i32 [ %38, %33 ], [ %48, %86 ]
  %91 = phi ptr [ %35, %33 ], [ %87, %86 ]
  br i1 %34, label %92, label %94

92:                                               ; preds = %89
  %93 = call ptr @rb_next(ptr noundef nonnull %36) #10
  call void @rb_erase(ptr noundef nonnull %36, ptr noundef %22) #10
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi ptr [ %93, %92 ], [ null, %89 ]
  %96 = icmp ne ptr %95, null
  %97 = icmp ne ptr %36, null
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %33, label %99

99:                                               ; preds = %94, %4
  %100 = phi i32 [ %24, %4 ], [ %90, %94 ]
  %101 = phi ptr [ %2, %4 ], [ %91, %94 ]
  %102 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 13
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.fqdir, ptr %103, i32 0, i32 10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %104) #10, !srcloc !9
  %105 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 %100, ptr elementtype(i32) %104) #10, !srcloc !32
  store ptr null, ptr %101, align 4
  store ptr null, ptr %1, align 8
  %106 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  store ptr null, ptr %106, align 4
  %107 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 8
  %108 = load i64, ptr %107, align 8
  %109 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  store i64 %108, ptr %109, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_try_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_partial(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_frag_pull_head(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 5
  %3 = tail call ptr @rb_first(ptr noundef %2) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 24
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @rb_replace_node(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef %2) #10
  br label %11

10:                                               ; preds = %5
  tail call void @rb_erase(ptr noundef nonnull %3, ptr noundef %2) #10
  br label %11

11:                                               ; preds = %10, %9
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(12) %3, i8 0, i32 12, i1 false)
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !40
  %12 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %3, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store ptr null, ptr %12, align 8
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 18
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.fqdir, ptr %18, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #10, !srcloc !9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 %20, ptr elementtype(i32) %21) #10, !srcloc !32
  br label %23

23:                                               ; preds = %16, %1
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inet_frags_free_cb(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 2
  %4 = tail call i32 @del_timer_sync(ptr noundef %3) #10
  %5 = icmp ne i32 %4, 0
  %6 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 11
  %8 = load i8, ptr %7, align 8
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = or i8 %8, 4
  store i8 %13, ptr %7, align 8
  %14 = select i1 %5, i32 2, i32 1
  br label %21

15:                                               ; preds = %2
  %16 = zext i1 %5 to i32
  %17 = and i32 %9, 8
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %5, i32 2, i32 1
  %20 = select i1 %18, i32 %16, i32 %19
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i32 [ %14, %12 ], [ %20, %15 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #10
  %23 = getelementptr inbounds %struct.inet_frag_queue, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #10, !srcloc !9
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 %22, ptr elementtype(i32) %23) #10, !srcloc !10
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, %22
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = sub i32 %25, %22
  %29 = or i32 %28, %25
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %33, label %31, !prof !11

31:                                               ; preds = %27
  tail call void @refcount_warn_saturate(ptr noundef %23, i32 noundef 3) #10
  br label %33

32:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void @inet_frag_destroy(ptr noundef %0)
  br label %33

33:                                               ; preds = %32, %31, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fqdir_free_fn(ptr nocapture noundef readnone %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @fqdir_free_list) #10, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @fqdir_free_list) #10, !srcloc !42
  %3 = extractvalue { i32, i32 } %2, 0
  %4 = inttoptr i32 %3 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !43
  tail call void @rcu_barrier() #10
  %5 = getelementptr i8, ptr %4, i32 -212
  %6 = icmp eq ptr %5, inttoptr (i32 -212 to ptr)
  br i1 %6, label %25, label %7

7:                                                ; preds = %22, %1
  %8 = phi ptr [ %23, %22 ], [ %5, %1 ]
  %9 = phi ptr [ %10, %22 ], [ %4, %1 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %9, i32 -196
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr inbounds %struct.inet_frags, ptr %12, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #10, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %22, label %19, !prof !11

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #10
  br label %22

20:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %21 = getelementptr inbounds %struct.inet_frags, ptr %12, i32 0, i32 8
  tail call void @complete(ptr noundef %21) #10
  br label %22

22:                                               ; preds = %20, %19, %17
  tail call void @kfree(ptr noundef %8) #10
  %23 = getelementptr i8, ptr %10, i32 -212
  %24 = icmp eq ptr %23, inttoptr (i32 -212 to ptr)
  br i1 %24, label %25, label %7

25:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold noreturn nounwind }

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
!8 = !{i64 2148269279}
!9 = !{i64 666213, i64 2148156184, i64 2148156210, i64 2148156257, i64 2148156279, i64 2148156307, i64 2148156327}
!10 = !{i64 2148171414, i64 2148171446, i64 2148171475, i64 2148171509, i64 2148171540, i64 2148171563}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149007929}
!13 = !{i64 2148169057, i64 2148169089, i64 2148169118, i64 2148169152, i64 2148169183, i64 2148169206}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2149058296}
!16 = !{i8 0, i8 2}
!17 = !{i64 2148629043}
!18 = !{i64 2150531343}
!19 = !{!"branch_weights", i32 2146410443, i32 1073205}
!20 = !{i64 2148176061, i64 2148176093, i64 2148176122, i64 2148176156, i64 2148176187, i64 2148176210}
!21 = !{i64 2148277401}
!22 = !{i64 2150531454}
!23 = !{i64 2150531683}
!24 = !{i64 2150531525}
!25 = !{i64 2150531765}
!26 = !{i64 2154745229}
!27 = !{i64 2148276366}
!28 = !{i64 2148174520, i64 2148174552, i64 2148174581, i64 2148174615, i64 2148174646, i64 2148174669}
!29 = !{i64 2150532326}
!30 = !{i64 2154680811}
!31 = !{i64 2154683035}
!32 = !{i64 2148169956, i64 2148169982, i64 2148170011, i64 2148170045, i64 2148170076, i64 2148170099}
!33 = !{i64 2149058513}
!34 = !{i64 2154687279}
!35 = !{i64 2154690713}
!36 = !{i64 2148167599, i64 2148167625, i64 2148167654, i64 2148167688, i64 2148167719, i64 2148167742}
!37 = !{i64 2154731039, i64 2154731530, i64 2154731076, i64 2154731132, i64 2154731166, i64 2154731190, i64 2154731231, i64 2154731252, i64 2154731280, i64 2154731314}
!38 = !{i64 652276, i64 652300, i64 652321, i64 652338, i64 652355}
!39 = !{!"auto-init"}
!40 = !{i64 2156088672}
!41 = !{i64 2148812662}
!42 = !{i64 674863, i64 674880, i64 674904, i64 674930, i64 674948}
!43 = !{i64 2148812989}
