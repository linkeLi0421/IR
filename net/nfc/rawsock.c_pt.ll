; ModuleID = '/llk/IR/net/nfc/rawsock.c_pt.bc'
source_filename = "../net/nfc/rawsock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_send_to_raw_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_send_to_raw_sock\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_send_to_raw_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nfc_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfc_protocol = type { i32, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.68, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.68 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.88, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.anon.88 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.78, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.79, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.80, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.78 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.nfc_rawsock = type { %struct.sock, ptr, i32, %struct.work_struct, i8 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.47, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.44, %union.anon.45 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.47 = type { ptr }
%struct.sockaddr_nfc = type { i16, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@raw_sk_list = internal global %struct.nfc_sock_list zeroinitializer, align 4
@__kstrtab_nfc_send_to_raw_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_send_to_raw_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_send_to_raw_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_send_to_raw_sock to i32), ptr @__kstrtab_nfc_send_to_raw_sock, ptr @__kstrtabns_nfc_send_to_raw_sock }, section "___ksymtab+nfc_send_to_raw_sock", align 4
@rawsock_nfc_proto = internal constant %struct.nfc_protocol { i32 0, ptr @rawsock_proto, ptr @__this_module, ptr @rawsock_create }, align 4
@rawsock_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 552, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, ptr @__this_module, [32 x i8] c"NFC_RAW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@rawsock_raw_ops = internal constant %struct.proto_ops { i32 39, ptr @__this_module, ptr @rawsock_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @datagram_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @sock_no_sendmsg, ptr @rawsock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rawsock_ops = internal constant %struct.proto_ops { i32 39, ptr @__this_module, ptr @rawsock_release, ptr @sock_no_bind, ptr @rawsock_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @datagram_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @rawsock_sendmsg, ptr @rawsock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [19 x i8] c"include/net/sock.h\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"\013nfc: %s: Freeing alive NFC raw socket %p\0A\00", align 1
@__func__.rawsock_destruct = private unnamed_addr constant [17 x i8] c"rawsock_destruct\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_nfc_send_to_raw_sock], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_send_to_raw_sock(ptr noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.nfc_sock_list, ptr @raw_sk_list, i32 0, i32 1)) #6
  %5 = load ptr, ptr @raw_sk_list, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -84
  %8 = icmp eq ptr %7, null
  %9 = or i1 %6, %8
  br i1 %9, label %46, label %10

10:                                               ; preds = %4
  %11 = icmp eq ptr %0, null
  %12 = and i8 %3, 1
  %13 = shl i8 %2, 1
  %14 = or i8 %12, %13
  br label %15

15:                                               ; preds = %38, %10
  %16 = phi ptr [ null, %10 ], [ %39, %38 ]
  %17 = phi ptr [ %7, %10 ], [ %43, %38 ]
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = tail call ptr @__pskb_copy_fclone(ptr noundef %1, i32 noundef 2, i32 noundef 2592, i1 noundef zeroext true) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @skb_push(ptr noundef nonnull %20, i32 noundef 2) #6
  br i1 %11, label %26, label %24

24:                                               ; preds = %22
  %25 = load i32, ptr %0, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %25, %24 ], [ 255, %22 ]
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %23, align 1
  %29 = getelementptr i8, ptr %23, i32 1
  store i8 %14, ptr %29, align 1
  br label %30

30:                                               ; preds = %26, %15
  %31 = phi ptr [ %16, %15 ], [ %20, %26 ]
  %32 = tail call ptr @skb_clone(ptr noundef nonnull %31, i32 noundef 2592) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %17, ptr noundef nonnull %32) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @kfree_skb_reason(ptr noundef nonnull %32, i32 noundef 0) #6
  br label %38

38:                                               ; preds = %37, %34, %30, %19
  %39 = phi ptr [ %31, %37 ], [ %31, %34 ], [ %31, %30 ], [ null, %19 ]
  %40 = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 15
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = getelementptr i8, ptr %41, i32 -84
  %44 = icmp eq ptr %43, null
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %15

46:                                               ; preds = %38, %4
  %47 = phi ptr [ null, %4 ], [ %39, %38 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.nfc_sock_list, ptr @raw_sk_list, i32 0, i32 1)) #6, !srcloc !9
  %48 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr getelementptr inbounds (%struct.nfc_sock_list, ptr @raw_sk_list, i32 0, i32 1)) #6, !srcloc !10
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  br label %52

52:                                               ; preds = %51, %46
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  tail call void @kfree_skb_reason(ptr noundef %47, i32 noundef 0) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @rawsock_init() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @nfc_proto_register(ptr noundef nonnull @rawsock_nfc_proto) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_proto_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rawsock_exit() local_unnamed_addr #0 {
  tail call void @nfc_proto_unregister(ptr noundef nonnull @rawsock_nfc_proto) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawsock_create(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  switch i16 %6, label %50 [
    i16 3, label %7
    i16 5, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = tail call zeroext i1 @ns_capable(ptr noundef %9, i32 noundef 13) #6
  br i1 %10, label %11, label %50

11:                                               ; preds = %7, %4
  %12 = phi ptr [ @rawsock_raw_ops, %7 ], [ @rawsock_ops, %4 ]
  %13 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfc_protocol, ptr %2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @sk_alloc(ptr noundef %0, i32 noundef 39, i32 noundef 2592, ptr noundef %15, i32 noundef %3) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %50, label %18

18:                                               ; preds = %11
  tail call void @sock_init_data(ptr noundef %1, ptr noundef nonnull %16) #6
  %19 = load i32, ptr %2, align 4
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 46
  store i16 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sock, ptr %16, i32 0, i32 80
  store ptr @rawsock_destruct, ptr %22, align 8
  store i32 1, ptr %1, align 64
  %23 = load i16, ptr %5, align 4
  %24 = icmp eq i16 %23, 3
  br i1 %24, label %25, label %44

25:                                               ; preds = %18
  tail call void @_raw_write_lock(ptr noundef getelementptr inbounds (%struct.nfc_sock_list, ptr @raw_sk_list, i32 0, i32 1)) #6
  %26 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #6, !srcloc !9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #6, !srcloc !14
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !15

30:                                               ; preds = %25
  %31 = add i32 %28, 1
  %32 = or i32 %31, %28
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %36, label %34, !prof !16

34:                                               ; preds = %30, %25
  %35 = phi i32 [ 2, %25 ], [ 1, %30 ]
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef %35) #6
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 15
  %38 = load ptr, ptr @raw_sk_list, align 4
  store volatile ptr %38, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hlist_node, ptr %38, i32 0, i32 1
  store volatile ptr %37, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %36
  store volatile ptr %37, ptr @raw_sk_list, align 4
  %43 = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 15, i32 0, i32 1
  store volatile ptr @raw_sk_list, ptr %43, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr getelementptr inbounds (%struct.nfc_sock_list, ptr @raw_sk_list, i32 0, i32 1), i32 0) #6, !srcloc !18
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  br label %50

44:                                               ; preds = %18
  %45 = getelementptr inbounds %struct.nfc_rawsock, ptr %16, i32 0, i32 3
  store i32 -32, ptr %45, align 8
  %46 = getelementptr inbounds %struct.nfc_rawsock, ptr %16, i32 0, i32 3, i32 1
  store volatile ptr %46, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nfc_rawsock, ptr %16, i32 0, i32 3, i32 1, i32 1
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.nfc_rawsock, ptr %16, i32 0, i32 3, i32 2
  store ptr @rawsock_tx_work, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nfc_rawsock, ptr %16, i32 0, i32 4
  store i8 0, ptr %49, align 8
  br label %50

50:                                               ; preds = %44, %42, %11, %7, %4
  %51 = phi i32 [ -94, %4 ], [ -1, %7 ], [ -12, %11 ], [ 0, %44 ], [ 0, %42 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rawsock_destruct(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfc_rawsock, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nfc_rawsock, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @nfc_deactivate_target(ptr noundef %7, i32 noundef %9, i8 noundef zeroext 0) #6
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 5
  tail call void @put_device(ptr noundef %12) #6
  br label %13

13:                                               ; preds = %5, %1
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %14) #6
  %15 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rawsock_destruct, ptr noundef %0) #7
  br label %21

21:                                               ; preds = %19, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rawsock_tx_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -528
  %3 = getelementptr i8, ptr %0, i32 -70
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -260
  %9 = getelementptr i8, ptr %0, i32 -248
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #6
  %10 = load ptr, ptr %8, align 4
  %11 = icmp eq ptr %10, %8
  %12 = icmp eq ptr %10, null
  %13 = or i1 %11, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %0, i32 -252
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi ptr [ %10, %14 ], [ %24, %16 ]
  %18 = load i32, ptr %15, align 4
  %19 = add i32 %18, -1
  store volatile i32 %19, ptr %15, align 4
  %20 = load ptr, ptr %17, align 8
  %21 = getelementptr inbounds %struct.anon.49, ptr %17, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  store ptr null, ptr %21, align 4
  store ptr null, ptr %17, align 8
  %23 = getelementptr inbounds %struct.anon.49, ptr %20, i32 0, i32 1
  store volatile ptr %22, ptr %23, align 4
  store volatile ptr %20, ptr %22, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %17, i32 noundef 0) #6
  %24 = load ptr, ptr %8, align 4
  %25 = icmp eq ptr %24, %8
  %26 = icmp eq ptr %24, null
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %16

28:                                               ; preds = %16, %7
  %29 = getelementptr i8, ptr %0, i32 16
  store i8 0, ptr %29, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #6
  br label %81

30:                                               ; preds = %1
  %31 = getelementptr i8, ptr %0, i32 -4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %0, i32 -8
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr i8, ptr %0, i32 -260
  %36 = tail call ptr @skb_dequeue(ptr noundef %35) #6
  %37 = getelementptr i8, ptr %0, i32 -428
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #6, !srcloc !9
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #6, !srcloc !14
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !15

41:                                               ; preds = %30
  %42 = add i32 %39, 1
  %43 = or i32 %42, %39
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %47, label %45, !prof !16

45:                                               ; preds = %41, %30
  %46 = phi i32 [ 2, %30 ], [ 1, %41 ]
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef %46) #6
  br label %47

47:                                               ; preds = %45, %41
  %48 = tail call i32 @nfc_data_exchange(ptr noundef %34, i32 noundef %32, ptr noundef %36, ptr noundef nonnull @rawsock_data_exchange_complete, ptr noundef %2) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %81, label %50

50:                                               ; preds = %47
  store i8 3, ptr %3, align 2
  %51 = sub i32 0, %48
  %52 = getelementptr i8, ptr %0, i32 -132
  store i32 %51, ptr %52, align 4
  tail call void @sk_error_report(ptr noundef %2) #6
  %53 = getelementptr i8, ptr %0, i32 -248
  tail call void @_raw_spin_lock_bh(ptr noundef %53) #6
  %54 = load ptr, ptr %35, align 4
  %55 = icmp eq ptr %54, %35
  %56 = icmp eq ptr %54, null
  %57 = or i1 %55, %56
  br i1 %57, label %72, label %58

58:                                               ; preds = %50
  %59 = getelementptr i8, ptr %0, i32 -252
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi ptr [ %54, %58 ], [ %68, %60 ]
  %62 = load i32, ptr %59, align 4
  %63 = add i32 %62, -1
  store volatile i32 %63, ptr %59, align 4
  %64 = load ptr, ptr %61, align 8
  %65 = getelementptr inbounds %struct.anon.49, ptr %61, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  store ptr null, ptr %65, align 4
  store ptr null, ptr %61, align 8
  %67 = getelementptr inbounds %struct.anon.49, ptr %64, i32 0, i32 1
  store volatile ptr %66, ptr %67, align 4
  store volatile ptr %64, ptr %66, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %61, i32 noundef 0) #6
  %68 = load ptr, ptr %35, align 4
  %69 = icmp eq ptr %68, %35
  %70 = icmp eq ptr %68, null
  %71 = or i1 %69, %70
  br i1 %71, label %72, label %60

72:                                               ; preds = %60, %50
  %73 = getelementptr i8, ptr %0, i32 16
  store i8 0, ptr %73, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %53) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #6, !srcloc !9
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #6, !srcloc !21
  %75 = extractvalue { i32, i32, i32 } %74, 0
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = icmp sgt i32 %75, 0
  br i1 %78, label %81, label %79, !prof !16

79:                                               ; preds = %77
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef 3) #6
  br label %81

80:                                               ; preds = %72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  tail call void @sk_free(ptr noundef %2) #6
  br label %81

81:                                               ; preds = %80, %79, %77, %47, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawsock_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 3
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  tail call void @_raw_write_lock(ptr noundef getelementptr inbounds (%struct.nfc_sock_list, ptr @raw_sk_list, i32 0, i32 1)) #6
  %10 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 15, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  store volatile ptr %15, ptr %11, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  store volatile ptr %11, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %13
  store ptr null, ptr %10, align 4
  %20 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24, !prof !15

23:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 729, i32 noundef 9, ptr noundef null) #6
  br label %24

24:                                               ; preds = %23, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #6, !srcloc !9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #6, !srcloc !21
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %29, !prof !15

28:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 4) #6
  br label %29

29:                                               ; preds = %28, %24, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr getelementptr inbounds (%struct.nfc_sock_list, ptr @raw_sk_list, i32 0, i32 1), i32 0) #6, !srcloc !18
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  br label %30

30:                                               ; preds = %29, %5
  %31 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %31) #6
  %32 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  store ptr null, ptr %35, align 8
  %36 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 17
  store ptr null, ptr %36, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %31) #6
  %37 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #6, !srcloc !9
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #6, !srcloc !21
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %45, label %43, !prof !16

43:                                               ; preds = %41
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef 3) #6
  br label %45

44:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  tail call void @sk_free(ptr noundef nonnull %3) #6
  br label %45

45:                                               ; preds = %44, %43, %41, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawsock_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = and i32 %3, 64
  %7 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !23
  %9 = call ptr @skb_recv_datagram(ptr noundef %8, i32 noundef %3, i32 noundef %6, ptr noundef nonnull %5) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load i32, ptr %5, align 4
  br label %28

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = icmp ugt i32 %15, %2
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 32
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %2, %17 ], [ %15, %13 ]
  %23 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %24 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %9, i32 noundef 0, ptr noundef %23, i32 noundef %22) #6
  store i32 %24, ptr %5, align 4
  call void @skb_free_datagram(ptr noundef %8, ptr noundef nonnull %9) #6
  %25 = load i32, ptr %5, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 %22, i32 %25
  br label %28

28:                                               ; preds = %21, %11
  %29 = phi i32 [ %27, %21 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawsock_connect(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = icmp eq ptr %1, null
  %8 = icmp ult i32 %2, 16
  %9 = or i1 %7, %8
  br i1 %9, label %50, label %10

10:                                               ; preds = %4
  %11 = load i16, ptr %1, align 4
  %12 = icmp eq i16 %11, 39
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #6
  %14 = load i32, ptr %0, align 64
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %48, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.sockaddr_nfc, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @nfc_get_device(i32 noundef %18) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %48, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sockaddr_nfc, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nfc_dev, ptr %19, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  %27 = icmp ugt i32 %23, %26
  br i1 %27, label %45, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.nfc_dev, ptr %19, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %25, %30
  %32 = icmp ult i32 %23, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.sockaddr_nfc, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @nfc_activate_target(ptr noundef nonnull %19, i32 noundef %23, i32 noundef %35) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.nfc_rawsock, ptr %6, i32 0, i32 1
  store ptr %19, ptr %39, align 8
  %40 = load i32, ptr %22, align 4
  %41 = getelementptr inbounds %struct.nfc_rawsock, ptr %6, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  store i32 3, ptr %0, align 64
  %42 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  store volatile i8 1, ptr %42, align 2
  %43 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 75
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef %6) #6
  br label %48

45:                                               ; preds = %33, %28, %21
  %46 = phi i32 [ %36, %33 ], [ -22, %28 ], [ -22, %21 ]
  %47 = getelementptr inbounds %struct.nfc_dev, ptr %19, i32 0, i32 5
  tail call void @put_device(ptr noundef %47) #6
  br label %48

48:                                               ; preds = %45, %38, %16, %13
  %49 = phi i32 [ 0, %38 ], [ %46, %45 ], [ -106, %13 ], [ -19, %16 ]
  tail call void @release_sock(ptr noundef %6) #6
  br label %50

50:                                               ; preds = %48, %10, %4
  %51 = phi i32 [ -22, %10 ], [ -22, %4 ], [ %49, %48 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawsock_sendmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.nfc_rawsock, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !23
  %9 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %3
  %13 = load i32, ptr %0, align 64
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %55

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = call ptr @nfc_alloc_send_skb(ptr noundef %8, ptr noundef %6, i32 noundef %17, i32 noundef %2, ptr noundef nonnull %4) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, ptr %4, align 4
  br label %55

22:                                               ; preds = %15
  %23 = call ptr @skb_put(ptr noundef nonnull %18, i32 noundef %2) #6
  %24 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %25 = icmp slt i32 %2, 0
  %26 = load i1, ptr @check_copy_size.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !15

29:                                               ; preds = %22
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %30

30:                                               ; preds = %29, %22
  br i1 %25, label %33, label %31, !prof !15

31:                                               ; preds = %30
  %32 = call i32 @_copy_from_iter(ptr noundef %23, i32 noundef %2, ptr noundef %24) #6
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ %32, %31 ], [ 0, %30 ]
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %38, label %36, !prof !16

36:                                               ; preds = %33
  call void @iov_iter_revert(ptr noundef %24, i32 noundef %34) #6
  store i32 -14, ptr %4, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %18, i32 noundef 0) #6
  %37 = load i32, ptr %4, align 4
  br label %55

38:                                               ; preds = %33
  store i32 0, ptr %4, align 4
  %39 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 26
  %40 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 26, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %40) #6
  %41 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 26, i32 0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  store volatile ptr %39, ptr %18, align 8
  %43 = getelementptr inbounds %struct.anon.49, ptr %18, i32 0, i32 1
  store volatile ptr %42, ptr %43, align 4
  store volatile ptr %18, ptr %41, align 4
  store volatile ptr %18, ptr %42, align 4
  %44 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 26, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store volatile i32 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.nfc_rawsock, ptr %6, i32 0, i32 4
  %48 = load i8, ptr %47, align 8, !range !24
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.nfc_rawsock, ptr %6, i32 0, i32 3
  %52 = load ptr, ptr @system_wq, align 4
  %53 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %52, ptr noundef %51) #6
  store i8 1, ptr %47, align 8
  br label %54

54:                                               ; preds = %50, %38
  call void @_raw_spin_unlock_bh(ptr noundef %40) #6
  br label %55

55:                                               ; preds = %54, %36, %20, %12, %3
  %56 = phi i32 [ %21, %20 ], [ %37, %36 ], [ %2, %54 ], [ -95, %3 ], [ -107, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_activate_target(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_alloc_send_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_deactivate_target(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_data_exchange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rawsock_data_exchange_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @llvm.thread.pointer() #6
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 983040
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !16

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/nfc/rawsock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 143, 0\0A.popsection", ""() #6, !srcloc !25
  unreachable

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %10
  %13 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 1) #6
  store i8 0, ptr %13, align 1
  %14 = tail call i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef %1) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %18) #6
  %19 = load ptr, ptr %17, align 4
  %20 = icmp eq ptr %19, %17
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nfc_rawsock, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr @system_wq, align 4
  %24 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %23, ptr noundef %22) #6
  br label %27

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.nfc_rawsock, ptr %0, i32 0, i32 4
  store i8 0, ptr %26, align 8
  br label %27

27:                                               ; preds = %25, %21
  tail call void @_raw_spin_unlock_bh(ptr noundef %18) #6
  %28 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #6, !srcloc !9
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #6, !srcloc !21
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %72, label %34, !prof !16

34:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef %28, i32 noundef 3) #6
  br label %72

35:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  tail call void @sk_free(ptr noundef %0) #6
  br label %72

36:                                               ; preds = %12
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #6
  br label %37

37:                                               ; preds = %36, %10
  %38 = phi i32 [ %2, %10 ], [ %14, %36 ]
  %39 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  store i8 3, ptr %39, align 2
  %40 = sub i32 0, %38
  %41 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 %40, ptr %41, align 4
  tail call void @sk_error_report(ptr noundef %0) #6
  %42 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %43 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %43) #6
  %44 = load ptr, ptr %42, align 4
  %45 = icmp eq ptr %44, %42
  %46 = icmp eq ptr %44, null
  %47 = or i1 %45, %46
  br i1 %47, label %62, label %48

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi ptr [ %44, %48 ], [ %58, %50 ]
  %52 = load i32, ptr %49, align 4
  %53 = add i32 %52, -1
  store volatile i32 %53, ptr %49, align 4
  %54 = load ptr, ptr %51, align 8
  %55 = getelementptr inbounds %struct.anon.49, ptr %51, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  store ptr null, ptr %55, align 4
  store ptr null, ptr %51, align 8
  %57 = getelementptr inbounds %struct.anon.49, ptr %54, i32 0, i32 1
  store volatile ptr %56, ptr %57, align 4
  store volatile ptr %54, ptr %56, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %51, i32 noundef 0) #6
  %58 = load ptr, ptr %42, align 4
  %59 = icmp eq ptr %58, %42
  %60 = icmp eq ptr %58, null
  %61 = or i1 %59, %60
  br i1 %61, label %62, label %50

62:                                               ; preds = %50, %37
  %63 = getelementptr inbounds %struct.nfc_rawsock, ptr %0, i32 0, i32 4
  store i8 0, ptr %63, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %43) #6
  %64 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #6, !srcloc !9
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #6, !srcloc !21
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %72, label %70, !prof !16

70:                                               ; preds = %68
  tail call void @refcount_warn_saturate(ptr noundef %64, i32 noundef 3) #6
  br label %72

71:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !22
  tail call void @sk_free(ptr noundef %0) #6
  br label %72

72:                                               ; preds = %71, %70, %68, %35, %34, %32
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 2148919303}
!9 = !{i64 465575, i64 2147955546, i64 2147955572, i64 2147955619, i64 2147955641, i64 2147955669, i64 2147955689}
!10 = !{i64 1422727, i64 1422750, i64 1422770, i64 1422794, i64 1422810}
!11 = !{i64 2148907245}
!12 = !{i64 2148907320, i64 2148907347, i64 2148907394, i64 2148907416, i64 2148907444, i64 2148907464}
!13 = !{i64 2148956906}
!14 = !{i64 2147969216, i64 2147969248, i64 2147969277, i64 2147969311, i64 2147969342, i64 2147969365}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2148918498}
!18 = !{i64 1421712}
!19 = !{i64 2148956467}
!20 = !{i64 2148069414}
!21 = !{i64 2147971573, i64 2147971605, i64 2147971634, i64 2147971668, i64 2147971699, i64 2147971722}
!22 = !{i64 2148979409}
!23 = !{!"auto-init"}
!24 = !{i8 0, i8 2}
!25 = !{i64 2155364054, i64 2155364536, i64 2155364091, i64 2155364147, i64 2155364181, i64 2155364205, i64 2155364246, i64 2155364267, i64 2155364295, i64 2155364329}
