; ModuleID = '/llk/IR/net/ipv4/tcp_rate.c_pt.bc'
source_filename = "../net/ipv4/tcp_rate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_rate_check_app_limited:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_rate_check_app_limited\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_rate_check_app_limited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.183, %struct.anon.184, %struct.anon.185, i32, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.181, %struct.anon.182, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.170, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.171, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.172, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.166, [0 x i32], %union.anon.167, i16, i16, %union.anon.168, %struct.refcount_struct, [0 x i32], %union.anon.169 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { %struct.hlist_node }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.170 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.171 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.172 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.124 }
%union.anon.124 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.181 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.182 = type { i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.183 = type { i32, i32, i64 }
%struct.anon.184 = type { i32, i32, i64 }
%struct.anon.185 = type { i32, i32 }
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
%struct.rate_sample = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }

@__kstrtab_tcp_rate_check_app_limited = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_rate_check_app_limited = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_rate_check_app_limited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_rate_check_app_limited to i32), ptr @__kstrtab_tcp_rate_check_app_limited, ptr @__kstrtabns_tcp_rate_check_app_limited }, section "___ksymtab_gpl+tcp_rate_check_app_limited", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_tcp_rate_check_app_limited], section "llvm.metadata"

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_rate_skb_sent(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 75
  %8 = load i64, ptr %7, align 8
  br label %20

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %11, i32 0) #4, !srcloc !8
  %13 = extractvalue { i64, i32 } %12, 0
  %14 = extractvalue { i64, i32 } %12, 1
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %11, i64 %13, i32 %14) #4, !srcloc !9
  %16 = extractvalue { i64, i32 } %15, 0
  %17 = lshr i64 %16, 9
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 75
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 76
  store i64 %17, ptr %19, align 8
  br label %20

20:                                               ; preds = %9, %6
  %21 = phi i64 [ %8, %6 ], [ %17, %9 ]
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  store i64 %21, ptr %23, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 76
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 40
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 71
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 72
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %22, align 8
  %33 = shl i32 %31, 1
  %34 = and i32 %33, 2097150
  %35 = and i32 %32, -2097151
  %36 = or i32 %35, %34
  store i32 %36, ptr %22, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 74
  %38 = load i32, ptr %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = and i32 %36, -2
  %42 = or i32 %41, %40
  store i32 %42, ptr %22, align 8
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_rate_skb_delivered(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 40
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %56, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rate_sample, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %10, %14
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %12, %8
  %18 = load i32, ptr %4, align 8
  %19 = lshr i32 %18, 1
  %20 = and i32 %19, 1048575
  %21 = getelementptr inbounds %struct.rate_sample, ptr %2, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %9, align 8
  %24 = load i64, ptr %5, align 8
  store i64 %24, ptr %2, align 8
  %25 = load i32, ptr %4, align 8
  %26 = getelementptr inbounds %struct.rate_sample, ptr %2, i32 0, i32 12
  %27 = trunc i32 %25 to i8
  %28 = and i8 %27, 1
  store i8 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, -110
  %32 = icmp ne i8 %31, 0
  %33 = getelementptr inbounds %struct.rate_sample, ptr %2, i32 0, i32 13
  %34 = zext i1 %32 to i8
  store i8 %34, ptr %33, align 1
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %36, i32 0) #4, !srcloc !8
  %38 = extractvalue { i64, i32 } %37, 0
  %39 = extractvalue { i64, i32 } %37, 1
  %40 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %36, i64 %38, i32 %39) #4, !srcloc !9
  %41 = extractvalue { i64, i32 } %40, 0
  %42 = lshr i64 %41, 9
  %43 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 75
  store i64 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 32
  %45 = load i64, ptr %44, align 8
  %46 = sub i64 %42, %45
  %47 = tail call i64 @llvm.smax.i64(i64 %46, i64 0) #5
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.rate_sample, ptr %2, i32 0, i32 5
  store i32 %48, ptr %49, align 8
  br label %50

50:                                               ; preds = %17, %12
  %51 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i64 0, ptr %5, align 8
  br label %56

56:                                               ; preds = %55, %50, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_rate_gen(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nocapture noundef %4) local_unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 74
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 71
  %11 = load i32, ptr %10, align 8
  %12 = sub i32 %7, %11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  br label %15

15:                                               ; preds = %14, %9, %5
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 76
  store i64 %19, ptr %20, align 8
  br label %21

21:                                               ; preds = %17, %15
  %22 = getelementptr inbounds %struct.rate_sample, ptr %4, i32 0, i32 10
  store i32 %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rate_sample, ptr %4, i32 0, i32 9
  store i32 %2, ptr %23, align 8
  %24 = load i64, ptr %4, align 8
  %25 = icmp eq i64 %24, 0
  %26 = or i1 %25, %3
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.rate_sample, ptr %4, i32 0, i32 3
  store i32 -1, ptr %28, align 8
  %29 = getelementptr inbounds %struct.rate_sample, ptr %4, i32 0, i32 5
  store i32 -1, ptr %29, align 8
  br label %85

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 71
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.rate_sample, ptr %4, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = sub i32 %32, %34
  %36 = getelementptr inbounds %struct.rate_sample, ptr %4, i32 0, i32 3
  store i32 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 72
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.rate_sample, ptr %4, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %38, %40
  %42 = getelementptr inbounds %struct.rate_sample, ptr %4, i32 0, i32 4
  %43 = and i32 %41, 1048575
  store i32 %43, ptr %42, align 4
  %44 = getelementptr inbounds %struct.rate_sample, ptr %4, i32 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %47 = load i64, ptr %46, align 8
  %48 = sub i64 %47, %24
  %49 = tail call i64 @llvm.smax.i64(i64 %48, i64 0) #5
  %50 = trunc i64 %49 to i32
  %51 = tail call i32 @llvm.umax.i32(i32 %45, i32 %50)
  store i32 %51, ptr %44, align 8
  %52 = getelementptr inbounds %struct.rate_sample, ptr %4, i32 0, i32 6
  store i32 %45, ptr %52, align 4
  %53 = getelementptr inbounds %struct.rate_sample, ptr %4, i32 0, i32 7
  store i32 %50, ptr %53, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 50, i32 0, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp ult i32 %51, %55
  br i1 %56, label %57, label %58, !prof !10

57:                                               ; preds = %30
  store i32 -1, ptr %44, align 8
  br label %85

58:                                               ; preds = %30
  %59 = getelementptr inbounds %struct.rate_sample, ptr %4, i32 0, i32 12
  %60 = load i8, ptr %59, align 4, !range !11
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = sext i32 %35 to i64
  %64 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 78
  %65 = load i32, ptr %64, align 4
  %66 = zext i32 %65 to i64
  %67 = mul nsw i64 %66, %63
  %68 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 77
  %69 = load i32, ptr %68, align 8
  %70 = zext i32 %69 to i64
  %71 = sext i32 %51 to i64
  %72 = mul nsw i64 %70, %71
  %73 = icmp ult i64 %67, %72
  br i1 %73, label %85, label %74

74:                                               ; preds = %62, %58
  %75 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 77
  store i32 %35, ptr %75, align 8
  %76 = load i32, ptr %44, align 8
  %77 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 78
  store i32 %76, ptr %77, align 4
  %78 = load i8, ptr %59, align 4, !range !11
  %79 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %80 = load i16, ptr %79, align 4
  %81 = shl nuw nsw i8 %78, 2
  %82 = zext i8 %81 to i16
  %83 = and i16 %80, -5
  %84 = or i16 %83, %82
  store i16 %84, ptr %79, align 4
  br label %85

85:                                               ; preds = %74, %62, %57, %27
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_rate_check_app_limited(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %12 = load volatile i32, ptr %11, align 4
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, 449
  br i1 %14, label %15, label %39

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %19, %21
  %25 = sub i32 %17, %24
  %26 = add i32 %25, %23
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %28 = load i32, ptr %27, align 8
  %29 = icmp uge i32 %26, %28
  %30 = icmp ugt i32 %21, %23
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 71
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, %26
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 1, i32 %35
  %38 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 74
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %32, %15, %10, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

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
!8 = !{i64 1176059, i64 1176086, i64 1176108, i64 1176136}
!9 = !{i64 1176467, i64 1176494, i64 1176527, i64 1176548, i64 1176575, i64 1176601}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
