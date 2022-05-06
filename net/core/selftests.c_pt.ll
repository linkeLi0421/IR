; ModuleID = '/llk/IR/net/core/selftests.c_pt.bc'
source_filename = "../net/core/selftests.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_selftest:\09\09\09\09\09"
module asm "\09.asciz \09\22net_selftest\22\09\09\09\09\09"
module asm "__kstrtabns_net_selftest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_selftest_get_count:\09\09\09\09\09"
module asm "\09.asciz \09\22net_selftest_get_count\22\09\09\09\09\09"
module asm "__kstrtabns_net_selftest_get_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_selftest_get_strings:\09\09\09\09\09"
module asm "\09.asciz \09\22net_selftest_get_strings\22\09\09\09\09\09"
module asm "__kstrtabns_net_selftest_get_strings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.net_test = type { [32 x i8], ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.net_packet_attrs = type { ptr, ptr, i32, i32, i8, i16, i16, i32, i32, i32, i8, i16 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.176, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.176 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.net_test_priv = type { ptr, %struct.packet_type, %struct.completion, i32, i32, i32 }
%struct.packet_type = type { i16, i8, ptr, %struct.netdevice_tracker, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.140, [48 x i8], %union.anon.141, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.143, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.140 = type { i64 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, ptr }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.145, i32, i32, i32, i16, i16, %union.anon.147, %union.anon.148, %union.anon.149, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.145 = type { i32 }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }
%union.anon.149 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.netsfhdr = type <{ i32, i64, i8 }>
%struct.anon.146 = type { i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@net_test_next_id = internal unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [34 x i8] c"Only offline tests are supported\0A\00", align 1
@net_selftests = internal constant [7 x %struct.net_test] [%struct.net_test { [32 x i8] c"Carrier                       \00\00", ptr @net_test_netif_carrier }, %struct.net_test { [32 x i8] c"PHY dev is present            \00\00", ptr @net_test_phy_phydev }, %struct.net_test { [32 x i8] c"PHY internal loopback, enable \00\00", ptr @net_test_phy_loopback_enable }, %struct.net_test { [32 x i8] c"PHY internal loopback, UDP    \00\00", ptr @net_test_phy_loopback_udp }, %struct.net_test { [32 x i8] c"PHY internal loopback, MTU    \00\00", ptr @net_test_phy_loopback_udp_mtu }, %struct.net_test { [32 x i8] c"PHY internal loopback, TCP    \00\00", ptr @net_test_phy_loopback_tcp }, %struct.net_test { [32 x i8] c"PHY internal loopback, disable\00\00", ptr @net_test_phy_loopback_disable }], align 4
@__kstrtab_net_selftest = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_selftest = external dso_local constant [0 x i8], align 1
@__ksymtab_net_selftest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_selftest to i32), ptr @__kstrtab_net_selftest, ptr @__kstrtabns_net_selftest }, section "___ksymtab_gpl+net_selftest", align 4
@__kstrtab_net_selftest_get_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_selftest_get_count = external dso_local constant [0 x i8], align 1
@__ksymtab_net_selftest_get_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_selftest_get_count to i32), ptr @__kstrtab_net_selftest_get_count, ptr @__kstrtabns_net_selftest_get_count }, section "___ksymtab_gpl+net_selftest_get_count", align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%2d. %s\00", align 1
@__kstrtab_net_selftest_get_strings = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_selftest_get_strings = external dso_local constant [0 x i8], align 1
@__ksymtab_net_selftest_get_strings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_selftest_get_strings to i32), ptr @__kstrtab_net_selftest_get_strings, ptr @__kstrtabns_net_selftest_get_strings }, section "___ksymtab_gpl+net_selftest_get_strings", align 4
@__UNIQUE_ID_file544 = internal constant [34 x i8] c"selftests.file=net/core/selftests\00", section ".modinfo", align 1
@__UNIQUE_ID_license545 = internal constant [25 x i8] c"selftests.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author546 = internal constant [58 x i8] c"selftests.author=Oleksij Rempel <o.rempel@pengutronix.de>\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author546, ptr @__UNIQUE_ID_file544, ptr @__UNIQUE_ID_license545, ptr @__ksymtab_net_selftest, ptr @__ksymtab_net_selftest_get_count, ptr @__ksymtab_net_selftest_get_strings], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @net_selftest(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.net_packet_attrs, align 4
  %5 = alloca %struct.net_packet_attrs, align 4
  %6 = alloca %struct.net_packet_attrs, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false)
  store i8 0, ptr @net_test_next_id, align 1
  %7 = getelementptr inbounds %struct.ethtool_test, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 0, i32 -67
  %16 = sext i32 %15 to i64
  store i64 %16, ptr %2, align 8
  br i1 %14, label %21, label %18

17:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str) #12
  br label %79

18:                                               ; preds = %10
  %19 = load i32, ptr %7, align 4
  %20 = or i32 %19, 2
  store i32 %20, ptr %7, align 4
  br label %21

21:                                               ; preds = %18, %10
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, i64 -95, i64 0
  %26 = getelementptr i64, ptr %2, i32 1
  store i64 %25, ptr %26, align 8
  %27 = load ptr, ptr %22, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = getelementptr i64, ptr %2, i32 2
  store i64 -95, ptr %30, align 8
  br label %38

31:                                               ; preds = %21
  %32 = tail call i32 @phy_loopback(ptr noundef nonnull %27, i1 noundef zeroext true) #13
  %33 = sext i32 %32 to i64
  %34 = getelementptr i64, ptr %2, i32 2
  store i64 %33, ptr %34, align 8
  switch i32 %32, label %35 [
    i32 0, label %38
    i32 -95, label %38
  ]

35:                                               ; preds = %31
  %36 = load i32, ptr %7, align 4
  %37 = or i32 %36, 2
  store i32 %37, ptr %7, align 4
  br label %38

38:                                               ; preds = %35, %31, %31, %29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %6, i8 0, i32 40, i1 false) #13
  %39 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %40 = load ptr, ptr %39, align 32
  %41 = getelementptr inbounds %struct.net_packet_attrs, ptr %6, i32 0, i32 1
  store ptr %40, ptr %41, align 4
  %42 = call fastcc i32 @__net_test_loopback(ptr noundef %0, ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  %43 = sext i32 %42 to i64
  %44 = getelementptr i64, ptr %2, i32 3
  store i64 %43, ptr %44, align 8
  switch i32 %42, label %45 [
    i32 0, label %48
    i32 -95, label %48
  ]

45:                                               ; preds = %38
  %46 = load i32, ptr %7, align 4
  %47 = or i32 %46, 2
  store i32 %47, ptr %7, align 4
  br label %48

48:                                               ; preds = %45, %38, %38
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i32 40, i1 false) #13
  %49 = load ptr, ptr %39, align 32
  %50 = getelementptr inbounds %struct.net_packet_attrs, ptr %5, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.net_packet_attrs, ptr %5, i32 0, i32 9
  store i32 %52, ptr %53, align 4
  %54 = call fastcc i32 @__net_test_loopback(ptr noundef %0, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #13
  %55 = sext i32 %54 to i64
  %56 = getelementptr i64, ptr %2, i32 4
  store i64 %55, ptr %56, align 8
  switch i32 %54, label %57 [
    i32 0, label %60
    i32 -95, label %60
  ]

57:                                               ; preds = %48
  %58 = load i32, ptr %7, align 4
  %59 = or i32 %58, 2
  store i32 %59, ptr %7, align 4
  br label %60

60:                                               ; preds = %57, %48, %48
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false) #13
  %61 = load ptr, ptr %39, align 32
  %62 = getelementptr inbounds %struct.net_packet_attrs, ptr %4, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.net_packet_attrs, ptr %4, i32 0, i32 4
  store i8 1, ptr %63, align 4
  %64 = call fastcc i32 @__net_test_loopback(ptr noundef %0, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #13
  %65 = sext i32 %64 to i64
  %66 = getelementptr i64, ptr %2, i32 5
  store i64 %65, ptr %66, align 8
  switch i32 %64, label %67 [
    i32 0, label %70
    i32 -95, label %70
  ]

67:                                               ; preds = %60
  %68 = load i32, ptr %7, align 4
  %69 = or i32 %68, 2
  store i32 %69, ptr %7, align 4
  br label %70

70:                                               ; preds = %67, %60, %60
  %71 = load ptr, ptr %22, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = getelementptr i64, ptr %2, i32 6
  store i64 -95, ptr %74, align 8
  br label %82

75:                                               ; preds = %70
  %76 = tail call i32 @phy_loopback(ptr noundef nonnull %71, i1 noundef zeroext false) #13
  %77 = sext i32 %76 to i64
  %78 = getelementptr i64, ptr %2, i32 6
  store i64 %77, ptr %78, align 8
  switch i32 %76, label %79 [
    i32 0, label %82
    i32 -95, label %82
  ]

79:                                               ; preds = %75, %17
  %80 = load i32, ptr %7, align 4
  %81 = or i32 %80, 2
  store i32 %81, ptr %7, align 4
  br label %82

82:                                               ; preds = %79, %75, %75, %73
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @net_selftest_get_count() #2 {
  ret i32 7
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @net_selftest_get_strings(ptr nocapture noundef writeonly %0) #5 {
  %2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull @net_selftests)
  %3 = getelementptr i8, ptr %0, i32 32
  %4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef getelementptr inbounds ([7 x %struct.net_test], ptr @net_selftests, i32 0, i32 1))
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 3, ptr noundef getelementptr inbounds ([7 x %struct.net_test], ptr @net_selftests, i32 0, i32 2))
  %7 = getelementptr i8, ptr %0, i32 96
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 4, ptr noundef getelementptr inbounds ([7 x %struct.net_test], ptr @net_selftests, i32 0, i32 3))
  %9 = getelementptr i8, ptr %0, i32 128
  %10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %9, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 5, ptr noundef getelementptr inbounds ([7 x %struct.net_test], ptr @net_selftests, i32 0, i32 4))
  %11 = getelementptr i8, ptr %0, i32 160
  %12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 6, ptr noundef getelementptr inbounds ([7 x %struct.net_test], ptr @net_selftests, i32 0, i32 5))
  %13 = getelementptr i8, ptr %0, i32 192
  %14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef 7, ptr noundef getelementptr inbounds ([7 x %struct.net_test], ptr @net_selftests, i32 0, i32 6))
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @net_test_netif_carrier(ptr noundef %0) #7 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 0, i32 -67
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @net_test_phy_phydev(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, i32 -95, i32 0
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_test_phy_loopback_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @phy_loopback(ptr noundef nonnull %3, i1 noundef zeroext true) #13
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ -95, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_test_phy_loopback_udp(ptr noundef %0) #0 {
  %2 = alloca %struct.net_packet_attrs, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false)
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %4 = load ptr, ptr %3, align 32
  %5 = getelementptr inbounds %struct.net_packet_attrs, ptr %2, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = call fastcc i32 @__net_test_loopback(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_test_phy_loopback_udp_mtu(ptr noundef %0) #0 {
  %2 = alloca %struct.net_packet_attrs, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false)
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %4 = load ptr, ptr %3, align 32
  %5 = getelementptr inbounds %struct.net_packet_attrs, ptr %2, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_packet_attrs, ptr %2, i32 0, i32 9
  store i32 %7, ptr %8, align 4
  %9 = call fastcc i32 @__net_test_loopback(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #13
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_test_phy_loopback_tcp(ptr noundef %0) #0 {
  %2 = alloca %struct.net_packet_attrs, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false)
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %4 = load ptr, ptr %3, align 32
  %5 = getelementptr inbounds %struct.net_packet_attrs, ptr %2, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.net_packet_attrs, ptr %2, i32 0, i32 4
  store i8 1, ptr %6, align 4
  %7 = call fastcc i32 @__net_test_loopback(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_test_phy_loopback_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @phy_loopback(ptr noundef nonnull %3, i1 noundef zeroext false) #13
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ -95, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_loopback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__net_test_loopback(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 68) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %217, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.net_test_priv, ptr %4, i32 0, i32 5
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.net_test_priv, ptr %4, i32 0, i32 2
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.net_test_priv, ptr %4, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #13
  %10 = getelementptr inbounds %struct.net_test_priv, ptr %4, i32 0, i32 1
  store i16 8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.net_test_priv, ptr %4, i32 0, i32 1, i32 4
  store ptr @net_test_loopback_validate, ptr %11, align 4
  %12 = getelementptr inbounds %struct.net_test_priv, ptr %4, i32 0, i32 1, i32 2
  store ptr %0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.net_test_priv, ptr %4, i32 0, i32 1, i32 8
  store ptr %4, ptr %13, align 4
  store ptr %1, ptr %4, align 8
  tail call void @dev_add_pack(ptr noundef %10) #13
  %14 = getelementptr inbounds %struct.net_packet_attrs, ptr %1, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.net_packet_attrs, ptr %1, i32 0, i32 4
  %17 = load i8, ptr %16, align 4, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 55, i32 67
  %20 = add i32 %19, %15
  %21 = getelementptr inbounds %struct.net_packet_attrs, ptr %1, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = icmp sgt i32 %22, %20
  %25 = select i1 %23, i1 %24, i1 false
  %26 = select i1 %25, i32 %22, i32 %20
  %27 = tail call ptr @__netdev_alloc_skb(ptr noundef %0, i32 noundef %26, i32 noundef 2592) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %215, label %29

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #13, !srcloc !9
  %32 = tail call ptr @skb_push(ptr noundef nonnull %27, i32 noundef 14) #13
  %33 = load ptr, ptr %30, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 16
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %33 to i32
  %37 = ptrtoint ptr %35 to i32
  %38 = sub i32 %36, %37
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 13, i32 0, i32 19
  store i16 %39, ptr %40, align 2
  %41 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 13, i32 0, i32 18
  %44 = trunc i32 %42 to i16
  %45 = add i16 %39, %44
  store i16 %45, ptr %43, align 4
  %46 = tail call ptr @skb_put(ptr noundef nonnull %27, i32 noundef 20) #13
  %47 = load i32, ptr %41, align 8
  %48 = load ptr, ptr %30, align 4
  %49 = load ptr, ptr %34, align 8
  %50 = ptrtoint ptr %48 to i32
  %51 = ptrtoint ptr %49 to i32
  %52 = sub i32 %50, %51
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 13, i32 0, i32 17
  %55 = trunc i32 %47 to i16
  %56 = add i16 %53, %55
  store i16 %56, ptr %54, align 2
  %57 = load i8, ptr %16, align 4, !range !8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %29
  %60 = tail call ptr @skb_put(ptr noundef nonnull %27, i32 noundef 20) #13
  br label %63

61:                                               ; preds = %29
  %62 = tail call ptr @skb_put(ptr noundef nonnull %27, i32 noundef 8) #13
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi ptr [ null, %59 ], [ %62, %61 ]
  %65 = phi ptr [ %60, %59 ], [ null, %61 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %32, i8 0, i32 6, i1 false) #13
  %66 = load ptr, ptr %1, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.ethhdr, ptr %32, i32 0, i32 1
  %70 = load i32, ptr %66, align 4
  store i32 %70, ptr %69, align 4
  %71 = getelementptr i8, ptr %66, i32 4
  %72 = load i16, ptr %71, align 2
  %73 = getelementptr %struct.ethhdr, ptr %32, i32 0, i32 1, i32 4
  store i16 %72, ptr %73, align 2
  br label %74

74:                                               ; preds = %68, %63
  %75 = getelementptr inbounds %struct.net_packet_attrs, ptr %1, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %76, align 4
  store i32 %79, ptr %32, align 4
  %80 = getelementptr i8, ptr %76, i32 4
  %81 = load i16, ptr %80, align 2
  %82 = getelementptr i8, ptr %32, i32 4
  store i16 %81, ptr %82, align 2
  br label %83

83:                                               ; preds = %78, %74
  %84 = getelementptr inbounds %struct.ethhdr, ptr %32, i32 0, i32 2
  store i16 8, ptr %84, align 1
  %85 = load i8, ptr %16, align 4, !range !8
  %86 = icmp eq i8 %85, 0
  %87 = getelementptr inbounds %struct.net_packet_attrs, ptr %1, i32 0, i32 5
  %88 = load i16, ptr %87, align 2
  %89 = tail call i16 @llvm.bswap.i16(i16 %88) #13
  br i1 %86, label %100, label %90

90:                                               ; preds = %83
  store i16 %89, ptr %65, align 4
  %91 = getelementptr inbounds %struct.net_packet_attrs, ptr %1, i32 0, i32 6
  %92 = load i16, ptr %91, align 4
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #13
  %94 = getelementptr inbounds %struct.tcphdr, ptr %65, i32 0, i32 1
  store i16 %93, ptr %94, align 2
  %95 = getelementptr inbounds %struct.tcphdr, ptr %65, i32 0, i32 4
  %96 = load i16, ptr %95, align 4
  %97 = and i16 %96, -241
  %98 = or i16 %97, 80
  store i16 %98, ptr %95, align 4
  %99 = getelementptr inbounds %struct.tcphdr, ptr %65, i32 0, i32 6
  store i16 0, ptr %99, align 4
  br label %118

100:                                              ; preds = %83
  store i16 %89, ptr %64, align 2
  %101 = getelementptr inbounds %struct.net_packet_attrs, ptr %1, i32 0, i32 6
  %102 = load i16, ptr %101, align 4
  %103 = tail call i16 @llvm.bswap.i16(i16 %102) #13
  %104 = getelementptr inbounds %struct.udphdr, ptr %64, i32 0, i32 1
  store i16 %103, ptr %104, align 2
  %105 = load i32, ptr %14, align 4
  %106 = trunc i32 %105 to i16
  %107 = add i16 %106, 21
  %108 = tail call i16 @llvm.bswap.i16(i16 %107) #13
  %109 = getelementptr inbounds %struct.udphdr, ptr %64, i32 0, i32 2
  store i16 %108, ptr %109, align 2
  %110 = load i32, ptr %21, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %100
  %113 = trunc i32 %110 to i16
  %114 = add i16 %113, -34
  %115 = tail call i16 @llvm.bswap.i16(i16 %114) #13
  store i16 %115, ptr %109, align 2
  br label %116

116:                                              ; preds = %112, %100
  %117 = getelementptr inbounds %struct.udphdr, ptr %64, i32 0, i32 3
  store i16 0, ptr %117, align 2
  br label %118

118:                                              ; preds = %116, %90
  %119 = getelementptr inbounds %struct.iphdr, ptr %46, i32 0, i32 5
  store i8 32, ptr %119, align 4
  store i8 69, ptr %46, align 4
  %120 = load i8, ptr %16, align 4, !range !8
  %121 = icmp eq i8 %120, 0
  %122 = select i1 %121, i8 17, i8 6
  %123 = getelementptr inbounds %struct.iphdr, ptr %46, i32 0, i32 6
  store i8 %122, ptr %123, align 1
  %124 = load i32, ptr %14, align 4
  %125 = load i8, ptr %16, align 4, !range !8
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %126, i32 41, i32 53
  %128 = add i32 %127, %124
  %129 = load i32, ptr %21, align 4
  %130 = icmp eq i32 %129, 0
  %131 = add i32 %129, 65522
  %132 = select i1 %130, i32 %128, i32 %131
  %133 = trunc i32 %132 to i16
  %134 = tail call i16 @llvm.bswap.i16(i16 %133) #13
  %135 = getelementptr inbounds %struct.iphdr, ptr %46, i32 0, i32 2
  store i16 %134, ptr %135, align 2
  %136 = getelementptr inbounds %struct.iphdr, ptr %46, i32 0, i32 4
  store i16 0, ptr %136, align 2
  %137 = getelementptr inbounds %struct.net_packet_attrs, ptr %1, i32 0, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #13
  %140 = getelementptr inbounds %struct.iphdr, ptr %46, i32 0, i32 8
  store i32 %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.net_packet_attrs, ptr %1, i32 0, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #13
  %144 = getelementptr inbounds %struct.iphdr, ptr %46, i32 0, i32 9
  store i32 %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.iphdr, ptr %46, i32 0, i32 1
  store i8 0, ptr %145, align 1
  %146 = getelementptr inbounds %struct.iphdr, ptr %46, i32 0, i32 3
  store i16 0, ptr %146, align 4
  tail call void @ip_send_check(ptr noundef %46) #13
  %147 = tail call ptr @skb_put(ptr noundef nonnull %27, i32 noundef 13) #13
  store i32 0, ptr %147, align 1
  %148 = getelementptr inbounds %struct.netsfhdr, ptr %147, i32 0, i32 1
  store i64 -5918012712506708514, ptr %148, align 1
  %149 = load i8, ptr @net_test_next_id, align 1
  %150 = getelementptr inbounds %struct.net_packet_attrs, ptr %1, i32 0, i32 10
  store i8 %149, ptr %150, align 4
  %151 = add i8 %149, 1
  store i8 %151, ptr @net_test_next_id, align 1
  %152 = getelementptr inbounds %struct.netsfhdr, ptr %147, i32 0, i32 2
  store i8 %149, ptr %152, align 1
  %153 = load i32, ptr %14, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %118
  %156 = tail call ptr @skb_put(ptr noundef nonnull %27, i32 noundef %153) #13
  br label %157

157:                                              ; preds = %155, %118
  %158 = load i32, ptr %21, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %157
  %161 = load i32, ptr %41, align 8
  %162 = icmp ugt i32 %158, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = sub i32 %158, %161
  %165 = tail call ptr @skb_put(ptr noundef nonnull %27, i32 noundef %164) #13
  br label %166

166:                                              ; preds = %163, %160, %157
  %167 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 13, i32 0, i32 4
  store i32 0, ptr %167, align 4
  %168 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 13
  %169 = load i16, ptr %168, align 8
  %170 = or i16 %169, 96
  store i16 %170, ptr %168, align 8
  %171 = load i8, ptr %16, align 4, !range !8
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %187, label %173

173:                                              ; preds = %166
  %174 = load i32, ptr %41, align 8
  %175 = load i32, ptr %140, align 4
  %176 = load i32, ptr %144, align 4
  %177 = add i32 %174, 6
  %178 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %176, i32 %175, i32 %177) #15, !srcloc !10
  %179 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %178) #15, !srcloc !11
  %180 = xor i32 %179, -1
  %181 = lshr i32 %180, 16
  %182 = trunc i32 %181 to i16
  %183 = xor i16 %182, -1
  %184 = getelementptr inbounds %struct.tcphdr, ptr %65, i32 0, i32 6
  store i16 %183, ptr %184, align 4
  %185 = load i16, ptr %54, align 2
  store i16 %185, ptr %167, align 4
  %186 = getelementptr inbounds %struct.anon.146, ptr %167, i32 0, i32 1
  store i16 16, ptr %186, align 2
  br label %190

187:                                              ; preds = %166
  %188 = load i32, ptr %140, align 4
  %189 = load i32, ptr %144, align 4
  tail call void @udp4_hwcsum(ptr noundef nonnull %27, i32 noundef %188, i32 noundef %189) #13
  br label %190

190:                                              ; preds = %187, %173
  %191 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 13, i32 0, i32 16
  store i16 8, ptr %191, align 8
  %192 = load i16, ptr %168, align 8
  %193 = and i16 %192, -8
  store i16 %193, ptr %168, align 8
  %194 = getelementptr inbounds %struct.anon.0, ptr %27, i32 0, i32 2
  store ptr %0, ptr %194, align 8
  %195 = getelementptr inbounds %struct.net_packet_attrs, ptr %1, i32 0, i32 11
  %196 = load i16, ptr %195, align 2
  %197 = tail call i32 @__dev_direct_xmit(ptr noundef nonnull %27, i16 noundef zeroext %196) #13
  %198 = icmp slt i32 %197, 15
  br i1 %198, label %200, label %199

199:                                              ; preds = %190
  tail call void @kfree_skb_reason(ptr noundef nonnull %27, i32 noundef 0) #13
  br label %215

200:                                              ; preds = %190
  %201 = icmp slt i32 %197, 0
  br i1 %201, label %215, label %202

202:                                              ; preds = %200
  %203 = icmp eq i32 %197, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.net_packet_attrs, ptr %1, i32 0, i32 7
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  store i32 20, ptr %205, align 4
  br label %209

209:                                              ; preds = %208, %204
  %210 = phi i32 [ 20, %208 ], [ %206, %204 ]
  %211 = tail call i32 @wait_for_completion_timeout(ptr noundef %8, i32 noundef %210) #13
  %212 = load i32, ptr %7, align 8
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %213, i32 -110, i32 0
  br label %215

215:                                              ; preds = %209, %202, %200, %199, %6
  %216 = phi i32 [ %197, %200 ], [ %214, %209 ], [ -101, %202 ], [ -101, %199 ], [ -12, %6 ]
  tail call void @dev_remove_pack(ptr noundef %10) #13
  tail call void @kfree(ptr noundef nonnull %4) #13
  br label %217

217:                                              ; preds = %215, %2
  %218 = phi i32 [ %216, %215 ], [ -12, %2 ]
  ret i32 %218
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @net_test_loopback_validate(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.packet_type, ptr %2, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net_packet_attrs, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 10
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = tail call ptr @skb_copy(ptr noundef %0, i32 noundef 2592) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !12

25:                                               ; preds = %22
  tail call void @consume_skb(ptr noundef %0) #13
  br label %29

26:                                               ; preds = %22
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #13
  br label %142

27:                                               ; preds = %15, %4
  %28 = icmp eq ptr %0, null
  br i1 %28, label %142, label %29

29:                                               ; preds = %27, %25
  %30 = phi ptr [ %23, %25 ], [ %0, %27 ]
  %31 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %30, i32 noundef %32) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %142, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %31, align 4
  br label %39

39:                                               ; preds = %37, %29
  %40 = phi i32 [ %38, %37 ], [ 0, %29 ]
  %41 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = sub i32 %42, %40
  %44 = icmp ult i32 %43, 33
  br i1 %44, label %142, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 16
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 13, i32 0, i32 19
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %47, i32 %50
  %52 = icmp eq ptr %10, null
  br i1 %52, label %65, label %53

53:                                               ; preds = %45
  %54 = load i32, ptr %51, align 4
  %55 = load i32, ptr %10, align 4
  %56 = xor i32 %55, %54
  %57 = getelementptr i8, ptr %51, i32 4
  %58 = load i16, ptr %57, align 2
  %59 = getelementptr i8, ptr %10, i32 4
  %60 = load i16, ptr %59, align 2
  %61 = xor i16 %60, %58
  %62 = zext i16 %61 to i32
  %63 = or i32 %56, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %142

65:                                               ; preds = %53, %45
  %66 = icmp eq ptr %8, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.ethhdr, ptr %51, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = load i32, ptr %8, align 4
  %71 = xor i32 %70, %69
  %72 = getelementptr i8, ptr %68, i32 4
  %73 = load i16, ptr %72, align 2
  %74 = getelementptr i8, ptr %8, i32 4
  %75 = load i16, ptr %74, align 2
  %76 = xor i16 %75, %73
  %77 = zext i16 %76 to i32
  %78 = or i32 %71, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %142

80:                                               ; preds = %67, %65
  %81 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 13, i32 0, i32 18
  %82 = load i16, ptr %81, align 4
  %83 = zext i16 %82 to i32
  %84 = getelementptr i8, ptr %47, i32 %83
  %85 = getelementptr inbounds %struct.net_test_priv, ptr %6, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 0, i32 4
  %89 = getelementptr i8, ptr %84, i32 %88
  %90 = load ptr, ptr %6, align 4
  %91 = getelementptr inbounds %struct.net_packet_attrs, ptr %90, i32 0, i32 4
  %92 = load i8, ptr %91, align 4, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = getelementptr inbounds %struct.iphdr, ptr %89, i32 0, i32 6
  %95 = load i8, ptr %94, align 1
  br i1 %93, label %112, label %96

96:                                               ; preds = %80
  %97 = icmp eq i8 %95, 6
  br i1 %97, label %98, label %142

98:                                               ; preds = %96
  %99 = load i8, ptr %89, align 4
  %100 = shl i8 %99, 2
  %101 = and i8 %100, 60
  %102 = zext i8 %101 to i32
  %103 = getelementptr i8, ptr %89, i32 %102
  %104 = getelementptr inbounds %struct.tcphdr, ptr %103, i32 0, i32 1
  %105 = load i16, ptr %104, align 2
  %106 = getelementptr inbounds %struct.net_packet_attrs, ptr %90, i32 0, i32 6
  %107 = load i16, ptr %106, align 4
  %108 = tail call i16 @llvm.bswap.i16(i16 %107)
  %109 = icmp eq i16 %105, %108
  br i1 %109, label %110, label %142

110:                                              ; preds = %98
  %111 = getelementptr i8, ptr %103, i32 20
  br label %128

112:                                              ; preds = %80
  %113 = icmp eq i8 %95, 17
  br i1 %113, label %114, label %142

114:                                              ; preds = %112
  %115 = load i8, ptr %89, align 4
  %116 = shl i8 %115, 2
  %117 = and i8 %116, 60
  %118 = zext i8 %117 to i32
  %119 = getelementptr i8, ptr %89, i32 %118
  %120 = getelementptr inbounds %struct.udphdr, ptr %119, i32 0, i32 1
  %121 = load i16, ptr %120, align 2
  %122 = getelementptr inbounds %struct.net_packet_attrs, ptr %90, i32 0, i32 6
  %123 = load i16, ptr %122, align 4
  %124 = tail call i16 @llvm.bswap.i16(i16 %123)
  %125 = icmp eq i16 %121, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %114
  %127 = getelementptr i8, ptr %119, i32 8
  br label %128

128:                                              ; preds = %126, %110
  %129 = phi ptr [ %111, %110 ], [ %127, %126 ]
  %130 = getelementptr inbounds %struct.netsfhdr, ptr %129, i32 0, i32 1
  %131 = load i64, ptr %130, align 1
  %132 = icmp eq i64 %131, -5918012712506708514
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.net_packet_attrs, ptr %90, i32 0, i32 10
  %135 = load i8, ptr %134, align 4
  %136 = getelementptr inbounds %struct.netsfhdr, ptr %129, i32 0, i32 2
  %137 = load i8, ptr %136, align 1
  %138 = icmp eq i8 %135, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.net_test_priv, ptr %6, i32 0, i32 5
  store i32 1, ptr %140, align 4
  %141 = getelementptr inbounds %struct.net_test_priv, ptr %6, i32 0, i32 2
  tail call void @complete(ptr noundef %141) #13
  br label %142

142:                                              ; preds = %139, %133, %128, %114, %112, %98, %96, %67, %53, %39, %34, %27, %26
  %143 = phi ptr [ null, %26 ], [ %30, %133 ], [ %30, %128 ], [ %30, %114 ], [ %30, %112 ], [ %30, %98 ], [ %30, %96 ], [ %30, %67 ], [ %30, %53 ], [ %30, %39 ], [ null, %27 ], [ %30, %139 ], [ %30, %34 ]
  tail call void @kfree_skb_reason(ptr noundef %143, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp4_hwcsum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_direct_xmit(ptr noundef, i16 noundef zeroext) local_unnamed_addr #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 719981, i64 2148209952, i64 2148209978, i64 2148210025, i64 2148210047, i64 2148210075, i64 2148210095}
!10 = !{i64 5345147, i64 5345188, i64 5345274}
!11 = !{i64 5344045}
!12 = !{!"branch_weights", i32 1, i32 2000}
