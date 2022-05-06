; ModuleID = '/llk/IR/fs/lockd/clnt4xdr.c_pt.bc'
source_filename = "../fs/lockd/clnt4xdr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }
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

@nlm4_procedures = internal constant [16 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @nlm4_xdr_enc_testargs, ptr @nlm4_xdr_dec_testres, i32 70, i32 35, i32 0, i32 1, ptr @.str }, %struct.rpc_procinfo { i32 2, ptr @nlm4_xdr_enc_lockargs, ptr @nlm4_xdr_dec_res, i32 73, i32 10, i32 0, i32 2, ptr @.str.1 }, %struct.rpc_procinfo { i32 3, ptr @nlm4_xdr_enc_cancargs, ptr @nlm4_xdr_dec_res, i32 71, i32 10, i32 0, i32 3, ptr @.str.2 }, %struct.rpc_procinfo { i32 4, ptr @nlm4_xdr_enc_unlockargs, ptr @nlm4_xdr_dec_res, i32 69, i32 10, i32 0, i32 4, ptr @.str.3 }, %struct.rpc_procinfo { i32 5, ptr @nlm4_xdr_enc_testargs, ptr @nlm4_xdr_dec_res, i32 70, i32 10, i32 0, i32 5, ptr @.str.4 }, %struct.rpc_procinfo { i32 6, ptr @nlm4_xdr_enc_testargs, ptr null, i32 70, i32 0, i32 0, i32 6, ptr @.str.5 }, %struct.rpc_procinfo { i32 7, ptr @nlm4_xdr_enc_lockargs, ptr null, i32 73, i32 0, i32 0, i32 7, ptr @.str.6 }, %struct.rpc_procinfo { i32 8, ptr @nlm4_xdr_enc_cancargs, ptr null, i32 71, i32 0, i32 0, i32 8, ptr @.str.7 }, %struct.rpc_procinfo { i32 9, ptr @nlm4_xdr_enc_unlockargs, ptr null, i32 69, i32 0, i32 0, i32 9, ptr @.str.8 }, %struct.rpc_procinfo { i32 10, ptr @nlm4_xdr_enc_testargs, ptr null, i32 70, i32 0, i32 0, i32 10, ptr @.str.9 }, %struct.rpc_procinfo { i32 11, ptr @nlm4_xdr_enc_testres, ptr null, i32 35, i32 0, i32 0, i32 11, ptr @.str.10 }, %struct.rpc_procinfo { i32 12, ptr @nlm4_xdr_enc_res, ptr null, i32 10, i32 0, i32 0, i32 12, ptr @.str.11 }, %struct.rpc_procinfo { i32 13, ptr @nlm4_xdr_enc_res, ptr null, i32 10, i32 0, i32 0, i32 13, ptr @.str.12 }, %struct.rpc_procinfo { i32 14, ptr @nlm4_xdr_enc_res, ptr null, i32 10, i32 0, i32 0, i32 14, ptr @.str.13 }, %struct.rpc_procinfo { i32 15, ptr @nlm4_xdr_enc_res, ptr null, i32 10, i32 0, i32 0, i32 15, ptr @.str.14 }], align 4
@nlm_version4_counts = internal global [16 x i32] zeroinitializer, align 4
@nlm_version4 = dso_local local_unnamed_addr constant %struct.rpc_version { i32 4, i32 16, ptr @nlm4_procedures, ptr @nlm_version4_counts }, align 4
@.str = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"UNLOCK\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"GRANTED\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"TEST_MSG\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"LOCK_MSG\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"CANCEL_MSG\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"UNLOCK_MSG\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"GRANTED_MSG\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"TEST_RES\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"LOCK_RES\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"CANCEL_RES\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"UNLOCK_RES\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"GRANTED_RES\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlm4_xdr_enc_testargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
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
  tail call fastcc void @encode_nlm4_lock(ptr noundef %1, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4_xdr_dec_testres(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
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
  %26 = icmp ugt i32 %25, 9
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
  %57 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %79, label %59, !prof !8

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 6
  store i32 1, ptr %60, align 8
  %61 = icmp ne i32 %36, 0
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 7
  store i8 %62, ptr %63, align 4
  %64 = load i64, ptr %57, align 1
  %65 = tail call i64 @llvm.bswap.i64(i64 %64) #6
  %66 = getelementptr i32, ptr %57, i32 2
  %67 = load i64, ptr %66, align 1
  %68 = tail call i64 @llvm.bswap.i64(i64 %67) #6
  %69 = add i64 %68, %65
  %70 = trunc i64 %69 to i32
  %71 = add i32 %70, -1
  %72 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 12
  store i64 %65, ptr %72, align 8
  %73 = icmp eq i64 %67, 0
  %74 = icmp slt i32 %71, 0
  %75 = select i1 %73, i1 true, i1 %74
  %76 = zext i32 %71 to i64
  %77 = select i1 %75, i64 9223372036854775807, i64 %76
  %78 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 13
  store i64 %77, ptr %78, align 8
  br label %79

79:                                               ; preds = %59, %55, %49, %34, %29, %27, %23, %19, %12, %10, %3
  %80 = phi i32 [ 0, %27 ], [ -5, %55 ], [ -5, %29 ], [ -5, %49 ], [ -5, %34 ], [ 0, %59 ], [ -5, %23 ], [ -5, %19 ], [ -5, %10 ], [ -5, %12 ], [ -5, %3 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlm4_xdr_enc_lockargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
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
  tail call fastcc void @encode_nlm4_lock(ptr noundef %1, ptr noundef %4)
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
define internal i32 @nlm4_xdr_dec_res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
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
  %26 = icmp ugt i32 %25, 9
  br i1 %26, label %28, label %27, !prof !8

27:                                               ; preds = %23
  store i32 %24, ptr %20, align 4
  br label %28

28:                                               ; preds = %27, %23, %19, %12, %10, %3
  %29 = phi i32 [ 0, %27 ], [ -5, %23 ], [ -5, %19 ], [ -5, %10 ], [ -5, %12 ], [ -5, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlm4_xdr_enc_cancargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
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
  tail call fastcc void @encode_nlm4_lock(ptr noundef %1, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlm4_xdr_enc_unlockargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nlm_args, ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nlm_cookie, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 4
  %8 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %7) #6
  %9 = tail call ptr @xdr_encode_opaque(ptr noundef %8, ptr noundef %2, i32 noundef %6) #6
  tail call fastcc void @encode_nlm4_lock(ptr noundef %1, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlm4_xdr_enc_testres(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nlm_cookie, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 4
  %7 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %6) #6
  %8 = tail call ptr @xdr_encode_opaque(ptr noundef %7, ptr noundef %2, i32 noundef %5) #6
  %9 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = icmp ugt i32 %11, 9
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/lockd/clnt4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

14:                                               ; preds = %3
  %15 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  store i32 %10, ptr %15, align 4
  %16 = load i32, ptr %9, align 4
  %17 = icmp eq i32 %16, 16777216
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 7
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 0
  %22 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %23 = select i1 %21, i32 16777216, i32 0
  store i32 %23, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  store i32 %27, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 3
  %29 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 3, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %28, align 4
  %32 = add i32 %31, 4
  %33 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %32) #6
  %34 = tail call ptr @xdr_encode_opaque(ptr noundef %33, ptr noundef %30, i32 noundef %31) #6
  %35 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #6
  %36 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 12
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 2, i32 5, i32 13
  %39 = load i64, ptr %38, align 8
  %40 = icmp eq i64 %39, 9223372036854775807
  br i1 %40, label %47, label %41

41:                                               ; preds = %18
  %42 = sub i64 %39, %37
  %43 = add i64 %42, 1
  %44 = icmp eq i64 %43, 9223372036854775807
  %45 = tail call i64 @llvm.smax.i64(i64 %43, i64 -9223372036854775807) #6
  %46 = select i1 %44, i64 9223372036854775807, i64 %45
  br label %47

47:                                               ; preds = %41, %18
  %48 = phi i64 [ %46, %41 ], [ 0, %18 ]
  %49 = icmp eq i64 %37, 9223372036854775807
  %50 = tail call i64 @llvm.smax.i64(i64 %37, i64 -9223372036854775807) #6
  %51 = select i1 %49, i64 9223372036854775807, i64 %50
  %52 = tail call i64 @llvm.bswap.i64(i64 %51) #6
  store i64 %52, ptr %35, align 1
  %53 = getelementptr i32, ptr %35, i32 2
  %54 = tail call i64 @llvm.bswap.i64(i64 %48) #6
  store i64 %54, ptr %53, align 1
  br label %55

55:                                               ; preds = %47, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlm4_xdr_enc_res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nlm_cookie, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 4
  %7 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %6) #6
  %8 = tail call ptr @xdr_encode_opaque(ptr noundef %7, ptr noundef %2, i32 noundef %5) #6
  %9 = getelementptr inbounds %struct.nlm_res, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = icmp ugt i32 %11, 9
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/lockd/clnt4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

14:                                               ; preds = %3
  %15 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  store i32 %10, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_nlm4_lock(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 @strlen(ptr noundef %3) #6
  %5 = add i32 %4, 4
  %6 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %5) #6
  %7 = tail call ptr @xdr_encode_opaque(ptr noundef %6, ptr noundef %3, i32 noundef %4) #6
  %8 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 2, i32 1
  %10 = load i16, ptr %8, align 2
  %11 = zext i16 %10 to i32
  %12 = add nuw nsw i32 %11, 4
  %13 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %12) #6
  %14 = tail call ptr @xdr_encode_opaque(ptr noundef %13, ptr noundef %9, i32 noundef %11) #6
  %15 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 3
  %16 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 3, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %15, align 4
  %19 = add i32 %18, 4
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %19) #6
  %21 = tail call ptr @xdr_encode_opaque(ptr noundef %20, ptr noundef %17, i32 noundef %18) #6
  %22 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 20) #6
  %23 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  store i32 %25, ptr %22, align 4
  %26 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 12
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 13
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %29, 9223372036854775807
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = sub i64 %29, %27
  %33 = add i64 %32, 1
  %34 = icmp eq i64 %33, 9223372036854775807
  %35 = tail call i64 @llvm.smax.i64(i64 %33, i64 -9223372036854775807) #6
  %36 = select i1 %34, i64 9223372036854775807, i64 %35
  br label %37

37:                                               ; preds = %31, %2
  %38 = phi i64 [ %36, %31 ], [ 0, %2 ]
  %39 = icmp eq i64 %27, 9223372036854775807
  %40 = tail call i64 @llvm.smax.i64(i64 %27, i64 -9223372036854775807) #6
  %41 = select i1 %39, i64 9223372036854775807, i64 %40
  %42 = getelementptr i32, ptr %22, i32 1
  %43 = tail call i64 @llvm.bswap.i64(i64 %41) #6
  store i64 %43, ptr %42, align 1
  %44 = getelementptr i32, ptr %22, i32 3
  %45 = tail call i64 @llvm.bswap.i64(i64 %38) #6
  store i64 %45, ptr %44, align 1
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_init_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #2

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
!10 = !{i64 2155827179, i64 2155827663, i64 2155827216, i64 2155827272, i64 2155827306, i64 2155827330, i64 2155827371, i64 2155827392, i64 2155827420, i64 2155827454}
