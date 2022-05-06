; ModuleID = '/llk/IR/net/core/stream.c_pt.bc'
source_filename = "../net/core/stream.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_stream_wait_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_stream_wait_connect\22\09\09\09\09\09"
module asm "__kstrtabns_sk_stream_wait_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_stream_wait_close:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_stream_wait_close\22\09\09\09\09\09"
module asm "__kstrtabns_sk_stream_wait_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_stream_wait_memory:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_stream_wait_memory\22\09\09\09\09\09"
module asm "__kstrtabns_sk_stream_wait_memory:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_stream_error:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_stream_error\22\09\09\09\09\09"
module asm "__kstrtabns_sk_stream_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sk_stream_kill_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22sk_stream_kill_queues\22\09\09\09\09\09"
module asm "__kstrtabns_sk_stream_kill_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.127, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.128, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.129, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.123, [0 x i32], %union.anon.124, i16, i16, %union.anon.125, %struct.refcount_struct, [0 x i32], %union.anon.126 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.81 }
%union.anon.81 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { %struct.hlist_node }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.127 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.128 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.129 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.122, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.122 = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }

@__kstrtab_sk_stream_wait_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_stream_wait_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_stream_wait_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_stream_wait_connect to i32), ptr @__kstrtab_sk_stream_wait_connect, ptr @__kstrtabns_sk_stream_wait_connect }, section "___ksymtab+sk_stream_wait_connect", align 4
@__kstrtab_sk_stream_wait_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_stream_wait_close = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_stream_wait_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_stream_wait_close to i32), ptr @__kstrtab_sk_stream_wait_close, ptr @__kstrtabns_sk_stream_wait_close }, section "___ksymtab+sk_stream_wait_close", align 4
@__kstrtab_sk_stream_wait_memory = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_stream_wait_memory = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_stream_wait_memory = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_stream_wait_memory to i32), ptr @__kstrtab_sk_stream_wait_memory, ptr @__kstrtabns_sk_stream_wait_memory }, section "___ksymtab+sk_stream_wait_memory", align 4
@__kstrtab_sk_stream_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_stream_error = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_stream_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_stream_error to i32), ptr @__kstrtab_sk_stream_error, ptr @__kstrtabns_sk_stream_error }, section "___ksymtab+sk_stream_error", align 4
@.str = private unnamed_addr constant [18 x i8] c"net/core/stream.c\00", align 1
@__kstrtab_sk_stream_kill_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_sk_stream_kill_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_sk_stream_kill_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sk_stream_kill_queues to i32), ptr @__kstrtab_sk_stream_kill_queues, ptr @__kstrtabns_sk_stream_kill_queues }, section "___ksymtab+sk_stream_kill_queues", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_sk_stream_error, ptr @__ksymtab_sk_stream_kill_queues, ptr @__ksymtab_sk_stream_wait_close, ptr @__ksymtab_sk_stream_wait_connect, ptr @__ksymtab_sk_stream_wait_memory], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_stream_write_space(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %5 = load volatile i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %7 = load volatile i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = load volatile i32, ptr %6, align 4
  %10 = ashr i32 %9, 1
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %50, label %12

12:                                               ; preds = %1
  %13 = load volatile i32, ptr %6, align 4
  %14 = load volatile i32, ptr %4, align 8
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.proto, ptr %18, i32 0, i32 26
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = tail call zeroext i1 %20(ptr noundef %0, i32 noundef 1) #5
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi i1 [ %23, %22 ], [ true, %16 ]
  %26 = icmp ne ptr %3, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %29) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %30 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %34 = getelementptr inbounds %struct.wait_queue_head, ptr %31, i32 0, i32 1
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @__wake_up(ptr noundef nonnull %31, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 772 to ptr)) #5
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.socket_wq, ptr %31, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %44 = load i8, ptr %43, align 2
  %45 = and i8 %44, 2
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = tail call i32 @sock_wake_async(ptr noundef nonnull %31, i32 noundef 2, i32 noundef 2) #5
  br label %49

49:                                               ; preds = %47, %42, %38, %28
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  br label %50

50:                                               ; preds = %49, %24, %12, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_wake_async(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sk_stream_wait_connect(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %5 = tail call ptr @llvm.thread.pointer() #5
  store i32 0, ptr %3, align 4
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @woken_wake_function, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 28
  br label %17

13:                                               ; preds = %59
  %14 = load volatile ptr, ptr %11, align 4
  call void @remove_wait_queue(ptr noundef %14, ptr noundef nonnull %3) #5
  %15 = load i32, ptr %12, align 8
  %16 = add i32 %15, -1
  store i32 %16, ptr %12, align 8
  br label %71

17:                                               ; preds = %71, %2
  %18 = load i32, ptr %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !11

20:                                               ; preds = %17
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #5, !srcloc !13
  %21 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %9) #5, !srcloc !14
  %22 = extractvalue { i32, i32 } %21, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %20, %17
  %25 = load volatile i8, ptr %10, align 2
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, -13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %24
  %31 = load i32, ptr %1, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %75, label %33

33:                                               ; preds = %30
  %34 = load volatile i32, ptr %5, align 4
  %35 = and i32 %34, 256
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41, !prof !11

37:                                               ; preds = %33
  %38 = load volatile i32, ptr %5, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %33
  %42 = icmp eq i32 %31, 2147483647
  %43 = select i1 %42, i32 -512, i32 -4
  br label %75

44:                                               ; preds = %37
  %45 = load volatile ptr, ptr %11, align 4
  call void @add_wait_queue(ptr noundef %45, ptr noundef nonnull %3) #5
  %46 = load i32, ptr %12, align 8
  %47 = add i32 %46, 1
  store i32 %47, ptr %12, align 8
  call void @release_sock(ptr noundef %0) #5
  %48 = load i32, ptr %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load volatile i8, ptr %10, align 2
  %52 = zext i8 %51 to i32
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, -259
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50, %44
  %57 = load i32, ptr %1, align 4
  %58 = call i32 @wait_woken(ptr noundef nonnull %3, i32 noundef 1, i32 noundef %57) #5
  store i32 %58, ptr %1, align 4
  br label %59

59:                                               ; preds = %56, %50
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #5
  %60 = load i32, ptr %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %13

62:                                               ; preds = %59
  %63 = load volatile i8, ptr %10, align 2
  %64 = zext i8 %63 to i32
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, -259
  %67 = icmp eq i32 %66, 0
  %68 = load volatile ptr, ptr %11, align 4
  call void @remove_wait_queue(ptr noundef %68, ptr noundef nonnull %3) #5
  %69 = load i32, ptr %12, align 8
  %70 = add i32 %69, -1
  store i32 %70, ptr %12, align 8
  br i1 %67, label %75, label %71

71:                                               ; preds = %62, %13
  br label %17

72:                                               ; preds = %20
  %73 = extractvalue { i32, i32 } %21, 0
  %74 = sub i32 0, %73
  br label %75

75:                                               ; preds = %72, %62, %41, %30, %24
  %76 = phi i32 [ %43, %41 ], [ %74, %72 ], [ 0, %62 ], [ -32, %24 ], [ -11, %30 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #5
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_stream_wait_close(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #5
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %7 = tail call ptr @llvm.thread.pointer() #5
  store i32 0, ptr %3, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @woken_wake_function, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %12 = load volatile ptr, ptr %11, align 4
  call void @add_wait_queue(ptr noundef %12, ptr noundef nonnull %3) #5
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  br label %14

14:                                               ; preds = %34, %5
  %15 = phi i32 [ %1, %5 ], [ %24, %34 ]
  call void @release_sock(ptr noundef %0) #5
  %16 = load volatile i8, ptr %13, align 2
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, 2576
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = call i32 @wait_woken(ptr noundef nonnull %3, i32 noundef 1, i32 noundef %15) #5
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i32 [ %15, %14 ], [ %22, %21 ]
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #5
  %25 = load volatile i8, ptr %13, align 2
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, 2576
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %23
  %31 = load volatile i32, ptr %7, align 4
  %32 = and i32 %31, 256
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40, !prof !11

34:                                               ; preds = %30
  %35 = load volatile i32, ptr %7, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  %38 = icmp ne i32 %24, 0
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %14, label %40

40:                                               ; preds = %34, %30, %23
  %41 = load volatile ptr, ptr %11, align 4
  call void @remove_wait_queue(ptr noundef %41, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #5
  br label %42

42:                                               ; preds = %40, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sk_stream_wait_memory(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #5
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %6 = tail call ptr @llvm.thread.pointer() #5
  store i32 0, ptr %3, align 4
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @woken_wake_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %11 = load volatile i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %13 = load volatile i32, ptr %12, align 8
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.proto, ptr %17, i32 0, i32 26
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = call zeroext i1 %19(ptr noundef %0, i32 noundef 0) #5
  br i1 %22, label %23, label %27

23:                                               ; preds = %21, %15
  %24 = call i32 @prandom_u32() #5
  %25 = urem i32 %24, 20
  %26 = add nuw nsw i32 %25, 2
  br label %27

27:                                               ; preds = %23, %21, %2
  %28 = phi i32 [ %26, %23 ], [ 0, %21 ], [ 0, %2 ]
  %29 = phi i32 [ %26, %23 ], [ %4, %21 ], [ %4, %2 ]
  %30 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %31 = load volatile ptr, ptr %30, align 4
  call void @add_wait_queue(ptr noundef %31, ptr noundef nonnull %3) #5
  %32 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %33 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  %34 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %35 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %37 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 28
  br label %38

38:                                               ; preds = %148, %27
  %39 = phi i32 [ %28, %27 ], [ 0, %148 ]
  %40 = phi i32 [ %29, %27 ], [ %149, %148 ]
  %41 = load volatile i32, ptr %32, align 4
  %42 = and i32 %41, 65536
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %30, align 4
  %46 = getelementptr inbounds %struct.socket_wq, ptr %45, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %46) #5
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, ptr %33, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %150

50:                                               ; preds = %47
  %51 = load i8, ptr %34, align 2
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %150

54:                                               ; preds = %50
  %55 = load i32, ptr %1, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %153, label %57

57:                                               ; preds = %54
  %58 = load volatile i32, ptr %6, align 4
  %59 = and i32 %58, 256
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %156, !prof !11

61:                                               ; preds = %57
  %62 = load volatile i32, ptr %6, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %156

65:                                               ; preds = %61
  %66 = load volatile i32, ptr %32, align 4
  %67 = and i32 %66, 65536
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %30, align 4
  %71 = getelementptr inbounds %struct.socket_wq, ptr %70, i32 0, i32 2
  call void @_clear_bit(i32 noundef 0, ptr noundef %71) #5
  br label %72

72:                                               ; preds = %69, %65
  %73 = load volatile i32, ptr %10, align 4
  %74 = load volatile i32, ptr %12, align 8
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = icmp ne i32 %39, 0
  br label %90

78:                                               ; preds = %72
  %79 = load ptr, ptr %35, align 8
  %80 = getelementptr inbounds %struct.proto, ptr %79, i32 0, i32 26
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = call zeroext i1 %81(ptr noundef %0, i32 noundef 0) #5
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi i1 [ %84, %83 ], [ true, %78 ]
  %87 = xor i1 %86, true
  %88 = icmp ne i32 %39, 0
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %90, label %150

90:                                               ; preds = %85, %76
  %91 = phi i1 [ %77, %76 ], [ %88, %85 ]
  %92 = load ptr, ptr %36, align 8
  %93 = getelementptr inbounds %struct.socket, ptr %92, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %93) #5
  %94 = load i32, ptr %37, align 8
  %95 = add i32 %94, 1
  store i32 %95, ptr %37, align 8
  call void @release_sock(ptr noundef %0) #5
  %96 = load i32, ptr %33, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %90
  %99 = load i8, ptr %34, align 2
  %100 = and i8 %99, 2
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load volatile i32, ptr %10, align 4
  %104 = load volatile i32, ptr %12, align 8
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load ptr, ptr %35, align 8
  %108 = getelementptr inbounds %struct.proto, ptr %107, i32 0, i32 26
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = call zeroext i1 %109(ptr noundef %0, i32 noundef 0) #5
  br label %113

113:                                              ; preds = %111, %106
  %114 = phi i1 [ %112, %111 ], [ true, %106 ]
  %115 = xor i1 %91, true
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %119, label %117

117:                                              ; preds = %113, %102
  %118 = call i32 @wait_woken(ptr noundef nonnull %3, i32 noundef 1, i32 noundef %40) #5
  br label %119

119:                                              ; preds = %117, %113, %98, %90
  %120 = phi i32 [ %40, %113 ], [ %118, %117 ], [ %40, %98 ], [ %40, %90 ]
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #5
  %121 = load i32, ptr %33, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = load i8, ptr %34, align 2
  %125 = and i8 %124, 2
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = load volatile i32, ptr %10, align 4
  %129 = load volatile i32, ptr %12, align 8
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load ptr, ptr %35, align 8
  %133 = getelementptr inbounds %struct.proto, ptr %132, i32 0, i32 26
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = call zeroext i1 %134(ptr noundef %0, i32 noundef 0) #5
  br label %138

138:                                              ; preds = %136, %131, %127, %123, %119
  %139 = load i32, ptr %37, align 8
  %140 = add i32 %139, -1
  store i32 %140, ptr %37, align 8
  br i1 %91, label %141, label %148

141:                                              ; preds = %138
  %142 = load i32, ptr %1, align 4
  %143 = icmp eq i32 %142, 2147483647
  %144 = sub i32 %120, %39
  %145 = add i32 %144, %142
  %146 = call i32 @llvm.smax.i32(i32 %145, i32 0)
  %147 = select i1 %143, i32 2147483647, i32 %146
  br label %148

148:                                              ; preds = %141, %138
  %149 = phi i32 [ %147, %141 ], [ %120, %138 ]
  store i32 %149, ptr %1, align 4
  br label %38

150:                                              ; preds = %156, %153, %85, %50, %47
  %151 = phi i32 [ %158, %156 ], [ -11, %153 ], [ -32, %50 ], [ -32, %47 ], [ 0, %85 ]
  %152 = load volatile ptr, ptr %30, align 4
  call void @remove_wait_queue(ptr noundef %152, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #5
  ret i32 %151

153:                                              ; preds = %54
  %154 = load ptr, ptr %36, align 8
  %155 = getelementptr inbounds %struct.socket, ptr %154, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %155) #5
  br label %150

156:                                              ; preds = %61, %57
  %157 = icmp eq i32 %55, 2147483647
  %158 = select i1 %157, i32 -512, i32 -4
  br label %150
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sk_stream_error(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, -32
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !11

9:                                                ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #5, !srcloc !13
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %6) #5, !srcloc !14
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  %12 = sub i32 0, %11
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %5
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi i32 [ -32, %14 ], [ %12, %9 ]
  %17 = icmp eq i32 %16, -32
  %18 = and i32 %1, 16384
  %19 = icmp eq i32 %18, 0
  %20 = and i1 %19, %17
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = tail call ptr @llvm.thread.pointer() #5
  %23 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %22, i32 noundef 0) #5
  br label %24

24:                                               ; preds = %21, %15, %3
  %25 = phi i32 [ -32, %21 ], [ %16, %15 ], [ %2, %3 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_stream_kill_queues(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = icmp eq ptr %3, null
  %6 = or i1 %4, %5
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %3, %7 ], [ %17, %9 ]
  %11 = load i32, ptr %8, align 4
  %12 = add i32 %11, -1
  store volatile i32 %12, ptr %8, align 4
  %13 = load ptr, ptr %10, align 8
  %14 = getelementptr inbounds %struct.anon.43, ptr %10, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr null, ptr %14, align 4
  store ptr null, ptr %10, align 8
  %16 = getelementptr inbounds %struct.anon.43, ptr %13, i32 0, i32 1
  store volatile ptr %15, ptr %16, align 4
  store volatile ptr %13, ptr %15, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #5
  %17 = load ptr, ptr %2, align 4
  %18 = icmp eq ptr %17, %2
  %19 = icmp eq ptr %17, null
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %9

21:                                               ; preds = %9, %1
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %26, label %25, !prof !11

25:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 199, i32 noundef 9, ptr noundef null) #5
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  store i32 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.proto, ptr %29, i32 0, i32 30
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, 4095
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %35) #5
  br label %38

38:                                               ; preds = %37, %33, %26
  %39 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !11

42:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef null) #5
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47, !prof !11

47:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 205, i32 noundef 9, ptr noundef null) #5
  br label %48

48:                                               ; preds = %47, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{i64 2149048109}
!9 = !{i64 2149138774}
!10 = !{i64 2149048326}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2155287006}
!13 = !{i64 545229, i64 2148035200, i64 2148035226, i64 2148035273, i64 2148035295, i64 2148035323, i64 2148035343}
!14 = !{i64 553879, i64 553896, i64 553920, i64 553946, i64 553964}
!15 = !{i64 2155287323}
