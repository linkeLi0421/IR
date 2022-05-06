; ModuleID = '/llk/IR/fs/lockd/clntxdr.c_pt.bc'
source_filename = "../fs/lockd/clntxdr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.111 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%union.anon.111 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_res = type { %struct.nlm_cookie, i32, %struct.nlm_lock }

@.str = private unnamed_addr constant [6 x i8] c"lockd\00", align 1
@nlm_versions = internal global [5 x ptr] [ptr null, ptr @nlm_version1, ptr null, ptr @nlm_version3, ptr @nlm_version4], align 4
@nlm_rpc_stats = internal global %struct.rpc_stat zeroinitializer, align 4
@nlm_program = dso_local local_unnamed_addr constant %struct.rpc_program { ptr @.str, i32 100021, i32 5, ptr @nlm_versions, ptr @nlm_rpc_stats, ptr null }, align 4
@nlm_version1 = internal constant %struct.rpc_version { i32 1, i32 16, ptr @nlm_procedures, ptr @nlm_version1_counts }, align 4
@nlm_version3 = internal constant %struct.rpc_version { i32 3, i32 16, ptr @nlm_procedures, ptr @nlm_version3_counts }, align 4
@nlm_version4 = external dso_local constant %struct.rpc_version, align 4
@nlm_procedures = internal constant [16 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @nlm_xdr_enc_testargs, ptr @nlm_xdr_dec_testres, i32 60, i32 33, i32 0, i32 1, ptr @.str.1 }, %struct.rpc_procinfo { i32 2, ptr @nlm_xdr_enc_lockargs, ptr @nlm_xdr_dec_res, i32 63, i32 10, i32 0, i32 2, ptr @.str.2 }, %struct.rpc_procinfo { i32 3, ptr @nlm_xdr_enc_cancargs, ptr @nlm_xdr_dec_res, i32 61, i32 10, i32 0, i32 3, ptr @.str.3 }, %struct.rpc_procinfo { i32 4, ptr @nlm_xdr_enc_unlockargs, ptr @nlm_xdr_dec_res, i32 59, i32 10, i32 0, i32 4, ptr @.str.4 }, %struct.rpc_procinfo { i32 5, ptr @nlm_xdr_enc_testargs, ptr @nlm_xdr_dec_res, i32 60, i32 10, i32 0, i32 5, ptr @.str.5 }, %struct.rpc_procinfo { i32 6, ptr @nlm_xdr_enc_testargs, ptr null, i32 60, i32 0, i32 0, i32 6, ptr @.str.6 }, %struct.rpc_procinfo { i32 7, ptr @nlm_xdr_enc_lockargs, ptr null, i32 63, i32 0, i32 0, i32 7, ptr @.str.7 }, %struct.rpc_procinfo { i32 8, ptr @nlm_xdr_enc_cancargs, ptr null, i32 61, i32 0, i32 0, i32 8, ptr @.str.8 }, %struct.rpc_procinfo { i32 9, ptr @nlm_xdr_enc_unlockargs, ptr null, i32 59, i32 0, i32 0, i32 9, ptr @.str.9 }, %struct.rpc_procinfo { i32 10, ptr @nlm_xdr_enc_testargs, ptr null, i32 60, i32 0, i32 0, i32 10, ptr @.str.10 }, %struct.rpc_procinfo { i32 11, ptr @nlm_xdr_enc_testres, ptr null, i32 33, i32 0, i32 0, i32 11, ptr @.str.11 }, %struct.rpc_procinfo { i32 12, ptr @nlm_xdr_enc_res, ptr null, i32 10, i32 0, i32 0, i32 12, ptr @.str.12 }, %struct.rpc_procinfo { i32 13, ptr @nlm_xdr_enc_res, ptr null, i32 10, i32 0, i32 0, i32 13, ptr @.str.13 }, %struct.rpc_procinfo { i32 14, ptr @nlm_xdr_enc_res, ptr null, i32 10, i32 0, i32 0, i32 14, ptr @.str.14 }, %struct.rpc_procinfo { i32 15, ptr @nlm_xdr_enc_res, ptr null, i32 10, i32 0, i32 0, i32 15, ptr @.str.15 }], align 4
@nlm_version1_counts = internal global [16 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"UNLOCK\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"GRANTED\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"TEST_MSG\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"LOCK_MSG\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"CANCEL_MSG\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"UNLOCK_MSG\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"GRANTED_MSG\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"TEST_RES\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"LOCK_RES\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"CANCEL_RES\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"UNLOCK_RES\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"GRANTED_RES\00", align 1
@encode_nlm_stat.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"fs/lockd/clntxdr.c\00", align 1
@nlm_version3_counts = internal global [16 x i32] zeroinitializer, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlm_xdr_enc_testargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nlm_cookie, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 4
  %8 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %7) #6
  %9 = tail call ptr @xdr_encode_opaque(ptr noundef %8, ptr noundef %2, i32 noundef %6) #6
  %10 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 1, i32 5, i32 7
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 1
  %13 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %14 = select i1 %12, i32 16777216, i32 0
  store i32 %14, ptr %13, align 4
  tail call fastcc void @encode_nlm_lock(ptr noundef %1, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm_xdr_dec_testres(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %79, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = icmp ugt i32 %8, 32
  br i1 %11, label %79, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %8) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %79, label %15, !prof !8

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nlm_cookie, ptr %2, i32 0, i32 1
  store i32 %8, ptr %16, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %2, ptr nonnull align 4 %13, i32 %8, i1 false) #6
  br label %19

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.nlm_cookie, ptr %2, i32 0, i32 1
  store i32 4, ptr %18, align 4
  store i32 0, ptr %2, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 1
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %79, label %23, !prof !8

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %26 = icmp ugt i32 %25, 4
  br i1 %26, label %79, label %27, !prof !8

27:                                               ; preds = %23
  store i32 %24, ptr %20, align 4
  %28 = icmp eq i32 %24, 16777216
  br i1 %28, label %29, label %79

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2
  %31 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(280) %30, i8 0, i32 280, i1 false) #6
  tail call void @locks_init_lock(ptr noundef %31) #6
  %32 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %79, label %34, !prof !8

34:                                               ; preds = %29
  %35 = getelementptr i32, ptr %32, i32 1
  %36 = load i32, ptr %32, align 4
  %37 = load i32, ptr %35, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  %39 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 4
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 8
  store i32 %38, ptr %40, align 8
  %41 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 3
  %42 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 3, i32 1
  store ptr null, ptr %42, align 4
  %43 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %79, label %45, !prof !8

45:                                               ; preds = %34
  %46 = load i32, ptr %43, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %47) #6
  %51 = icmp eq ptr %50, null
  %52 = icmp ugt i32 %47, 1024
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %79, label %54, !prof !9

54:                                               ; preds = %49
  store ptr %50, ptr %42, align 4
  br label %55

55:                                               ; preds = %54, %45
  %56 = phi i32 [ %47, %54 ], [ 0, %45 ]
  store i32 %56, ptr %41, align 4
  %57 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %79, label %59, !prof !8

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 6
  store i32 1, ptr %60, align 8
  %61 = icmp ne i32 %36, 0
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 7
  store i8 %62, ptr %63, align 4
  %64 = getelementptr i32, ptr %57, i32 1
  %65 = load i32, ptr %57, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #6
  %67 = load i32, ptr %64, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  %69 = add i32 %66, -1
  %70 = add i32 %69, %68
  %71 = zext i32 %66 to i64
  %72 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 12
  store i64 %71, ptr %72, align 8
  %73 = icmp eq i32 %67, 0
  %74 = icmp slt i32 %70, 0
  %75 = select i1 %73, i1 true, i1 %74
  %76 = zext i32 %70 to i64
  %77 = select i1 %75, i64 9223372036854775807, i64 %76
  %78 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 13
  store i64 %77, ptr %78, align 8
  br label %79

79:                                               ; preds = %59, %55, %49, %34, %29, %27, %23, %19, %12, %10, %3
  %80 = phi i32 [ 0, %27 ], [ -5, %55 ], [ -5, %29 ], [ -5, %49 ], [ -5, %34 ], [ 0, %59 ], [ -5, %23 ], [ -5, %19 ], [ -5, %10 ], [ -5, %12 ], [ -5, %3 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlm_xdr_enc_lockargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nlm_cookie, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 4
  %8 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %7) #6
  %9 = tail call ptr @xdr_encode_opaque(ptr noundef %8, ptr noundef %2, i32 noundef %6) #6
  %10 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %13 = icmp eq i32 %11, 0
  %14 = select i1 %13, i32 0, i32 16777216
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 1, i32 5, i32 7
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 1
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %19 = select i1 %17, i32 16777216, i32 0
  store i32 %19, ptr %18, align 4
  tail call fastcc void @encode_nlm_lock(ptr noundef %1, ptr noundef %4)
  %20 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %23 = icmp eq i32 %21, 0
  %24 = select i1 %23, i32 0, i32 16777216
  store i32 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  store i32 %28, ptr %27, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm_xdr_dec_res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = icmp ugt i32 %8, 32
  br i1 %11, label %28, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %8) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15, !prof !8

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nlm_cookie, ptr %2, i32 0, i32 1
  store i32 %8, ptr %16, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %2, ptr nonnull align 4 %13, i32 %8, i1 false) #6
  br label %19

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.nlm_cookie, ptr %2, i32 0, i32 1
  store i32 4, ptr %18, align 4
  store i32 0, ptr %2, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 1
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !prof !8

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %26 = icmp ugt i32 %25, 4
  br i1 %26, label %28, label %27, !prof !8

27:                                               ; preds = %23
  store i32 %24, ptr %20, align 4
  br label %28

28:                                               ; preds = %27, %23, %19, %12, %10, %3
  %29 = phi i32 [ 0, %27 ], [ -5, %23 ], [ -5, %19 ], [ -5, %10 ], [ -5, %12 ], [ -5, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlm_xdr_enc_cancargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nlm_cookie, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 4
  %8 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %7) #6
  %9 = tail call ptr @xdr_encode_opaque(ptr noundef %8, ptr noundef %2, i32 noundef %6) #6
  %10 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %13 = icmp eq i32 %11, 0
  %14 = select i1 %13, i32 0, i32 16777216
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 1, i32 5, i32 7
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 1
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %19 = select i1 %17, i32 16777216, i32 0
  store i32 %19, ptr %18, align 4
  tail call fastcc void @encode_nlm_lock(ptr noundef %1, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlm_xdr_enc_unlockargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nlm_cookie, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 4
  %8 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %7) #6
  %9 = tail call ptr @xdr_encode_opaque(ptr noundef %8, ptr noundef %2, i32 noundef %6) #6
  tail call fastcc void @encode_nlm_lock(ptr noundef %1, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlm_xdr_enc_testres(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nlm_cookie, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 4
  %7 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %6) #6
  %8 = tail call ptr @xdr_encode_opaque(ptr noundef %7, ptr noundef %2, i32 noundef %5) #6
  %9 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = icmp ugt i32 %11, 4
  %13 = load i1, ptr @encode_nlm_stat.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %3
  store i1 true, ptr @encode_nlm_stat.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 200, i32 noundef 9, ptr noundef null) #6
  br label %17

17:                                               ; preds = %16, %3
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  store i32 %10, ptr %18, align 4
  %19 = load i32, ptr %9, align 4
  %20 = icmp eq i32 %19, 16777216
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 7
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 0
  %25 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %26 = select i1 %24, i32 16777216, i32 0
  store i32 %26, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  store i32 %30, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 3
  %32 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 3, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %31, align 4
  %35 = add i32 %34, 4
  %36 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %35) #6
  %37 = tail call ptr @xdr_encode_opaque(ptr noundef %36, ptr noundef %33, i32 noundef %34) #6
  %38 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #6
  %39 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 12
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 13
  %42 = load i64, ptr %41, align 8
  %43 = icmp eq i64 %42, 9223372036854775807
  br i1 %43, label %52, label %44

44:                                               ; preds = %21
  %45 = sub i64 %42, %40
  %46 = add i64 %45, 1
  %47 = icmp sgt i64 %46, 2147483646
  %48 = icmp slt i64 %46, -2147483646
  %49 = trunc i64 %46 to i32
  %50 = select i1 %48, i32 -2147483647, i32 %49
  %51 = select i1 %47, i32 2147483647, i32 %50
  br label %52

52:                                               ; preds = %44, %21
  %53 = phi i32 [ %51, %44 ], [ 0, %21 ]
  %54 = icmp sgt i64 %40, 2147483646
  %55 = icmp slt i64 %40, -2147483646
  %56 = trunc i64 %40 to i32
  %57 = select i1 %55, i32 -2147483647, i32 %56
  %58 = select i1 %54, i32 2147483647, i32 %57
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #6
  %60 = getelementptr i32, ptr %38, i32 1
  store i32 %59, ptr %38, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %53) #6
  store i32 %61, ptr %60, align 4
  br label %62

62:                                               ; preds = %52, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlm_xdr_enc_res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nlm_cookie, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 4
  %7 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %6) #6
  %8 = tail call ptr @xdr_encode_opaque(ptr noundef %7, ptr noundef %2, i32 noundef %5) #6
  %9 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = icmp ugt i32 %11, 4
  %13 = load i1, ptr @encode_nlm_stat.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %3
  store i1 true, ptr @encode_nlm_stat.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 200, i32 noundef 9, ptr noundef null) #6
  br label %17

17:                                               ; preds = %16, %3
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  store i32 %10, ptr %18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_nlm_lock(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 @strlen(ptr noundef %3) #6
  %5 = add i32 %4, 4
  %6 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %5) #6
  %7 = tail call ptr @xdr_encode_opaque(ptr noundef %6, ptr noundef %3, i32 noundef %4) #6
  %8 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 2, i32 1
  %9 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 36) #6
  %10 = tail call ptr @xdr_encode_opaque(ptr noundef %9, ptr noundef %8, i32 noundef 32) #6
  %11 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 3
  %12 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 3, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %11, align 4
  %15 = add i32 %14, 4
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %15) #6
  %17 = tail call ptr @xdr_encode_opaque(ptr noundef %16, ptr noundef %13, i32 noundef %14) #6
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 12) #6
  %19 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  store i32 %21, ptr %18, align 4
  %22 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 12
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 13
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, 9223372036854775807
  br i1 %26, label %35, label %27

27:                                               ; preds = %2
  %28 = sub i64 %25, %23
  %29 = add i64 %28, 1
  %30 = icmp sgt i64 %29, 2147483646
  %31 = icmp slt i64 %29, -2147483646
  %32 = trunc i64 %29 to i32
  %33 = select i1 %31, i32 -2147483647, i32 %32
  %34 = select i1 %30, i32 2147483647, i32 %33
  br label %35

35:                                               ; preds = %27, %2
  %36 = phi i32 [ %34, %27 ], [ 0, %2 ]
  %37 = icmp sgt i64 %23, 2147483646
  %38 = icmp slt i64 %23, -2147483646
  %39 = trunc i64 %23 to i32
  %40 = select i1 %38, i32 -2147483647, i32 %39
  %41 = select i1 %37, i32 2147483647, i32 %40
  %42 = getelementptr i32, ptr %18, i32 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %41)
  %44 = getelementptr i32, ptr %18, i32 2
  store i32 %43, ptr %42, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %36)
  store i32 %45, ptr %44, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_init_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 4001, i32 4000000}
