; ModuleID = '/llk/IR/net/core/utils.c_pt.bc'
source_filename = "../net/core/utils.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22net_ratelimit\22\09\09\09\09\09"
module asm "__kstrtabns_net_ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_in_aton:\09\09\09\09\09"
module asm "\09.asciz \09\22in_aton\22\09\09\09\09\09"
module asm "__kstrtabns_in_aton:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_in4_pton:\09\09\09\09\09"
module asm "\09.asciz \09\22in4_pton\22\09\09\09\09\09"
module asm "__kstrtabns_in4_pton:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_in6_pton:\09\09\09\09\09"
module asm "\09.asciz \09\22in6_pton\22\09\09\09\09\09"
module asm "__kstrtabns_in6_pton:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_pton_with_scope:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_pton_with_scope\22\09\09\09\09\09"
module asm "__kstrtabns_inet_pton_with_scope:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_addr_is_any:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_addr_is_any\22\09\09\09\09\09"
module asm "__kstrtabns_inet_addr_is_any:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_proto_csum_replace4:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_proto_csum_replace4\22\09\09\09\09\09"
module asm "__kstrtabns_inet_proto_csum_replace4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_proto_csum_replace16:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_proto_csum_replace16\22\09\09\09\09\09"
module asm "__kstrtabns_inet_proto_csum_replace16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_proto_csum_replace_by_diff:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_proto_csum_replace_by_diff\22\09\09\09\09\09"
module asm "__kstrtabns_inet_proto_csum_replace_by_diff:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.96 }
%union.anon.96 = type { [4 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.97, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.97 = type { ptr }
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
%struct.sk_buff = type { %union.anon.75, %union.anon.98, %union.anon.99, [48 x i8], %union.anon.100, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.102, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { i64 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i32, ptr }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.104, i32, i32, i32, i16, i16, %union.anon.106, %union.anon.107, %union.anon.108, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.104 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i16 }

@net_ratelimit_state = dso_local global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.net_ratelimit = private unnamed_addr constant [14 x i8] c"net_ratelimit\00", align 1
@__kstrtab_net_ratelimit = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_ratelimit = external dso_local constant [0 x i8], align 1
@__ksymtab_net_ratelimit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_ratelimit to i32), ptr @__kstrtab_net_ratelimit, ptr @__kstrtabns_net_ratelimit }, section "___ksymtab+net_ratelimit", align 4
@__kstrtab_in_aton = external dso_local constant [0 x i8], align 1
@__kstrtabns_in_aton = external dso_local constant [0 x i8], align 1
@__ksymtab_in_aton = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @in_aton to i32), ptr @__kstrtab_in_aton, ptr @__kstrtabns_in_aton }, section "___ksymtab+in_aton", align 4
@__kstrtab_in4_pton = external dso_local constant [0 x i8], align 1
@__kstrtabns_in4_pton = external dso_local constant [0 x i8], align 1
@__ksymtab_in4_pton = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @in4_pton to i32), ptr @__kstrtab_in4_pton, ptr @__kstrtabns_in4_pton }, section "___ksymtab+in4_pton", align 4
@__kstrtab_in6_pton = external dso_local constant [0 x i8], align 1
@__kstrtabns_in6_pton = external dso_local constant [0 x i8], align 1
@__ksymtab_in6_pton = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @in6_pton to i32), ptr @__kstrtab_in6_pton, ptr @__kstrtabns_in6_pton }, section "___ksymtab+in6_pton", align 4
@.str = private unnamed_addr constant [32 x i8] c"\013unexpected address family %d\0A\00", align 1
@__kstrtab_inet_pton_with_scope = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_pton_with_scope = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_pton_with_scope = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_pton_with_scope to i32), ptr @__kstrtab_inet_pton_with_scope, ptr @__kstrtabns_inet_pton_with_scope }, section "___ksymtab+inet_pton_with_scope", align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"\014unexpected address family %u\0A\00", align 1
@__kstrtab_inet_addr_is_any = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_addr_is_any = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_addr_is_any = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_addr_is_any to i32), ptr @__kstrtab_inet_addr_is_any, ptr @__kstrtabns_inet_addr_is_any }, section "___ksymtab+inet_addr_is_any", align 4
@__kstrtab_inet_proto_csum_replace4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_proto_csum_replace4 = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_proto_csum_replace4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_proto_csum_replace4 to i32), ptr @__kstrtab_inet_proto_csum_replace4, ptr @__kstrtabns_inet_proto_csum_replace4 }, section "___ksymtab+inet_proto_csum_replace4", align 4
@__kstrtab_inet_proto_csum_replace16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_proto_csum_replace16 = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_proto_csum_replace16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_proto_csum_replace16 to i32), ptr @__kstrtab_inet_proto_csum_replace16, ptr @__kstrtabns_inet_proto_csum_replace16 }, section "___ksymtab+inet_proto_csum_replace16", align 4
@__kstrtab_inet_proto_csum_replace_by_diff = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_proto_csum_replace_by_diff = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_proto_csum_replace_by_diff = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_proto_csum_replace_by_diff to i32), ptr @__kstrtab_inet_proto_csum_replace_by_diff, ptr @__kstrtabns_inet_proto_csum_replace_by_diff }, section "___ksymtab+inet_proto_csum_replace_by_diff", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_in4_pton, ptr @__ksymtab_in6_pton, ptr @__ksymtab_in_aton, ptr @__ksymtab_inet_addr_is_any, ptr @__ksymtab_inet_proto_csum_replace16, ptr @__ksymtab_inet_proto_csum_replace4, ptr @__ksymtab_inet_proto_csum_replace_by_diff, ptr @__ksymtab_inet_pton_with_scope, ptr @__ksymtab_net_ratelimit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @net_ratelimit() #0 {
  %1 = tail call i32 @___ratelimit(ptr noundef nonnull @net_ratelimit_state, ptr noundef nonnull @__func__.net_ratelimit) #12
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @in_aton(ptr nocapture noundef readonly %0) #2 {
  %2 = load i8, ptr %0, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %33, label %4

4:                                                ; preds = %8, %1
  %5 = phi i8 [ %14, %8 ], [ %2, %1 ]
  %6 = phi ptr [ %13, %8 ], [ %0, %1 ]
  %7 = phi i32 [ %12, %8 ], [ 0, %1 ]
  switch i8 %5, label %8 [
    i8 0, label %15
    i8 46, label %15
    i8 10, label %15
  ]

8:                                                ; preds = %4
  %9 = zext i8 %5 to i32
  %10 = mul i32 %7, 10
  %11 = add nsw i32 %9, -48
  %12 = add i32 %11, %10
  %13 = getelementptr i8, ptr %6, i32 1
  %14 = load i8, ptr %13, align 1
  br label %4

15:                                               ; preds = %4, %4, %4
  %16 = icmp ne i8 %5, 0
  %17 = zext i1 %16 to i32
  %18 = getelementptr i8, ptr %6, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = shl i32 %7, 8
  %21 = icmp eq i8 %19, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %26, %15
  %23 = phi i8 [ %32, %26 ], [ %19, %15 ]
  %24 = phi ptr [ %31, %26 ], [ %18, %15 ]
  %25 = phi i32 [ %30, %26 ], [ 0, %15 ]
  switch i8 %23, label %26 [
    i8 0, label %36
    i8 46, label %36
    i8 10, label %36
  ]

26:                                               ; preds = %22
  %27 = zext i8 %23 to i32
  %28 = mul i32 %25, 10
  %29 = add nsw i32 %27, -48
  %30 = add i32 %29, %28
  %31 = getelementptr i8, ptr %24, i32 1
  %32 = load i8, ptr %31, align 1
  br label %22

33:                                               ; preds = %15, %1
  %34 = phi i32 [ %20, %15 ], [ 0, %1 ]
  %35 = shl i32 %34, 8
  br label %55

36:                                               ; preds = %22, %22, %22
  %37 = or i32 %25, %20
  %38 = icmp ne i8 %23, 0
  %39 = zext i1 %38 to i32
  %40 = getelementptr i8, ptr %24, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = shl i32 %37, 8
  %43 = icmp eq i8 %41, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %48, %36
  %45 = phi i8 [ %54, %48 ], [ %41, %36 ]
  %46 = phi ptr [ %53, %48 ], [ %40, %36 ]
  %47 = phi i32 [ %52, %48 ], [ 0, %36 ]
  switch i8 %45, label %48 [
    i8 0, label %58
    i8 46, label %58
    i8 10, label %58
  ]

48:                                               ; preds = %44
  %49 = zext i8 %45 to i32
  %50 = mul i32 %47, 10
  %51 = add nsw i32 %49, -48
  %52 = add i32 %51, %50
  %53 = getelementptr i8, ptr %46, i32 1
  %54 = load i8, ptr %53, align 1
  br label %44

55:                                               ; preds = %36, %33
  %56 = phi i32 [ %35, %33 ], [ %42, %36 ]
  %57 = shl i32 %56, 8
  br label %79

58:                                               ; preds = %44, %44, %44
  %59 = or i32 %47, %42
  %60 = icmp ne i8 %45, 0
  %61 = zext i1 %60 to i32
  %62 = getelementptr i8, ptr %46, i32 %61
  %63 = load i8, ptr %62, align 1
  %64 = shl i32 %59, 8
  %65 = icmp eq i8 %63, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %72, %58
  %67 = phi i8 [ %78, %72 ], [ %63, %58 ]
  %68 = phi ptr [ %77, %72 ], [ %62, %58 ]
  %69 = phi i32 [ %76, %72 ], [ 0, %58 ]
  switch i8 %67, label %72 [
    i8 0, label %70
    i8 46, label %70
    i8 10, label %70
  ]

70:                                               ; preds = %66, %66, %66
  %71 = or i32 %69, %64
  br label %79

72:                                               ; preds = %66
  %73 = zext i8 %67 to i32
  %74 = mul i32 %69, 10
  %75 = add nsw i32 %73, -48
  %76 = add i32 %75, %74
  %77 = getelementptr i8, ptr %68, i32 1
  %78 = load i8, ptr %77, align 1
  br label %66

79:                                               ; preds = %70, %58, %55
  %80 = phi i32 [ %64, %58 ], [ %71, %70 ], [ %57, %55 ]
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  ret i32 %81
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @in4_pton(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr noundef writeonly %4) #0 {
  %6 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 @strlen(ptr noundef %0)
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %9, %8 ], [ %1, %5 ]
  %12 = icmp eq i32 %3, -1
  %13 = select i1 %12, i32 268435456, i32 1073741824
  br label %14

14:                                               ; preds = %60, %10
  %15 = phi i32 [ %11, %10 ], [ %65, %60 ]
  %16 = phi ptr [ %0, %10 ], [ %64, %60 ]
  %17 = phi ptr [ %6, %10 ], [ %63, %60 ]
  %18 = phi i32 [ 0, %10 ], [ %62, %60 ]
  %19 = phi i32 [ 0, %10 ], [ %61, %60 ]
  %20 = icmp sgt i32 %15, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %14
  %22 = load i8, ptr %16, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, %3
  %25 = icmp eq i8 %22, 0
  %26 = or i1 %25, %24
  br i1 %26, label %42, label %27

27:                                               ; preds = %21
  switch i8 %22, label %29 [
    i8 58, label %42
    i8 46, label %28
  ]

28:                                               ; preds = %27
  br label %42

29:                                               ; preds = %27
  %30 = tail call i32 @hex_to_bin(i8 noundef zeroext %22) #12
  %31 = icmp ult i32 %30, 10
  %32 = select i1 %31, i32 131072, i32 0
  %33 = or i32 %30, %32
  %34 = or i32 %33, 65536
  %35 = icmp slt i32 %30, 0
  %36 = select i1 %35, i32 %13, i32 %34
  %37 = and i32 %36, 284295168
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %68, label %39

39:                                               ; preds = %29
  %40 = and i32 %36, 284164096
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %39, %28, %27, %21, %14
  %43 = phi i32 [ %36, %39 ], [ 268435456, %14 ], [ 8388608, %28 ], [ 268435456, %21 ], [ 7340032, %27 ]
  %44 = icmp eq i32 %19, 0
  br i1 %44, label %68, label %45

45:                                               ; preds = %42
  %46 = trunc i32 %19 to i8
  store i8 %46, ptr %17, align 1
  %47 = add i32 %18, 1
  %48 = and i32 %43, 275775488
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = icmp eq i32 %47, 4
  br i1 %51, label %66, label %68

52:                                               ; preds = %39
  %53 = mul i32 %19, 10
  %54 = add i32 %36, %53
  %55 = and i32 %54, 65280
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %68

57:                                               ; preds = %45
  %58 = getelementptr i8, ptr %17, i32 1
  %59 = icmp sgt i32 %47, 3
  br i1 %59, label %68, label %60

60:                                               ; preds = %57, %52
  %61 = phi i32 [ 0, %57 ], [ %54, %52 ]
  %62 = phi i32 [ %47, %57 ], [ %18, %52 ]
  %63 = phi ptr [ %58, %57 ], [ %17, %52 ]
  %64 = getelementptr i8, ptr %16, i32 1
  %65 = add i32 %15, -1
  br label %14

66:                                               ; preds = %50
  %67 = load i32, ptr %6, align 4
  store i32 %67, ptr %2, align 1
  br label %68

68:                                               ; preds = %66, %57, %52, %50, %42, %29
  %69 = phi i32 [ 1, %66 ], [ 0, %50 ], [ 0, %29 ], [ 0, %42 ], [ 0, %52 ], [ 0, %57 ]
  %70 = icmp eq ptr %4, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store ptr %16, ptr %4, align 4
  br label %72

72:                                               ; preds = %71, %68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret i32 %69
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @in6_pton(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr noundef writeonly %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %0, ptr %6, align 4
  %8 = icmp slt i32 %1, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 @strlen(ptr noundef %0)
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ %1, %5 ]
  %13 = icmp eq i32 %3, -1
  %14 = select i1 %13, i32 268435456, i32 1073741824
  %15 = ptrtoint ptr %7 to i32
  %16 = getelementptr inbounds i8, ptr %7, i32 16
  br label %17

17:                                               ; preds = %109, %11
  %18 = phi ptr [ %0, %11 ], [ %127, %109 ]
  %19 = phi i32 [ %12, %11 ], [ %128, %109 ]
  %20 = phi ptr [ null, %11 ], [ %111, %109 ]
  %21 = phi ptr [ %7, %11 ], [ %112, %109 ]
  %22 = phi ptr [ null, %11 ], [ %113, %109 ]
  %23 = phi i32 [ 541130752, %11 ], [ %126, %109 ]
  %24 = phi i32 [ 0, %11 ], [ %115, %109 ]
  %25 = icmp sgt i32 %19, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %17
  %27 = load i8, ptr %18, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, %3
  %30 = icmp eq i8 %27, 0
  %31 = or i1 %30, %29
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  switch i8 %27, label %34 [
    i8 58, label %42
    i8 46, label %33
  ]

33:                                               ; preds = %32
  br label %42

34:                                               ; preds = %32
  %35 = call i32 @hex_to_bin(i8 noundef zeroext %27) #12
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = icmp ult i32 %35, 10
  %39 = select i1 %38, i32 131072, i32 0
  %40 = or i32 %35, %39
  %41 = or i32 %40, 65536
  br label %42

42:                                               ; preds = %37, %34, %33, %32, %26, %17
  %43 = phi i32 [ 8388608, %33 ], [ %41, %37 ], [ 268435456, %26 ], [ 7340032, %32 ], [ 268435456, %17 ], [ %14, %34 ]
  %44 = and i32 %43, %23
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %166, label %46

46:                                               ; preds = %42
  %47 = and i32 %43, 275775488
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %79, label %49

49:                                               ; preds = %46
  %50 = and i32 %23, 536870912
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = lshr i32 %24, 8
  %54 = trunc i32 %53 to i8
  %55 = getelementptr i8, ptr %21, i32 1
  store i8 %54, ptr %21, align 1
  %56 = trunc i32 %24 to i8
  %57 = getelementptr i8, ptr %21, i32 2
  store i8 %56, ptr %55, align 1
  br label %58

58:                                               ; preds = %52, %49
  %59 = phi ptr [ %21, %49 ], [ %57, %52 ]
  %60 = and i32 %43, 268435456
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %129

62:                                               ; preds = %58
  %63 = and i32 %23, 7340032
  %64 = add nsw i32 %63, -1048576
  %65 = lshr exact i32 %64, 20
  switch i32 %65, label %73 [
    i32 1, label %66
    i32 4, label %74
    i32 0, label %71
    i32 3, label %72
  ]

66:                                               ; preds = %62
  %67 = ptrtoint ptr %59 to i32
  %68 = sub i32 %67, %15
  %69 = icmp ugt i32 %68, 15
  %70 = select i1 %69, i32 805371904, i32 268500992
  br label %74

71:                                               ; preds = %62
  br label %74

72:                                               ; preds = %62
  br label %74

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %72, %71, %66, %62
  %75 = phi ptr [ %22, %73 ], [ %22, %72 ], [ %22, %71 ], [ %59, %66 ], [ %22, %62 ]
  %76 = phi i32 [ 0, %73 ], [ 2097152, %72 ], [ 65536, %71 ], [ %70, %66 ], [ 2162688, %62 ]
  %77 = load ptr, ptr %6, align 4
  %78 = getelementptr i8, ptr %77, i32 1
  br label %109

79:                                               ; preds = %46
  %80 = and i32 %43, 8388608
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %79
  %83 = icmp eq ptr %20, null
  %84 = select i1 %83, ptr %18, ptr %20
  %85 = ptrtoint ptr %18 to i32
  %86 = ptrtoint ptr %20 to i32
  %87 = sub i32 %19, %86
  %88 = add i32 %87, %85
  %89 = call i32 @in4_pton(ptr noundef %84, i32 noundef %88, ptr noundef %21, i32 noundef %3, ptr noundef nonnull %6)
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %166

91:                                               ; preds = %82
  %92 = getelementptr i8, ptr %21, i32 4
  br label %129

93:                                               ; preds = %79
  %94 = shl i32 %24, 4
  %95 = and i32 %43, 255
  %96 = or i32 %95, %94
  %97 = and i32 %24, 3840
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 269549568, i32 269484032
  %100 = icmp eq ptr %22, null
  %101 = getelementptr i8, ptr %21, i32 2
  %102 = icmp ult ptr %101, %16
  %103 = select i1 %100, i1 %102, i1 false
  %104 = and i32 %99, 1114112
  %105 = or i32 %104, 4194304
  %106 = select i1 %103, i32 %105, i32 %99
  %107 = and i32 %106, 268500992
  %108 = select i1 %102, i32 %106, i32 %107
  br label %109

109:                                              ; preds = %93, %74
  %110 = phi ptr [ %77, %74 ], [ %18, %93 ]
  %111 = phi ptr [ %78, %74 ], [ %20, %93 ]
  %112 = phi ptr [ %59, %74 ], [ %21, %93 ]
  %113 = phi ptr [ %75, %74 ], [ %22, %93 ]
  %114 = phi i32 [ %76, %74 ], [ %108, %93 ]
  %115 = phi i32 [ 0, %74 ], [ %96, %93 ]
  %116 = icmp ne ptr %113, null
  %117 = getelementptr i8, ptr %112, i32 4
  %118 = icmp ult ptr %117, %16
  %119 = select i1 %116, i1 %118, i1 false
  %120 = icmp eq ptr %117, %16
  %121 = select i1 %119, i1 true, i1 %120
  %122 = or i32 %114, 8388608
  %123 = select i1 %121, i32 %122, i32 %114
  %124 = icmp ult ptr %112, %16
  %125 = and i32 %123, -7405569
  %126 = select i1 %124, i32 %123, i32 %125
  %127 = getelementptr i8, ptr %110, i32 1
  store ptr %127, ptr %6, align 4
  %128 = add i32 %19, -1
  br label %17

129:                                              ; preds = %91, %58
  %130 = phi ptr [ %92, %91 ], [ %59, %58 ]
  %131 = icmp eq ptr %22, null
  br i1 %131, label %165, label %132

132:                                              ; preds = %129
  %133 = getelementptr i8, ptr %130, i32 -1
  %134 = icmp ult ptr %133, %22
  br i1 %134, label %135, label %141

135:                                              ; preds = %141, %132
  %136 = phi i32 [ 15, %132 ], [ %145, %141 ]
  %137 = phi ptr [ %133, %132 ], [ %147, %141 ]
  %138 = ptrtoint ptr %22 to i32
  %139 = sub i32 %138, %15
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %149, label %152

141:                                              ; preds = %141, %132
  %142 = phi ptr [ %147, %141 ], [ %133, %132 ]
  %143 = phi i32 [ %145, %141 ], [ 15, %132 ]
  %144 = load i8, ptr %142, align 1
  %145 = add i32 %143, -1
  %146 = getelementptr i8, ptr %2, i32 %143
  store i8 %144, ptr %146, align 1
  %147 = getelementptr i8, ptr %142, i32 -1
  %148 = icmp ult ptr %147, %22
  br i1 %148, label %135, label %141

149:                                              ; preds = %152, %135
  %150 = phi i32 [ %136, %135 ], [ %154, %152 ]
  %151 = icmp sgt i32 %150, -1
  br i1 %151, label %157, label %166

152:                                              ; preds = %152, %135
  %153 = phi i32 [ %154, %152 ], [ %136, %135 ]
  %154 = add i32 %153, -1
  %155 = getelementptr i8, ptr %2, i32 %153
  store i8 0, ptr %155, align 1
  %156 = icmp slt i32 %154, %139
  br i1 %156, label %149, label %152

157:                                              ; preds = %157, %149
  %158 = phi i32 [ %162, %157 ], [ %150, %149 ]
  %159 = phi ptr [ %160, %157 ], [ %137, %149 ]
  %160 = getelementptr i8, ptr %159, i32 -1
  %161 = load i8, ptr %159, align 1
  %162 = add nsw i32 %158, -1
  %163 = getelementptr i8, ptr %2, i32 %158
  store i8 %161, ptr %163, align 1
  %164 = icmp eq i32 %158, 0
  br i1 %164, label %166, label %157

165:                                              ; preds = %129
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %7, i32 16, i1 false)
  br label %166

166:                                              ; preds = %165, %157, %149, %82, %42
  %167 = phi i32 [ 1, %165 ], [ 0, %82 ], [ 1, %149 ], [ 1, %157 ], [ 0, %42 ]
  %168 = icmp eq ptr %4, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = load ptr, ptr %6, align 4
  store ptr %170, ptr %4, align 4
  br label %171

171:                                              ; preds = %169, %166
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_pton_with_scope(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2, !annotation !9
  %7 = icmp eq ptr %3, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = call i32 @kstrtou16(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %6) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %8, %5
  switch i16 %1, label %42 [
    i16 2, label %12
    i16 10, label %23
    i16 0, label %26
  ]

12:                                               ; preds = %11
  %13 = load i16, ptr %6, align 2
  %14 = call i32 @strlen(ptr noundef %2) #12
  %15 = icmp sgt i32 %14, 16
  br i1 %15, label %45, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %18 = call i32 @in4_pton(ptr noundef %2, i32 noundef %14, ptr noundef %17, i32 noundef 10, ptr noundef null) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %16
  store i16 2, ptr %4, align 4
  %21 = call i16 @llvm.bswap.i16(i16 %13) #12
  %22 = getelementptr inbounds %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %21, ptr %22, align 2
  br label %45

23:                                               ; preds = %11
  %24 = load i16, ptr %6, align 2
  %25 = call fastcc i32 @inet6_pton(ptr noundef %0, ptr noundef %2, i16 noundef zeroext %24, ptr noundef %4)
  br label %45

26:                                               ; preds = %11
  %27 = load i16, ptr %6, align 2
  %28 = call i32 @strlen(ptr noundef %2) #12
  %29 = icmp sgt i32 %28, 16
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %32 = call i32 @in4_pton(ptr noundef %2, i32 noundef %28, ptr noundef %31, i32 noundef 10, ptr noundef null) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i16, ptr %6, align 2
  br label %39

36:                                               ; preds = %30
  store i16 2, ptr %4, align 4
  %37 = call i16 @llvm.bswap.i16(i16 %27) #12
  %38 = getelementptr inbounds %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %37, ptr %38, align 2
  br label %45

39:                                               ; preds = %34, %26
  %40 = phi i16 [ %35, %34 ], [ %27, %26 ]
  %41 = call fastcc i32 @inet6_pton(ptr noundef %0, ptr noundef %2, i16 noundef zeroext %40, ptr noundef %4)
  br label %45

42:                                               ; preds = %11
  %43 = zext i16 %1 to i32
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %43) #13
  br label %45

45:                                               ; preds = %42, %39, %36, %23, %20, %16, %12, %8
  %46 = phi i32 [ -22, %8 ], [ -22, %42 ], [ %41, %39 ], [ 0, %36 ], [ %25, %23 ], [ 0, %20 ], [ -22, %12 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet6_pton(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !9
  %7 = tail call i32 @strlen(ptr noundef %1)
  %8 = icmp sgt i32 %7, 48
  br i1 %8, label %58, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 3
  %11 = call i32 @in6_pton(ptr noundef %1, i32 noundef %7, ptr noundef %10, i32 noundef 37, ptr noundef nonnull %5)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %58, label %13

13:                                               ; preds = %9
  %14 = call i32 @__ipv6_addr_type(ptr noundef %10) #12
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %1, i32 %7
  %19 = load ptr, ptr %5, align 4
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %55, label %21

21:                                               ; preds = %17
  %22 = load i8, ptr %19, align 1
  %23 = icmp eq i8 %22, 37
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !9
  %25 = ptrtoint ptr %18 to i32
  %26 = ptrtoint ptr %19 to i32
  %27 = xor i32 %26, -1
  %28 = add i32 %27, %25
  %29 = call i32 @llvm.umin.i32(i32 %28, i32 15)
  %30 = getelementptr i8, ptr %19, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %6, ptr align 1 %30, i32 %29, i1 false)
  %31 = getelementptr [16 x i8], ptr %6, i32 0, i32 %29
  store i8 0, ptr %31, align 1
  %32 = call ptr @dev_get_by_name(ptr noundef %0, ptr noundef nonnull %6) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 17
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  %38 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !10
  %39 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 99
  %40 = load ptr, ptr %39, align 8
  %41 = ptrtoint ptr %40 to i32
  %42 = call i32 @llvm.read_register.i32(metadata !0) #12
  %43 = inttoptr i32 %42 to ptr
  %44 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %43) #10, !srcloc !11
  %45 = add i32 %44, %41
  %46 = inttoptr i32 %45 to ptr
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -1
  store i32 %48, ptr %46, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #12, !srcloc !12
  br label %54

49:                                               ; preds = %24
  %50 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 4
  %51 = call i32 @kstrtouint(ptr noundef nonnull %6, i32 noundef 0, ptr noundef %50) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %58

54:                                               ; preds = %49, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %55

55:                                               ; preds = %54, %21, %17, %13
  store i16 10, ptr %3, align 4
  %56 = call i16 @llvm.bswap.i16(i16 %2)
  %57 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 1
  store i16 %56, ptr %57, align 2
  br label %58

58:                                               ; preds = %55, %53, %9, %4
  %59 = phi i32 [ 0, %55 ], [ -22, %53 ], [ -22, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %59
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @inet_addr_is_any(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.sockaddr_in6, align 4
  %3 = load i16, ptr %0, align 2
  switch i16 %3, label %13 [
    i16 10, label %4
    i16 2, label %9
  ]

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false)
  %5 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.sockaddr_in6, ptr %2, i32 0, i32 3
  %7 = call i32 @bcmp(ptr noundef dereferenceable(16) %5, ptr noundef dereferenceable(16) %6, i32 16)
  %8 = icmp eq i32 %7, 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #12
  br i1 %8, label %17, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sockaddr_in, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %16

13:                                               ; preds = %1
  %14 = zext i16 %3 to i32
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %14) #13
  br label %16

16:                                               ; preds = %13, %9, %4
  br label %17

17:                                               ; preds = %16, %9, %4
  %18 = phi i1 [ true, %4 ], [ false, %16 ], [ true, %9 ]
  ret i1 %18
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_proto_csum_replace4(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #9 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 96
  %9 = icmp eq i16 %8, 96
  br i1 %9, label %44, label %10

10:                                               ; preds = %5
  %11 = load i16, ptr %0, align 2
  %12 = zext i16 %11 to i32
  %13 = xor i32 %12, -1
  %14 = xor i32 %2, -1
  %15 = add i32 %13, %14
  %16 = icmp ult i32 %15, %14
  %17 = zext i1 %16 to i32
  %18 = add i32 %15, %3
  %19 = add i32 %18, %17
  %20 = icmp ult i32 %19, %3
  %21 = zext i1 %20 to i32
  %22 = add i32 %19, %21
  %23 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %22) #14, !srcloc !13
  %24 = xor i32 %23, -1
  %25 = lshr i32 %24, 16
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr %0, align 2
  %27 = load i16, ptr %6, align 8
  %28 = and i16 %27, 96
  %29 = icmp eq i16 %28, 64
  %30 = and i1 %29, %4
  br i1 %30, label %31, label %62

31:                                               ; preds = %10
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %33, -1
  %35 = add i32 %34, %14
  %36 = icmp ult i32 %35, %14
  %37 = zext i1 %36 to i32
  %38 = add i32 %35, %3
  %39 = add i32 %38, %37
  %40 = icmp ult i32 %39, %3
  %41 = zext i1 %40 to i32
  %42 = add i32 %39, %41
  %43 = xor i32 %42, -1
  store i32 %43, ptr %32, align 4
  br label %62

44:                                               ; preds = %5
  br i1 %4, label %45, label %62

45:                                               ; preds = %44
  %46 = load i16, ptr %0, align 2
  %47 = zext i16 %46 to i32
  %48 = xor i32 %2, -1
  %49 = add i32 %47, %48
  %50 = icmp ult i32 %49, %48
  %51 = zext i1 %50 to i32
  %52 = add i32 %49, %3
  %53 = add i32 %52, %51
  %54 = icmp ult i32 %53, %3
  %55 = zext i1 %54 to i32
  %56 = add i32 %53, %55
  %57 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %56) #14, !srcloc !13
  %58 = xor i32 %57, -1
  %59 = lshr i32 %58, 16
  %60 = trunc i32 %59 to i16
  %61 = xor i16 %60, -1
  store i16 %61, ptr %0, align 2
  br label %62

62:                                               ; preds = %45, %44, %31, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_proto_csum_replace16(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i1 noundef zeroext %4) #0 {
  %6 = alloca [8 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #12
  %7 = load i32, ptr %2, align 4
  %8 = xor i32 %7, -1
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds i32, ptr %6, i32 1
  %10 = getelementptr i32, ptr %2, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = xor i32 %11, -1
  store i32 %12, ptr %9, align 4
  %13 = getelementptr inbounds i32, ptr %6, i32 2
  %14 = getelementptr i32, ptr %2, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %15, -1
  store i32 %16, ptr %13, align 4
  %17 = getelementptr inbounds i32, ptr %6, i32 3
  %18 = getelementptr i32, ptr %2, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = xor i32 %19, -1
  store i32 %20, ptr %17, align 4
  %21 = getelementptr inbounds i32, ptr %6, i32 4
  %22 = load i32, ptr %3, align 4
  store i32 %22, ptr %21, align 4
  %23 = getelementptr inbounds i32, ptr %6, i32 5
  %24 = getelementptr i32, ptr %3, i32 1
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds i32, ptr %6, i32 6
  %27 = getelementptr i32, ptr %3, i32 2
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds i32, ptr %6, i32 7
  %30 = getelementptr i32, ptr %3, i32 3
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %33 = load i16, ptr %32, align 8
  %34 = and i16 %33, 96
  %35 = icmp eq i16 %34, 96
  br i1 %35, label %45, label %36

36:                                               ; preds = %5
  %37 = load i16, ptr %0, align 2
  %38 = zext i16 %37 to i32
  %39 = xor i32 %38, -1
  %40 = call i32 @csum_partial(ptr noundef nonnull %6, i32 noundef 32, i32 noundef %39) #12
  %41 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %40) #14, !srcloc !13
  %42 = xor i32 %41, -1
  %43 = lshr i32 %42, 16
  %44 = trunc i32 %43 to i16
  br label %55

45:                                               ; preds = %5
  br i1 %4, label %46, label %57

46:                                               ; preds = %45
  %47 = load i16, ptr %0, align 2
  %48 = zext i16 %47 to i32
  %49 = call i32 @csum_partial(ptr noundef nonnull %6, i32 noundef 32, i32 noundef %48) #12
  %50 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %49) #14, !srcloc !13
  %51 = xor i32 %50, -1
  %52 = lshr i32 %51, 16
  %53 = trunc i32 %52 to i16
  %54 = xor i16 %53, -1
  br label %55

55:                                               ; preds = %46, %36
  %56 = phi i16 [ %54, %46 ], [ %44, %36 ]
  store i16 %56, ptr %0, align 2
  br label %57

57:                                               ; preds = %55, %45
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_proto_csum_replace_by_diff(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i1 noundef zeroext %3) #9 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 96
  %8 = icmp eq i16 %7, 96
  br i1 %8, label %34, label %9

9:                                                ; preds = %4
  %10 = load i16, ptr %0, align 2
  %11 = zext i16 %10 to i32
  %12 = xor i32 %11, -1
  %13 = add i32 %12, %2
  %14 = icmp ult i32 %13, %12
  %15 = zext i1 %14 to i32
  %16 = add i32 %13, %15
  %17 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %16) #14, !srcloc !13
  %18 = xor i32 %17, -1
  %19 = lshr i32 %18, 16
  %20 = trunc i32 %19 to i16
  store i16 %20, ptr %0, align 2
  %21 = load i16, ptr %5, align 8
  %22 = and i16 %21, 96
  %23 = icmp eq i16 %22, 64
  %24 = and i1 %23, %3
  br i1 %24, label %25, label %47

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, -1
  %29 = add i32 %28, %2
  %30 = icmp ult i32 %29, %28
  %31 = zext i1 %30 to i32
  %32 = add i32 %29, %31
  %33 = xor i32 %32, -1
  store i32 %33, ptr %26, align 4
  br label %47

34:                                               ; preds = %4
  br i1 %3, label %35, label %47

35:                                               ; preds = %34
  %36 = load i16, ptr %0, align 2
  %37 = zext i16 %36 to i32
  %38 = add i32 %37, %2
  %39 = icmp ult i32 %38, %37
  %40 = zext i1 %39 to i32
  %41 = add i32 %38, %40
  %42 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %41) #14, !srcloc !13
  %43 = xor i32 %42, -1
  %44 = lshr i32 %43, 16
  %45 = trunc i32 %44 to i16
  %46 = xor i16 %45, -1
  store i16 %46, ptr %0, align 2
  br label %47

47:                                               ; preds = %35, %34, %25, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

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
!10 = !{i64 457365, i64 457426}
!11 = !{i64 476065}
!12 = !{i64 460382}
!13 = !{i64 5529700}
