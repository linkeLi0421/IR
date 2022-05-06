; ModuleID = '/llk/IR/net/ipv4/tcp_ulp.c_pt.bc'
source_filename = "../net/ipv4/tcp_ulp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_register_ulp:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_register_ulp\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_register_ulp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_unregister_ulp:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_unregister_ulp\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_unregister_ulp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tcp_ulp_ops = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr }
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

@tcp_ulp_list_lock = internal global %struct.spinlock zeroinitializer, align 4
@tcp_ulp_list = internal global %struct.list_head { ptr @tcp_ulp_list, ptr @tcp_ulp_list }, align 4
@__kstrtab_tcp_register_ulp = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_register_ulp = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_register_ulp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_register_ulp to i32), ptr @__kstrtab_tcp_register_ulp, ptr @__kstrtabns_tcp_register_ulp }, section "___ksymtab_gpl+tcp_register_ulp", align 4
@__kstrtab_tcp_unregister_ulp = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_unregister_ulp = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_unregister_ulp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_unregister_ulp to i32), ptr @__kstrtab_tcp_unregister_ulp, ptr @__kstrtabns_tcp_unregister_ulp }, section "___ksymtab_gpl+tcp_unregister_ulp", align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@tcp_get_available_ulp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"net/ipv4/tcp_ulp.c\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"tcp-ulp-%s\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_tcp_register_ulp, ptr @__ksymtab_tcp_unregister_ulp], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_register_ulp(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @tcp_ulp_list_lock) #4
  %2 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %0, i32 0, i32 7
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @tcp_ulp_list, %1 ], [ %5, %7 ]
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @tcp_ulp_list
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %5, i32 0, i32 7
  %9 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %2) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %3

11:                                               ; preds = %7
  %12 = icmp eq ptr %5, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %11, %3
  %14 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tcp_ulp_list, i32 0, i32 1), align 4
  store ptr @tcp_ulp_list, ptr %0, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  store volatile ptr %0, ptr %14, align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @tcp_ulp_list, i32 0, i32 1), align 4
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi i32 [ 0, %13 ], [ -17, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %18 = load i16, ptr @tcp_ulp_list_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @tcp_ulp_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_unregister_ulp(ptr nocapture noundef %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @tcp_ulp_list_lock) #4
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %6 = load i16, ptr @tcp_ulp_list_lock, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr @tcp_ulp_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  tail call void @synchronize_rcu() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_get_available_ulp(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  store i8 0, ptr %0, align 1
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  br label %3

3:                                                ; preds = %21, %2
  %4 = phi i32 [ 0, %2 ], [ %15, %21 ]
  %5 = phi ptr [ @tcp_ulp_list, %2 ], [ %6, %21 ]
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @tcp_ulp_list
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 %4
  %10 = sub i32 %1, %4
  %11 = icmp eq i32 %4, 0
  %12 = select i1 %11, ptr @.str.1, ptr @.str.2
  %13 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %6, i32 0, i32 7
  %14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %9, i32 noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull %12, ptr noundef %13)
  %15 = add i32 %14, %4
  %16 = icmp uge i32 %15, %1
  %17 = load i1, ptr @tcp_get_available_ulp.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !14

20:                                               ; preds = %8
  store i1 true, ptr @tcp_get_available_ulp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 97, i32 noundef 9, ptr noundef null) #4
  br label %21

21:                                               ; preds = %20, %8
  br i1 %16, label %22, label %3

22:                                               ; preds = %21, %3
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_update_ulp(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4
  br label %10

10:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_cleanup_ulp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef %0) #4
  %10 = load ptr, ptr %2, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %3, %5 ]
  %13 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  tail call void @module_put(ptr noundef %14) #4
  store ptr null, ptr %2, align 4
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_set_ulp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @tcp_ulp_list, %2 ], [ %5, %7 ]
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @tcp_ulp_list
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %5, i32 0, i32 7
  %9 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %1) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %3

11:                                               ; preds = %7
  %12 = icmp eq ptr %5, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %11, %3
  %14 = tail call zeroext i1 @capable(i32 noundef 12) #4
  br i1 %14, label %15, label %32

15:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  %16 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.4, ptr noundef %1) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  br label %17

17:                                               ; preds = %21, %15
  %18 = phi ptr [ @tcp_ulp_list, %15 ], [ %19, %21 ]
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @tcp_ulp_list
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %19, i32 0, i32 7
  %23 = tail call i32 @strcmp(ptr noundef %22, ptr noundef %1) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %17

25:                                               ; preds = %21
  %26 = icmp eq ptr %19, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %25, %11
  %28 = phi ptr [ %19, %25 ], [ %5, %11 ]
  %29 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = tail call zeroext i1 @try_module_get(ptr noundef %30) #4
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %25, %17, %13
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  br label %46

33:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  %34 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 12
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tcp_ulp_ops, ptr %28, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %0) #4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store ptr %28, ptr %34, align 4
  br label %46

43:                                               ; preds = %37, %33
  %44 = phi i32 [ -17, %33 ], [ %40, %37 ]
  %45 = load ptr, ptr %29, align 4
  tail call void @module_put(ptr noundef %45) #4
  br label %46

46:                                               ; preds = %43, %42, %32
  %47 = phi i32 [ -2, %32 ], [ %44, %43 ], [ 0, %42 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2150718275}
!9 = !{i64 2148927744}
!10 = !{i64 2148923568}
!11 = !{i64 2148923643, i64 2148923670, i64 2148923717, i64 2148923739, i64 2148923767, i64 2148923787}
!12 = !{i64 2148950747}
!13 = !{i64 2149046099}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2149046316}
