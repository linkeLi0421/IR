; ModuleID = '/llk/IR/crypto/algif_skcipher.c_pt.bc'
source_filename = "../crypto/algif_skcipher.c"
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
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.af_alg_ctx = type { %struct.list_head, ptr, i32, %struct.crypto_wait, i32, %struct.atomic_t, i8, i8, i8, i8, i32 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.af_alg_async_req = type { ptr, ptr, %struct.af_alg_rsgl, ptr, %struct.list_head, ptr, i32, i32, i32, [56 x i8], %union.anon.138 }
%struct.af_alg_rsgl = type { %struct.af_alg_sgl, %struct.list_head, i32 }
%struct.af_alg_sgl = type { [17 x %struct.scatterlist], [16 x ptr], i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%union.anon.138 = type { %struct.aead_request }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }

@__UNIQUE_ID_license427 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@algif_type_skcipher = internal constant %struct.af_alg_type { ptr @skcipher_bind, ptr @skcipher_release, ptr @skcipher_setkey, ptr null, ptr @skcipher_accept_parent, ptr @skcipher_accept_parent_nokey, ptr null, ptr @algif_skcipher_ops, ptr @algif_skcipher_ops_nokey, ptr @__this_module, [14 x i8] c"skcipher\00\00\00\00\00\00" }, align 4
@algif_skcipher_ops = internal global %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @af_alg_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @skcipher_sendmsg, ptr @skcipher_recvmsg, ptr @sock_no_mmap, ptr @af_alg_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@algif_skcipher_ops_nokey = internal global %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @af_alg_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @skcipher_sendmsg_nokey, ptr @skcipher_recvmsg_nokey, ptr @sock_no_mmap, ptr @skcipher_sendpage_nokey, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_license427], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @af_alg_register_type(ptr noundef nonnull @algif_type_skcipher) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  %1 = tail call i32 @af_alg_unregister_type(ptr noundef nonnull @algif_type_skcipher) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !8

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algif_skcipher.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 383, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

4:                                                ; preds = %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_register_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @skcipher_bind(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @crypto_alloc_skcipher(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @skcipher_release(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call i32 @crypto_skcipher_setkey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_accept_parent(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 64
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @skcipher_accept_parent_nokey(ptr noundef %0, ptr noundef %1)
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ -126, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_accept_parent_nokey(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = tail call ptr @sock_kmalloc(ptr noundef %1, i32 noundef 52, i32 noundef 3264) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %3, i8 0, i32 52, i1 false)
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -36
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @sock_kmalloc(ptr noundef %1, i32 noundef %9, i32 noundef 3264) #6
  %11 = getelementptr inbounds %struct.af_alg_ctx, ptr %3, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void @sock_kfree_s(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 52) #6
  br label %24

14:                                               ; preds = %5
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 -36
  %17 = load i32, ptr %16, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %10, i8 0, i32 %17, i1 false)
  store volatile ptr %3, ptr %3, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.af_alg_ctx, ptr %3, i32 0, i32 10
  store i32 52, ptr %19, align 4
  %20 = getelementptr inbounds %struct.af_alg_ctx, ptr %3, i32 0, i32 3
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.af_alg_ctx, ptr %3, i32 0, i32 3, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #6
  %22 = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 5
  store ptr %3, ptr %22, align 8
  %23 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 80
  store ptr @skcipher_sock_destruct, ptr %23, align 8
  br label %24

24:                                               ; preds = %14, %13, %2
  %25 = phi i32 [ 0, %14 ], [ -12, %13 ], [ -12, %2 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @skcipher_sock_destruct(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.af_alg_ctx, ptr %3, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  tail call void @af_alg_pull_tsgl(ptr noundef %0, i32 noundef %9, ptr noundef null, i32 noundef 0) #6
  %10 = getelementptr inbounds %struct.af_alg_ctx, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -36
  %15 = load i32, ptr %14, align 4
  tail call void @sock_kzfree_s(ptr noundef %0, ptr noundef %11, i32 noundef %15) #6
  %16 = getelementptr inbounds %struct.af_alg_ctx, ptr %3, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  tail call void @sock_kfree_s(ptr noundef %0, ptr noundef %3, i32 noundef %17) #6
  tail call void @af_alg_release_parent(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_pull_tsgl(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kzfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_release_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.crypto_skcipher, ptr %9, i32 0, i32 2, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -36
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @af_alg_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %13) #6
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  tail call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #6
  %8 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %171, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 7
  br label %13

13:                                               ; preds = %167, %11
  %14 = phi i32 [ 0, %11 ], [ %168, %167 ]
  %15 = load ptr, ptr %6, align 16
  %16 = getelementptr inbounds %struct.alg_sock, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.alg_sock, ptr %15, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.alg_sock, ptr %17, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.crypto_skcipher, ptr %21, i32 0, i32 2, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 -32
  %25 = load i32, ptr %24, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4
  %26 = getelementptr inbounds %struct.af_alg_ctx, ptr %19, i32 0, i32 9
  %27 = load i8, ptr %26, align 1, !range !10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.af_alg_ctx, ptr %19, i32 0, i32 6
  %31 = load i8, ptr %30, align 4, !range !10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.af_alg_ctx, ptr %19, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %35, %25
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %13
  %38 = call i32 @af_alg_wait_for_data(ptr noundef %15, i32 noundef %3, i32 noundef %25) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %158

40:                                               ; preds = %37, %33, %29
  %41 = load i32, ptr %21, align 64
  %42 = add i32 %41, 576
  %43 = call ptr @af_alg_alloc_areq(ptr noundef %15, i32 noundef %42) #6
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = ptrtoint ptr %43 to i32
  br label %158

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.af_alg_ctx, ptr %19, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = call i32 @af_alg_get_rsgl(ptr noundef %15, ptr noundef %1, i32 noundef %3, ptr noundef %43, i32 noundef %49, ptr noundef nonnull %5) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %151

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.af_alg_ctx, ptr %19, i32 0, i32 6
  %54 = load i8, ptr %53, align 4, !range !10
  %55 = icmp eq i8 %54, 0
  %56 = load i32, ptr %5, align 4
  br i1 %55, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, ptr %48, align 4
  %59 = icmp ult i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %57, %52
  %61 = urem i32 %56, %25
  %62 = sub i32 %56, %61
  store i32 %62, ptr %5, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i32 [ %62, %60 ], [ %56, %57 ]
  %65 = call i32 @af_alg_count_tsgl(ptr noundef %15, i32 noundef %64, i32 noundef 0) #6
  %66 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 6
  %67 = icmp eq i32 %65, 0
  %68 = select i1 %67, i32 1, i32 %65
  store i32 %68, ptr %66, align 4
  %69 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %68, i32 20) #6
  %70 = extractvalue { i32, i1 } %69, 1
  %71 = extractvalue { i32, i1 } %69, 0
  %72 = select i1 %70, i32 -1, i32 %71
  %73 = call ptr @sock_kmalloc(ptr noundef %15, i32 noundef %72, i32 noundef 3264) #6
  %74 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 5
  store ptr %73, ptr %74, align 8
  %75 = icmp eq ptr %73, null
  br i1 %75, label %151, label %76

76:                                               ; preds = %63
  %77 = load i32, ptr %66, align 4
  call void @sg_init_table(ptr noundef nonnull %73, i32 noundef %77) #6
  %78 = load i32, ptr %5, align 4
  %79 = load ptr, ptr %74, align 8
  call void @af_alg_pull_tsgl(ptr noundef %15, i32 noundef %78, ptr noundef %79, i32 noundef 0) #6
  %80 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 10
  %81 = getelementptr inbounds %struct.crypto_skcipher, ptr %21, i32 0, i32 2
  %82 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 10, i32 0, i32 3
  store ptr %81, ptr %82, align 16
  %83 = load ptr, ptr %74, align 8
  %84 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 2
  %85 = load i32, ptr %5, align 4
  %86 = getelementptr inbounds %struct.af_alg_ctx, ptr %19, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 10, i32 0, i32 0, i32 1
  store ptr %83, ptr %88, align 8
  %89 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 10, i32 0, i32 0, i32 2
  store ptr %84, ptr %89, align 4
  store i32 %85, ptr %80, align 64
  %90 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 10, i32 0, i32 0, i32 0, i32 1
  store ptr %87, ptr %90, align 4
  %91 = load ptr, ptr %12, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %134, label %93

93:                                               ; preds = %76
  %94 = getelementptr inbounds %struct.kiocb, ptr %91, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %134, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #6, !srcloc !11
  %99 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #6, !srcloc !12
  %100 = extractvalue { i32, i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102, !prof !13

102:                                              ; preds = %97
  %103 = add i32 %100, 1
  %104 = or i32 %103, %100
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %108, label %106, !prof !8

106:                                              ; preds = %102, %97
  %107 = phi i32 [ 2, %97 ], [ 1, %102 ]
  call void @refcount_warn_saturate(ptr noundef %98, i32 noundef %107) #6
  br label %108

108:                                              ; preds = %106, %102
  %109 = load ptr, ptr %12, align 8
  store ptr %109, ptr %43, align 64
  %110 = load i32, ptr %5, align 4
  %111 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 7
  store i32 %110, ptr %111, align 64
  %112 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 10, i32 0, i32 1
  store ptr @af_alg_async_cb, ptr %112, align 8
  %113 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 10, i32 0, i32 2
  store ptr %43, ptr %113, align 4
  %114 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 10, i32 0, i32 4
  store i32 512, ptr %114, align 4
  %115 = getelementptr inbounds %struct.af_alg_ctx, ptr %19, i32 0, i32 8
  %116 = load i8, ptr %115, align 2, !range !10
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %108
  %119 = call i32 @crypto_skcipher_encrypt(ptr noundef %80) #6
  br label %122

120:                                              ; preds = %108
  %121 = call i32 @crypto_skcipher_decrypt(ptr noundef %80) #6
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = icmp eq i32 %123, -115
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %161

126:                                              ; preds = %122
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #6, !srcloc !11
  %127 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #6, !srcloc !15
  %128 = extractvalue { i32, i32, i32 } %127, 0
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = icmp sgt i32 %128, 0
  br i1 %131, label %153, label %132, !prof !8

132:                                              ; preds = %130
  call void @refcount_warn_saturate(ptr noundef %98, i32 noundef 3) #6
  br label %153

133:                                              ; preds = %126
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !16
  call void @sk_free(ptr noundef %15) #6
  br label %153

134:                                              ; preds = %93, %76
  %135 = getelementptr inbounds %struct.af_alg_ctx, ptr %19, i32 0, i32 3
  %136 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 10, i32 0, i32 1
  store ptr @crypto_req_done, ptr %136, align 8
  %137 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 10, i32 0, i32 2
  store ptr %135, ptr %137, align 4
  %138 = getelementptr inbounds %struct.af_alg_async_req, ptr %43, i32 0, i32 10, i32 0, i32 4
  store i32 1536, ptr %138, align 4
  %139 = getelementptr inbounds %struct.af_alg_ctx, ptr %19, i32 0, i32 8
  %140 = load i8, ptr %139, align 2, !range !10
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %134
  %143 = call i32 @crypto_skcipher_encrypt(ptr noundef %80) #6
  br label %146

144:                                              ; preds = %134
  %145 = call i32 @crypto_skcipher_decrypt(ptr noundef %80) #6
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  switch i32 %147, label %153 [
    i32 -115, label %148
    i32 -16, label %148
  ]

148:                                              ; preds = %146, %146
  call void @wait_for_completion(ptr noundef %135) #6
  store i32 0, ptr %135, align 4
  %149 = getelementptr inbounds %struct.af_alg_ctx, ptr %19, i32 0, i32 3, i32 1
  %150 = load i32, ptr %149, align 4
  br label %153

151:                                              ; preds = %63, %47
  %152 = phi i32 [ -12, %63 ], [ %50, %47 ]
  call void @af_alg_free_resources(ptr noundef %43) #6
  br label %158

153:                                              ; preds = %148, %146, %133, %132, %130
  %154 = phi i32 [ %147, %146 ], [ %150, %148 ], [ %123, %130 ], [ %123, %132 ], [ %123, %133 ]
  call void @af_alg_free_resources(ptr noundef %43) #6
  %155 = icmp eq i32 %154, 0
  %156 = load i32, ptr %5, align 4
  %157 = select i1 %155, i32 %156, i32 %154
  br label %158

158:                                              ; preds = %153, %151, %45, %37
  %159 = phi i32 [ %46, %45 ], [ %38, %37 ], [ %152, %151 ], [ %157, %153 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %167

161:                                              ; preds = %158, %125
  %162 = phi i32 [ -529, %125 ], [ %159, %158 ]
  %163 = icmp ne i32 %162, -529
  %164 = icmp ne i32 %14, 0
  %165 = select i1 %163, i1 %164, i1 false
  %166 = select i1 %165, i32 %14, i32 %162
  br label %171

167:                                              ; preds = %158
  %168 = add i32 %159, %14
  %169 = load i32, ptr %8, align 8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %13

171:                                              ; preds = %167, %161, %4
  %172 = phi i32 [ %166, %161 ], [ 0, %4 ], [ %168, %167 ]
  call void @af_alg_wmem_wakeup(ptr noundef %7) #6
  call void @release_sock(ptr noundef %7) #6
  ret i32 %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_sendmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_wmem_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_wait_for_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @af_alg_alloc_areq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_get_rsgl(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_count_tsgl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_async_cb(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_free_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_sendmsg_nokey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
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
  %15 = getelementptr inbounds %struct.crypto_skcipher, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 64
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.alg_sock, ptr %12, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #6, !srcloc !11
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #6, !srcloc !17
  store volatile i32 0, ptr %6, align 4
  br label %22

22:                                               ; preds = %19, %10
  %23 = phi i32 [ -126, %10 ], [ 0, %19 ]
  tail call void @release_sock(ptr noundef %12) #6
  tail call void @release_sock(ptr noundef %5) #6
  br i1 %18, label %24, label %35

24:                                               ; preds = %22, %9
  %25 = load ptr, ptr %4, align 16
  %26 = getelementptr inbounds %struct.alg_sock, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.alg_sock, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.crypto_skcipher, ptr %29, i32 0, i32 2, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 -36
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @af_alg_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %33) #6
  br label %35

35:                                               ; preds = %24, %22
  %36 = phi i32 [ %34, %24 ], [ %23, %22 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_recvmsg_nokey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
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
  %16 = getelementptr inbounds %struct.crypto_skcipher, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 64
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.alg_sock, ptr %13, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #6, !srcloc !11
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #6, !srcloc !17
  store volatile i32 0, ptr %7, align 4
  br label %23

23:                                               ; preds = %20, %11
  %24 = phi i32 [ -126, %11 ], [ 0, %20 ]
  tail call void @release_sock(ptr noundef %13) #6
  tail call void @release_sock(ptr noundef %6) #6
  br i1 %19, label %25, label %27

25:                                               ; preds = %23, %10
  %26 = tail call i32 @skcipher_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ %24, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @skcipher_sendpage_nokey(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
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
  %17 = getelementptr inbounds %struct.crypto_skcipher, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 64
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.alg_sock, ptr %14, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #6, !srcloc !11
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #6, !srcloc !17
  store volatile i32 0, ptr %8, align 4
  br label %24

24:                                               ; preds = %21, %12
  %25 = phi i32 [ -126, %12 ], [ 0, %21 ]
  tail call void @release_sock(ptr noundef %14) #6
  tail call void @release_sock(ptr noundef %7) #6
  br i1 %20, label %26, label %28

26:                                               ; preds = %24, %11
  %27 = tail call i32 @af_alg_sendpage(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #6
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %27, %26 ], [ %25, %24 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_unregister_type(ptr noundef) local_unnamed_addr #1

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
!9 = !{i64 2155484923, i64 2155485411, i64 2155484960, i64 2155485016, i64 2155485050, i64 2155485074, i64 2155485115, i64 2155485136, i64 2155485164, i64 2155485198}
!10 = !{i8 0, i8 2}
!11 = !{i64 294874, i64 2147796440, i64 2147796466, i64 2147796513, i64 2147796535, i64 2147796563, i64 2147796583}
!12 = !{i64 2147871599, i64 2147871631, i64 2147871660, i64 2147871694, i64 2147871725, i64 2147871748}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2147971797}
!15 = !{i64 2147873956, i64 2147873988, i64 2147874017, i64 2147874051, i64 2147874082, i64 2147874105}
!16 = !{i64 2148582498}
!17 = !{i64 2147872498, i64 2147872524, i64 2147872553, i64 2147872587, i64 2147872618, i64 2147872641}
