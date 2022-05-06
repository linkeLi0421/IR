; ModuleID = '/llk/IR/net/ipv4/xfrm4_input.c_pt.bc'
source_filename = "../net/ipv4/xfrm4_input.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm4_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm4_rcv\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm4_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.120, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_ext = type { %struct.refcount_struct, [1 x i8], i8, [2 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.141, i32, i32, i8, i8 }
%struct.anon.141 = type { i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [20 x i8], %struct.sk_buff_head, i32, [44 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.105, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.106, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.107, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.11, %union.anon.13, %union.anon.14, i16, i8, i8, i32, %union.anon.16, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.101, [0 x i32], %union.anon.102, i16, i16, %union.anon.103, %struct.refcount_struct, [0 x i32], %union.anon.104 }
%union.anon.11 = type { i64 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.16 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%union.anon.103 = type { i32 }
%union.anon.104 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.105 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.106 = type { ptr }
%union.anon.107 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.57 }
%union.anon.57 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sk_buff_head = type { %union.anon.5, i32, %struct.spinlock }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}

@__kstrtab_xfrm4_rcv = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm4_rcv = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm4_rcv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm4_rcv to i32), ptr @__kstrtab_xfrm4_rcv, ptr @__kstrtabns_xfrm4_rcv }, section "___ksymtab+xfrm4_rcv", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_xfrm4_rcv], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm4_transport_finish(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.skb_ext, ptr %9, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = getelementptr i8, ptr %9, i32 %13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.sec_path, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %14, align 4
  %22 = icmp eq i32 %21, %18
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = add i32 %18, -1
  %25 = getelementptr %struct.sec_path, ptr %14, i32 0, i32 3, i32 %24
  br label %26

26:                                               ; preds = %23, %20, %16, %7, %2
  %27 = phi ptr [ %25, %23 ], [ null, %20 ], [ null, %16 ], [ null, %7 ], [ null, %2 ]
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = getelementptr i8, ptr %29, i32 %32
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 35
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr inbounds %struct.iphdr, ptr %33, i32 0, i32 6
  store i8 %35, ptr %36, align 1
  %37 = icmp eq i32 %1, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = zext i8 %35 to i32
  %40 = sub nsw i32 0, %39
  br label %115

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %28, align 8
  %45 = load i16, ptr %30, align 4
  %46 = zext i16 %45 to i32
  %47 = getelementptr i8, ptr %44, i32 %46
  %48 = ptrtoint ptr %43 to i32
  %49 = ptrtoint ptr %47 to i32
  %50 = sub i32 %48, %49
  %51 = sub i32 0, %50
  %52 = getelementptr i8, ptr %43, i32 %51
  store ptr %52, ptr %42, align 4
  %53 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %54 = load i32, ptr %53, align 8
  %55 = add i32 %50, %54
  store i32 %55, ptr %53, align 8
  %56 = trunc i32 %55 to i16
  %57 = tail call i16 @llvm.bswap.i16(i16 %56)
  %58 = getelementptr inbounds %struct.iphdr, ptr %33, i32 0, i32 2
  store i16 %57, ptr %58, align 2
  tail call void @ip_send_check(ptr noundef %33) #4
  %59 = icmp eq ptr %27, null
  br i1 %59, label %92, label %60

60:                                               ; preds = %41
  %61 = getelementptr inbounds %struct.xfrm_offload, ptr %27, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %92, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %67 = load i16, ptr %66, align 2
  %68 = icmp eq i16 %67, -1
  br i1 %68, label %84, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %28, align 8
  %71 = zext i16 %67 to i32
  %72 = getelementptr i8, ptr %70, i32 %71
  %73 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %74 = load i16, ptr %73, align 8
  %75 = zext i16 %74 to i32
  %76 = load ptr, ptr %42, align 4
  %77 = ptrtoint ptr %76 to i32
  %78 = ptrtoint ptr %70 to i32
  %79 = sub i32 %77, %78
  %80 = trunc i32 %79 to i16
  %81 = sub i16 %80, %74
  store i16 %81, ptr %66, align 2
  %82 = zext i16 %81 to i32
  %83 = getelementptr i8, ptr %70, i32 %82
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %83, ptr align 1 %72, i32 %75, i1 false) #4
  br label %84

84:                                               ; preds = %69, %65
  %85 = load ptr, ptr %42, align 4
  %86 = load ptr, ptr %28, align 8
  %87 = ptrtoint ptr %85 to i32
  %88 = ptrtoint ptr %86 to i32
  %89 = sub i32 %87, %88
  %90 = trunc i32 %89 to i16
  %91 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  store i16 %90, ptr %91, align 2
  br label %115

92:                                               ; preds = %60, %41
  %93 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %94 = load i32, ptr %93, align 8
  %95 = icmp ult i32 %94, 2
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %98 = load ptr, ptr %28, align 8
  %99 = load i16, ptr %30, align 4
  %100 = zext i16 %99 to i32
  %101 = getelementptr i8, ptr %98, i32 %100
  %102 = getelementptr inbounds %struct.iphdr, ptr %101, i32 0, i32 9
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.iphdr, ptr %101, i32 0, i32 8
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.iphdr, ptr %101, i32 0, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = load ptr, ptr %97, align 8
  %109 = tail call i32 @ip_route_input_noref(ptr noundef %0, i32 noundef %103, i32 noundef %105, i8 noundef zeroext %107, ptr noundef %108) #4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %96, %92
  %112 = tail call i32 @xfrm_trans_queue(ptr noundef %0, ptr noundef nonnull @xfrm4_rcv_encap_finish2) #4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111, %96
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #4
  br label %115

115:                                              ; preds = %114, %111, %84, %38
  %116 = phi i32 [ 0, %84 ], [ %40, %38 ], [ 0, %111 ], [ 0, %114 ]
  ret i32 %116
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm4_udp_encap_rcv(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.udp_sock, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %108, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, -8
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 8)
  %11 = add nsw i32 %10, 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %8, %13
  %15 = icmp ugt i32 %11, %14
  br i1 %15, label %16, label %22, !prof !8

16:                                               ; preds = %6
  %17 = icmp ult i32 %8, %11
  br i1 %17, label %108, label %18, !prof !8

18:                                               ; preds = %16
  %19 = sub i32 %11, %14
  %20 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %19) #4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %108, label %22

22:                                               ; preds = %18, %6
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  %29 = getelementptr i8, ptr %28, i32 8
  %30 = zext i8 %4 to i32
  %31 = icmp eq i8 %4, 1
  %32 = icmp eq i32 %9, 1
  br i1 %31, label %42, label %33

33:                                               ; preds = %22
  br i1 %32, label %34, label %37

34:                                               ; preds = %33
  %35 = load i8, ptr %29, align 1
  %36 = icmp eq i8 %35, -1
  br i1 %36, label %107, label %108

37:                                               ; preds = %33
  %38 = icmp ugt i32 %9, 8
  br i1 %38, label %39, label %108

39:                                               ; preds = %37
  %40 = load i32, ptr %29, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %108, label %55

42:                                               ; preds = %22
  br i1 %32, label %43, label %46

43:                                               ; preds = %42
  %44 = load i8, ptr %29, align 1
  %45 = icmp eq i8 %44, -1
  br i1 %45, label %107, label %108

46:                                               ; preds = %42
  %47 = icmp ugt i32 %9, 16
  br i1 %47, label %48, label %108

48:                                               ; preds = %46
  %49 = load i32, ptr %29, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %108

51:                                               ; preds = %48
  %52 = getelementptr i8, ptr %28, i32 12
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %108

55:                                               ; preds = %51, %39
  %56 = phi i32 [ 8, %39 ], [ 16, %51 ]
  %57 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %58 = load i8, ptr %57, align 2
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 10
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %68
  %72 = load ptr, ptr %23, align 8
  br label %73

73:                                               ; preds = %71, %61, %55
  %74 = phi ptr [ %72, %71 ], [ %24, %55 ], [ %24, %61 ]
  %75 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %76 = load i16, ptr %75, align 4
  %77 = zext i16 %76 to i32
  %78 = getelementptr i8, ptr %74, i32 %77
  %79 = load i8, ptr %78, align 4
  %80 = shl i8 %79, 2
  %81 = and i8 %80, 60
  %82 = zext i8 %81 to i32
  %83 = getelementptr inbounds %struct.iphdr, ptr %78, i32 0, i32 2
  %84 = load i16, ptr %83, align 2
  %85 = tail call i16 @llvm.bswap.i16(i16 %84)
  %86 = trunc i32 %56 to i16
  %87 = sub i16 %85, %86
  %88 = tail call i16 @llvm.bswap.i16(i16 %87)
  store i16 %88, ptr %83, align 2
  %89 = load i32, ptr %7, align 8
  %90 = add nuw nsw i32 %56, %82
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %107, label %92

92:                                               ; preds = %73
  %93 = sub i32 %89, %56
  store i32 %93, ptr %7, align 8
  %94 = load i32, ptr %12, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %97, !prof !8

96:                                               ; preds = %92
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 %56
  store ptr %100, ptr %98, align 4
  %101 = load ptr, ptr %23, align 8
  %102 = ptrtoint ptr %100 to i32
  %103 = ptrtoint ptr %101 to i32
  %104 = sub i32 %102, %103
  %105 = trunc i32 %104 to i16
  store i16 %105, ptr %25, align 2
  %106 = tail call i32 @xfrm4_rcv_encap(ptr noundef %1, i32 noundef 50, i32 noundef 0, i32 noundef %30) #4
  br label %108

107:                                              ; preds = %73, %68, %43, %34
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #4
  br label %108

108:                                              ; preds = %107, %97, %51, %48, %46, %43, %39, %37, %34, %18, %16, %2
  %109 = phi i32 [ 0, %107 ], [ %106, %97 ], [ 1, %2 ], [ 1, %18 ], [ 1, %39 ], [ 1, %37 ], [ 1, %51 ], [ 1, %48 ], [ 1, %46 ], [ 1, %16 ], [ 1, %34 ], [ 1, %43 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_rcv_encap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm4_rcv(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 6
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  store i32 2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  store i32 16, ptr %13, align 4
  %14 = tail call i32 @xfrm_input(ptr noundef %0, i32 noundef %10, i32 noundef 0, i32 noundef 0) #4
  ret i32 %14
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_trans_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm4_rcv_encap_finish2(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -2
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.dst_entry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %2) #4
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_input(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2153286529, i64 2153287017, i64 2153286566, i64 2153286622, i64 2153286656, i64 2153286680, i64 2153286721, i64 2153286742, i64 2153286770, i64 2153286804}
