; ModuleID = '/llk/IR/net/sunrpc/addr.c_pt.bc'
source_filename = "../net/sunrpc/addr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_ntop:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_ntop\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_ntop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_pton:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_pton\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_pton:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_uaddr2sockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_uaddr2sockaddr\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_uaddr2sockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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

@__kstrtab_rpc_ntop = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_ntop = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_ntop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_ntop to i32), ptr @__kstrtab_rpc_ntop, ptr @__kstrtabns_rpc_ntop }, section "___ksymtab_gpl+rpc_ntop", align 4
@__kstrtab_rpc_pton = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_pton = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_pton = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_pton to i32), ptr @__kstrtab_rpc_pton, ptr @__kstrtabns_rpc_pton }, section "___ksymtab_gpl+rpc_pton", align 4
@.str = private unnamed_addr constant [7 x i8] c".%u.%u\00", align 1
@__kstrtab_rpc_uaddr2sockaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_uaddr2sockaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_uaddr2sockaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_uaddr2sockaddr to i32), ptr @__kstrtab_rpc_uaddr2sockaddr, ptr @__kstrtabns_rpc_uaddr2sockaddr }, section "___ksymtab_gpl+rpc_uaddr2sockaddr", align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%c%u\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"::ffff:%pI4\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%pI6c\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_rpc_ntop, ptr @__ksymtab_rpc_pton, ptr @__ksymtab_rpc_uaddr2sockaddr], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_ntop(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca [12 x i8], align 1
  %5 = load i16, ptr %0, align 2
  switch i16 %5, label %31 [
    i16 2, label %6
    i16 10, label %9
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sockaddr_in, ptr %0, i32 0, i32 2
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.1, ptr noundef %7) #12
  br label %31

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %4, i8 0, i32 12, i1 false) #12, !annotation !9
  %10 = tail call fastcc i32 @rpc_ntop6_noscopeid(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %29, label %12, !prof !10

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 3
  %14 = tail call i32 @__ipv6_addr_type(ptr noundef %13) #12
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 12, ptr noundef nonnull @.str.2, i32 noundef 37, i32 noundef %19) #12
  %23 = icmp ugt i32 %22, 11
  br i1 %23, label %29, label %24, !prof !10

24:                                               ; preds = %21
  %25 = add i32 %22, %10
  %26 = icmp ult i32 %25, %2
  br i1 %26, label %27, label %29, !prof !11

27:                                               ; preds = %24
  %28 = call ptr @strcat(ptr noundef %1, ptr noundef nonnull %4) #12
  br label %29

29:                                               ; preds = %27, %24, %21, %17, %12, %9
  %30 = phi i32 [ %25, %27 ], [ 0, %9 ], [ %10, %12 ], [ %10, %17 ], [ 0, %21 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %31

31:                                               ; preds = %29, %6, %3
  %32 = phi i32 [ %30, %29 ], [ %8, %6 ], [ 0, %3 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_pton(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca [13 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %72, label %13

10:                                               ; preds = %13
  %11 = add nuw i32 %14, 1
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %72, label %13

13:                                               ; preds = %10, %5
  %14 = phi i32 [ %11, %10 ], [ 0, %5 ]
  %15 = getelementptr i8, ptr %1, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 58
  br i1 %17, label %18, label %10

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store ptr null, ptr %8, align 4, !annotation !9
  %19 = icmp ugt i32 %2, 60
  %20 = icmp ult i32 %4, 28
  %21 = or i1 %19, %20
  br i1 %21, label %70, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(28) %3, i8 0, i32 28, i1 false) #12
  %24 = call i32 @in6_pton(ptr noundef %1, i32 noundef %2, ptr noundef %23, i32 noundef 37, ptr noundef nonnull %8) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %70, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %6, i8 0, i32 13, i1 false) #12, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4
  %28 = getelementptr i8, ptr %1, i32 %2
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %69, label %30

30:                                               ; preds = %26
  %31 = load i8, ptr %27, align 1
  %32 = icmp eq i8 %31, 37
  br i1 %32, label %33, label %68

33:                                               ; preds = %30
  %34 = call i32 @__ipv6_addr_type(ptr noundef %23) #12
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %68, label %37

37:                                               ; preds = %33
  %38 = ptrtoint ptr %28 to i32
  %39 = ptrtoint ptr %27 to i32
  %40 = xor i32 %39, -1
  %41 = add i32 %40, %38
  %42 = icmp ugt i32 %41, 12
  br i1 %42, label %68, label %43

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %27, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %6, ptr align 1 %44, i32 %41, i1 false) #12
  %45 = getelementptr [13 x i8], ptr %6, i32 0, i32 %41
  store i8 0, ptr %45, align 1
  %46 = call ptr @dev_get_by_name(ptr noundef %0, ptr noundef nonnull %6) #12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 17
  %50 = load i32, ptr %49, align 4
  store i32 %50, ptr %7, align 4
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !12
  %52 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 99
  %53 = load ptr, ptr %52, align 8
  %54 = ptrtoint ptr %53 to i32
  %55 = call i32 @llvm.read_register.i32(metadata !0) #12
  %56 = inttoptr i32 %55 to ptr
  %57 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %56) #11, !srcloc !13
  %58 = add i32 %57, %54
  %59 = inttoptr i32 %58 to ptr
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, -1
  store i32 %61, ptr %59, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #12, !srcloc !14
  br label %65

62:                                               ; preds = %43
  %63 = call i32 @kstrtouint(ptr noundef nonnull %6, i32 noundef 10, ptr noundef nonnull %7) #12
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62, %48
  %66 = load i32, ptr %7, align 4
  %67 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 4
  store i32 %66, ptr %67, align 4
  br label %69

68:                                               ; preds = %62, %37, %33, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %6) #12
  br label %70

69:                                               ; preds = %65, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %6) #12
  store i16 10, ptr %3, align 4
  br label %70

70:                                               ; preds = %69, %68, %22, %18
  %71 = phi i32 [ 28, %69 ], [ 0, %18 ], [ 0, %22 ], [ 0, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %81

72:                                               ; preds = %10, %5
  %73 = icmp ugt i32 %2, 16
  %74 = icmp ult i32 %4, 16
  %75 = or i1 %73, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(16) %3, i8 0, i32 16, i1 false) #12
  %78 = tail call i32 @in4_pton(ptr noundef %1, i32 noundef %2, ptr noundef %77, i32 noundef 0, ptr noundef null) #12
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store i16 2, ptr %3, align 4
  br label %81

81:                                               ; preds = %80, %76, %72, %70
  %82 = phi i32 [ %71, %70 ], [ 16, %80 ], [ 0, %72 ], [ 0, %76 ]
  ret i32 %82
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @rpc_sockaddr2uaddr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [9 x i8], align 1
  %4 = alloca [57 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %3, i8 0, i32 9, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 57, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(57) %4, i8 0, i32 57, i1 false), !annotation !9
  %5 = load i16, ptr %0, align 2
  switch i16 %5, label %31 [
    i16 2, label %6
    i16 10, label %12
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sockaddr_in, ptr %0, i32 0, i32 2
  %8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 57, ptr noundef nonnull @.str.1, ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sockaddr_in, ptr %0, i32 0, i32 1
  br label %17

12:                                               ; preds = %2
  %13 = call fastcc i32 @rpc_ntop6_noscopeid(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 57)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 1
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %16, %15 ], [ %11, %10 ]
  %19 = load i16, ptr %18, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %21 = zext i16 %20 to i32
  %22 = lshr i32 %21, 8
  %23 = and i32 %21, 255
  %24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 9, ptr noundef nonnull @.str, i32 noundef %22, i32 noundef %23)
  %25 = icmp sgt i32 %24, 9
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = call i32 @strlcat(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 57) #12
  %28 = icmp ugt i32 %27, 57
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call noalias ptr @kstrdup(ptr noundef nonnull %4, i32 noundef %1) #12
  br label %31

31:                                               ; preds = %29, %26, %17, %12, %6, %2
  %32 = phi ptr [ %30, %29 ], [ null, %6 ], [ null, %12 ], [ null, %2 ], [ null, %17 ], [ null, %26 ]
  call void @llvm.lifetime.end.p0(i64 57, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %3) #12
  ret ptr %32
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rpc_ntop6_noscopeid(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, %5
  %9 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %8, %10
  %12 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.3)
  br label %32

18:                                               ; preds = %3
  %19 = xor i32 %13, 16777216
  %20 = or i32 %19, %11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.4)
  br label %32

24:                                               ; preds = %18
  %25 = xor i32 %10, -65536
  %26 = or i32 %25, %8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.5, ptr noundef %12)
  br label %32

30:                                               ; preds = %24
  %31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.6, ptr noundef %4)
  br label %32

32:                                               ; preds = %30, %28, %22, %16
  %33 = phi i32 [ %17, %16 ], [ %23, %22 ], [ %29, %28 ], [ %31, %30 ]
  ret i32 %33
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_uaddr2sockaddr(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca [61 x i8], align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 61, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(61) %6, i8 0, i32 61, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  store i8 0, ptr %7, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  store i8 0, ptr %8, align 1, !annotation !9
  %9 = icmp ugt i32 %2, 57
  br i1 %9, label %43, label %10

10:                                               ; preds = %5
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %6, ptr align 1 %1, i32 %2, i1 false)
  %11 = getelementptr [61 x i8], ptr %6, i32 0, i32 %2
  store i8 0, ptr %11, align 1
  %12 = call ptr @strrchr(ptr noundef nonnull %6, i32 noundef 46)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14, !prof !10

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %12, i32 1
  %16 = call i32 @kstrtou8(ptr noundef %15, i32 noundef 10, ptr noundef nonnull %7) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %43, !prof !11

18:                                               ; preds = %14
  store i8 0, ptr %12, align 1
  %19 = call ptr @strrchr(ptr noundef nonnull %6, i32 noundef 46)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21, !prof !10

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %19, i32 1
  %23 = call i32 @kstrtou8(ptr noundef %22, i32 noundef 10, ptr noundef nonnull %8) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43, !prof !11

25:                                               ; preds = %21
  %26 = load i8, ptr %8, align 1
  %27 = zext i8 %26 to i16
  %28 = shl nuw i16 %27, 8
  %29 = load i8, ptr %7, align 1
  %30 = zext i8 %29 to i16
  %31 = or i16 %28, %30
  store i8 0, ptr %19, align 1
  %32 = call i32 @strlen(ptr noundef nonnull %6)
  %33 = call i32 @rpc_pton(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %32, ptr noundef %3, i32 noundef %4)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %25
  %36 = load i16, ptr %3, align 2
  switch i16 %36, label %43 [
    i16 2, label %37
    i16 10, label %40
  ]

37:                                               ; preds = %35
  %38 = call i16 @llvm.bswap.i16(i16 %31)
  %39 = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 1
  store i16 %38, ptr %39, align 2
  br label %43

40:                                               ; preds = %35
  %41 = call i16 @llvm.bswap.i16(i16 %31)
  %42 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 1
  store i16 %41, ptr %42, align 2
  br label %43

43:                                               ; preds = %40, %37, %35, %25, %21, %18, %14, %10, %5
  %44 = phi i32 [ 28, %40 ], [ 16, %37 ], [ 0, %5 ], [ 0, %10 ], [ 0, %14 ], [ 0, %18 ], [ 0, %21 ], [ 0, %25 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %6) #12
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in6_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in4_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 567790, i64 567851}
!13 = !{i64 586490}
!14 = !{i64 570807}
