; ModuleID = '/llk/IR/net/core/sock_diag.c_pt.bc'
source_filename = "../net/core/sock_diag.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_diag_check_cookie:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_diag_check_cookie\22\09\09\09\09\09"
module asm "__kstrtabns_sock_diag_check_cookie:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_diag_save_cookie:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_diag_save_cookie\22\09\09\09\09\09"
module asm "__kstrtabns_sock_diag_save_cookie:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_diag_put_meminfo:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_diag_put_meminfo\22\09\09\09\09\09"
module asm "__kstrtabns_sock_diag_put_meminfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_diag_put_filterinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_diag_put_filterinfo\22\09\09\09\09\09"
module asm "__kstrtabns_sock_diag_put_filterinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_diag_register_inet_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_diag_register_inet_compat\22\09\09\09\09\09"
module asm "__kstrtabns_sock_diag_register_inet_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_diag_unregister_inet_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_diag_unregister_inet_compat\22\09\09\09\09\09"
module asm "__kstrtabns_sock_diag_unregister_inet_compat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_diag_register:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_diag_register\22\09\09\09\09\09"
module asm "__kstrtabns_sock_diag_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_diag_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_diag_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_sock_diag_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sock_diag_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22sock_diag_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_sock_diag_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.gen_cookie = type { ptr, [60 x i8], %struct.atomic64_t, %struct.atomic64_t, [48 x i8] }
%struct.atomic64_t = type { i64 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pcpu_gen_cookie = type { %struct.local_t, i64 }
%struct.local_t = type { %struct.atomic_t }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
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
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.127, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.127 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.164, [0 x i32], %union.anon.165, i16, i16, %union.anon.166, %struct.refcount_struct, [0 x i32], %union.anon.167 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.121 }
%union.anon.121 = type { [4 x i32] }
%union.anon.164 = type { i32 }
%union.anon.165 = type { %struct.hlist_node }
%union.anon.166 = type { i32 }
%union.anon.167 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.168, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.169, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.170, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.168 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.169 = type { ptr }
%union.anon.170 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.sk_filter = type { %struct.refcount_struct, %struct.callback_head, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.103 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { %struct.anon.105, [0 x %struct.sock_filter] }
%struct.anon.105 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.sock_fprog_kern = type { i16, ptr }
%struct.broadcast_sk = type { ptr, %struct.work_struct }
%struct.sock_diag_handler = type { i8, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.163, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.163 = type { ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@sock_cookie = internal global %struct.gen_cookie { ptr @__sock_cookie, [60 x i8] undef, %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, [48 x i8] undef }, align 64
@__kstrtab_sock_diag_check_cookie = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_diag_check_cookie = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_diag_check_cookie = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_diag_check_cookie to i32), ptr @__kstrtab_sock_diag_check_cookie, ptr @__kstrtabns_sock_diag_check_cookie }, section "___ksymtab_gpl+sock_diag_check_cookie", align 4
@__kstrtab_sock_diag_save_cookie = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_diag_save_cookie = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_diag_save_cookie = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_diag_save_cookie to i32), ptr @__kstrtab_sock_diag_save_cookie, ptr @__kstrtabns_sock_diag_save_cookie }, section "___ksymtab_gpl+sock_diag_save_cookie", align 4
@__kstrtab_sock_diag_put_meminfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_diag_put_meminfo = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_diag_put_meminfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_diag_put_meminfo to i32), ptr @__kstrtab_sock_diag_put_meminfo, ptr @__kstrtabns_sock_diag_put_meminfo }, section "___ksymtab_gpl+sock_diag_put_meminfo", align 4
@__kstrtab_sock_diag_put_filterinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_diag_put_filterinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_diag_put_filterinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_diag_put_filterinfo to i32), ptr @__kstrtab_sock_diag_put_filterinfo, ptr @__kstrtabns_sock_diag_put_filterinfo }, section "___ksymtab+sock_diag_put_filterinfo", align 4
@broadcast_wq = internal unnamed_addr global ptr null, align 4
@sock_diag_table_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sock_diag_table_mutex, i64 12), ptr getelementptr (i8, ptr @sock_diag_table_mutex, i64 12) } }, align 4
@inet_rcv_compat = internal unnamed_addr global ptr null, align 4
@__kstrtab_sock_diag_register_inet_compat = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_diag_register_inet_compat = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_diag_register_inet_compat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_diag_register_inet_compat to i32), ptr @__kstrtab_sock_diag_register_inet_compat, ptr @__kstrtabns_sock_diag_register_inet_compat }, section "___ksymtab_gpl+sock_diag_register_inet_compat", align 4
@__kstrtab_sock_diag_unregister_inet_compat = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_diag_unregister_inet_compat = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_diag_unregister_inet_compat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_diag_unregister_inet_compat to i32), ptr @__kstrtab_sock_diag_unregister_inet_compat, ptr @__kstrtabns_sock_diag_unregister_inet_compat }, section "___ksymtab_gpl+sock_diag_unregister_inet_compat", align 4
@sock_diag_handlers = internal unnamed_addr global [46 x ptr] zeroinitializer, align 4
@__kstrtab_sock_diag_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_diag_register = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_diag_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_diag_register to i32), ptr @__kstrtab_sock_diag_register, ptr @__kstrtabns_sock_diag_register }, section "___ksymtab_gpl+sock_diag_register", align 4
@__kstrtab_sock_diag_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_diag_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_diag_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_diag_unregister to i32), ptr @__kstrtab_sock_diag_unregister, ptr @__kstrtabns_sock_diag_unregister }, section "___ksymtab_gpl+sock_diag_unregister", align 4
@__kstrtab_sock_diag_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_sock_diag_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_sock_diag_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sock_diag_destroy to i32), ptr @__kstrtab_sock_diag_destroy, ptr @__kstrtabns_sock_diag_destroy }, section "___ksymtab_gpl+sock_diag_destroy", align 4
@__initcall__kmod_sock_diag__480_340_sock_diag_init6 = internal global ptr @sock_diag_init, section ".initcall6.init", align 4
@__sock_cookie = internal global %struct.pcpu_gen_cookie zeroinitializer, section ".data..percpu", align 16
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [21 x i8] c"net/core/sock_diag.c\00", align 1
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@.str.1 = private unnamed_addr constant [17 x i8] c"sock_diag_events\00", align 1
@diag_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @diag_net_init, ptr null, ptr @diag_net_exit, ptr null, ptr null, i32 0 }, align 4
@__const.diag_net_init.cfg = private unnamed_addr constant %struct.netlink_kernel_cfg { i32 4, i32 1, ptr @sock_diag_rcv, ptr null, ptr @sock_diag_bind, ptr null, ptr null }, align 4
@sock_diag_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sock_diag_mutex, i64 12), ptr getelementptr (i8, ptr @sock_diag_mutex, i64 12) } }, align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_sock_diag__480_340_sock_diag_init6, ptr @__ksymtab_sock_diag_check_cookie, ptr @__ksymtab_sock_diag_destroy, ptr @__ksymtab_sock_diag_put_filterinfo, ptr @__ksymtab_sock_diag_put_meminfo, ptr @__ksymtab_sock_diag_register, ptr @__ksymtab_sock_diag_register_inet_compat, ptr @__ksymtab_sock_diag_save_cookie, ptr @__ksymtab_sock_diag_unregister, ptr @__ksymtab_sock_diag_unregister_inet_compat], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @__sock_gen_cookie(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 12
  %3 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %2, ptr elementtype(i64) %2) #9, !srcloc !9
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %41

5:                                                ; preds = %38, %1
  %6 = load ptr, ptr @sock_cookie, align 64
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !10
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #9, !srcloc !12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #9, !srcloc !13
  %14 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %28, !prof !15

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.pcpu_gen_cookie, ptr %12, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 4095
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25, !prof !16

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.gen_cookie, ptr @sock_cookie, i32 0, i32 2)) #9, !srcloc !12
  %22 = tail call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) getelementptr inbounds (%struct.gen_cookie, ptr @sock_cookie, i32 0, i32 2), ptr getelementptr inbounds (%struct.gen_cookie, ptr @sock_cookie, i32 0, i32 2), i64 4096, ptr elementtype(i64) getelementptr inbounds (%struct.gen_cookie, ptr @sock_cookie, i32 0, i32 2)) #9, !srcloc !18
  %23 = extractvalue { i64, i32 } %22, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %24 = add i64 %23, -4096
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i64 [ %24, %21 ], [ %18, %16 ]
  %27 = add i64 %26, 1
  store i64 %27, ptr %17, align 8
  br label %31

28:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.gen_cookie, ptr @sock_cookie, i32 0, i32 3)) #9, !srcloc !12
  %29 = tail call { i64, i32 } asm sideeffect "@ atomic64_sub_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09subs ${0:Q}, ${0:Q}, ${4:Q}\0A\09sbc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) getelementptr inbounds (%struct.gen_cookie, ptr @sock_cookie, i32 0, i32 3), ptr getelementptr inbounds (%struct.gen_cookie, ptr @sock_cookie, i32 0, i32 3), i64 1, ptr elementtype(i64) getelementptr inbounds (%struct.gen_cookie, ptr @sock_cookie, i32 0, i32 3)) #9, !srcloc !21
  %30 = extractvalue { i64, i32 } %29, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i64 [ %27, %25 ], [ %30, %28 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #9, !srcloc !12
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #9, !srcloc !23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #9, !srcloc !12
  br label %34

34:                                               ; preds = %34, %31
  %35 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2, ptr %2, i64 0, i64 %32, ptr elementtype(i64) %2) #9, !srcloc !25
  %36 = extractvalue { i32, i64 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %34

38:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  %39 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %2, ptr elementtype(i64) %2) #9, !srcloc !9
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %5, label %41

41:                                               ; preds = %38, %1
  %42 = phi i64 [ %3, %1 ], [ %39, %38 ]
  ret i64 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_diag_check_cookie(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr i32, ptr %1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %21, label %9

9:                                                ; preds = %5, %2
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %10 = tail call i64 @__sock_gen_cookie(ptr noundef %0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %11 = trunc i64 %10 to i32
  %12 = load i32, ptr %1, align 4
  %13 = icmp eq i32 %12, %11
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = lshr i64 %10, 32
  %16 = trunc i64 %15 to i32
  %17 = getelementptr i32, ptr %1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %16
  %20 = select i1 %19, i32 0, i32 -116
  br label %21

21:                                               ; preds = %14, %9, %5
  %22 = phi i32 [ 0, %5 ], [ -116, %9 ], [ %20, %14 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_diag_save_cookie(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %3 = tail call i64 @__sock_gen_cookie(ptr noundef %0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %4 = trunc i64 %3 to i32
  store i32 %4, ptr %1, align 4
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  %7 = getelementptr i32, ptr %1, i32 1
  store i32 %6, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_diag_put_meminfo(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca [9 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !29
  call void @sk_get_meminfo(ptr noundef %0, ptr noundef nonnull %4) #9
  %5 = call i32 @nla_put(ptr noundef %1, i32 noundef %2, i32 noundef 36, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #9
  ret i32 %5
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_get_meminfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_diag_put_filterinfo(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  br i1 %0, label %7, label %5

5:                                                ; preds = %4
  %6 = tail call ptr @nla_reserve(ptr noundef %2, i32 noundef %3, i32 noundef 0) #9
  br label %29

7:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  %8 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 16
  %9 = load volatile ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sk_filter, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bpf_prog, ptr %13, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = load i16, ptr %15, align 4
  %19 = zext i16 %18 to i32
  %20 = shl nuw nsw i32 %19, 3
  %21 = tail call ptr @nla_reserve(ptr noundef %2, i32 noundef %3, i32 noundef %20) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %21, i32 4
  %25 = getelementptr inbounds %struct.sock_fprog_kern, ptr %15, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %24, ptr align 4 %26, i32 %20, i1 false)
  br label %27

27:                                               ; preds = %23, %17, %11, %7
  %28 = phi i32 [ 0, %23 ], [ 0, %11 ], [ 0, %7 ], [ -90, %17 ]
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  br label %29

29:                                               ; preds = %27, %5
  %30 = phi i32 [ %28, %27 ], [ 0, %5 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_diag_broadcast_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 20) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @sk_destruct(ptr noundef %0) #9
  br label %13

6:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %7 = getelementptr inbounds %struct.broadcast_sk, ptr %3, i32 0, i32 1
  store i32 -32, ptr %7, align 4
  %8 = getelementptr inbounds %struct.broadcast_sk, ptr %3, i32 0, i32 1, i32 1
  store volatile ptr %8, ptr %8, align 8
  %9 = getelementptr inbounds %struct.broadcast_sk, ptr %3, i32 0, i32 1, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.broadcast_sk, ptr %3, i32 0, i32 1, i32 2
  store ptr @sock_diag_broadcast_destroy_work, ptr %10, align 8
  %11 = load ptr, ptr @broadcast_wq, align 4
  %12 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %7) #9
  br label %13

13:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_destruct(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sock_diag_broadcast_destroy_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 3
  %5 = load i16, ptr %4, align 8
  switch i16 %5, label %29 [
    i16 2, label %6
    i16 10, label %16
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 45
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 3
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 46
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 17
  %14 = select i1 %13, i32 2, i32 0
  %15 = icmp eq i16 %12, 6
  br i1 %15, label %30, label %26

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 45
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 3
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 46
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 17
  %24 = select i1 %23, i32 4, i32 0
  %25 = icmp eq i16 %22, 6
  br i1 %25, label %30, label %26

26:                                               ; preds = %20, %10
  %27 = phi i32 [ %14, %10 ], [ %24, %20 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !16

29:                                               ; preds = %26, %16, %6, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #9
  br label %30

30:                                               ; preds = %29, %26, %20, %10
  %31 = phi i32 [ 0, %29 ], [ %27, %26 ], [ 1, %10 ], [ 3, %20 ]
  %32 = tail call ptr @__alloc_skb(i32 noundef 332, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %30
  tail call void @mutex_lock(ptr noundef nonnull @sock_diag_table_mutex) #9
  %35 = load i16, ptr %4, align 8
  %36 = zext i16 %35 to i32
  %37 = getelementptr [46 x ptr], ptr @sock_diag_handlers, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.sock_diag_handler, ptr %38, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = tail call i32 %42(ptr noundef nonnull %32, ptr noundef %3) #9
  %46 = icmp eq i32 %45, 0
  tail call void @mutex_unlock(ptr noundef nonnull @sock_diag_table_mutex) #9
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 44), align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 3, i32 16
  store i32 %31, ptr %49, align 8
  %50 = tail call i32 @netlink_broadcast(ptr noundef %48, ptr noundef nonnull %32, i32 noundef 0, i32 noundef %31, i32 noundef 3264) #9
  br label %53

51:                                               ; preds = %40, %34
  tail call void @mutex_unlock(ptr noundef nonnull @sock_diag_table_mutex) #9
  br label %52

52:                                               ; preds = %51, %44
  tail call void @kfree_skb_reason(ptr noundef nonnull %32, i32 noundef 0) #9
  br label %53

53:                                               ; preds = %52, %47, %30
  tail call void @sk_destruct(ptr noundef %3) #9
  tail call void @kfree(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_diag_register_inet_compat(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @sock_diag_table_mutex) #9
  store ptr %0, ptr @inet_rcv_compat, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sock_diag_table_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_diag_unregister_inet_compat(ptr nocapture readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @sock_diag_table_mutex) #9
  store ptr null, ptr @inet_rcv_compat, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sock_diag_table_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_diag_register(ptr noundef %0) #0 {
  %2 = load i8, ptr %0, align 4
  %3 = icmp ugt i8 %2, 45
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @sock_diag_table_mutex) #9
  %5 = load i8, ptr %0, align 4
  %6 = zext i8 %5 to i32
  %7 = getelementptr [46 x ptr], ptr @sock_diag_handlers, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  store ptr %0, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %4
  %12 = phi i32 [ 0, %10 ], [ -16, %4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @sock_diag_table_mutex) #9
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi i32 [ %12, %11 ], [ -22, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sock_diag_unregister(ptr noundef readonly %0) #0 {
  %2 = load i8, ptr %0, align 4
  %3 = icmp ugt i8 %2, 45
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = zext i8 %2 to i32
  tail call void @mutex_lock(ptr noundef nonnull @sock_diag_table_mutex) #9
  %6 = getelementptr [46 x ptr], ptr @sock_diag_handlers, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !15

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/sock_diag.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #9, !srcloc !32
  unreachable

10:                                               ; preds = %4
  store ptr null, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sock_diag_table_mutex) #9
  br label %11

11:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sock_diag_destroy(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %4 = tail call zeroext i1 @ns_capable(ptr noundef %3, i32 noundef 12) #9
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.proto, ptr %7, i32 0, i32 52
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 %9(ptr noundef %0, i32 noundef %1) #9
  br label %13

13:                                               ; preds = %11, %5, %2
  %14 = phi i32 [ %12, %11 ], [ -1, %2 ], [ -95, %5 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sock_diag_init() #5 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0) #9
  store ptr %1, ptr @broadcast_wq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !16

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/sock_diag.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 337, 0\0A.popsection", ""() #9, !srcloc !33
  unreachable

4:                                                ; preds = %0
  %5 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @diag_net_ops) #9
  ret i32 %5
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @diag_net_init(ptr noundef %0) #5 section ".init.text" {
  %2 = alloca %struct.netlink_kernel_cfg, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) @__const.diag_net_init.cfg, i32 28, i1 false)
  %3 = call ptr @__netlink_kernel_create(ptr noundef %0, i32 noundef 4, ptr noundef null, ptr noundef nonnull %2) #9
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 44
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  %6 = select i1 %5, i32 -12, i32 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @diag_net_exit(ptr nocapture noundef %0) #8 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 44
  %3 = load ptr, ptr %2, align 4
  tail call void @netlink_kernel_release(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sock_diag_rcv(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @sock_diag_mutex) #9
  %2 = tail call i32 @netlink_rcv_skb(ptr noundef %0, ptr noundef nonnull @sock_diag_rcv_msg) #9
  tail call void @mutex_unlock(ptr noundef nonnull @sock_diag_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sock_diag_bind(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  switch i32 %1, label %12 [
    i32 1, label %3
    i32 2, label %3
    i32 3, label %6
    i32 4, label %6
  ]

3:                                                ; preds = %2, %2
  %4 = load ptr, ptr getelementptr inbounds ([46 x ptr], ptr @sock_diag_handlers, i32 0, i32 2), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %12

6:                                                ; preds = %2, %2
  %7 = load ptr, ptr getelementptr inbounds ([46 x ptr], ptr @sock_diag_handlers, i32 0, i32 10), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %3
  %10 = phi i32 [ 2, %3 ], [ 10, %6 ]
  %11 = tail call i32 @sock_load_diag_module(i32 noundef %10, i32 noundef 0) #9
  br label %12

12:                                               ; preds = %9, %6, %3, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sock_diag_rcv_msg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 1
  %5 = load i16, ptr %4, align 4
  switch i16 %5, label %53 [
    i16 18, label %6
    i16 19, label %6
    i16 20, label %14
    i16 21, label %14
  ]

6:                                                ; preds = %3, %3
  %7 = load ptr, ptr @inet_rcv_compat, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 @sock_load_diag_module(i32 noundef 2, i32 noundef 0) #9
  br label %11

11:                                               ; preds = %9, %6
  tail call void @mutex_lock(ptr noundef nonnull @sock_diag_table_mutex) #9
  %12 = load ptr, ptr @inet_rcv_compat, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %51, label %48

14:                                               ; preds = %3, %3
  %15 = getelementptr i8, ptr %1, i32 16
  %16 = load i32, ptr %1, align 4
  %17 = and i32 %16, -2
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %53, label %19

19:                                               ; preds = %14
  %20 = load i8, ptr %15, align 1
  %21 = icmp ugt i8 %20, 45
  br i1 %21, label %53, label %22

22:                                               ; preds = %19
  %23 = zext i8 %20 to i32
  %24 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %23, i32 46) #9, !srcloc !34
  %25 = trunc i32 %24 to i8
  %26 = and i8 %20, %25
  store i8 %26, ptr %15, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr [46 x ptr], ptr @sock_diag_handlers, i32 0, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = tail call i32 @sock_load_diag_module(i32 noundef %27, i32 noundef 0) #9
  br label %33

33:                                               ; preds = %31, %22
  tail call void @mutex_lock(ptr noundef nonnull @sock_diag_table_mutex) #9
  %34 = load i8, ptr %15, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr [46 x ptr], ptr @sock_diag_handlers, i32 0, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load i16, ptr %4, align 4
  switch i16 %40, label %51 [
    i16 20, label %41
    i16 21, label %44
  ]

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.sock_diag_handler, ptr %37, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  br label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.sock_diag_handler, ptr %37, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44, %41, %11
  %49 = phi ptr [ %12, %11 ], [ %43, %41 ], [ %46, %44 ]
  %50 = tail call i32 %49(ptr noundef %0, ptr noundef %1) #9
  br label %51

51:                                               ; preds = %48, %44, %39, %33, %11
  %52 = phi i32 [ -95, %11 ], [ -2, %33 ], [ -95, %39 ], [ -95, %44 ], [ %50, %48 ]
  tail call void @mutex_unlock(ptr noundef nonnull @sock_diag_table_mutex) #9
  br label %53

53:                                               ; preds = %51, %19, %14, %3
  %54 = phi i32 [ -22, %3 ], [ -22, %14 ], [ -22, %19 ], [ %52, %51 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_load_diag_module(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netlink_kernel_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_kernel_release(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i64 248892, i64 248913}
!10 = !{i64 332041}
!11 = !{i64 2147969278}
!12 = !{i64 296189, i64 2147797755, i64 2147797781, i64 2147797828, i64 2147797850, i64 2147797878, i64 2147797898}
!13 = !{i64 2147872140, i64 2147872172, i64 2147872201, i64 2147872235, i64 2147872266, i64 2147872289}
!14 = !{i64 2147969481}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2148008714}
!18 = !{i64 2147883439, i64 2147883473, i64 2147883507, i64 2147883541, i64 2147883575, i64 2147883611, i64 2147883634}
!19 = !{i64 2148008919}
!20 = !{i64 2148011559}
!21 = !{i64 2147885925, i64 2147885959, i64 2147885993, i64 2147886027, i64 2147886061, i64 2147886097, i64 2147886120}
!22 = !{i64 2148011764}
!23 = !{i64 2147873813, i64 2147873839, i64 2147873868, i64 2147873902, i64 2147873933, i64 2147873956}
!24 = !{i64 2148025780}
!25 = !{i64 252507, i64 252533, i64 252561, i64 252579, i64 252597, i64 252619}
!26 = !{i64 2148025982}
!27 = !{i64 2156336553}
!28 = !{i64 2156336601}
!29 = !{!"auto-init"}
!30 = !{i64 2149413856}
!31 = !{i64 2149414073}
!32 = !{i64 2156359601, i64 2156360086, i64 2156359638, i64 2156359694, i64 2156359728, i64 2156359752, i64 2156359793, i64 2156359814, i64 2156359842, i64 2156359876}
!33 = !{i64 2156367482, i64 2156367967, i64 2156367519, i64 2156367575, i64 2156367609, i64 2156367633, i64 2156367674, i64 2156367695, i64 2156367723, i64 2156367757}
!34 = !{i64 369191, i64 369208, i64 2147853278}
