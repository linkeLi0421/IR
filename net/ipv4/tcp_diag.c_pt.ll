; ModuleID = '/llk/IR/net/ipv4/tcp_diag.c_pt.bc'
source_filename = "../net/ipv4/tcp_diag.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inet_diag_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16 }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [28 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.52 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%union.anon.52 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.sock_common = type { %union.anon.11, %union.anon.13, %union.anon.14, i16, i8, i8, i32, %union.anon.16, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.134, [0 x i32], %union.anon.135, i16, i16, %union.anon.136, %struct.refcount_struct, [0 x i32], %union.anon.137 }
%union.anon.11 = type { i64 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.16 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.55 }
%union.anon.55 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { %struct.hlist_node }
%union.anon.136 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.137 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.138, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.139, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.140, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.138 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.139 = type { ptr }
%union.anon.140 = type { ptr }
%struct.sk_buff_head = type { %union.anon.5, i32, %struct.spinlock }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_diag_msg = type { i8, i8, i8, i8, %struct.inet_diag_sockid, i32, i32, i32, i32, i32 }
%struct.inet_diag_sockid = type { i16, i16, [4 x i32], [4 x i32], i32, [2 x i32] }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.183, %struct.anon.184, %struct.anon.185, i32, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.181, %struct.anon.182, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.56 }
%union.anon.56 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.181 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.182 = type { i32, i32, i32, i32 }
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
%struct.sk_buff = type { %union.anon, %union.anon.157, %union.anon.158, [48 x i8], %union.anon.159, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.161, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.157 = type { ptr }
%union.anon.158 = type { i64 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i32, ptr }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.163, i32, i32, i32, i16, i16, %union.anon.165, %union.anon.166, %union.anon.167, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.163 = type { i32 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { i16 }
%struct.tcp_ulp_ops = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr }

@tcp_diag_handler = internal constant %struct.inet_diag_handler { ptr @tcp_diag_dump, ptr @tcp_diag_dump_one, ptr @tcp_diag_get_info, ptr @tcp_diag_get_aux, ptr @tcp_diag_get_aux_size, ptr null, i16 6, i16 232 }, align 4
@__initcall__kmod_tcp_diag__540_235_tcp_diag_init6 = internal global ptr @tcp_diag_init, section ".initcall6.init", align 4
@__exitcall_tcp_diag_exit = internal global ptr @tcp_diag_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file541 = internal constant [32 x i8] c"tcp_diag.file=net/ipv4/tcp_diag\00", section ".modinfo", align 1
@__UNIQUE_ID_license542 = internal constant [21 x i8] c"tcp_diag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias543 = internal constant [42 x i8] c"tcp_diag.alias=net-pf-16-proto-4-type-2-6\00", section ".modinfo", align 1
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 64
@.str = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_alias543, ptr @__UNIQUE_ID_file541, ptr @__UNIQUE_ID_license542, ptr @__exitcall_tcp_diag_exit, ptr @__initcall__kmod_tcp_diag__540_235_tcp_diag_init6, ptr @tcp_diag_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tcp_diag_exit() #0 section ".exit.text" {
  tail call void @inet_diag_unregister(ptr noundef nonnull @tcp_diag_handler) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_diag_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tcp_diag_init() #0 section ".init.text" {
  %1 = tail call i32 @inet_diag_register(ptr noundef nonnull @tcp_diag_handler) #5
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_diag_dump(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  tail call void @inet_diag_dump_icsk(ptr noundef nonnull @tcp_hashinfo, ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_diag_dump_one(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @inet_diag_dump_one_icsk(ptr noundef nonnull @tcp_hashinfo, ptr noundef %0, ptr noundef %1) #5
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_diag_get_info(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %6 = icmp eq i8 %5, 10
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  %9 = load volatile i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inet_diag_msg, ptr %1, i32 0, i32 6
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 54
  %12 = load volatile i32, ptr %11, align 8
  br label %30

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %19 = load volatile i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %21 = load volatile i32, ptr %20, align 4
  %22 = sub i32 %19, %21
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0)
  %24 = getelementptr inbounds %struct.inet_diag_msg, ptr %1, i32 0, i32 6
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %26 = load volatile i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %26, %28
  br label %30

30:                                               ; preds = %17, %7
  %31 = phi i32 [ %29, %17 ], [ %12, %7 ]
  %32 = getelementptr inbounds %struct.inet_diag_msg, ptr %1, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %13
  %34 = icmp eq ptr %2, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  tail call void @tcp_get_info(ptr noundef %0, ptr noundef nonnull %2) #5
  br label %36

36:                                               ; preds = %35, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_diag_get_aux(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) #2 {
  br i1 %1, label %4, label %46

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @nla_put(ptr noundef %2, i32 noundef 19, i32 noundef 0, ptr noundef null) #5
  %12 = icmp slt i32 %11, 0
  %13 = icmp eq ptr %10, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %46, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %6, i32 0, i32 7
  %17 = tail call i32 @strlen(ptr noundef %16) #5
  %18 = add i32 %17, 1
  %19 = tail call i32 @nla_put(ptr noundef %2, i32 noundef 1, i32 noundef %18, ptr noundef %16) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %6, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = tail call i32 %23(ptr noundef %0, ptr noundef %2) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25, %21
  %29 = load ptr, ptr %9, align 8
  %30 = ptrtoint ptr %29 to i32
  %31 = ptrtoint ptr %10 to i32
  %32 = sub i32 %30, %31
  %33 = trunc i32 %32 to i16
  store i16 %33, ptr %10, align 2
  br label %46

34:                                               ; preds = %25, %15
  %35 = phi i32 [ %19, %15 ], [ %26, %25 ]
  %36 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %37 = load ptr, ptr %36, align 4
  %38 = icmp ugt ptr %37, %10
  br i1 %38, label %39, label %41, !prof !9

39:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #5
  %40 = load ptr, ptr %36, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi ptr [ %40, %39 ], [ %37, %34 ]
  %43 = ptrtoint ptr %10 to i32
  %44 = ptrtoint ptr %42 to i32
  %45 = sub i32 %43, %44
  tail call void @skb_trim(ptr noundef %2, i32 noundef %45) #5
  br label %46

46:                                               ; preds = %41, %28, %8, %4, %3
  %47 = phi i32 [ %35, %41 ], [ -90, %8 ], [ 0, %3 ], [ 0, %4 ], [ 0, %28 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_diag_get_aux_size(ptr noundef %0, i1 noundef zeroext %1) #2 {
  br i1 %1, label %3, label %21

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, -4161
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %12, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %0) #5
  %20 = add i32 %19, 24
  br label %21

21:                                               ; preds = %18, %14, %10, %3, %2
  %22 = phi i32 [ 0, %3 ], [ 0, %2 ], [ %20, %18 ], [ 24, %14 ], [ 0, %10 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_diag_dump_icsk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_diag_dump_one_icsk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_get_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_diag_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2155412999}
!9 = !{!"branch_weights", i32 1, i32 2000}
