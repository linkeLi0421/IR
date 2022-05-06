; ModuleID = '/llk/IR/net/sunrpc/auth_unix.c_pt.bc'
source_filename = "../net/sunrpc/auth_unix.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_authops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rpc_credops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_cred = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, i32, i32, %struct.refcount_struct, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.135, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.135 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.139, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.139 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.140, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.140 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@unix_pool = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [5 x i8] c"UNIX\00", align 1
@authunix_ops = dso_local constant %struct.rpc_authops { ptr null, i32 1, ptr @.str, ptr @unx_create, ptr @unx_destroy, ptr null, ptr @unx_lookup_cred, ptr null, ptr null, ptr null, ptr null }, align 4
@unix_auth = internal global %struct.rpc_auth { i32 37, i32 2, i32 2, i32 0, i32 0, ptr @authunix_ops, i32 1, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, ptr null }, align 4
@unix_credops = internal constant %struct.rpc_credops { ptr @.str.1, ptr null, ptr @unx_destroy_cred, ptr @unx_match, ptr @unx_marshal, ptr @unx_refresh, ptr @unx_validate, ptr @rpcauth_wrap_req_encode, ptr @rpcauth_unwrap_resp_decode, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"AUTH_UNIX\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @rpc_init_authunix() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @mempool_create(i32 noundef 16, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 48 to ptr)) #6
  store ptr %1, ptr @unix_pool, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_destroy_authunix() local_unnamed_addr #1 {
  %1 = load ptr, ptr @unix_pool, align 4
  tail call void @mempool_destroy(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @unx_create(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #1 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.rpc_auth, ptr @unix_auth, i32 0, i32 7)) #6, !srcloc !8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rpc_auth, ptr @unix_auth, i32 0, i32 7), ptr getelementptr inbounds (%struct.rpc_auth, ptr @unix_auth, i32 0, i32 7), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.rpc_auth, ptr @unix_auth, i32 0, i32 7)) #6, !srcloc !9
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !10

6:                                                ; preds = %2
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 2, %2 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef getelementptr inbounds (%struct.rpc_auth, ptr @unix_auth, i32 0, i32 7), i32 noundef %11) #6
  br label %12

12:                                               ; preds = %10, %6
  ret ptr @unix_auth
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @unx_destroy(ptr nocapture noundef %0) #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @unx_lookup_cred(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = load ptr, ptr @unix_pool, align 4
  %5 = tail call noalias ptr @mempool_alloc(ptr noundef %4, i32 noundef 3136) #6
  tail call void @rpcauth_init_cred(ptr noundef %5, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @unix_credops) #6
  %6 = getelementptr inbounds %struct.rpc_cred, ptr %5, i32 0, i32 6
  store i32 2, ptr %6, align 4
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcauth_init_cred(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unx_destroy_cred(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %2, ptr noundef nonnull @unx_free_cred_callback) #6
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @unx_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.rpc_cred, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %52, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 7
  %10 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 7
  %11 = load i32, ptr %9, align 4
  %12 = load i32, ptr %10, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  %16 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 8
  %17 = load i32, ptr %15, align 4
  %18 = load i32, ptr %16, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 23
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.group_info, ptr %22, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ %26, %24 ], [ 0, %20 ]
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 16)
  %30 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = icmp eq i32 %29, 0
  %35 = zext i1 %34 to i32
  br label %52

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.group_info, ptr %31, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %29, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = icmp eq i32 %29, 0
  br i1 %41, label %52, label %45

42:                                               ; preds = %45
  %43 = add nuw nsw i32 %46, 1
  %44 = icmp eq i32 %43, %29
  br i1 %44, label %52, label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %43, %42 ], [ 0, %40 ]
  %47 = getelementptr %struct.group_info, ptr %31, i32 0, i32 2, i32 %46
  %48 = getelementptr %struct.group_info, ptr %22, i32 0, i32 2, i32 %46
  %49 = load i32, ptr %47, align 4
  %50 = load i32, ptr %48, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %42, label %52

52:                                               ; preds = %45, %42, %40, %36, %33, %14, %8, %3
  %53 = phi i32 [ %35, %33 ], [ 1, %3 ], [ 0, %14 ], [ 0, %8 ], [ 0, %36 ], [ 1, %40 ], [ 0, %45 ], [ 1, %42 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unx_marshal(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rpc_cred, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 23
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %87, label %15

15:                                               ; preds = %2
  %16 = getelementptr i32, ptr %13, i32 1
  store i32 16777216, ptr %13, align 4
  %17 = getelementptr i32, ptr %13, i32 2
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rpc_clnt, ptr %4, i32 0, i32 18
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 7
  %21 = and i32 %20, -4
  %22 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %21) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %87, label %24, !prof !10

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.rpc_clnt, ptr %4, i32 0, i32 19
  %26 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %22, ptr noundef %25, i32 noundef %19) #6
  %27 = icmp slt i32 %21, 0
  br i1 %27, label %87, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %87, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %9, align 4
  %33 = getelementptr inbounds %struct.cred, ptr %32, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, -1
  %36 = load i32, ptr @overflowuid, align 4
  %37 = select i1 %35, i32 %36, i32 %34
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = getelementptr i32, ptr %29, i32 1
  store i32 %38, ptr %29, align 4
  %40 = load ptr, ptr %9, align 4
  %41 = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, -1
  %44 = load i32, ptr @overflowgid, align 4
  %45 = select i1 %43, i32 %44, i32 %42
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = getelementptr i32, ptr %29, i32 2
  store i32 %46, ptr %39, align 4
  %48 = getelementptr i32, ptr %29, i32 3
  %49 = icmp eq ptr %12, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %31
  %51 = getelementptr inbounds %struct.group_info, ptr %12, i32 0, i32 1
  br label %52

52:                                               ; preds = %57, %50
  %53 = phi i32 [ 0, %50 ], [ %65, %57 ]
  %54 = phi ptr [ %48, %50 ], [ %64, %57 ]
  %55 = load i32, ptr %51, align 4
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = getelementptr %struct.group_info, ptr %12, i32 0, i32 2, i32 %53
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, -1
  %61 = load i32, ptr @overflowgid, align 4
  %62 = select i1 %60, i32 %61, i32 %59
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = getelementptr i32, ptr %54, i32 1
  store i32 %63, ptr %54, align 4
  %65 = add nuw nsw i32 %53, 1
  %66 = icmp eq i32 %65, 16
  br i1 %66, label %67, label %52

67:                                               ; preds = %57, %52, %31
  %68 = phi ptr [ %48, %31 ], [ %64, %57 ], [ %54, %52 ]
  %69 = ptrtoint ptr %68 to i32
  %70 = ptrtoint ptr %47 to i32
  %71 = sub i32 %69, %70
  %72 = ashr exact i32 %71, 2
  %73 = add nsw i32 %72, -1
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  store i32 %74, ptr %47, align 4
  %75 = ptrtoint ptr %16 to i32
  %76 = sub i32 -4, %75
  %77 = add i32 %76, %69
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  store i32 %78, ptr %16, align 4
  %79 = shl i32 %73, 2
  %80 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %79) #6
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %67
  %83 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #6
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = getelementptr i32, ptr %83, i32 1
  store i32 0, ptr %83, align 4
  store i32 0, ptr %86, align 4
  br label %87

87:                                               ; preds = %85, %82, %67, %28, %24, %15, %2
  %88 = phi i32 [ 0, %85 ], [ -90, %82 ], [ -90, %67 ], [ -90, %28 ], [ -90, %24 ], [ -90, %2 ], [ -90, %15 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unx_refresh(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpc_cred, ptr %5, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %6) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unx_validate(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rpc_cred, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %9, align 4
  switch i32 %12, label %28 [
    i32 0, label %13
    i32 16777216, label %13
    i32 33554432, label %13
  ]

13:                                               ; preds = %11, %11, %11
  %14 = getelementptr i32, ptr %9, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %17 = icmp ugt i32 %16, 400
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %16) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = add nuw nsw i32 %16, 3
  %23 = lshr i32 %22, 2
  %24 = add nuw nsw i32 %23, 2
  %25 = getelementptr inbounds %struct.rpc_auth, ptr %8, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rpc_auth, ptr %8, i32 0, i32 1
  store i32 %24, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rpc_auth, ptr %8, i32 0, i32 3
  store i32 %24, ptr %27, align 4
  br label %28

28:                                               ; preds = %21, %18, %13, %11, %2
  %29 = phi i32 [ 0, %21 ], [ -5, %2 ], [ -5, %11 ], [ -5, %13 ], [ -5, %18 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_wrap_req_encode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_unwrap_resp_decode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unx_free_cred_callback(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #6, !srcloc !8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #6, !srcloc !13
  %7 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @__put_cred(ptr noundef nonnull %3) #6
  br label %10

10:                                               ; preds = %9, %5, %1
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = load ptr, ptr @unix_pool, align 4
  tail call void @mempool_free(ptr noundef %11, ptr noundef %12) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 759147, i64 2148249118, i64 2148249144, i64 2148249191, i64 2148249213, i64 2148249241, i64 2148249261}
!9 = !{i64 2148261991, i64 2148262023, i64 2148262052, i64 2148262086, i64 2148262117, i64 2148262140}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148361212}
!13 = !{i64 2148263574, i64 2148263606, i64 2148263635, i64 2148263669, i64 2148263700, i64 2148263723}
!14 = !{i64 2148361415}
