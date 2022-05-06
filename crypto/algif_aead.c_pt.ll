; ModuleID = '/llk/IR/crypto/algif_aead.c_pt.bc'
source_filename = "../crypto/algif_aead.c"
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
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.aead_tfm = type { ptr, ptr }
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
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.af_alg_tsgl = type { %struct.list_head, i32, [0 x %struct.scatterlist] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.af_alg_async_req = type { ptr, ptr, %struct.af_alg_rsgl, ptr, %struct.list_head, ptr, i32, i32, i32, [56 x i8], %union.anon.138 }
%struct.af_alg_rsgl = type { %struct.af_alg_sgl, %struct.list_head, i32 }
%struct.af_alg_sgl = type { [17 x %struct.scatterlist], [16 x ptr], i32 }
%union.anon.138 = type { %struct.aead_request }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [20 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }

@__UNIQUE_ID_license427 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author428 = internal constant [45 x i8] c"author=Stephan Mueller <smueller@chronox.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description429 = internal constant [56 x i8] c"description=AEAD kernel crypto API user space interface\00", section ".modinfo", align 1
@algif_type_aead = internal constant %struct.af_alg_type { ptr @aead_bind, ptr @aead_release, ptr @aead_setkey, ptr null, ptr @aead_accept_parent, ptr @aead_accept_parent_nokey, ptr @aead_setauthsize, ptr @algif_aead_ops, ptr @algif_aead_ops_nokey, ptr @__this_module, [14 x i8] c"aead\00\00\00\00\00\00\00\00\00\00" }, align 4
@algif_aead_ops = internal global %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @af_alg_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @aead_sendmsg, ptr @aead_recvmsg, ptr @sock_no_mmap, ptr @af_alg_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@algif_aead_ops_nokey = internal global %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @af_alg_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @aead_sendmsg_nokey, ptr @aead_recvmsg_nokey, ptr @sock_no_mmap, ptr @aead_sendpage_nokey, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author428, ptr @__UNIQUE_ID_description429, ptr @__UNIQUE_ID_license427], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @af_alg_register_type(ptr noundef nonnull @algif_type_aead) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  %1 = tail call i32 @af_alg_unregister_type(ptr noundef nonnull @algif_type_aead) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !8

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algif_aead.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 598, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

4:                                                ; preds = %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_register_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @aead_bind(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @crypto_alloc_aead(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #7
  br label %18

11:                                               ; preds = %7
  %12 = tail call ptr @crypto_get_default_null_skcipher() #7
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %8, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %8, ptr noundef %15) #7
  tail call void @kfree(ptr noundef nonnull %5) #7
  br label %18

16:                                               ; preds = %11
  store ptr %8, ptr %5, align 8
  %17 = getelementptr inbounds %struct.aead_tfm, ptr %5, i32 0, i32 1
  store ptr %12, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %14, %10, %3
  %19 = phi ptr [ %8, %10 ], [ %12, %14 ], [ %5, %16 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aead_release(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.crypto_aead, ptr %2, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %2, ptr noundef %3) #7
  tail call void @crypto_put_default_null_skcipher() #7
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_setkey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = tail call i32 @crypto_aead_setkey(ptr noundef %4, ptr noundef %1, i32 noundef %2) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_accept_parent(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 64
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -40
  %12 = load i32, ptr %11, align 8
  %13 = tail call ptr @sock_kmalloc(ptr noundef %1, i32 noundef 52, i32 noundef 3264) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %8
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %13, i8 0, i32 52, i1 false) #7
  %16 = tail call ptr @sock_kmalloc(ptr noundef %1, i32 noundef %12, i32 noundef 3264) #7
  %17 = getelementptr inbounds %struct.af_alg_ctx, ptr %13, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @sock_kfree_s(ptr noundef %1, ptr noundef nonnull %13, i32 noundef 52) #7
  br label %27

20:                                               ; preds = %15
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %16, i8 0, i32 %12, i1 false) #7
  store volatile ptr %13, ptr %13, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %13, ptr %21, align 4
  %22 = getelementptr inbounds %struct.af_alg_ctx, ptr %13, i32 0, i32 10
  store i32 52, ptr %22, align 4
  %23 = getelementptr inbounds %struct.af_alg_ctx, ptr %13, i32 0, i32 3
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.af_alg_ctx, ptr %13, i32 0, i32 3, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #7
  %25 = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 5
  store ptr %13, ptr %25, align 8
  %26 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 80
  store ptr @aead_sock_destruct, ptr %26, align 8
  br label %27

27:                                               ; preds = %20, %19, %8, %2
  %28 = phi i32 [ -126, %2 ], [ 0, %20 ], [ -12, %19 ], [ -12, %8 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_accept_parent_nokey(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.crypto_aead, ptr %3, i32 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -40
  %7 = load i32, ptr %6, align 8
  %8 = tail call ptr @sock_kmalloc(ptr noundef %1, i32 noundef 52, i32 noundef 3264) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i32 52, i1 false)
  %11 = tail call ptr @sock_kmalloc(ptr noundef %1, i32 noundef %7, i32 noundef 3264) #7
  %12 = getelementptr inbounds %struct.af_alg_ctx, ptr %8, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @sock_kfree_s(ptr noundef %1, ptr noundef nonnull %8, i32 noundef 52) #7
  br label %22

15:                                               ; preds = %10
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %11, i8 0, i32 %7, i1 false)
  store volatile ptr %8, ptr %8, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %8, ptr %16, align 4
  %17 = getelementptr inbounds %struct.af_alg_ctx, ptr %8, i32 0, i32 10
  store i32 52, ptr %17, align 4
  %18 = getelementptr inbounds %struct.af_alg_ctx, ptr %8, i32 0, i32 3
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.af_alg_ctx, ptr %8, i32 0, i32 3, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #7
  %20 = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 5
  store ptr %8, ptr %20, align 8
  %21 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 80
  store ptr @aead_sock_destruct, ptr %21, align 8
  br label %22

22:                                               ; preds = %15, %14, %2
  %23 = phi i32 [ 0, %15 ], [ -12, %14 ], [ -12, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_setauthsize(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call i32 @crypto_aead_setauthsize(ptr noundef %3, i32 noundef %1) #7
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_get_default_null_skcipher() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_null_skcipher() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aead_sock_destruct(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.alg_sock, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.crypto_aead, ptr %8, i32 0, i32 3, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -40
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.af_alg_ctx, ptr %3, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  tail call void @af_alg_pull_tsgl(ptr noundef %0, i32 noundef %14, ptr noundef null, i32 noundef 0) #7
  %15 = getelementptr inbounds %struct.af_alg_ctx, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @sock_kzfree_s(ptr noundef %0, ptr noundef %16, i32 noundef %12) #7
  %17 = getelementptr inbounds %struct.af_alg_ctx, ptr %3, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  tail call void @sock_kfree_s(ptr noundef %0, ptr noundef %3, i32 noundef %18) #7
  tail call void @af_alg_release_parent(ptr noundef %0) #7
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
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #1

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
define internal i32 @aead_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_aead, ptr %10, i32 0, i32 3, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 -40
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @af_alg_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %14) #7
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca [448 x i8], align 64
  %6 = alloca [448 x i8], align 64
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 16
  tail call void @lock_sock_nested(ptr noundef %9, i32 noundef 0) #7
  %10 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %269, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.skcipher_request, ptr %6, i32 0, i32 4, i32 3
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %6, i32 0, i32 4, i32 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.skcipher_request, ptr %6, i32 0, i32 3
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %5, i32 0, i32 4, i32 3
  %19 = getelementptr inbounds %struct.skcipher_request, ptr %5, i32 0, i32 4, i32 4
  %20 = getelementptr inbounds %struct.skcipher_request, ptr %5, i32 0, i32 2
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %5, i32 0, i32 3
  %22 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 7
  br label %23

23:                                               ; preds = %265, %13
  %24 = phi i32 [ 0, %13 ], [ %266, %265 ]
  %25 = load ptr, ptr %8, align 16
  %26 = getelementptr inbounds %struct.alg_sock, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.alg_sock, ptr %25, i32 0, i32 5
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.alg_sock, ptr %27, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.aead_tfm, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %32, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4
  %36 = getelementptr inbounds %struct.af_alg_ctx, ptr %29, i32 0, i32 9
  %37 = load i8, ptr %36, align 1, !range !10
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.af_alg_ctx, ptr %29, i32 0, i32 6
  %41 = load i8, ptr %40, align 4, !range !10
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39, %23
  %44 = call i32 @af_alg_wait_for_data(ptr noundef %25, i32 noundef %3, i32 noundef 0) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %256

46:                                               ; preds = %43
  %47 = load ptr, ptr %26, align 8
  %48 = load ptr, ptr %28, align 8
  %49 = getelementptr inbounds %struct.alg_sock, ptr %47, i32 0, i32 5
  %50 = load ptr, ptr %49, align 8
  br label %51

51:                                               ; preds = %46, %39
  %52 = phi ptr [ %50, %46 ], [ %31, %39 ]
  %53 = phi ptr [ %48, %46 ], [ %29, %39 ]
  %54 = load ptr, ptr %52, align 4
  %55 = load i32, ptr %54, align 64
  %56 = getelementptr inbounds %struct.af_alg_ctx, ptr %53, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.af_alg_ctx, ptr %53, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.af_alg_ctx, ptr %53, i32 0, i32 8
  %61 = load i8, ptr %60, align 2, !range !10
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %62, i32 %55, i32 0
  %64 = add i32 %63, %59
  %65 = icmp ult i32 %57, %64
  br i1 %65, label %254, label %66

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.af_alg_ctx, ptr %29, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.af_alg_ctx, ptr %29, i32 0, i32 8
  %70 = load i8, ptr %69, align 2, !range !10
  %71 = icmp eq i8 %70, 0
  %72 = sub i32 0, %35
  %73 = select i1 %71, i32 %72, i32 %35
  %74 = add i32 %73, %68
  %75 = getelementptr inbounds %struct.af_alg_ctx, ptr %29, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = sub i32 %68, %76
  %78 = getelementptr inbounds %struct.crypto_aead, ptr %32, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 576
  %81 = call ptr @af_alg_alloc_areq(ptr noundef %25, i32 noundef %80) #7
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %85

83:                                               ; preds = %66
  %84 = ptrtoint ptr %81 to i32
  br label %256

85:                                               ; preds = %66
  %86 = call i32 @af_alg_get_rsgl(ptr noundef %25, ptr noundef %1, i32 noundef %3, ptr noundef %81, i32 noundef %74, ptr noundef nonnull %7) #7
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %248

88:                                               ; preds = %85
  %89 = load i32, ptr %7, align 4
  %90 = icmp ugt i32 %74, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = sub i32 %74, %89
  %93 = icmp ult i32 %77, %92
  br i1 %93, label %248, label %94

94:                                               ; preds = %91
  %95 = sub i32 %77, %92
  br label %96

96:                                               ; preds = %94, %88
  %97 = phi i32 [ %77, %88 ], [ %95, %94 ]
  %98 = phi i32 [ %74, %88 ], [ %89, %94 ]
  %99 = load i32, ptr %75, align 4
  %100 = add i32 %99, %97
  %101 = load ptr, ptr %29, align 4
  br label %102

102:                                              ; preds = %123, %96
  %103 = phi ptr [ %101, %96 ], [ %104, %123 ]
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %103, %29
  br i1 %105, label %126, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.af_alg_tsgl, ptr %103, i32 0, i32 2
  %108 = getelementptr inbounds %struct.af_alg_tsgl, ptr %103, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %120, %106
  %112 = phi i32 [ %121, %120 ], [ 0, %106 ]
  %113 = getelementptr %struct.scatterlist, ptr %107, i32 %112, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = getelementptr %struct.scatterlist, ptr %107, i32 %112
  %118 = load i32, ptr %117, align 4
  %119 = icmp ult i32 %118, 4
  br i1 %119, label %120, label %123

120:                                              ; preds = %116, %111
  %121 = add nuw i32 %112, 1
  %122 = icmp eq i32 %121, %109
  br i1 %122, label %123, label %111

123:                                              ; preds = %120, %116, %106
  %124 = phi ptr [ null, %106 ], [ null, %120 ], [ %117, %116 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %102, label %128

126:                                              ; preds = %102
  %127 = icmp eq i32 %100, 0
  br i1 %127, label %128, label %248

128:                                              ; preds = %126, %123
  %129 = phi ptr [ null, %126 ], [ %124, %123 ]
  %130 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 2
  %131 = load i8, ptr %69, align 2, !range !10
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(448) %6, i8 0, i32 448, i1 false) #7, !annotation !11
  %134 = getelementptr inbounds %struct.crypto_skcipher, ptr %34, i32 0, i32 2
  store ptr %134, ptr %14, align 32
  store i32 512, ptr %15, align 4
  store ptr %129, ptr %16, align 8
  store ptr %130, ptr %17, align 4
  store i32 %100, ptr %6, align 64
  %135 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %6) #7
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %248

137:                                              ; preds = %133
  call void @af_alg_pull_tsgl(ptr noundef %25, i32 noundef %100, ptr noundef null, i32 noundef 0) #7
  br label %179

138:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(448) %5, i8 0, i32 448, i1 false) #7, !annotation !11
  %139 = getelementptr inbounds %struct.crypto_skcipher, ptr %34, i32 0, i32 2
  store ptr %139, ptr %18, align 32
  store i32 512, ptr %19, align 4
  store ptr %129, ptr %20, align 8
  store ptr %130, ptr %21, align 4
  store i32 %98, ptr %5, align 64
  %140 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %5) #7
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %248

142:                                              ; preds = %138
  %143 = sub i32 %100, %35
  %144 = call i32 @af_alg_count_tsgl(ptr noundef %25, i32 noundef %100, i32 noundef %143) #7
  %145 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 6
  %146 = icmp eq i32 %144, 0
  %147 = select i1 %146, i32 1, i32 %144
  store i32 %147, ptr %145, align 4
  %148 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %147, i32 20) #7
  %149 = extractvalue { i32, i1 } %148, 1
  %150 = extractvalue { i32, i1 } %148, 0
  %151 = select i1 %149, i32 -1, i32 %150
  %152 = call ptr @sock_kmalloc(ptr noundef %25, i32 noundef %151, i32 noundef 3264) #7
  %153 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 5
  store ptr %152, ptr %153, align 8
  %154 = icmp eq ptr %152, null
  br i1 %154, label %248, label %155

155:                                              ; preds = %142
  %156 = load i32, ptr %145, align 4
  call void @sg_init_table(ptr noundef nonnull %152, i32 noundef %156) #7
  %157 = load ptr, ptr %153, align 8
  call void @af_alg_pull_tsgl(ptr noundef %25, i32 noundef %100, ptr noundef %157, i32 noundef %143) #7
  %158 = load i32, ptr %7, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %177, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 3
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.af_alg_sgl, ptr %162, i32 0, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr %struct.scatterlist, ptr %162, i32 -1
  %166 = getelementptr %struct.scatterlist, ptr %165, i32 %164
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, -3
  store i32 %168, ptr %166, align 4
  %169 = load i32, ptr %163, align 4
  %170 = load ptr, ptr %153, align 8
  %171 = getelementptr %struct.scatterlist, ptr %162, i32 %169
  %172 = getelementptr %struct.scatterlist, ptr %162, i32 %169, i32 1
  store i32 0, ptr %172, align 4
  %173 = getelementptr %struct.scatterlist, ptr %162, i32 %169, i32 2
  store i32 0, ptr %173, align 4
  %174 = ptrtoint ptr %170 to i32
  %175 = and i32 %174, -4
  %176 = or i32 %175, 1
  store i32 %176, ptr %171, align 4
  br label %179

177:                                              ; preds = %155
  %178 = load ptr, ptr %153, align 8
  br label %179

179:                                              ; preds = %177, %160, %137
  %180 = phi ptr [ %130, %137 ], [ %130, %160 ], [ %178, %177 ]
  %181 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 10
  %182 = getelementptr inbounds %struct.af_alg_ctx, ptr %29, i32 0, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 10, i32 0, i32 4
  store ptr %180, ptr %184, align 4
  %185 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 10, i32 0, i32 5
  store ptr %130, ptr %185, align 8
  %186 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 10, i32 0, i32 2
  store i32 %97, ptr %186, align 4
  %187 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 10, i32 0, i32 3
  store ptr %183, ptr %187, align 32
  %188 = load i32, ptr %75, align 4
  %189 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 10, i32 0, i32 1
  store i32 %188, ptr %189, align 8
  %190 = getelementptr inbounds %struct.crypto_aead, ptr %32, i32 0, i32 3
  %191 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 10, i32 0, i32 0, i32 3
  store ptr %190, ptr %191, align 16
  %192 = load ptr, ptr %22, align 8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %232, label %194

194:                                              ; preds = %179
  %195 = getelementptr inbounds %struct.kiocb, ptr %192, i32 0, i32 2
  %196 = load ptr, ptr %195, align 8
  %197 = icmp eq ptr %196, null
  br i1 %197, label %232, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.sock_common, ptr %25, i32 0, i32 19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %199) #7, !srcloc !12
  %200 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %199, ptr %199, i32 1, ptr elementtype(i32) %199) #7, !srcloc !13
  %201 = extractvalue { i32, i32, i32 } %200, 0
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %207, label %203, !prof !14

203:                                              ; preds = %198
  %204 = add i32 %201, 1
  %205 = or i32 %204, %201
  %206 = icmp sgt i32 %205, -1
  br i1 %206, label %209, label %207, !prof !8

207:                                              ; preds = %203, %198
  %208 = phi i32 [ 2, %198 ], [ 1, %203 ]
  call void @refcount_warn_saturate(ptr noundef %199, i32 noundef %208) #7
  br label %209

209:                                              ; preds = %207, %203
  %210 = load ptr, ptr %22, align 8
  store ptr %210, ptr %81, align 64
  %211 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 7
  store i32 %98, ptr %211, align 64
  %212 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 10, i32 0, i32 0, i32 1
  store ptr @af_alg_async_cb, ptr %212, align 8
  %213 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 10, i32 0, i32 0, i32 2
  store ptr %81, ptr %213, align 4
  %214 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 10, i32 0, i32 0, i32 4
  store i32 512, ptr %214, align 4
  %215 = load i8, ptr %69, align 2, !range !10
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %209
  %218 = call i32 @crypto_aead_encrypt(ptr noundef %181) #7
  br label %221

219:                                              ; preds = %209
  %220 = call i32 @crypto_aead_decrypt(ptr noundef %181) #7
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi i32 [ %218, %217 ], [ %220, %219 ]
  %223 = icmp eq i32 %222, -115
  br i1 %223, label %254, label %224

224:                                              ; preds = %221
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %199) #7, !srcloc !12
  %225 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %199, ptr %199, i32 1, ptr elementtype(i32) %199) #7, !srcloc !16
  %226 = extractvalue { i32, i32, i32 } %225, 0
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %231, label %228

228:                                              ; preds = %224
  %229 = icmp sgt i32 %226, 0
  br i1 %229, label %250, label %230, !prof !8

230:                                              ; preds = %228
  call void @refcount_warn_saturate(ptr noundef %199, i32 noundef 3) #7
  br label %250

231:                                              ; preds = %224
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  call void @sk_free(ptr noundef %25) #7
  br label %250

232:                                              ; preds = %194, %179
  %233 = getelementptr inbounds %struct.af_alg_ctx, ptr %29, i32 0, i32 3
  %234 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 10, i32 0, i32 0, i32 1
  store ptr @crypto_req_done, ptr %234, align 8
  %235 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 10, i32 0, i32 0, i32 2
  store ptr %233, ptr %235, align 4
  %236 = getelementptr inbounds %struct.af_alg_async_req, ptr %81, i32 0, i32 10, i32 0, i32 0, i32 4
  store i32 1536, ptr %236, align 4
  %237 = load i8, ptr %69, align 2, !range !10
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %232
  %240 = call i32 @crypto_aead_encrypt(ptr noundef %181) #7
  br label %243

241:                                              ; preds = %232
  %242 = call i32 @crypto_aead_decrypt(ptr noundef %181) #7
  br label %243

243:                                              ; preds = %241, %239
  %244 = phi i32 [ %240, %239 ], [ %242, %241 ]
  switch i32 %244, label %250 [
    i32 -115, label %245
    i32 -16, label %245
  ]

245:                                              ; preds = %243, %243
  call void @wait_for_completion(ptr noundef %233) #7
  store i32 0, ptr %233, align 4
  %246 = getelementptr inbounds %struct.af_alg_ctx, ptr %29, i32 0, i32 3, i32 1
  %247 = load i32, ptr %246, align 4
  br label %250

248:                                              ; preds = %142, %138, %133, %126, %91, %85
  %249 = phi i32 [ -22, %91 ], [ -12, %142 ], [ -14, %126 ], [ %140, %138 ], [ %135, %133 ], [ %86, %85 ]
  call void @af_alg_free_resources(ptr noundef %81) #7
  br label %256

250:                                              ; preds = %245, %243, %231, %230, %228
  %251 = phi i32 [ %244, %243 ], [ %247, %245 ], [ %222, %228 ], [ %222, %230 ], [ %222, %231 ]
  call void @af_alg_free_resources(ptr noundef %81) #7
  %252 = icmp eq i32 %251, 0
  %253 = select i1 %252, i32 %98, i32 %251
  br label %256

254:                                              ; preds = %221, %51
  %255 = phi i32 [ -529, %221 ], [ -22, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %259

256:                                              ; preds = %250, %248, %83, %43
  %257 = phi i32 [ %84, %83 ], [ %44, %43 ], [ %249, %248 ], [ %253, %250 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  %258 = icmp slt i32 %257, 1
  br i1 %258, label %259, label %265

259:                                              ; preds = %256, %254
  %260 = phi i32 [ %255, %254 ], [ %257, %256 ]
  %261 = freeze i32 %24
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %259
  switch i32 %260, label %269 [
    i32 -74, label %264
    i32 -529, label %264
  ]

264:                                              ; preds = %263, %263, %259
  br label %269

265:                                              ; preds = %256
  %266 = add i32 %257, %24
  %267 = load i32, ptr %10, align 8
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %23

269:                                              ; preds = %265, %264, %263, %4
  %270 = phi i32 [ %260, %264 ], [ %261, %263 ], [ 0, %4 ], [ %266, %265 ]
  call void @af_alg_wmem_wakeup(ptr noundef %9) #7
  call void @release_sock(ptr noundef %9) #7
  ret i32 %270
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
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_free_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_sendmsg_nokey(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @release_sock(ptr noundef %5) #7
  br label %25

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.alg_sock, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  tail call void @lock_sock_nested(ptr noundef %12, i32 noundef 1) #7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.crypto_aead, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 64
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.alg_sock, ptr %12, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #7, !srcloc !12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #7, !srcloc !18
  store volatile i32 0, ptr %6, align 4
  br label %23

23:                                               ; preds = %20, %10
  %24 = phi i32 [ -126, %10 ], [ 0, %20 ]
  tail call void @release_sock(ptr noundef %12) #7
  tail call void @release_sock(ptr noundef %5) #7
  br i1 %19, label %25, label %37

25:                                               ; preds = %23, %9
  %26 = load ptr, ptr %4, align 16
  %27 = getelementptr inbounds %struct.alg_sock, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.alg_sock, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.crypto_aead, ptr %31, i32 0, i32 3, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 -40
  %35 = load i32, ptr %34, align 8
  %36 = tail call i32 @af_alg_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %35) #7
  br label %37

37:                                               ; preds = %25, %23
  %38 = phi i32 [ %36, %25 ], [ %24, %23 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_recvmsg_nokey(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #7
  %7 = getelementptr inbounds %struct.alg_sock, ptr %6, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @release_sock(ptr noundef %6) #7
  br label %26

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.alg_sock, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.alg_sock, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  tail call void @lock_sock_nested(ptr noundef %13, i32 noundef 1) #7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.crypto_aead, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 64
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.alg_sock, ptr %13, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #7, !srcloc !12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #7, !srcloc !18
  store volatile i32 0, ptr %7, align 4
  br label %24

24:                                               ; preds = %21, %11
  %25 = phi i32 [ -126, %11 ], [ 0, %21 ]
  tail call void @release_sock(ptr noundef %13) #7
  tail call void @release_sock(ptr noundef %6) #7
  br i1 %20, label %26, label %28

26:                                               ; preds = %24, %10
  %27 = tail call i32 @aead_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %27, %26 ], [ %25, %24 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aead_sendpage_nokey(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  tail call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #7
  %8 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @release_sock(ptr noundef %7) #7
  br label %27

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.alg_sock, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 8
  tail call void @lock_sock_nested(ptr noundef %14, i32 noundef 1) #7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.crypto_aead, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 64
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.alg_sock, ptr %14, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #7, !srcloc !12
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #7, !srcloc !18
  store volatile i32 0, ptr %8, align 4
  br label %25

25:                                               ; preds = %22, %12
  %26 = phi i32 [ -126, %12 ], [ 0, %22 ]
  tail call void @release_sock(ptr noundef %14) #7
  tail call void @release_sock(ptr noundef %7) #7
  br i1 %21, label %27, label %29

27:                                               ; preds = %25, %11
  %28 = tail call i32 @af_alg_sendpage(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #7
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %28, %27 ], [ %26, %25 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_unregister_type(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{i64 2155512041, i64 2155512525, i64 2155512078, i64 2155512134, i64 2155512168, i64 2155512192, i64 2155512233, i64 2155512254, i64 2155512282, i64 2155512316}
!10 = !{i8 0, i8 2}
!11 = !{!"auto-init"}
!12 = !{i64 326281, i64 2147827847, i64 2147827873, i64 2147827920, i64 2147827942, i64 2147827970, i64 2147827990}
!13 = !{i64 2147903006, i64 2147903038, i64 2147903067, i64 2147903101, i64 2147903132, i64 2147903155}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2148003204}
!16 = !{i64 2147905363, i64 2147905395, i64 2147905424, i64 2147905458, i64 2147905489, i64 2147905512}
!17 = !{i64 2148601350}
!18 = !{i64 2147903905, i64 2147903931, i64 2147903960, i64 2147903994, i64 2147904025, i64 2147904048}
