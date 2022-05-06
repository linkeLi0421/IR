; ModuleID = '/llk/IR/drivers/net/can/dev/skb.c_pt.bc'
source_filename = "../drivers/net/can/dev/skb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_put_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22can_put_echo_skb\22\09\09\09\09\09"
module asm "__kstrtabns_can_put_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_get_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22can_get_echo_skb\22\09\09\09\09\09"
module asm "__kstrtabns_can_get_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_free_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22can_free_echo_skb\22\09\09\09\09\09"
module asm "__kstrtabns_can_free_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_can_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_can_skb\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_can_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_canfd_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_canfd_skb\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_canfd_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_can_err_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_can_err_skb\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_can_err_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.130, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
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
%union.anon.130 = type { ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.101, [48 x i8], %union.anon.102, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.104, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { i32, ptr }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.106, i32, i32, i32, i16, i16, %union.anon.108, %union.anon.109, %union.anon.110, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.106 = type { i32 }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i16 }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.93, [0 x i32], %union.anon.94, i16, i16, %union.anon.95, %struct.refcount_struct, [0 x i32], %union.anon.96 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.93 = type { i32 }
%union.anon.94 = type { %struct.hlist_node }
%union.anon.95 = type { i32 }
%union.anon.96 = type { i32 }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.135, i8, i8, i8, [8 x i8] }
%union.anon.135 = type { i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }

@.str = private unnamed_addr constant [35 x i8] c"%s: BUG! echo_skb %d is occupied!\0A\00", align 1
@__func__.can_put_echo_skb = private unnamed_addr constant [17 x i8] c"can_put_echo_skb\00", align 1
@__kstrtab_can_put_echo_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_put_echo_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_can_put_echo_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_put_echo_skb to i32), ptr @__kstrtab_can_put_echo_skb, ptr @__kstrtabns_can_put_echo_skb }, section "___ksymtab_gpl+can_put_echo_skb", align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"%s: BUG! Trying to access can_priv::echo_skb out of bounds (%u/max %u)\0A\00", align 1
@__func__.__can_get_echo_skb = private unnamed_addr constant [19 x i8] c"__can_get_echo_skb\00", align 1
@__kstrtab_can_get_echo_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_get_echo_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_can_get_echo_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_get_echo_skb to i32), ptr @__kstrtab_can_get_echo_skb, ptr @__kstrtabns_can_get_echo_skb }, section "___ksymtab_gpl+can_get_echo_skb", align 4
@__func__.can_free_echo_skb = private unnamed_addr constant [18 x i8] c"can_free_echo_skb\00", align 1
@__kstrtab_can_free_echo_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_free_echo_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_can_free_echo_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_free_echo_skb to i32), ptr @__kstrtab_can_free_echo_skb, ptr @__kstrtabns_can_free_echo_skb }, section "___ksymtab_gpl+can_free_echo_skb", align 4
@__kstrtab_alloc_can_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_can_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_can_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_can_skb to i32), ptr @__kstrtab_alloc_can_skb, ptr @__kstrtabns_alloc_can_skb }, section "___ksymtab_gpl+alloc_can_skb", align 4
@__kstrtab_alloc_canfd_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_canfd_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_canfd_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_canfd_skb to i32), ptr @__kstrtab_alloc_canfd_skb, ptr @__kstrtabns_alloc_canfd_skb }, section "___ksymtab_gpl+alloc_canfd_skb", align 4
@__kstrtab_alloc_can_err_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_can_err_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_can_err_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_can_err_skb to i32), ptr @__kstrtab_alloc_can_err_skb, ptr @__kstrtabns_alloc_can_err_skb }, section "___ksymtab_gpl+alloc_can_err_skb", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_alloc_can_err_skb, ptr @__ksymtab_alloc_can_skb, ptr @__ksymtab_alloc_canfd_skb, ptr @__ksymtab_can_free_echo_skb, ptr @__ksymtab_can_get_echo_skb, ptr @__ksymtab_can_put_echo_skb], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_flush_echo_skb(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1568
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 1572
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 7
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 16
  br label %9

9:                                                ; preds = %24, %5
  %10 = phi i32 [ %3, %5 ], [ %25, %24 ]
  %11 = phi i32 [ 0, %5 ], [ %26, %24 ]
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr ptr, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  tail call void @kfree_skb_reason(ptr noundef nonnull %14, i32 noundef 0) #4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr ptr, ptr %17, i32 %11
  store ptr null, ptr %18, align 4
  %19 = load i32, ptr %7, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %7, align 4
  %21 = load i32, ptr %8, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %8, align 4
  %23 = load i32, ptr %2, align 4
  br label %24

24:                                               ; preds = %16, %9
  %25 = phi i32 [ %10, %9 ], [ %23, %16 ]
  %26 = add nuw i32 %11, 1
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %9, label %28

28:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_put_echo_skb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 1568
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/dev/skb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 262144
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %16 = load i16, ptr %15, align 8
  switch i16 %16, label %17 [
    i16 3072, label %18
    i16 3328, label %18
  ]

17:                                               ; preds = %14, %9
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #4
  br label %79

18:                                               ; preds = %14, %14
  %19 = getelementptr i8, ptr %1, i32 1572
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr ptr, ptr %20, i32 %2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %78

24:                                               ; preds = %18
  %25 = tail call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !10

27:                                               ; preds = %24
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #4
  br label %79

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %59, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.sock_common, ptr %30, i32 0, i32 19
  %34 = load volatile i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %46, %32
  %37 = phi i32 [ %44, %46 ], [ %34, %32 ]
  %38 = add i32 %37, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #4, !srcloc !11
  br label %39

39:                                               ; preds = %39, %36
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 %37, i32 %38, ptr elementtype(i32) %33) #4, !srcloc !12
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %39

43:                                               ; preds = %39
  %44 = extractvalue { i32, i32 } %40, 1
  %45 = icmp eq i32 %44, %37
  br i1 %45, label %48, label %46, !prof !8

46:                                               ; preds = %43
  %47 = icmp eq i32 %44, 0
  br i1 %47, label %48, label %36

48:                                               ; preds = %46, %43, %32
  %49 = phi i32 [ 0, %32 ], [ 0, %46 ], [ %37, %43 ]
  %50 = add i32 %49, 1
  %51 = or i32 %50, %49
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %54, label %53, !prof !8

53:                                               ; preds = %48
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 0) #4
  br label %54

54:                                               ; preds = %53, %48
  %55 = icmp eq i32 %49, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 4, i32 0, i32 1
  store ptr @sock_efree, ptr %57, align 4
  %58 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 1
  store ptr %30, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %54, %28
  tail call void @consume_skb(ptr noundef %0) #4
  %60 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 13
  %61 = load i16, ptr %60, align 8
  %62 = and i16 %61, -97
  %63 = or i16 %62, 32
  store i16 %63, ptr %60, align 8
  %64 = getelementptr inbounds %struct.anon.0, ptr %25, i32 0, i32 2
  store ptr %1, ptr %64, align 8
  %65 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 16
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.can_skb_priv, ptr %66, i32 0, i32 2
  store i32 %3, ptr %67, align 8
  %68 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 15
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.skb_shared_info, ptr %69, i32 0, i32 3
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %59
  tail call void @skb_tstamp_tx(ptr noundef nonnull %25, ptr noundef null) #4
  br label %75

75:                                               ; preds = %74, %59
  %76 = load ptr, ptr %19, align 4
  %77 = getelementptr ptr, ptr %76, i32 %2
  store ptr %25, ptr %77, align 4
  br label %79

78:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.can_put_echo_skb, i32 noundef %2) #5
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #4
  br label %79

79:                                               ; preds = %78, %75, %27, %17
  %80 = phi i32 [ 0, %17 ], [ -16, %78 ], [ 0, %75 ], [ -12, %27 ]
  ret i32 %80
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__can_get_echo_skb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr i8, ptr %0, i32 1568
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__can_get_echo_skb, i32 noundef %1, i32 noundef %6) #5
  br label %43

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 1572
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr ptr, ptr %11, i32 %1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 16
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 1073741824
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.canfd_frame, ptr %19, i32 0, i32 1
  %25 = load i8, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %15
  %27 = phi i8 [ %25, %23 ], [ 0, %15 ]
  store i8 %27, ptr %2, align 1
  %28 = icmp eq ptr %3, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.can_skb_priv, ptr %17, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  store i32 %31, ptr %3, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr ptr, ptr %33, i32 %1
  store ptr null, ptr %34, align 4
  %35 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 13
  %36 = load i16, ptr %35, align 8
  %37 = and i16 %36, 7
  %38 = icmp eq i16 %37, 5
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = and i16 %36, -8
  %41 = or i16 %40, 1
  store i16 %41, ptr %35, align 8
  br label %43

42:                                               ; preds = %32
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %13, i32 noundef 0) #4
  br label %43

43:                                               ; preds = %42, %39, %9, %8
  %44 = phi ptr [ null, %8 ], [ %13, %39 ], [ null, %42 ], [ null, %9 ]
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_get_echo_skb(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1568
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__can_get_echo_skb, i32 noundef %1, i32 noundef %5) #5
  br label %59

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 1572
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr ptr, ptr %10, i32 %1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 16
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 1073741824
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.canfd_frame, ptr %18, i32 0, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %22, %14
  %27 = phi i32 [ %25, %22 ], [ 0, %14 ]
  %28 = icmp eq ptr %2, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.can_skb_priv, ptr %16, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  store i32 %31, ptr %2, align 4
  %32 = load ptr, ptr %9, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi ptr [ %32, %29 ], [ %10, %26 ]
  %35 = getelementptr ptr, ptr %34, i32 %1
  store ptr null, ptr %35, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 13
  %37 = load i16, ptr %36, align 8
  %38 = and i16 %37, 7
  %39 = icmp eq i16 %38, 5
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %12, i32 noundef 0) #4
  br label %59

41:                                               ; preds = %33
  %42 = and i16 %37, -8
  %43 = or i16 %42, 1
  store i16 %43, ptr %36, align 8
  %44 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #4, !srcloc !11
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #4, !srcloc !13
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48, !prof !10

48:                                               ; preds = %41
  %49 = add i32 %46, 1
  %50 = or i32 %49, %46
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %54, label %52, !prof !8

52:                                               ; preds = %48, %41
  %53 = phi i32 [ 2, %41 ], [ 1, %48 ]
  tail call void @refcount_warn_saturate(ptr noundef %44, i32 noundef %53) #4
  br label %54

54:                                               ; preds = %52, %48
  %55 = tail call i32 @netif_rx(ptr noundef nonnull %12) #4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %12, i32 noundef 0) #4
  br label %59

58:                                               ; preds = %54
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %12, i32 noundef 1) #4
  br label %59

59:                                               ; preds = %58, %57, %40, %8, %7
  %60 = phi i32 [ 0, %7 ], [ 0, %40 ], [ 0, %8 ], [ %27, %58 ], [ %27, %57 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @can_free_echo_skb(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1568
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.can_free_echo_skb, i32 noundef %1, i32 noundef %5) #5
  br label %24

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 1572
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr ptr, ptr %10, i32 %1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = icmp eq ptr %2, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 16
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.can_skb_priv, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  store i32 %20, ptr %2, align 4
  br label %21

21:                                               ; preds = %16, %14
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %12, i32 noundef 1) #4
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr ptr, ptr %22, i32 %1
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %21, %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_can_skb(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @__netdev_alloc_skb(ptr noundef %0, i32 noundef 32, i32 noundef 2592) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5, !prof !10

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 16
  store i16 3072, ptr %6, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, -104
  %10 = or i16 %9, 33
  store i16 %10, ptr %7, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %12 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 19
  store i16 %18, ptr %19, align 2
  %20 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 18
  store i16 %18, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 17
  store i16 %18, ptr %21, align 2
  %22 = getelementptr i8, ptr %12, i32 16
  store ptr %22, ptr %11, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 14
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr i8, ptr %24, i32 16
  store ptr %25, ptr %23, align 8
  %26 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 17
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %14, align 8
  %28 = load ptr, ptr %13, align 8
  %29 = getelementptr inbounds %struct.can_skb_priv, ptr %28, i32 0, i32 1
  store i32 0, ptr %29, align 4
  %30 = tail call ptr @skb_put(ptr noundef nonnull %3, i32 noundef 16) #4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %30, i8 0, i32 16, i1 false) #4
  br label %31

31:                                               ; preds = %5, %2
  %32 = phi ptr [ %30, %5 ], [ null, %2 ]
  store ptr %32, ptr %1, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_canfd_skb(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @__netdev_alloc_skb(ptr noundef %0, i32 noundef 88, i32 noundef 2592) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5, !prof !10

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 16
  store i16 3328, ptr %6, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, -104
  %10 = or i16 %9, 33
  store i16 %10, ptr %7, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %12 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 19
  store i16 %18, ptr %19, align 2
  %20 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 18
  store i16 %18, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 17
  store i16 %18, ptr %21, align 2
  %22 = getelementptr i8, ptr %12, i32 16
  store ptr %22, ptr %11, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 14
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr i8, ptr %24, i32 16
  store ptr %25, ptr %23, align 8
  %26 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 17
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %14, align 8
  %28 = load ptr, ptr %13, align 8
  %29 = getelementptr inbounds %struct.can_skb_priv, ptr %28, i32 0, i32 1
  store i32 0, ptr %29, align 4
  %30 = tail call ptr @skb_put(ptr noundef nonnull %3, i32 noundef 72) #4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(72) %30, i8 0, i32 72, i1 false) #4
  br label %31

31:                                               ; preds = %5, %2
  %32 = phi ptr [ %30, %5 ], [ null, %2 ]
  store ptr %32, ptr %1, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_can_err_skb(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call ptr @__netdev_alloc_skb(ptr noundef %0, i32 noundef 32, i32 noundef 2592) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %2
  store ptr null, ptr %1, align 4
  br label %35

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 16
  store i16 3072, ptr %7, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, -104
  %11 = or i16 %10, 33
  store i16 %11, ptr %8, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %13 to i32
  %17 = ptrtoint ptr %15 to i32
  %18 = sub i32 %16, %17
  %19 = trunc i32 %18 to i16
  %20 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 19
  store i16 %19, ptr %20, align 2
  %21 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 18
  store i16 %19, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 17
  store i16 %19, ptr %22, align 2
  %23 = getelementptr i8, ptr %13, i32 16
  store ptr %23, ptr %12, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr i8, ptr %25, i32 16
  store ptr %26, ptr %24, align 8
  %27 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 17
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %15, align 8
  %29 = load ptr, ptr %14, align 8
  %30 = getelementptr inbounds %struct.can_skb_priv, ptr %29, i32 0, i32 1
  store i32 0, ptr %30, align 4
  %31 = tail call ptr @skb_put(ptr noundef nonnull %3, i32 noundef 16) #4
  %32 = getelementptr inbounds i8, ptr %31, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %32, i8 0, i32 12, i1 false) #4
  store ptr %31, ptr %1, align 4
  store i32 536870912, ptr %31, align 8
  %33 = load ptr, ptr %1, align 4
  %34 = getelementptr inbounds %struct.can_frame, ptr %33, i32 0, i32 1
  store i8 8, ptr %34, align 4
  br label %35

35:                                               ; preds = %6, %5
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2155397949, i64 2155398438, i64 2155397986, i64 2155398042, i64 2155398076, i64 2155398100, i64 2155398141, i64 2155398162, i64 2155398190, i64 2155398224}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 465427, i64 2147955398, i64 2147955424, i64 2147955471, i64 2147955493, i64 2147955521, i64 2147955541}
!12 = !{i64 451490, i64 451514, i64 451535, i64 451552, i64 451569}
!13 = !{i64 2147969068, i64 2147969100, i64 2147969129, i64 2147969163, i64 2147969194, i64 2147969217}
