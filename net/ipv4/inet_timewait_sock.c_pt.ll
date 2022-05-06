; ModuleID = '/llk/IR/net/ipv4/inet_timewait_sock.c_pt.bc'
source_filename = "../net/ipv4/inet_timewait_sock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_twsk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_twsk_put\22\09\09\09\09\09"
module asm "__kstrtabns_inet_twsk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_twsk_hashdance:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_twsk_hashdance\22\09\09\09\09\09"
module asm "__kstrtabns_inet_twsk_hashdance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_twsk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_twsk_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_inet_twsk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_twsk_deschedule_put:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_twsk_deschedule_put\22\09\09\09\09\09"
module asm "__kstrtabns_inet_twsk_deschedule_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inet_twsk_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22__inet_twsk_schedule\22\09\09\09\09\09"
module asm "__kstrtabns___inet_twsk_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_twsk_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_twsk_purge\22\09\09\09\09\09"
module asm "__kstrtabns_inet_twsk_purge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.89, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.89 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.inet_timewait_sock = type { %struct.sock_common, i32, i8, i8, i16, i32, i32, i32, %struct.timer_list, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.125, [0 x i32], %union.anon.126, i16, i16, %union.anon.127, %struct.refcount_struct, [0 x i32], %union.anon.128 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.79 }
%union.anon.79 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { %struct.hlist_node }
%union.anon.127 = type { i32 }
%union.anon.128 = type { i32 }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [28 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.81 }
%union.anon.81 = type { %struct.hlist_head }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.124, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.124 = type { ptr }
%struct.timewait_sock_ops = type { ptr, ptr, i32, ptr, ptr }
%struct.inet_ehash_bucket = type { %struct.hlist_nulls_head }
%struct.hlist_nulls_head = type { ptr }
%struct.anon.2 = type { i16, i16 }
%struct.inet_bind_hashbucket = type { %struct.spinlock, %struct.hlist_head }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.140, %struct.anon.141, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.129, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.130, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.131, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.129 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.130 = type { ptr }
%union.anon.131 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.84 }
%union.anon.84 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.140 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.141 = type { i32, i32, i32, i32 }
%struct.inet_bind_bucket = type { %struct.possible_net_t, i32, i16, i8, i8, %struct.kuid_t, %struct.in6_addr, i32, i16, i8, %struct.hlist_node, %struct.hlist_head }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.anon = type { i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_inet_twsk_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_twsk_put = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_twsk_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_twsk_put to i32), ptr @__kstrtab_inet_twsk_put, ptr @__kstrtabns_inet_twsk_put }, section "___ksymtab_gpl+inet_twsk_put", align 4
@.str = private unnamed_addr constant [30 x i8] c"net/ipv4/inet_timewait_sock.c\00", align 1
@__kstrtab_inet_twsk_hashdance = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_twsk_hashdance = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_twsk_hashdance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_twsk_hashdance to i32), ptr @__kstrtab_inet_twsk_hashdance, ptr @__kstrtabns_inet_twsk_hashdance }, section "___ksymtab_gpl+inet_twsk_hashdance", align 4
@__kstrtab_inet_twsk_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_twsk_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_twsk_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_twsk_alloc to i32), ptr @__kstrtab_inet_twsk_alloc, ptr @__kstrtabns_inet_twsk_alloc }, section "___ksymtab_gpl+inet_twsk_alloc", align 4
@__kstrtab_inet_twsk_deschedule_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_twsk_deschedule_put = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_twsk_deschedule_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_twsk_deschedule_put to i32), ptr @__kstrtab_inet_twsk_deschedule_put, ptr @__kstrtabns_inet_twsk_deschedule_put }, section "___ksymtab+inet_twsk_deschedule_put", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab___inet_twsk_schedule = external dso_local constant [0 x i8], align 1
@__kstrtabns___inet_twsk_schedule = external dso_local constant [0 x i8], align 1
@__ksymtab___inet_twsk_schedule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inet_twsk_schedule to i32), ptr @__kstrtab___inet_twsk_schedule, ptr @__kstrtabns___inet_twsk_schedule }, section "___ksymtab_gpl+__inet_twsk_schedule", align 4
@__kstrtab_inet_twsk_purge = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_twsk_purge = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_twsk_purge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_twsk_purge to i32), ptr @__kstrtab_inet_twsk_purge, ptr @__kstrtabns_inet_twsk_purge }, section "___ksymtab_gpl+inet_twsk_purge", align 4
@init_net = external dso_local global %struct.net, align 64
@.str.2 = private unnamed_addr constant [19 x i8] c"include/net/sock.h\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab___inet_twsk_schedule, ptr @__ksymtab_inet_twsk_alloc, ptr @__ksymtab_inet_twsk_deschedule_put, ptr @__ksymtab_inet_twsk_hashdance, ptr @__ksymtab_inet_twsk_purge, ptr @__ksymtab_inet_twsk_put], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_twsk_bind_unhash(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  store volatile ptr %8, ptr %10, align 4
  %11 = icmp eq ptr %8, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  store volatile ptr %10, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %6
  store ptr null, ptr %3, align 8
  %15 = getelementptr inbounds %struct.inet_hashinfo, ptr %1, i32 0, i32 4
  %16 = load ptr, ptr %15, align 16
  tail call void @inet_bind_bucket_destroy(ptr noundef %16, ptr noundef nonnull %4) #5
  %17 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #5, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #5, !srcloc !11
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %22, !prof !12

21:                                               ; preds = %14
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 4) #5
  br label %22

22:                                               ; preds = %21, %14, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_bind_bucket_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_twsk_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 49
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.timewait_sock_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  tail call void %9(ptr noundef %0) #5
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 47
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi ptr [ %7, %1 ], [ %14, %11 ]
  %17 = load ptr, ptr %16, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef %0) #5
  tail call void @module_put(ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_twsk_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #5, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #5, !srcloc !11
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %26, label %8, !prof !13

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #5
  br label %26

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.proto, ptr %11, i32 0, i32 49
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.proto, ptr %11, i32 0, i32 47
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.timewait_sock_ops, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  tail call void %17(ptr noundef %0) #5
  %20 = load ptr, ptr %10, align 8
  %21 = getelementptr inbounds %struct.proto, ptr %20, i32 0, i32 47
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %19, %9
  %24 = phi ptr [ %15, %9 ], [ %22, %19 ]
  %25 = load ptr, ptr %24, align 4
  tail call void @kmem_cache_free(ptr noundef %25, ptr noundef %0) #5
  tail call void @module_put(ptr noundef %13) #5
  br label %26

26:                                               ; preds = %23, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_twsk_hashdance(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = load ptr, ptr %2, align 64
  %7 = getelementptr inbounds %struct.inet_hashinfo, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, %5
  %10 = getelementptr %struct.inet_ehash_bucket, ptr %6, i32 %9
  %11 = getelementptr inbounds %struct.inet_hashinfo, ptr %2, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.inet_hashinfo, ptr %2, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %5
  %16 = getelementptr %struct.spinlock, ptr %12, i32 %15
  %17 = getelementptr inbounds %struct.inet_hashinfo, ptr %2, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %20 = getelementptr inbounds %struct.anon.2, ptr %19, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = getelementptr inbounds %struct.inet_hashinfo, ptr %2, i32 0, i32 6
  %23 = load i32, ptr %22, align 8
  %24 = zext i16 %21 to i32
  %25 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %26 = add i32 %25, %24
  %27 = add i32 %23, -1
  %28 = and i32 %26, %27
  %29 = getelementptr %struct.inet_bind_hashbucket, ptr %18, i32 %28
  tail call void @_raw_spin_lock(ptr noundef %29) #5
  %30 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 9
  store ptr %31, ptr %32, align 8
  %33 = load ptr, ptr %30, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37, !prof !12

35:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 117, i32 noundef 9, ptr noundef null) #5
  %36 = load ptr, ptr %32, align 8
  br label %37

37:                                               ; preds = %35, %3
  %38 = phi ptr [ %36, %35 ], [ %31, %3 ]
  %39 = getelementptr inbounds %struct.inet_bind_bucket, ptr %38, i32 0, i32 11
  %40 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7
  %41 = load ptr, ptr %39, align 4
  store volatile ptr %41, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.hlist_node, ptr %41, i32 0, i32 1
  store volatile ptr %40, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %37
  store volatile ptr %40, ptr %39, align 4
  %46 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %39, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %47 = load i16, ptr %29, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  tail call void @_raw_spin_lock(ptr noundef %16) #5
  %49 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %50 = load ptr, ptr %10, align 4
  store ptr %50, ptr %49, align 4
  %51 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %10, ptr %51, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !19
  store volatile ptr %49, ptr %10, align 4
  %52 = ptrtoint ptr %50 to i32
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.hlist_nulls_node, ptr %50, i32 0, i32 1
  store volatile ptr %49, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %45
  %58 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %85, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %63 = load ptr, ptr %62, align 4
  store volatile ptr %63, ptr %59, align 4
  %64 = ptrtoint ptr %63 to i32
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.hlist_nulls_node, ptr %63, i32 0, i32 1
  store volatile ptr %59, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %61
  store volatile ptr null, ptr %58, align 4
  %70 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %71 = load ptr, ptr %70, align 8
  %72 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !20
  %73 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %74 = getelementptr inbounds %struct.proto, ptr %71, i32 0, i32 25
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr %struct.prot_inuse, ptr %73, i32 0, i32 1, i32 %75
  %77 = ptrtoint ptr %76 to i32
  %78 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %79 = inttoptr i32 %78 to ptr
  %80 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %79) #3, !srcloc !21
  %81 = add i32 %80, %77
  %82 = inttoptr i32 %81 to ptr
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, -1
  store i32 %84, ptr %82, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %72) #5, !srcloc !22
  br label %85

85:                                               ; preds = %69, %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %86 = load i16, ptr %16, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %88 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  store volatile i32 3, ptr %88, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_twsk_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile i32, ptr %1, align 4
  %5 = getelementptr inbounds %struct.inet_timewait_death_row, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %75

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 49
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.proto, ptr %10, i32 0, i32 47
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %13, i32 noundef 2592) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %75, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 13
  store ptr %1, ptr %17, align 8
  %18 = load i32, ptr %0, align 8
  store i32 %18, ptr %14, align 8
  %19 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 6
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.inet_timewait_sock, ptr %14, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = shl nuw i32 %27, 24
  %31 = and i32 %29, 16777213
  %32 = or i32 %31, %30
  %33 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %34 = getelementptr inbounds %struct.anon.2, ptr %33, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 2
  %37 = getelementptr inbounds %struct.anon.2, ptr %36, i32 0, i32 1
  store i16 %35, ptr %37, align 2
  %38 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  store volatile i8 6, ptr %38, align 2
  %39 = trunc i32 %2 to i8
  %40 = getelementptr inbounds %struct.inet_timewait_sock, ptr %14, i32 0, i32 2
  store volatile i8 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %42 = load i16, ptr %41, align 8
  %43 = getelementptr inbounds %struct.inet_timewait_sock, ptr %14, i32 0, i32 4
  store i16 %42, ptr %43, align 2
  %44 = load i16, ptr %33, align 4
  store i16 %44, ptr %36, align 4
  %45 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %46 = load i16, ptr %45, align 8
  %47 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 3
  store i16 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 5
  %51 = load i8, ptr %50, align 1
  %52 = and i8 %51, -64
  %53 = and i8 %49, 31
  %54 = or i8 %53, %52
  %55 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 1
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 1
  store i32 %56, ptr %57, align 8
  store i8 %54, ptr %50, align 1
  %58 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %59 = load i16, ptr %58, align 8
  %60 = lshr i16 %59, 4
  %61 = and i16 %60, 2
  %62 = zext i16 %61 to i32
  %63 = or i32 %32, %62
  store i32 %63, ptr %28, align 8
  %64 = load ptr, ptr %9, align 4
  %65 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 8
  store ptr %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 12
  %67 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 12
  %68 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %67, ptr elementtype(i64) %67) #5, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #5, !srcloc !10
  %69 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %66, ptr %66, i64 %68) #5, !srcloc !24
  %70 = getelementptr inbounds %struct.inet_timewait_sock, ptr %14, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %70, ptr noundef nonnull @tw_timer_handler, i32 noundef 1048576, ptr noundef null, ptr noundef null) #5
  %71 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 19
  store volatile i32 0, ptr %71, align 4
  %72 = load ptr, ptr %65, align 8
  %73 = getelementptr inbounds %struct.proto, ptr %72, i32 0, i32 49
  %74 = load ptr, ptr %73, align 4
  tail call void @__module_get(ptr noundef %74) #5
  br label %75

75:                                               ; preds = %16, %8, %3
  %76 = phi ptr [ null, %3 ], [ %14, %16 ], [ null, %8 ]
  ret ptr %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tw_timer_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  br i1 %5, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr [126 x i32], ptr %6, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #3, !srcloc !21
  %13 = add i32 %12, %9
  br label %21

14:                                               ; preds = %1
  %15 = getelementptr [126 x i32], ptr %6, i32 0, i32 11
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #3, !srcloc !21
  %20 = add i32 %19, %16
  br label %21

21:                                               ; preds = %14, %7
  %22 = phi i32 [ %20, %14 ], [ %13, %7 ]
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  %26 = getelementptr i8, ptr %0, i32 -132
  tail call fastcc void @inet_twsk_kill(ptr noundef %26)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_twsk_deschedule_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 8
  %3 = tail call i32 @del_timer_sync(ptr noundef %2) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @inet_twsk_kill(ptr noundef %0)
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #5, !srcloc !10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #5, !srcloc !11
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %31, label %13, !prof !13

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #5
  br label %31

14:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %15 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.proto, ptr %16, i32 0, i32 49
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.proto, ptr %16, i32 0, i32 47
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.timewait_sock_ops, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  tail call void %22(ptr noundef %0) #5
  %25 = load ptr, ptr %15, align 8
  %26 = getelementptr inbounds %struct.proto, ptr %25, i32 0, i32 47
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %24, %14
  %29 = phi ptr [ %20, %14 ], [ %27, %24 ]
  %30 = load ptr, ptr %29, align 4
  tail call void @kmem_cache_free(ptr noundef %30, ptr noundef %0) #5
  tail call void @module_put(ptr noundef %18) #5
  br label %31

31:                                               ; preds = %28, %13, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @inet_twsk_kill(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.inet_timewait_death_row, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inet_hashinfo, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inet_hashinfo, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, %7
  %13 = getelementptr %struct.spinlock, ptr %9, i32 %12
  tail call void @_raw_spin_lock(ptr noundef %13) #5
  %14 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  store volatile ptr %19, ptr %15, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.hlist_nulls_node, ptr %19, i32 0, i32 1
  store volatile ptr %15, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %17
  store volatile ptr null, ptr %14, align 4
  %26 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30, !prof !12

29:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 751, i32 noundef 9, ptr noundef null) #5
  br label %30

30:                                               ; preds = %29, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #5, !srcloc !10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #5, !srcloc !11
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %35, !prof !12

34:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 4) #5
  br label %35

35:                                               ; preds = %34, %30, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %36 = load i16, ptr %13, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %38 = getelementptr inbounds %struct.inet_hashinfo, ptr %5, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %41 = getelementptr inbounds %struct.anon.2, ptr %40, i32 0, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = getelementptr inbounds %struct.inet_hashinfo, ptr %5, i32 0, i32 6
  %44 = load i32, ptr %43, align 8
  %45 = zext i16 %42 to i32
  %46 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %47 = add i32 %46, %45
  %48 = add i32 %44, -1
  %49 = and i32 %47, %48
  %50 = getelementptr %struct.inet_bind_hashbucket, ptr %39, i32 %49
  tail call void @_raw_spin_lock(ptr noundef %50) #5
  %51 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 9
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 7, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  store volatile ptr %56, ptr %58, align 4
  %59 = icmp eq ptr %56, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.hlist_node, ptr %56, i32 0, i32 1
  store volatile ptr %58, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %54
  store ptr null, ptr %51, align 8
  %63 = getelementptr inbounds %struct.inet_hashinfo, ptr %5, i32 0, i32 4
  %64 = load ptr, ptr %63, align 16
  tail call void @inet_bind_bucket_destroy(ptr noundef %64, ptr noundef nonnull %52) #5
  %65 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #5, !srcloc !10
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #5, !srcloc !11
  %67 = extractvalue { i32, i32, i32 } %66, 0
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %70, !prof !12

69:                                               ; preds = %62
  tail call void @refcount_warn_saturate(ptr noundef %65, i32 noundef 4) #5
  br label %70

70:                                               ; preds = %69, %62, %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %71 = load i16, ptr %50, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %73 = load ptr, ptr %2, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #5, !srcloc !10
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 1, ptr elementtype(i32) %73) #5, !srcloc !25
  %75 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #5, !srcloc !10
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #5, !srcloc !11
  %77 = extractvalue { i32, i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %70
  %80 = icmp sgt i32 %77, 0
  br i1 %80, label %99, label %81, !prof !13

81:                                               ; preds = %79
  tail call void @refcount_warn_saturate(ptr noundef %75, i32 noundef 3) #5
  br label %99

82:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %83 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.proto, ptr %84, i32 0, i32 49
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.proto, ptr %84, i32 0, i32 47
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.timewait_sock_ops, ptr %88, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %82
  tail call void %90(ptr noundef %0) #5
  %93 = load ptr, ptr %83, align 8
  %94 = getelementptr inbounds %struct.proto, ptr %93, i32 0, i32 47
  %95 = load ptr, ptr %94, align 4
  br label %96

96:                                               ; preds = %92, %82
  %97 = phi ptr [ %88, %82 ], [ %95, %92 ]
  %98 = load ptr, ptr %97, align 4
  tail call void @kmem_cache_free(ptr noundef %98, ptr noundef %0) #5
  tail call void @module_put(ptr noundef %86) #5
  br label %99

99:                                               ; preds = %96, %81, %79
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__inet_twsk_schedule(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = icmp slt i32 %1, 401
  %5 = zext i1 %4 to i32
  %6 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, -2
  %9 = or i32 %8, %5
  store i32 %9, ptr %6, align 8
  %10 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 8
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = add i32 %11, %1
  br i1 %2, label %21, label %13

13:                                               ; preds = %3
  %14 = tail call i32 @mod_timer(ptr noundef %10, i32 noundef %12) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !13

16:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/inet_timewait_sock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 249, 0\0A.popsection", ""() #5, !srcloc !26
  unreachable

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %19 = load ptr, ptr %18, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #5, !srcloc !10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #5, !srcloc !27
  br label %23

21:                                               ; preds = %3
  %22 = tail call i32 @mod_timer_pending(ptr noundef %10, i32 noundef %12) #5
  br label %23

23:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer_pending(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_twsk_purge(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 2
  br label %4

4:                                                ; preds = %102, %2
  %5 = phi i32 [ 0, %2 ], [ %103, %102 ]
  %6 = load ptr, ptr %0, align 64
  %7 = getelementptr %struct.inet_ehash_bucket, ptr %6, i32 %5
  br label %8

8:                                                ; preds = %86, %4
  %9 = tail call i32 @__cond_resched() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  br label %10

10:                                               ; preds = %85, %8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !29
  %11 = load volatile ptr, ptr %7, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %98

15:                                               ; preds = %91, %10
  %16 = phi ptr [ %92, %91 ], [ %11, %10 ]
  %17 = getelementptr i8, ptr %16, i32 -66
  %18 = load volatile i8, ptr %17, align 2
  %19 = icmp eq i8 %18, 6
  br i1 %19, label %20, label %91

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %16, i32 -68
  %22 = load i16, ptr %21, align 8
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %91

25:                                               ; preds = %20
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 14, i32 3), align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %91

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %16, i32 16
  %30 = load volatile i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %42, %28
  %33 = phi i32 [ %40, %42 ], [ %30, %28 ]
  %34 = add i32 %33, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #5, !srcloc !10
  br label %35

35:                                               ; preds = %35, %32
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 %33, i32 %34, ptr elementtype(i32) %29) #5, !srcloc !30
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %35

39:                                               ; preds = %35
  %40 = extractvalue { i32, i32 } %36, 1
  %41 = icmp eq i32 %40, %33
  br i1 %41, label %44, label %42, !prof !13

42:                                               ; preds = %39
  %43 = icmp eq i32 %40, 0
  br i1 %43, label %44, label %32

44:                                               ; preds = %42, %39, %28
  %45 = phi i32 [ 0, %28 ], [ 0, %42 ], [ %33, %39 ]
  %46 = add i32 %45, 1
  %47 = or i32 %46, %45
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %50, label %49, !prof !13

49:                                               ; preds = %44
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 0) #5
  br label %50

50:                                               ; preds = %49, %44
  %51 = icmp eq i32 %45, 0
  br i1 %51, label %91, label %52, !prof !12

52:                                               ; preds = %50
  %53 = getelementptr i8, ptr %16, i32 -68
  %54 = getelementptr i8, ptr %16, i32 -84
  %55 = load i16, ptr %53, align 8
  %56 = zext i16 %55 to i32
  %57 = icmp eq i32 %56, %1
  br i1 %57, label %58, label %61, !prof !13

58:                                               ; preds = %52
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 14, i32 3), align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %86, label %61, !prof !13

61:                                               ; preds = %58, %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #5, !srcloc !10
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #5, !srcloc !11
  %63 = extractvalue { i32, i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = icmp sgt i32 %63, 0
  br i1 %66, label %85, label %67, !prof !13

67:                                               ; preds = %65
  tail call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 3) #5
  br label %85

68:                                               ; preds = %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %69 = getelementptr i8, ptr %16, i32 -52
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.proto, ptr %70, i32 0, i32 49
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.proto, ptr %70, i32 0, i32 47
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.timewait_sock_ops, ptr %74, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %68
  tail call void %76(ptr noundef %54) #5
  %79 = load ptr, ptr %69, align 8
  %80 = getelementptr inbounds %struct.proto, ptr %79, i32 0, i32 47
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %78, %68
  %83 = phi ptr [ %74, %68 ], [ %81, %78 ]
  %84 = load ptr, ptr %83, align 4
  tail call void @kmem_cache_free(ptr noundef %84, ptr noundef %54) #5
  tail call void @module_put(ptr noundef %72) #5
  br label %85

85:                                               ; preds = %98, %82, %67, %65
  br label %10

86:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %87 = tail call ptr @llvm.thread.pointer() #5
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %89 = load volatile i32, ptr %88, align 4
  %90 = add i32 %89, 512
  store volatile i32 %90, ptr %88, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !32
  tail call void @inet_twsk_deschedule_put(ptr noundef %54)
  tail call fastcc void @local_bh_enable()
  br label %8

91:                                               ; preds = %50, %25, %20, %15
  %92 = load volatile ptr, ptr %16, align 4
  %93 = ptrtoint ptr %92 to i32
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %15, label %96

96:                                               ; preds = %91
  %97 = ptrtoint ptr %92 to i32
  br label %98

98:                                               ; preds = %96, %10
  %99 = phi i32 [ %12, %10 ], [ %97, %96 ]
  %100 = lshr i32 %99, 1
  %101 = icmp eq i32 %100, %5
  br i1 %101, label %102, label %85

102:                                              ; preds = %98
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !31
  %103 = add i32 %5, 1
  %104 = load i32, ptr %3, align 8
  %105 = icmp ugt i32 %103, %104
  br i1 %105, label %106, label %4

106:                                              ; preds = %102
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }

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
!9 = !{i64 2148021361}
!10 = !{i64 417522, i64 2147907493, i64 2147907519, i64 2147907566, i64 2147907588, i64 2147907616, i64 2147907636}
!11 = !{i64 2147923520, i64 2147923552, i64 2147923581, i64 2147923615, i64 2147923646, i64 2147923669}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149280825}
!15 = !{i64 2148931473}
!16 = !{i64 2148927297}
!17 = !{i64 2148927372, i64 2148927399, i64 2148927446, i64 2148927468, i64 2148927496, i64 2148927516}
!18 = !{i64 2148954476}
!19 = !{i64 2154850647}
!20 = !{i64 312761, i64 312822}
!21 = !{i64 331461}
!22 = !{i64 315778}
!23 = !{i64 407136, i64 407157}
!24 = !{i64 407381, i64 407401, i64 407429, i64 407459, i64 407475}
!25 = !{i64 2147922062, i64 2147922088, i64 2147922117, i64 2147922151, i64 2147922182, i64 2147922205}
!26 = !{i64 2155792093, i64 2155792587, i64 2155792130, i64 2155792186, i64 2155792220, i64 2155792244, i64 2155792285, i64 2155792306, i64 2155792334, i64 2155792368}
!27 = !{i64 2147919705, i64 2147919731, i64 2147919760, i64 2147919794, i64 2147919825, i64 2147919848}
!28 = !{i64 2149330245}
!29 = !{i64 2155794767}
!30 = !{i64 403585, i64 403609, i64 403630, i64 403647, i64 403664}
!31 = !{i64 2149330462}
!32 = !{i64 2148761502}
