; ModuleID = '/llk/IR/crypto/algif_hash.c_pt.bc'
source_filename = "../crypto/algif_hash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.af_alg_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [14 x i8] }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [28 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.hash_ctx = type { %struct.af_alg_sgl, ptr, %struct.crypto_wait, i32, i8, [11 x i8], %struct.ahash_request }
%struct.af_alg_sgl = type { [17 x %struct.scatterlist], [16 x ptr], i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.alg_sock = type { %struct.sock, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr }
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
%struct.anon.127 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.128 = type { ptr }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.121, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.119 }
%union.anon.4 = type { ptr }
%union.anon.119 = type { i64 }
%union.anon.121 = type { ptr }

@__UNIQUE_ID_license426 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@algif_type_hash = internal constant %struct.af_alg_type { ptr @hash_bind, ptr @hash_release, ptr @hash_setkey, ptr null, ptr @hash_accept_parent, ptr @hash_accept_parent_nokey, ptr null, ptr @algif_hash_ops, ptr @algif_hash_ops_nokey, ptr @__this_module, [14 x i8] c"hash\00\00\00\00\00\00\00\00\00\00" }, align 4
@algif_hash_ops = internal global %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @hash_accept, ptr @sock_no_getname, ptr null, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @hash_sendmsg, ptr @hash_recvmsg, ptr @sock_no_mmap, ptr @hash_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@algif_hash_ops_nokey = internal global %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @hash_accept_nokey, ptr @sock_no_getname, ptr null, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @hash_sendmsg_nokey, ptr @hash_recvmsg_nokey, ptr @sock_no_mmap, ptr @hash_sendpage_nokey, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_license426], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @af_alg_register_type(ptr noundef nonnull @algif_type_hash) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  %1 = tail call i32 @af_alg_unregister_type(ptr noundef nonnull @algif_type_hash) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !8

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algif_hash.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 476, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4:                                                ; preds = %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_register_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @hash_bind(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @crypto_alloc_ahash(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hash_release(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hash_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call i32 @crypto_ahash_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hash_accept_parent(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 64
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 32
  %10 = add i32 %9, 512
  %11 = tail call ptr @sock_kmalloc(ptr noundef %1, i32 noundef %10, i32 noundef 3264) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hash_ctx, ptr %11, i32 0, i32 1
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct.hash_ctx, ptr %11, i32 0, i32 3
  store i32 %10, ptr %15, align 16
  %16 = getelementptr inbounds %struct.hash_ctx, ptr %11, i32 0, i32 4
  store i8 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.hash_ctx, ptr %11, i32 0, i32 2
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.hash_ctx, ptr %11, i32 0, i32 2, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #6
  %19 = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 5
  store ptr %11, ptr %19, align 8
  %20 = getelementptr inbounds %struct.hash_ctx, ptr %11, i32 0, i32 6, i32 0, i32 3
  store ptr %3, ptr %20, align 16
  %21 = getelementptr inbounds %struct.hash_ctx, ptr %11, i32 0, i32 6, i32 0, i32 1
  store ptr @crypto_req_done, ptr %21, align 8
  %22 = getelementptr inbounds %struct.hash_ctx, ptr %11, i32 0, i32 6, i32 0, i32 2
  store ptr %17, ptr %22, align 4
  %23 = getelementptr inbounds %struct.hash_ctx, ptr %11, i32 0, i32 6, i32 0, i32 4
  store i32 1024, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 80
  store ptr @hash_sock_destruct, ptr %24, align 8
  br label %25

25:                                               ; preds = %13, %7, %2
  %26 = phi i32 [ -126, %2 ], [ 0, %13 ], [ -12, %7 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hash_accept_parent_nokey(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 32
  %5 = add i32 %4, 512
  %6 = tail call ptr @sock_kmalloc(ptr noundef %1, i32 noundef %5, i32 noundef 3264) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hash_ctx, ptr %6, i32 0, i32 1
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %struct.hash_ctx, ptr %6, i32 0, i32 3
  store i32 %5, ptr %10, align 16
  %11 = getelementptr inbounds %struct.hash_ctx, ptr %6, i32 0, i32 4
  store i8 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.hash_ctx, ptr %6, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hash_ctx, ptr %6, i32 0, i32 2, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #6
  %14 = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 5
  store ptr %6, ptr %14, align 8
  %15 = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10
  %16 = getelementptr inbounds %struct.hash_ctx, ptr %6, i32 0, i32 6, i32 0, i32 3
  store ptr %15, ptr %16, align 16
  %17 = getelementptr inbounds %struct.hash_ctx, ptr %6, i32 0, i32 6, i32 0, i32 1
  store ptr @crypto_req_done, ptr %17, align 8
  %18 = getelementptr inbounds %struct.hash_ctx, ptr %6, i32 0, i32 6, i32 0, i32 2
  store ptr %12, ptr %18, align 4
  %19 = getelementptr inbounds %struct.hash_ctx, ptr %6, i32 0, i32 6, i32 0, i32 4
  store i32 1024, ptr %19, align 4
  %20 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 80
  store ptr @hash_sock_destruct, ptr %20, align 8
  br label %21

21:                                               ; preds = %8, %2
  %22 = phi i32 [ 0, %8 ], [ -12, %2 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hash_sock_destruct(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 0, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr i8, ptr %9, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -64
  %13 = load i32, ptr %12, align 64
  tail call void @sock_kzfree_s(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %13) #6
  store ptr null, ptr %4, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 3
  %16 = load i32, ptr %15, align 16
  tail call void @sock_kfree_s(ptr noundef %0, ptr noundef %3, i32 noundef %16) #6
  tail call void @af_alg_release_parent(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_release_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kzfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hash_accept(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = alloca [512 x i8], align 1
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(512) %5, i8 0, i32 512, i1 false), !annotation !10
  tail call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #6
  %10 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 4
  %11 = load i8, ptr %10, align 4, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @release_sock(ptr noundef %7) #6
  br label %22

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6
  %16 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 0, i32 3
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 -44
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef %15, ptr noundef nonnull %5) #6
  call void @release_sock(ptr noundef %7) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %14, %13
  %23 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @af_alg_accept(ptr noundef %24, ptr noundef %1, i1 noundef zeroext %3) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %29 = load ptr, ptr %28, align 16
  %30 = getelementptr inbounds %struct.alg_sock, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.hash_ctx, ptr %31, i32 0, i32 4
  store i8 %11, ptr %32, align 4
  br i1 %12, label %61, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.hash_ctx, ptr %31, i32 0, i32 6, i32 0, i32 3
  %35 = load ptr, ptr %34, align 16
  %36 = load i32, ptr %35, align 64
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.hash_ctx, ptr %31, i32 0, i32 6
  %41 = getelementptr i8, ptr %35, i32 -40
  %42 = load ptr, ptr %41, align 8
  %43 = call i32 %42(ptr noundef %40, ptr noundef nonnull %5) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %39, %33
  %46 = phi i32 [ %43, %39 ], [ -126, %33 ]
  %47 = getelementptr inbounds %struct.sock, ptr %29, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %47) #6
  %48 = getelementptr inbounds %struct.sock_common, ptr %29, i32 0, i32 13
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, 1
  store i32 %50, ptr %48, align 4
  %51 = getelementptr inbounds %struct.sock, ptr %29, i32 0, i32 71
  store ptr null, ptr %51, align 8
  %52 = getelementptr inbounds %struct.sock, ptr %29, i32 0, i32 17
  store ptr null, ptr %52, align 4
  call void @_raw_write_unlock_bh(ptr noundef %47) #6
  %53 = getelementptr inbounds %struct.sock_common, ptr %29, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #6, !srcloc !13
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #6, !srcloc !14
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = icmp sgt i32 %55, 0
  br i1 %58, label %61, label %59, !prof !8

59:                                               ; preds = %57
  call void @refcount_warn_saturate(ptr noundef %53, i32 noundef 3) #6
  br label %61

60:                                               ; preds = %45
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  call void @sk_free(ptr noundef %29) #6
  br label %61

61:                                               ; preds = %60, %59, %57, %39, %27, %22, %14
  %62 = phi i32 [ %20, %14 ], [ %25, %22 ], [ 0, %27 ], [ 0, %39 ], [ %46, %57 ], [ %46, %59 ], [ %46, %60 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #6
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hash_sendmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 8
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #6
  %10 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 4
  %11 = load i8, ptr %10, align 4, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 32768
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 6, i32 0, i32 3
  %24 = load ptr, ptr %23, align 16
  %25 = getelementptr i8, ptr %24, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 -64
  %28 = load i32, ptr %27, align 64
  tail call void @sock_kzfree_s(ptr noundef %5, ptr noundef nonnull %20, i32 noundef %28) #6
  store ptr null, ptr %19, align 8
  br label %29

29:                                               ; preds = %22, %18, %13
  %30 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 6, i32 0, i32 3
  %31 = load ptr, ptr %30, align 16
  %32 = load i32, ptr %31, align 64
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %117

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 6
  %37 = getelementptr i8, ptr %31, i32 -64
  %38 = load ptr, ptr %37, align 64
  %39 = tail call i32 %38(ptr noundef %36) #6
  switch i32 %39, label %44 [
    i32 -115, label %40
    i32 -16, label %40
  ]

40:                                               ; preds = %35, %35
  %41 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %41) #6
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 2, i32 1
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i32 [ %39, %35 ], [ %43, %40 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %117

47:                                               ; preds = %44, %3
  store i8 0, ptr %10, align 4
  %48 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2, i32 4
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %83, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %53 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 6
  %54 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 6, i32 2
  %55 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 6, i32 1
  %56 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 6, i32 3
  %57 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 6, i32 0, i32 3
  %58 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 2
  %59 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 2, i32 1
  br label %60

60:                                               ; preds = %79, %51
  %61 = phi i32 [ %49, %51 ], [ %81, %79 ]
  %62 = phi i32 [ 0, %51 ], [ %80, %79 ]
  %63 = tail call i32 @llvm.smin.i32(i32 %9, i32 %61)
  %64 = tail call i32 @llvm.smin.i32(i32 %63, i32 65536)
  %65 = tail call i32 @af_alg_make_sg(ptr noundef %7, ptr noundef %52, i32 noundef %64) #6
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = icmp eq i32 %62, 0
  br i1 %68, label %119, label %124

69:                                               ; preds = %60
  store ptr %7, ptr %54, align 4
  store i32 %65, ptr %55, align 8
  store ptr null, ptr %56, align 32
  %70 = load ptr, ptr %57, align 16
  %71 = getelementptr i8, ptr %70, i32 -60
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %72(ptr noundef %53) #6
  switch i32 %73, label %76 [
    i32 -115, label %74
    i32 -16, label %74
  ]

74:                                               ; preds = %69, %69
  tail call void @wait_for_completion(ptr noundef %58) #6
  store i32 0, ptr %58, align 4
  %75 = load i32, ptr %59, align 4
  br label %76

76:                                               ; preds = %74, %69
  %77 = phi i32 [ %73, %69 ], [ %75, %74 ]
  tail call void @af_alg_free_sg(ptr noundef %7) #6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %76
  %80 = add i32 %65, %62
  tail call void @iov_iter_advance(ptr noundef %52, i32 noundef %65) #6
  %81 = load i32, ptr %48, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %60

83:                                               ; preds = %79, %47
  %84 = phi i32 [ 0, %47 ], [ %80, %79 ]
  %85 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 32768
  %88 = icmp eq i32 %87, 0
  %89 = lshr exact i32 %87, 15
  %90 = trunc i32 %89 to i8
  store i8 %90, ptr %10, align 4
  br i1 %88, label %91, label %124

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 6, i32 0, i32 3
  %97 = load ptr, ptr %96, align 16
  %98 = getelementptr i8, ptr %97, i32 12
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 -64
  %101 = load i32, ptr %100, align 64
  %102 = tail call ptr @sock_kmalloc(ptr noundef %5, i32 noundef %101, i32 noundef 3264) #6
  store ptr %102, ptr %92, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %117, label %104

104:                                              ; preds = %95
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %102, i8 0, i32 %101, i1 false) #6
  %105 = load ptr, ptr %92, align 8
  br label %106

106:                                              ; preds = %104, %91
  %107 = phi ptr [ %105, %104 ], [ %93, %91 ]
  %108 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 6
  %109 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 6, i32 2
  store ptr null, ptr %109, align 4
  %110 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 6, i32 1
  store i32 0, ptr %110, align 8
  %111 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 6, i32 3
  store ptr %107, ptr %111, align 32
  %112 = tail call i32 @crypto_ahash_final(ptr noundef %108) #6
  switch i32 %112, label %121 [
    i32 -115, label %113
    i32 -16, label %113
  ]

113:                                              ; preds = %106, %106
  %114 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %114) #6
  store i32 0, ptr %114, align 4
  %115 = getelementptr inbounds %struct.hash_ctx, ptr %7, i32 0, i32 2, i32 1
  %116 = load i32, ptr %115, align 4
  br label %121

117:                                              ; preds = %95, %44, %29
  %118 = phi i32 [ -12, %95 ], [ %45, %44 ], [ -126, %29 ]
  tail call void @release_sock(ptr noundef %5) #6
  br label %128

119:                                              ; preds = %76, %67
  %120 = phi i32 [ %65, %67 ], [ %77, %76 ]
  tail call void @release_sock(ptr noundef %5) #6
  br label %128

121:                                              ; preds = %113, %106
  %122 = phi i32 [ %112, %106 ], [ %116, %113 ]
  tail call void @release_sock(ptr noundef %5) #6
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %128

124:                                              ; preds = %83, %67
  %125 = phi i32 [ %62, %67 ], [ %84, %83 ]
  tail call void @release_sock(ptr noundef %5) #6
  br label %126

126:                                              ; preds = %124, %121
  %127 = phi i32 [ %84, %121 ], [ %125, %124 ]
  br label %128

128:                                              ; preds = %126, %121, %119, %117
  %129 = phi i32 [ %127, %126 ], [ %122, %121 ], [ %118, %117 ], [ %120, %119 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hash_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.alg_sock, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 6, i32 0, i32 3
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -64
  %15 = load i32, ptr %14, align 64
  %16 = icmp ult i32 %15, %2
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = icmp ugt i32 %15, %2
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 32
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %19, %17, %4
  %24 = phi i32 [ %2, %19 ], [ %2, %17 ], [ %15, %4 ]
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #6
  %25 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  %29 = load ptr, ptr %10, align 16
  %30 = getelementptr i8, ptr %29, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 -64
  %33 = load i32, ptr %32, align 64
  %34 = tail call ptr @sock_kmalloc(ptr noundef %6, i32 noundef %33, i32 noundef 3264) #6
  store ptr %34, ptr %25, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  tail call void @release_sock(ptr noundef %6) #6
  br label %108

37:                                               ; preds = %28
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %34, i8 0, i32 %33, i1 false) #6
  %38 = load ptr, ptr %25, align 8
  %39 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 6, i32 2
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 6, i32 1
  store i32 0, ptr %40, align 8
  %41 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 6, i32 3
  store ptr %38, ptr %41, align 32
  %42 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 4
  %43 = load i8, ptr %42, align 4, !range !11
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %37
  %46 = load ptr, ptr %10, align 16
  %47 = load i32, ptr %46, align 64
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %95

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %46, i32 -64
  %52 = load ptr, ptr %51, align 64
  %53 = tail call i32 %52(ptr noundef %9) #6
  switch i32 %53, label %58 [
    i32 -115, label %54
    i32 -16, label %54
  ]

54:                                               ; preds = %50, %50
  %55 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %55) #6
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 2, i32 1
  %57 = load i32, ptr %56, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %53, %50 ], [ %57, %54 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %95

61:                                               ; preds = %23
  %62 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 6, i32 2
  store ptr null, ptr %62, align 4
  %63 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 6, i32 1
  store i32 0, ptr %63, align 8
  %64 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 6, i32 3
  store ptr %26, ptr %64, align 32
  %65 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 4
  %66 = load i8, ptr %65, align 4, !range !11
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %61, %58, %37
  %69 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 4
  store i8 0, ptr %69, align 4
  %70 = tail call i32 @crypto_ahash_final(ptr noundef %9) #6
  switch i32 %70, label %75 [
    i32 -115, label %71
    i32 -16, label %71
  ]

71:                                               ; preds = %68, %68
  %72 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %72) #6
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.hash_ctx, ptr %8, i32 0, i32 2, i32 1
  %74 = load i32, ptr %73, align 4
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi i32 [ %70, %68 ], [ %74, %71 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load ptr, ptr %25, align 8
  br label %80

80:                                               ; preds = %78, %61
  %81 = phi ptr [ %79, %78 ], [ %26, %61 ]
  %82 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %83 = icmp slt i32 %24, 0
  %84 = load i1, ptr @check_copy_size.__already_done, align 1
  %85 = xor i1 %84, true
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %88, !prof !16

87:                                               ; preds = %80
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %88

88:                                               ; preds = %87, %80
  br i1 %83, label %91, label %89, !prof !16

89:                                               ; preds = %88
  %90 = tail call i32 @_copy_to_iter(ptr noundef %81, i32 noundef %24, ptr noundef %82) #6
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi i32 [ %90, %89 ], [ 0, %88 ]
  %93 = icmp eq i32 %92, %24
  %94 = select i1 %93, i32 0, i32 -14
  br label %95

95:                                               ; preds = %91, %75, %58, %45
  %96 = phi i32 [ %59, %58 ], [ %94, %91 ], [ %76, %75 ], [ -126, %45 ]
  %97 = load ptr, ptr %25, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %10, align 16
  %101 = getelementptr i8, ptr %100, i32 12
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 -64
  %104 = load i32, ptr %103, align 64
  tail call void @sock_kzfree_s(ptr noundef %6, ptr noundef nonnull %97, i32 noundef %104) #6
  store ptr null, ptr %25, align 8
  br label %105

105:                                              ; preds = %99, %95
  tail call void @release_sock(ptr noundef %6) #6
  %106 = icmp eq i32 %96, 0
  %107 = select i1 %106, i32 %24, i32 %96
  br label %108

108:                                              ; preds = %105, %36
  %109 = phi i32 [ -12, %36 ], [ %107, %105 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hash_sendpage(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  tail call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #6
  tail call void @sg_init_table(ptr noundef %9, i32 noundef 1) #6
  %10 = ptrtoint ptr %1 to i32
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !8

13:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !17
  unreachable

14:                                               ; preds = %5
  %15 = lshr i32 %4, 2
  %16 = or i32 %15, %4
  %17 = load i32, ptr %9, align 4
  %18 = and i32 %17, 3
  %19 = or i32 %18, %10
  store i32 %19, ptr %9, align 4
  %20 = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 1
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.scatterlist, ptr %9, i32 0, i32 2
  store i32 %3, ptr %21, align 4
  %22 = and i32 %16, 32768
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 0, i32 3
  %30 = load ptr, ptr %29, align 16
  %31 = getelementptr i8, ptr %30, i32 12
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 -64
  %34 = load i32, ptr %33, align 64
  %35 = tail call ptr @sock_kmalloc(ptr noundef %7, i32 noundef %34, i32 noundef 3264) #6
  store ptr %35, ptr %25, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %121, label %37

37:                                               ; preds = %28
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %35, i8 0, i32 %34, i1 false) #6
  %38 = load ptr, ptr %25, align 8
  br label %57

39:                                               ; preds = %14
  %40 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 4
  %41 = load i8, ptr %40, align 4, !range !11
  %42 = icmp eq i8 %41, 0
  %43 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  br i1 %42, label %50, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6
  %47 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 2
  store ptr %9, ptr %47, align 4
  %48 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 1
  store i32 %3, ptr %48, align 8
  %49 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 3
  store ptr %44, ptr %49, align 32
  br label %101

50:                                               ; preds = %39
  %51 = icmp eq ptr %44, null
  br i1 %51, label %52, label %70

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6
  %54 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 2
  store ptr %9, ptr %54, align 4
  %55 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 1
  store i32 %3, ptr %55, align 8
  %56 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 3
  store ptr null, ptr %56, align 32
  br label %83

57:                                               ; preds = %37, %24
  %58 = phi ptr [ %26, %24 ], [ %38, %37 ]
  %59 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6
  %60 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 2
  store ptr %9, ptr %60, align 4
  %61 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 1
  store i32 %3, ptr %61, align 8
  %62 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 3
  store ptr %58, ptr %62, align 32
  %63 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 4
  %64 = load i8, ptr %63, align 4, !range !11
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  %67 = tail call i32 @crypto_ahash_finup(ptr noundef %59) #6
  br label %108

68:                                               ; preds = %57
  %69 = tail call i32 @crypto_ahash_digest(ptr noundef %59) #6
  br label %108

70:                                               ; preds = %50
  %71 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 0, i32 3
  %72 = load ptr, ptr %71, align 16
  %73 = getelementptr i8, ptr %72, i32 12
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 -64
  %76 = load i32, ptr %75, align 64
  tail call void @sock_kzfree_s(ptr noundef %7, ptr noundef nonnull %44, i32 noundef %76) #6
  store ptr null, ptr %43, align 8
  %77 = load i8, ptr %40, align 4, !range !11
  %78 = icmp eq i8 %77, 0
  %79 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6
  %80 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 2
  store ptr %9, ptr %80, align 4
  %81 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 1
  store i32 %3, ptr %81, align 8
  %82 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 3
  store ptr null, ptr %82, align 32
  br i1 %78, label %83, label %101

83:                                               ; preds = %70, %52
  %84 = phi ptr [ %53, %52 ], [ %79, %70 ]
  %85 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 0, i32 3
  %86 = load ptr, ptr %85, align 16
  %87 = load i32, ptr %86, align 64
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %121

90:                                               ; preds = %83
  %91 = getelementptr i8, ptr %86, i32 -64
  %92 = load ptr, ptr %91, align 64
  %93 = tail call i32 %92(ptr noundef %84) #6
  switch i32 %93, label %98 [
    i32 -115, label %94
    i32 -16, label %94
  ]

94:                                               ; preds = %90, %90
  %95 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %95) #6
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 2, i32 1
  %97 = load i32, ptr %96, align 4
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i32 [ %93, %90 ], [ %97, %94 ]
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %98, %70, %45
  %102 = phi ptr [ %84, %98 ], [ %79, %70 ], [ %46, %45 ]
  %103 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 6, i32 0, i32 3
  %104 = load ptr, ptr %103, align 16
  %105 = getelementptr i8, ptr %104, i32 -60
  %106 = load ptr, ptr %105, align 4
  %107 = tail call i32 %106(ptr noundef %102) #6
  br label %108

108:                                              ; preds = %101, %68, %66
  %109 = phi i32 [ %107, %101 ], [ %67, %66 ], [ %69, %68 ]
  switch i32 %109, label %114 [
    i32 -115, label %110
    i32 -16, label %110
  ]

110:                                              ; preds = %108, %108
  %111 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %111) #6
  store i32 0, ptr %111, align 4
  %112 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 2, i32 1
  %113 = load i32, ptr %112, align 4
  br label %114

114:                                              ; preds = %110, %108
  %115 = phi i32 [ %109, %108 ], [ %113, %110 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.hash_ctx, ptr %9, i32 0, i32 4
  %119 = lshr exact i32 %22, 15
  %120 = trunc i32 %119 to i8
  store i8 %120, ptr %118, align 4
  br label %121

121:                                              ; preds = %117, %114, %98, %83, %28
  %122 = phi i32 [ %3, %117 ], [ -12, %28 ], [ %99, %98 ], [ %115, %114 ], [ -126, %83 ]
  tail call void @release_sock(ptr noundef %7) #6
  ret i32 %122
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_accept(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_make_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_free_sg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hash_accept_nokey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #6
  %7 = getelementptr inbounds %struct.alg_sock, ptr %6, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @release_sock(ptr noundef %6) #6
  br label %25

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.alg_sock, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.alg_sock, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  tail call void @lock_sock_nested(ptr noundef %13, i32 noundef 1) #6
  %16 = getelementptr inbounds %struct.crypto_ahash, ptr %15, i32 0, i32 10
  %17 = load i32, ptr %16, align 64
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.alg_sock, ptr %13, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #6, !srcloc !13
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #6, !srcloc !18
  store volatile i32 0, ptr %7, align 4
  br label %23

23:                                               ; preds = %20, %11
  %24 = phi i32 [ -126, %11 ], [ 0, %20 ]
  tail call void @release_sock(ptr noundef %13) #6
  tail call void @release_sock(ptr noundef %6) #6
  br i1 %19, label %25, label %27

25:                                               ; preds = %23, %10
  %26 = tail call i32 @hash_accept(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ %24, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hash_sendmsg_nokey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #6
  %6 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @release_sock(ptr noundef %5) #6
  br label %24

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.alg_sock, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  tail call void @lock_sock_nested(ptr noundef %12, i32 noundef 1) #6
  %15 = getelementptr inbounds %struct.crypto_ahash, ptr %14, i32 0, i32 10
  %16 = load i32, ptr %15, align 64
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.alg_sock, ptr %12, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #6, !srcloc !13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #6, !srcloc !18
  store volatile i32 0, ptr %6, align 4
  br label %22

22:                                               ; preds = %19, %10
  %23 = phi i32 [ -126, %10 ], [ 0, %19 ]
  tail call void @release_sock(ptr noundef %12) #6
  tail call void @release_sock(ptr noundef %5) #6
  br i1 %18, label %24, label %26

24:                                               ; preds = %22, %9
  %25 = tail call i32 @hash_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %25, %24 ], [ %23, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hash_recvmsg_nokey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #6
  %7 = getelementptr inbounds %struct.alg_sock, ptr %6, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @release_sock(ptr noundef %6) #6
  br label %25

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.alg_sock, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.alg_sock, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  tail call void @lock_sock_nested(ptr noundef %13, i32 noundef 1) #6
  %16 = getelementptr inbounds %struct.crypto_ahash, ptr %15, i32 0, i32 10
  %17 = load i32, ptr %16, align 64
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.alg_sock, ptr %13, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #6, !srcloc !13
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #6, !srcloc !18
  store volatile i32 0, ptr %7, align 4
  br label %23

23:                                               ; preds = %20, %11
  %24 = phi i32 [ -126, %11 ], [ 0, %20 ]
  tail call void @release_sock(ptr noundef %13) #6
  tail call void @release_sock(ptr noundef %6) #6
  br i1 %19, label %25, label %27

25:                                               ; preds = %23, %10
  %26 = tail call i32 @hash_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ %24, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hash_sendpage_nokey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  tail call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #6
  %8 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @release_sock(ptr noundef %7) #6
  br label %26

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.alg_sock, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 8
  tail call void @lock_sock_nested(ptr noundef %14, i32 noundef 1) #6
  %17 = getelementptr inbounds %struct.crypto_ahash, ptr %16, i32 0, i32 10
  %18 = load i32, ptr %17, align 64
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.alg_sock, ptr %14, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #6, !srcloc !13
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #6, !srcloc !18
  store volatile i32 0, ptr %8, align 4
  br label %24

24:                                               ; preds = %21, %12
  %25 = phi i32 [ -126, %12 ], [ 0, %21 ]
  tail call void @release_sock(ptr noundef %14) #6
  tail call void @release_sock(ptr noundef %7) #6
  br i1 %20, label %26, label %28

26:                                               ; preds = %24, %11
  %27 = tail call i32 @hash_sendpage(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %27, %26 ], [ %25, %24 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_unregister_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!9 = !{i64 2155511840, i64 2155512324, i64 2155511877, i64 2155511933, i64 2155511967, i64 2155511991, i64 2155512032, i64 2155512053, i64 2155512081, i64 2155512115}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
!12 = !{i64 2147993933}
!13 = !{i64 317010, i64 2147818576, i64 2147818602, i64 2147818649, i64 2147818671, i64 2147818699, i64 2147818719}
!14 = !{i64 2147896092, i64 2147896124, i64 2147896153, i64 2147896187, i64 2147896218, i64 2147896241}
!15 = !{i64 2148606809}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2152222550, i64 2152223042, i64 2152222587, i64 2152222643, i64 2152222677, i64 2152222701, i64 2152222742, i64 2152222763, i64 2152222791, i64 2152222825}
!18 = !{i64 2147894634, i64 2147894660, i64 2147894689, i64 2147894723, i64 2147894754, i64 2147894777}
