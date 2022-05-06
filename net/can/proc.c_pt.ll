; ModuleID = '/llk/IR/net/can/proc.c_pt.bc'
source_filename = "../net/can/proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.can_rcv_lists_stats = type { i32, i32, i32, i32 }
%struct.can_pkg_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.49, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.106, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.107, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.108, ptr, %struct.address_space, %struct.list_head, %union.anon.109, i32, i32, ptr, ptr }
%union.anon.106 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.107 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.108 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.109 = type { ptr }
%struct.receiver = type { %struct.hlist_node, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.can_dev_rcv_lists = type { [4 x %struct.hlist_head], [2048 x %struct.hlist_head], [1024 x %struct.hlist_head], i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@user_reset = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [4 x i8] c"can\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"\016can: failed to create /proc/net/can . CONFIG_PROC_FS missing?\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"reset_stats\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rcvlist_err\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"rcvlist_all\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"rcvlist_fil\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"rcvlist_inv\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"rcvlist_eff\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"rcvlist_sff\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\013can: calc_rate: count exceeded! %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c" %8ld transmitted frames (TXF)\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c" %8ld received frames (RXF)\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c" %8ld matched frames (RXMF)\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c" %8ld %% total match ratio (RXMR)\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c" %8ld frames/s total tx rate (TXR)\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c" %8ld frames/s total rx rate (RXR)\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c" %8ld %% current match ratio (CRXMR)\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c" %8ld frames/s current tx rate (CTXR)\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c" %8ld frames/s current rx rate (CRXR)\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c" %8ld %% max match ratio (MRXMR)\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c" %8ld frames/s max tx rate (MTXR)\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c" %8ld frames/s max rx rate (MRXR)\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c" %8ld current receive list entries (CRCV)\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c" %8ld maximum receive list entries (MRCV)\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"\0A %8ld statistic resets (STR)\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c" %8ld user statistic resets (USTR)\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Scheduled statistic reset #%ld.\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"Performed statistic reset #%ld.\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"\0Areceive list '%s':\0A\00", align 1
@rx_list_name = internal constant [4 x [8 x i8]] [[8 x i8] c"rx_err\00\00", [8 x i8] c"rx_all\00\00", [8 x i8] c"rx_fil\00\00", [8 x i8] c"rx_inv\00\00"], align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"  (%s: no entry)\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.32 = private unnamed_addr constant [67 x i8] c"  device   can_id   can_mask  function  userdata   matches  ident\0A\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"   %-5s  %08x  %08x  %pK  %pK  %8ld  %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"   %-5s     %03x    %08x  %pK  %pK  %8ld  %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"\0Areceive list 'rx_eff':\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"\0Areceive list 'rx_sff':\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_stat_update(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = load i1, ptr @user_reset, align 4
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 24
  %8 = load ptr, ptr %7, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false) #4
  %9 = load volatile i32, ptr @jiffies, align 64
  store i32 %9, ptr %3, align 4
  %10 = load i32, ptr %8, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %8, align 4
  store i1 false, ptr @user_reset, align 4
  %12 = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %8, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  br label %15

15:                                               ; preds = %6, %1
  %16 = load i32, ptr %3, align 4
  %17 = icmp ult i32 %4, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr i8, ptr %0, i32 24
  %21 = load ptr, ptr %20, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %19, i8 0, i32 64, i1 false) #4
  %22 = load volatile i32, ptr @jiffies, align 64
  store i32 %22, ptr %19, align 4
  %23 = load i32, ptr %21, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %21, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 42949672
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %0, i32 24
  %32 = load ptr, ptr %31, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %30, i8 0, i32 64, i1 false) #4
  %33 = load volatile i32, ptr @jiffies, align 64
  store i32 %33, ptr %30, align 4
  %34 = load i32, ptr %32, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %32, align 4
  br label %36

36:                                               ; preds = %29, %25
  %37 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 42949672
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr i8, ptr %0, i32 24
  %43 = load ptr, ptr %42, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %41, i8 0, i32 64, i1 false) #4
  %44 = load volatile i32, ptr @jiffies, align 64
  store i32 %44, ptr %41, align 4
  %45 = load i32, ptr %43, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %43, align 4
  br label %47

47:                                               ; preds = %40, %36
  %48 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, 42949672
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load ptr, ptr %2, align 4
  %53 = getelementptr i8, ptr %0, i32 24
  %54 = load ptr, ptr %53, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %52, i8 0, i32 64, i1 false) #4
  %55 = load volatile i32, ptr @jiffies, align 64
  store i32 %55, ptr %52, align 4
  %56 = load i32, ptr %54, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %54, align 4
  br label %58

58:                                               ; preds = %51, %47
  %59 = load i32, ptr %26, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load i32, ptr %48, align 4
  %63 = mul i32 %62, 100
  %64 = udiv i32 %63, %59
  %65 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 6
  store i32 %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, ptr %3, align 4
  %68 = load i32, ptr %37, align 4
  %69 = icmp eq i32 %4, %67
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 5
  store i32 0, ptr %71, align 4
  br label %96

72:                                               ; preds = %66
  %73 = icmp ugt i32 %68, 42949672
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %68) #5
  %76 = load i32, ptr %3, align 4
  %77 = load i32, ptr %26, align 4
  br label %82

78:                                               ; preds = %72
  %79 = mul nuw i32 %68, 100
  %80 = sub i32 %4, %67
  %81 = udiv i32 %79, %80
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i32 [ %77, %74 ], [ %59, %78 ]
  %84 = phi i32 [ %76, %74 ], [ %67, %78 ]
  %85 = phi i32 [ 99999999, %74 ], [ %81, %78 ]
  %86 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 5
  store i32 %85, ptr %86, align 4
  %87 = icmp eq i32 %4, %84
  br i1 %87, label %96, label %88

88:                                               ; preds = %82
  %89 = icmp ugt i32 %83, 42949672
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %83) #5
  br label %96

92:                                               ; preds = %88
  %93 = mul nuw i32 %83, 100
  %94 = sub i32 %4, %84
  %95 = udiv i32 %93, %94
  br label %96

96:                                               ; preds = %92, %90, %82, %70
  %97 = phi i32 [ 99999999, %90 ], [ %95, %92 ], [ 0, %82 ], [ 0, %70 ]
  %98 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 4
  store i32 %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 13
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 15
  %104 = load i32, ptr %103, align 4
  %105 = mul i32 %104, 100
  %106 = udiv i32 %105, %100
  %107 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 9
  store i32 %106, ptr %107, align 4
  br label %108

108:                                              ; preds = %102, %96
  %109 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 14
  %110 = load i32, ptr %109, align 4
  %111 = icmp ugt i32 %110, 42949672
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %110) #5
  %114 = load i32, ptr %99, align 4
  br label %115

115:                                              ; preds = %112, %108
  %116 = phi i32 [ %114, %112 ], [ %100, %108 ]
  %117 = phi i32 [ 99999999, %112 ], [ %110, %108 ]
  %118 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 8
  store i32 %117, ptr %118, align 4
  %119 = icmp ugt i32 %116, 42949672
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %116) #5
  %122 = load i32, ptr %118, align 4
  br label %123

123:                                              ; preds = %120, %115
  %124 = phi i32 [ %122, %120 ], [ %117, %115 ]
  %125 = phi i32 [ 99999999, %120 ], [ %116, %115 ]
  %126 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 7
  store i32 %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 11
  %128 = load i32, ptr %127, align 4
  %129 = icmp ult i32 %128, %124
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  store i32 %124, ptr %127, align 4
  br label %131

131:                                              ; preds = %130, %123
  %132 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 10
  %133 = load i32, ptr %132, align 4
  %134 = icmp ult i32 %133, %125
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 %125, ptr %132, align 4
  br label %136

136:                                              ; preds = %135, %131
  %137 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 12
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 9
  %140 = load i32, ptr %139, align 4
  %141 = icmp ult i32 %138, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 %140, ptr %137, align 4
  br label %143

143:                                              ; preds = %142, %136
  store i32 0, ptr %109, align 4
  store i32 0, ptr %99, align 4
  %144 = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 15
  store i32 0, ptr %144, align 4
  %145 = load volatile i32, ptr @jiffies, align 64
  %146 = add i32 %145, 100
  %147 = tail call i32 @round_jiffies(i32 noundef %146) #4
  %148 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %147) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_init_proc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @_proc_mkdir(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef %3, ptr noundef %0, i1 noundef zeroext true) #4
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42
  store ptr %4, ptr %5, align 8
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #5
  br label %33

9:                                                ; preds = %1
  %10 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.2, i16 noundef zeroext 420, ptr noundef nonnull %4, ptr noundef nonnull @can_stats_proc_show, ptr noundef null) #4
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 1
  store ptr %10, ptr %11, align 4
  %12 = load ptr, ptr %5, align 8
  %13 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.3, i16 noundef zeroext 420, ptr noundef %12, ptr noundef nonnull @can_reset_stats_proc_show, ptr noundef null) #4
  %14 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 2
  store ptr %13, ptr %14, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef %15, ptr noundef nonnull @can_rcvlist_proc_show, ptr noundef null) #4
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 8
  store ptr %16, ptr %17, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.5, i16 noundef zeroext 420, ptr noundef %18, ptr noundef nonnull @can_rcvlist_proc_show, ptr noundef nonnull inttoptr (i32 1 to ptr)) #4
  %20 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 3
  store ptr %19, ptr %20, align 4
  %21 = load ptr, ptr %5, align 8
  %22 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.6, i16 noundef zeroext 420, ptr noundef %21, ptr noundef nonnull @can_rcvlist_proc_show, ptr noundef nonnull inttoptr (i32 2 to ptr)) #4
  %23 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 4
  store ptr %22, ptr %23, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.7, i16 noundef zeroext 420, ptr noundef %24, ptr noundef nonnull @can_rcvlist_proc_show, ptr noundef nonnull inttoptr (i32 3 to ptr)) #4
  %26 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 5
  store ptr %25, ptr %26, align 4
  %27 = load ptr, ptr %5, align 8
  %28 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.8, i16 noundef zeroext 420, ptr noundef %27, ptr noundef nonnull @can_rcvlist_eff_proc_show, ptr noundef null) #4
  %29 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 7
  store ptr %28, ptr %29, align 4
  %30 = load ptr, ptr %5, align 8
  %31 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.9, i16 noundef zeroext 420, ptr noundef %30, ptr noundef nonnull @can_rcvlist_sff_proc_show, ptr noundef null) #4
  %32 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 6
  store ptr %31, ptr %32, align 8
  br label %33

33:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_single(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_stats_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 42, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 42, i32 14
  %8 = load ptr, ptr %7, align 8
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #4
  %9 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %10) #4
  %11 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %12) #4
  %13 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %14) #4
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #4
  %15 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 42, i32 12, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, @can_stat_update
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %20) #4
  %21 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %22) #4
  %23 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %24) #4
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #4
  %25 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %26) #4
  %27 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %28) #4
  %29 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %30) #4
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #4
  %31 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 12
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %32) #4
  %33 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 11
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %34) #4
  %35 = getelementptr inbounds %struct.can_pkg_stats, ptr %6, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %36) #4
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #4
  br label %37

37:                                               ; preds = %18, %2
  %38 = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %8, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %39) #4
  %40 = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %8, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %41) #4
  %42 = load i32, ptr %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %42) #4
  br label %45

45:                                               ; preds = %44, %37
  %46 = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %8, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %47) #4
  br label %50

50:                                               ; preds = %49, %45
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_reset_stats_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 42, i32 14
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 42, i32 13
  %8 = load ptr, ptr %7, align 4
  store i1 true, ptr @user_reset, align 4
  %9 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 42, i32 12, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @can_stat_update
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, ptr %6, align 4
  %14 = add i32 %13, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %14) #4
  br label %30

15:                                               ; preds = %2
  %16 = load i32, ptr %8, align 4
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, ptr %6, align 4
  br label %28

21:                                               ; preds = %15
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %8, i8 0, i32 64, i1 false) #4
  %22 = load volatile i32, ptr @jiffies, align 64
  store i32 %22, ptr %8, align 4
  %23 = load i32, ptr %6, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %6, align 4
  store i1 false, ptr @user_reset, align 4
  %25 = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %6, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %21, %19
  %29 = phi i32 [ %20, %19 ], [ %24, %21 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %29) #4
  br label %30

30:                                               ; preds = %28, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_rcvlist_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr [4 x [8 x i8]], ptr @rx_list_name, i32 0, i32 %9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %12) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %13 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 42, i32 10
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr [4 x %struct.hlist_head], ptr %14, i32 0, i32 %9
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #4
  %19 = load volatile ptr, ptr %15, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %37, %21 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.receiver, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, -1
  %26 = select i1 %25, ptr @.str.34, ptr @.str.33
  %27 = getelementptr inbounds %struct.receiver, ptr %22, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.receiver, ptr %22, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.receiver, ptr %22, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.receiver, ptr %22, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.receiver, ptr %22, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %26, ptr noundef nonnull @.str.31, i32 noundef %24, i32 noundef %28, ptr noundef %30, ptr noundef %32, i32 noundef %34, ptr noundef %36) #4
  %37 = load volatile ptr, ptr %22, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %21

39:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #4
  br label %40

40:                                               ; preds = %39, %21, %18
  %41 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 16
  %42 = load volatile ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %88, label %44

44:                                               ; preds = %85, %40
  %45 = phi ptr [ %86, %85 ], [ %42, %40 ]
  %46 = getelementptr i8, ptr %45, i32 -40
  %47 = getelementptr i8, ptr %45, i32 636
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %85

50:                                               ; preds = %44
  %51 = getelementptr i8, ptr %45, i32 632
  %52 = load ptr, ptr %51, align 32
  %53 = icmp eq ptr %52, null
  br i1 %53, label %85, label %54

54:                                               ; preds = %50
  %55 = getelementptr [4 x %struct.hlist_head], ptr %52, i32 0, i32 %9
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %82, label %58

58:                                               ; preds = %54
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #4
  %59 = load volatile ptr, ptr %55, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %85, label %61

61:                                               ; preds = %58
  %62 = icmp eq ptr %46, null
  %63 = select i1 %62, ptr @.str.31, ptr %46
  br label %64

64:                                               ; preds = %64, %61
  %65 = phi ptr [ %59, %61 ], [ %80, %64 ]
  %66 = getelementptr inbounds %struct.receiver, ptr %65, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp sgt i32 %67, -1
  %69 = select i1 %68, ptr @.str.34, ptr @.str.33
  %70 = getelementptr inbounds %struct.receiver, ptr %65, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.receiver, ptr %65, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.receiver, ptr %65, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.receiver, ptr %65, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.receiver, ptr %65, i32 0, i32 6
  %79 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %69, ptr noundef %63, i32 noundef %67, i32 noundef %71, ptr noundef %73, ptr noundef %75, i32 noundef %77, ptr noundef %79) #4
  %80 = load volatile ptr, ptr %65, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %64

82:                                               ; preds = %54
  %83 = icmp eq ptr %46, null
  %84 = select i1 %83, ptr @.str.31, ptr %46
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %84) #4
  br label %85

85:                                               ; preds = %82, %64, %58, %50, %44
  %86 = load volatile ptr, ptr %45, align 8
  %87 = icmp eq ptr %86, %41
  br i1 %87, label %88, label %44

88:                                               ; preds = %85, %40
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_rcvlist_eff_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.35) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %5 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 42, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %6, i32 0, i32 2
  br label %11

8:                                                ; preds = %11
  %9 = add nuw nsw i32 %12, 1
  %10 = icmp eq i32 %9, 1024
  br i1 %10, label %46, label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %9, %8 ], [ 0, %2 ]
  %13 = getelementptr %struct.hlist_head, ptr %7, i32 %12
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %16

16:                                               ; preds = %11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #4
  br label %17

17:                                               ; preds = %43, %16
  %18 = phi i32 [ 0, %16 ], [ %44, %43 ]
  %19 = getelementptr %struct.hlist_head, ptr %7, i32 %18
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %17
  %23 = load volatile ptr, ptr %19, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %25, %22
  %26 = phi ptr [ %41, %25 ], [ %23, %22 ]
  %27 = getelementptr inbounds %struct.receiver, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, -1
  %30 = select i1 %29, ptr @.str.34, ptr @.str.33
  %31 = getelementptr inbounds %struct.receiver, ptr %26, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.receiver, ptr %26, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.receiver, ptr %26, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.receiver, ptr %26, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.receiver, ptr %26, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %30, ptr noundef nonnull @.str.31, i32 noundef %28, i32 noundef %32, ptr noundef %34, ptr noundef %36, i32 noundef %38, ptr noundef %40) #4
  %41 = load volatile ptr, ptr %26, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %25

43:                                               ; preds = %25, %22, %17
  %44 = add nuw nsw i32 %18, 1
  %45 = icmp eq i32 %44, 1024
  br i1 %45, label %47, label %17

46:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #4
  br label %47

47:                                               ; preds = %46, %43
  %48 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 16
  %49 = load volatile ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %109, label %51

51:                                               ; preds = %106, %47
  %52 = phi ptr [ %107, %106 ], [ %49, %47 ]
  %53 = getelementptr i8, ptr %52, i32 -40
  %54 = getelementptr i8, ptr %52, i32 636
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %106

57:                                               ; preds = %51
  %58 = getelementptr i8, ptr %52, i32 632
  %59 = load ptr, ptr %58, align 32
  %60 = icmp eq ptr %59, null
  br i1 %60, label %106, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %59, i32 0, i32 2
  br label %66

63:                                               ; preds = %66
  %64 = add nuw nsw i32 %67, 1
  %65 = icmp eq i32 %64, 1024
  br i1 %65, label %103, label %66

66:                                               ; preds = %63, %61
  %67 = phi i32 [ %64, %63 ], [ 0, %61 ]
  %68 = getelementptr %struct.hlist_head, ptr %62, i32 %67
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %63, label %71

71:                                               ; preds = %66
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #4
  %72 = icmp eq ptr %53, null
  %73 = select i1 %72, ptr @.str.31, ptr %53
  br label %74

74:                                               ; preds = %100, %71
  %75 = phi i32 [ 0, %71 ], [ %101, %100 ]
  %76 = getelementptr %struct.hlist_head, ptr %62, i32 %75
  %77 = load volatile ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %100, label %79

79:                                               ; preds = %74
  %80 = load volatile ptr, ptr %76, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %100, label %82

82:                                               ; preds = %82, %79
  %83 = phi ptr [ %98, %82 ], [ %80, %79 ]
  %84 = getelementptr inbounds %struct.receiver, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = icmp sgt i32 %85, -1
  %87 = select i1 %86, ptr @.str.34, ptr @.str.33
  %88 = getelementptr inbounds %struct.receiver, ptr %83, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.receiver, ptr %83, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.receiver, ptr %83, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.receiver, ptr %83, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.receiver, ptr %83, i32 0, i32 6
  %97 = load ptr, ptr %96, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %87, ptr noundef %73, i32 noundef %85, i32 noundef %89, ptr noundef %91, ptr noundef %93, i32 noundef %95, ptr noundef %97) #4
  %98 = load volatile ptr, ptr %83, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %82

100:                                              ; preds = %82, %79, %74
  %101 = add nuw nsw i32 %75, 1
  %102 = icmp eq i32 %101, 1024
  br i1 %102, label %106, label %74

103:                                              ; preds = %63
  %104 = icmp eq ptr %53, null
  %105 = select i1 %104, ptr @.str.31, ptr %53
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %105) #4
  br label %106

106:                                              ; preds = %103, %100, %57, %51
  %107 = load volatile ptr, ptr %52, align 8
  %108 = icmp eq ptr %107, %48
  br i1 %108, label %109, label %51

109:                                              ; preds = %106, %47
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @can_rcvlist_sff_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.36) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %5 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 42, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %6, i32 0, i32 1
  br label %11

8:                                                ; preds = %11
  %9 = add nuw nsw i32 %12, 1
  %10 = icmp eq i32 %9, 2048
  br i1 %10, label %46, label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %9, %8 ], [ 0, %2 ]
  %13 = getelementptr %struct.hlist_head, ptr %7, i32 %12
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %16

16:                                               ; preds = %11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #4
  br label %17

17:                                               ; preds = %43, %16
  %18 = phi i32 [ 0, %16 ], [ %44, %43 ]
  %19 = getelementptr %struct.hlist_head, ptr %7, i32 %18
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %17
  %23 = load volatile ptr, ptr %19, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %25, %22
  %26 = phi ptr [ %41, %25 ], [ %23, %22 ]
  %27 = getelementptr inbounds %struct.receiver, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, -1
  %30 = select i1 %29, ptr @.str.34, ptr @.str.33
  %31 = getelementptr inbounds %struct.receiver, ptr %26, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.receiver, ptr %26, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.receiver, ptr %26, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.receiver, ptr %26, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.receiver, ptr %26, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %30, ptr noundef nonnull @.str.31, i32 noundef %28, i32 noundef %32, ptr noundef %34, ptr noundef %36, i32 noundef %38, ptr noundef %40) #4
  %41 = load volatile ptr, ptr %26, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %25

43:                                               ; preds = %25, %22, %17
  %44 = add nuw nsw i32 %18, 1
  %45 = icmp eq i32 %44, 2048
  br i1 %45, label %47, label %17

46:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #4
  br label %47

47:                                               ; preds = %46, %43
  %48 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 16
  %49 = load volatile ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %109, label %51

51:                                               ; preds = %106, %47
  %52 = phi ptr [ %107, %106 ], [ %49, %47 ]
  %53 = getelementptr i8, ptr %52, i32 -40
  %54 = getelementptr i8, ptr %52, i32 636
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %106

57:                                               ; preds = %51
  %58 = getelementptr i8, ptr %52, i32 632
  %59 = load ptr, ptr %58, align 32
  %60 = icmp eq ptr %59, null
  br i1 %60, label %106, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %59, i32 0, i32 1
  br label %66

63:                                               ; preds = %66
  %64 = add nuw nsw i32 %67, 1
  %65 = icmp eq i32 %64, 2048
  br i1 %65, label %103, label %66

66:                                               ; preds = %63, %61
  %67 = phi i32 [ %64, %63 ], [ 0, %61 ]
  %68 = getelementptr %struct.hlist_head, ptr %62, i32 %67
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %63, label %71

71:                                               ; preds = %66
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #4
  %72 = icmp eq ptr %53, null
  %73 = select i1 %72, ptr @.str.31, ptr %53
  br label %74

74:                                               ; preds = %100, %71
  %75 = phi i32 [ 0, %71 ], [ %101, %100 ]
  %76 = getelementptr %struct.hlist_head, ptr %62, i32 %75
  %77 = load volatile ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %100, label %79

79:                                               ; preds = %74
  %80 = load volatile ptr, ptr %76, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %100, label %82

82:                                               ; preds = %82, %79
  %83 = phi ptr [ %98, %82 ], [ %80, %79 ]
  %84 = getelementptr inbounds %struct.receiver, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = icmp sgt i32 %85, -1
  %87 = select i1 %86, ptr @.str.34, ptr @.str.33
  %88 = getelementptr inbounds %struct.receiver, ptr %83, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.receiver, ptr %83, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.receiver, ptr %83, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.receiver, ptr %83, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.receiver, ptr %83, i32 0, i32 6
  %97 = load ptr, ptr %96, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %87, ptr noundef %73, i32 noundef %85, i32 noundef %89, ptr noundef %91, ptr noundef %93, i32 noundef %95, ptr noundef %97) #4
  %98 = load volatile ptr, ptr %83, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %82

100:                                              ; preds = %82, %79, %74
  %101 = add nuw nsw i32 %75, 1
  %102 = icmp eq i32 %101, 2048
  br i1 %102, label %106, label %74

103:                                              ; preds = %63
  %104 = icmp eq ptr %53, null
  %105 = select i1 %104, ptr @.str.31, ptr %53
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %105) #4
  br label %106

106:                                              ; preds = %103, %100, %57, %51
  %107 = load volatile ptr, ptr %52, align 8
  %108 = icmp eq ptr %107, %48
  br i1 %108, label %109, label %51

109:                                              ; preds = %106, %47
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_remove_proc(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #4
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.3, ptr noundef %15) #4
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef %21) #4
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.5, ptr noundef %27) #4
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 4
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.6, ptr noundef %33) #4
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.7, ptr noundef %39) #4
  br label %40

40:                                               ; preds = %38, %34
  %41 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.8, ptr noundef %45) #4
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 42, i32 6
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.9, ptr noundef %51) #4
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %54 = load ptr, ptr %53, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %54) #4
  br label %55

55:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_proc_mkdir(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2149057700}
!9 = !{i64 2149057917}
