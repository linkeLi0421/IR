; ModuleID = '/llk/IR/net/dns_resolver/dns_query.c_pt.bc'
source_filename = "../net/dns_resolver/dns_query.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dns_query:\09\09\09\09\09"
module asm "\09.asciz \09\22dns_query\22\09\09\09\09\09"
module asm "__kstrtabns_dns_query:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.76, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.55 }
%struct.llist_node = type { ptr }
%union.anon.55 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.56 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.1, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.24, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.24 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, %struct.rw_semaphore, ptr, ptr, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.27, %union.anon.91, ptr }
%union.anon.25 = type { %struct.rb_node }
%union.anon.26 = type { i64 }
%struct.kuid_t = type { i32 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.28, ptr, ptr, ptr }
%union.anon.28 = type { i32 }
%union.anon.91 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }

@dns_resolver_debug = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [36 x i8] c"\017[%-6.6s] ==> %s(%s,%*.*s,%zu,%s)\0A\00", align 1
@__func__.dns_query = private unnamed_addr constant [10 x i8] c"dns_query\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\017[%-6.6s] call request_key(,%s,%s)\0A\00", align 1
@dns_resolver_cache = external dso_local local_unnamed_addr global ptr, align 4
@key_type_dns_resolver = external dso_local global %struct.key_type, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"\017[%-6.6s] <== %s() = %d\0A\00", align 1
@__kstrtab_dns_query = external dso_local constant [0 x i8], align 1
@__kstrtabns_dns_query = external dso_local constant [0 x i8], align 1
@__ksymtab_dns_query = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dns_query to i32), ptr @__kstrtab_dns_query, ptr @__kstrtabns_dns_query }, section "___ksymtab+dns_query", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_dns_query], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dns_query(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef writeonly %5, ptr noundef writeonly %6, i1 noundef zeroext %7) #0 {
  %9 = load i32, ptr @dns_resolver_debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !8

11:                                               ; preds = %8
  %12 = tail call ptr @llvm.thread.pointer() #7
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 85
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %13, ptr noundef nonnull @__func__.dns_query, ptr noundef %1, i32 noundef %3, i32 noundef %3, ptr noundef %2, i32 noundef %3, ptr noundef %4) #8
  br label %15

15:                                               ; preds = %11, %8
  %16 = icmp eq ptr %2, null
  %17 = icmp eq i32 %3, 0
  %18 = or i1 %16, %17
  br i1 %18, label %101, label %19

19:                                               ; preds = %15
  %20 = icmp eq ptr %1, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @strlen(ptr noundef nonnull %1)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %101, label %24

24:                                               ; preds = %21
  %25 = add i32 %22, 1
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %22, %24 ], [ 0, %19 ]
  %28 = phi i32 [ %25, %24 ], [ 0, %19 ]
  %29 = add i32 %3, -256
  %30 = icmp ult i32 %29, -253
  br i1 %30, label %101, label %31

31:                                               ; preds = %26
  %32 = add i32 %28, %3
  %33 = add i32 %32, 1
  %34 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %101, label %36

36:                                               ; preds = %31
  br i1 %20, label %40, label %37

37:                                               ; preds = %36
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %34, ptr nonnull align 1 %1, i32 %27, i1 false)
  %38 = getelementptr i8, ptr %34, i32 %27
  %39 = getelementptr i8, ptr %38, i32 1
  store i8 58, ptr %38, align 1
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi ptr [ %39, %37 ], [ %34, %36 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr nonnull align 1 %2, i32 %3, i1 false)
  %42 = getelementptr i8, ptr %41, i32 %3
  store i8 0, ptr %42, align 1
  %43 = icmp eq ptr %4, null
  %44 = select i1 %43, ptr @.str.1, ptr %4
  %45 = load i32, ptr @dns_resolver_debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47, !prof !8

47:                                               ; preds = %40
  %48 = tail call ptr @llvm.thread.pointer() #7
  %49 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 85
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %49, ptr noundef nonnull %34, ptr noundef %44) #8
  br label %51

51:                                               ; preds = %47, %40
  %52 = load ptr, ptr @dns_resolver_cache, align 4
  %53 = tail call ptr @override_creds(ptr noundef %52) #7
  %54 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 10
  %55 = load ptr, ptr %54, align 16
  %56 = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_dns_resolver, ptr noundef nonnull %34, ptr noundef %55, ptr noundef %44) #7
  tail call void @revert_creds(ptr noundef %53) #7
  tail call void @kfree(ptr noundef nonnull %34) #7
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = ptrtoint ptr %56 to i32
  br label %93

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.key, ptr %56, i32 0, i32 3
  tail call void @down_read(ptr noundef %61) #7
  %62 = getelementptr inbounds %struct.key, ptr %56, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 7, ptr noundef %62) #7
  %63 = getelementptr inbounds %struct.key, ptr %56, i32 0, i32 10
  %64 = load i32, ptr %63, align 8
  %65 = or i32 %64, 65536
  store i32 %65, ptr %63, align 8
  %66 = tail call i32 @key_validate(ptr noundef %56) #7
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %60
  %69 = getelementptr %struct.key, ptr %56, i32 0, i32 16, i32 0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = icmp eq ptr %70, null
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.key, ptr %56, i32 0, i32 16
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.user_key_payload, ptr %75, i32 0, i32 1
  %77 = load i16, ptr %76, align 8
  %78 = zext i16 %77 to i32
  %79 = icmp eq ptr %5, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.user_key_payload, ptr %75, i32 0, i32 3
  %82 = tail call ptr @kmemdup_nul(ptr noundef %81, i32 noundef %78, i32 noundef 3264) #7
  store ptr %82, ptr %5, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %80, %73
  %85 = icmp eq ptr %6, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.key, ptr %56, i32 0, i32 6
  %88 = load i64, ptr %87, align 8
  store i64 %88, ptr %6, align 8
  br label %89

89:                                               ; preds = %86, %84, %80, %68, %60
  %90 = phi i32 [ %66, %60 ], [ %71, %68 ], [ -12, %80 ], [ %78, %86 ], [ %78, %84 ]
  tail call void @up_read(ptr noundef %61) #7
  br i1 %7, label %91, label %92

91:                                               ; preds = %89
  tail call void @key_invalidate(ptr noundef %56) #7
  br label %92

92:                                               ; preds = %91, %89
  tail call void @key_put(ptr noundef %56) #7
  br label %93

93:                                               ; preds = %92, %58
  %94 = phi i32 [ %59, %58 ], [ %90, %92 ]
  %95 = load i32, ptr @dns_resolver_debug, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97, !prof !8

97:                                               ; preds = %93
  %98 = tail call ptr @llvm.thread.pointer() #7
  %99 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 85
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %99, ptr noundef nonnull @__func__.dns_query, i32 noundef %94) #8
  br label %101

101:                                              ; preds = %97, %93, %31, %26, %21, %15
  %102 = phi i32 [ -22, %15 ], [ -22, %21 ], [ -22, %26 ], [ -12, %31 ], [ %94, %97 ], [ %94, %93 ]
  ret i32 %102
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_invalidate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
