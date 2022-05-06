; ModuleID = '/llk/IR/fs/lockd/xdr4.c_pt.bc'
source_filename = "../fs/lockd/xdr4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.65 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.65 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_res = type { %struct.nlm_cookie, i32, %struct.nlm_lock }
%struct.nlm_reboot = type { ptr, i32, i32, %struct.nsm_private }
%struct.nsm_private = type { [16 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_void(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_testargs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7, !prof !8

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %10 = icmp ugt i32 %9, 32
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %9) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  store i32 %9, ptr %17, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %4, ptr nonnull align 4 %14, i32 %9, i1 false) #6
  br label %20

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  store i32 4, ptr %19, align 4
  store i32 0, ptr %4, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23, !prof !8

23:                                               ; preds = %20
  %24 = load i32, ptr %21, align 4
  %25 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1
  %26 = tail call fastcc zeroext i1 @svcxdr_decode_lock(ptr noundef %1, ptr noundef %25)
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1, i32 5, i32 7
  store i8 1, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %27, %23, %20, %13, %7, %2
  %32 = phi i1 [ false, %23 ], [ true, %29 ], [ true, %27 ], [ false, %7 ], [ false, %13 ], [ false, %2 ], [ false, %20 ]
  ret i1 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @svcxdr_decode_lock(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5
  %4 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 1
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %68, label %7, !prof !8

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %10 = icmp ugt i32 %9, 1024
  br i1 %10, label %68, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %9) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %68, label %14

14:                                               ; preds = %11
  store i32 %9, ptr %4, align 4
  store ptr %12, ptr %1, align 4
  %15 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 2
  %16 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %68, label %18, !prof !8

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  %21 = icmp ugt i32 %20, 128
  br i1 %21, label %68, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %20) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %68, label %25

25:                                               ; preds = %22
  %26 = trunc i32 %20 to i16
  store i16 %26, ptr %15, align 2
  %27 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %27, ptr nonnull align 4 %23, i32 %20, i1 false) #6
  %28 = getelementptr i8, ptr %27, i32 %20
  %29 = sub nuw nsw i32 128, %20
  tail call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %29, i1 false) #6
  %30 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 3
  %31 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %68, label %33, !prof !8

33:                                               ; preds = %25
  %34 = load i32, ptr %31, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  %36 = icmp ugt i32 %35, 1024
  br i1 %36, label %68, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %35) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %68, label %40

40:                                               ; preds = %37
  store i32 %35, ptr %30, align 4
  %41 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 3, i32 1
  store ptr %38, ptr %41, align 4
  %42 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %68, label %44, !prof !8

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 4
  %46 = load i32, ptr %42, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  store i32 %47, ptr %45, align 4
  %48 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %68, label %50, !prof !8

50:                                               ; preds = %44
  %51 = load i64, ptr %48, align 1
  %52 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54, !prof !8

54:                                               ; preds = %50
  %55 = tail call i64 @llvm.bswap.i64(i64 %51) #6
  %56 = load i64, ptr %52, align 1
  %57 = tail call i64 @llvm.bswap.i64(i64 %56) #6
  tail call void @locks_init_lock(ptr noundef %3) #6
  %58 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 6
  store i32 1, ptr %58, align 8
  %59 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 7
  store i8 0, ptr %59, align 4
  %60 = add i64 %55, -1
  %61 = add i64 %60, %57
  %62 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 12
  store i64 %55, ptr %62, align 8
  %63 = icmp eq i64 %56, 0
  %64 = icmp slt i64 %61, 0
  %65 = select i1 %63, i1 true, i1 %64
  %66 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 13
  %67 = select i1 %65, i64 9223372036854775807, i64 %61
  store i64 %67, ptr %66, align 8
  br label %68

68:                                               ; preds = %54, %50, %44, %40, %37, %33, %25, %22, %18, %14, %11, %7, %2
  %69 = phi i1 [ false, %7 ], [ false, %11 ], [ false, %2 ], [ false, %18 ], [ false, %22 ], [ false, %14 ], [ false, %33 ], [ false, %37 ], [ false, %25 ], [ false, %40 ], [ false, %44 ], [ false, %50 ], [ true, %54 ]
  ret i1 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_lockargs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7, !prof !8

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %10 = icmp ugt i32 %9, 32
  br i1 %10, label %53, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %9) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %53, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  store i32 %9, ptr %17, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %4, ptr nonnull align 4 %14, i32 %9, i1 false) #6
  br label %20

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  store i32 4, ptr %19, align 4
  store i32 0, ptr %4, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %53, label %23, !prof !8

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 2
  %25 = load i32, ptr %21, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, ptr %24, align 4
  %28 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %30, !prof !8

30:                                               ; preds = %23
  %31 = load i32, ptr %28, align 4
  %32 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1
  %33 = tail call fastcc zeroext i1 @svcxdr_decode_lock(ptr noundef %1, ptr noundef %32)
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = icmp eq i32 %31, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1, i32 5, i32 7
  store i8 1, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %53, label %41, !prof !8

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 3
  %43 = load i32, ptr %39, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, ptr %42, align 4
  %46 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48, !prof !8

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 4
  %50 = load i32, ptr %46, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  store i32 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 5
  store i32 1, ptr %52, align 4
  br label %53

53:                                               ; preds = %48, %41, %38, %30, %23, %20, %13, %7, %2
  %54 = phi i1 [ true, %48 ], [ false, %30 ], [ false, %7 ], [ false, %13 ], [ false, %2 ], [ false, %20 ], [ false, %23 ], [ false, %38 ], [ false, %41 ]
  ret i1 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_cancargs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7, !prof !8

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %10 = icmp ugt i32 %9, 32
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %9) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  store i32 %9, ptr %17, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %4, ptr nonnull align 4 %14, i32 %9, i1 false) #6
  br label %20

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  store i32 4, ptr %19, align 4
  store i32 0, ptr %4, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23, !prof !8

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 2
  %25 = load i32, ptr %21, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, ptr %24, align 4
  %28 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30, !prof !8

30:                                               ; preds = %23
  %31 = load i32, ptr %28, align 4
  %32 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1
  %33 = tail call fastcc zeroext i1 @svcxdr_decode_lock(ptr noundef %1, ptr noundef %32)
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = icmp eq i32 %31, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1, i32 5, i32 7
  store i8 1, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %34, %30, %23, %20, %13, %7, %2
  %39 = phi i1 [ false, %30 ], [ true, %36 ], [ true, %34 ], [ false, %7 ], [ false, %13 ], [ false, %2 ], [ false, %20 ], [ false, %23 ]
  ret i1 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_unlockargs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7, !prof !8

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %10 = icmp ugt i32 %9, 32
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %9) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  store i32 %9, ptr %17, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %4, ptr nonnull align 4 %14, i32 %9, i1 false) #6
  br label %20

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  store i32 4, ptr %19, align 4
  store i32 0, ptr %4, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1
  %22 = tail call fastcc zeroext i1 @svcxdr_decode_lock(ptr noundef %1, ptr noundef %21)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1, i32 5, i32 7
  store i8 2, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %20, %13, %7, %2
  %26 = phi i1 [ true, %23 ], [ false, %20 ], [ false, %7 ], [ false, %13 ], [ false, %2 ]
  ret i1 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_res(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7, !prof !8

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %10 = icmp ugt i32 %9, 32
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %9) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  store i32 %9, ptr %17, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %4, ptr nonnull align 4 %14, i32 %9, i1 false) #6
  br label %20

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  store i32 4, ptr %19, align 4
  store i32 0, ptr %4, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nlm_res, ptr %4, i32 0, i32 1
  %25 = load i32, ptr %21, align 4
  store i32 %25, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = xor i1 %22, true
  br label %28

28:                                               ; preds = %26, %13, %7, %2
  %29 = phi i1 [ %27, %26 ], [ false, %7 ], [ false, %13 ], [ false, %2 ]
  ret i1 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_reboot(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7, !prof !8

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %10 = icmp ugt i32 %9, 1024
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %9) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.nlm_reboot, ptr %4, i32 0, i32 1
  store i32 %9, ptr %15, align 4
  store ptr %12, ptr %4, align 4
  %16 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !8

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nlm_reboot, ptr %4, i32 0, i32 2
  %20 = load i32, ptr %16, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  store i32 %21, ptr %19, align 4
  %22 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.nlm_reboot, ptr %4, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(16) %22, i32 16, i1 false)
  br label %26

26:                                               ; preds = %24, %18, %14, %11, %7, %2
  %27 = phi i1 [ true, %24 ], [ false, %7 ], [ false, %11 ], [ false, %18 ], [ false, %2 ], [ false, %14 ]
  ret i1 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_shareargs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(280) %5, i8 0, i32 280, i1 false)
  %6 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1, i32 5
  tail call void @locks_init_lock(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1, i32 4
  store i32 -1, ptr %7, align 4
  %8 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %74, label %10, !prof !8

10:                                               ; preds = %2
  %11 = load i32, ptr %8, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %13 = icmp ugt i32 %12, 32
  br i1 %13, label %74, label %14

14:                                               ; preds = %10
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %12) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %74, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  store i32 %12, ptr %20, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %4, ptr nonnull align 4 %17, i32 %12, i1 false) #6
  br label %23

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  store i32 4, ptr %22, align 4
  store i32 0, ptr %4, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1, i32 1
  %25 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %74, label %27, !prof !8

27:                                               ; preds = %23
  %28 = load i32, ptr %25, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  %30 = icmp ugt i32 %29, 1024
  br i1 %30, label %74, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %29) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %74, label %34

34:                                               ; preds = %31
  store i32 %29, ptr %24, align 4
  store ptr %32, ptr %5, align 4
  %35 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1, i32 2
  %36 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %74, label %38, !prof !8

38:                                               ; preds = %34
  %39 = load i32, ptr %36, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  %41 = icmp ugt i32 %40, 128
  br i1 %41, label %74, label %42

42:                                               ; preds = %38
  %43 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %40) #6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %74, label %45

45:                                               ; preds = %42
  %46 = trunc i32 %40 to i16
  store i16 %46, ptr %35, align 2
  %47 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %47, ptr nonnull align 4 %43, i32 %40, i1 false) #6
  %48 = getelementptr i8, ptr %47, i32 %40
  %49 = sub nuw nsw i32 128, %40
  tail call void @llvm.memset.p0.i32(ptr align 1 %48, i8 0, i32 %49, i1 false) #6
  %50 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1, i32 3
  %51 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %74, label %53, !prof !8

53:                                               ; preds = %45
  %54 = load i32, ptr %51, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  %56 = icmp ugt i32 %55, 1024
  br i1 %56, label %74, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %55) #6
  %59 = icmp eq ptr %58, null
  br i1 %59, label %74, label %60

60:                                               ; preds = %57
  store i32 %55, ptr %50, align 4
  %61 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1, i32 3, i32 1
  store ptr %58, ptr %61, align 4
  %62 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64, !prof !8

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 7
  %66 = load i32, ptr %62, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  store i32 %67, ptr %65, align 4
  %68 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70, !prof !8

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 6
  %72 = load i32, ptr %68, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  store i32 %73, ptr %71, align 4
  br label %74

74:                                               ; preds = %70, %64, %60, %57, %53, %45, %42, %38, %34, %31, %27, %23, %16, %10, %2
  %75 = phi i1 [ true, %70 ], [ false, %64 ], [ false, %10 ], [ false, %16 ], [ false, %2 ], [ false, %27 ], [ false, %31 ], [ false, %23 ], [ false, %38 ], [ false, %42 ], [ false, %34 ], [ false, %53 ], [ false, %57 ], [ false, %45 ], [ false, %60 ]
  ret i1 %75
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_init_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_decode_notify(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 1, i32 1
  %7 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9, !prof !8

9:                                                ; preds = %2
  %10 = load i32, ptr %7, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = icmp ugt i32 %11, 1024
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %11) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  store i32 %11, ptr %6, align 4
  store ptr %14, ptr %5, align 4
  %17 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !8

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.nlm_args, ptr %4, i32 0, i32 4
  %21 = load i32, ptr %17, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %19, %16, %13, %9, %2
  %24 = phi i1 [ true, %19 ], [ false, %16 ], [ false, %9 ], [ false, %13 ], [ false, %2 ]
  ret i1 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nlm4svc_encode_void(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_encode_testres(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %73, label %9, !prof !8

9:                                                ; preds = %2
  %10 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  store i32 %10, ptr %7, align 4
  %11 = load i32, ptr %5, align 4
  %12 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %11) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %73, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %12, ptr align 4 %4, i32 %15, i1 false) #6
  %16 = getelementptr inbounds %struct.nlm_res, ptr %4, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %73, label %20

20:                                               ; preds = %14
  store i32 %17, ptr %18, align 4
  %21 = load i32, ptr %16, align 4
  %22 = icmp eq i32 %21, 16777216
  br i1 %22, label %23, label %73

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nlm_res, ptr %4, i32 0, i32 2, i32 5, i32 7
  %25 = load i8, ptr %24, align 4
  %26 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %73, label %28, !prof !8

28:                                               ; preds = %23
  %29 = icmp eq i8 %25, 0
  %30 = select i1 %29, i32 0, i32 16777216
  store i32 %30, ptr %26, align 4
  %31 = getelementptr inbounds %struct.nlm_res, ptr %4, i32 0, i32 2, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %73, label %35, !prof !8

35:                                               ; preds = %28
  %36 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  store i32 %36, ptr %33, align 4
  %37 = getelementptr inbounds %struct.nlm_res, ptr %4, i32 0, i32 2, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, 1024
  br i1 %39, label %73, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.nlm_res, ptr %4, i32 0, i32 2, i32 3, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = add nuw nsw i32 %38, 7
  %44 = and i32 %43, -4
  %45 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %44) #6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %73, label %47, !prof !8

47:                                               ; preds = %40
  %48 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %45, ptr noundef %42, i32 noundef %38) #6
  %49 = icmp eq i32 %44, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.nlm_res, ptr %4, i32 0, i32 2, i32 5, i32 12
  %52 = load i64, ptr %51, align 8
  %53 = icmp eq i64 %52, -9223372036854775808
  %54 = select i1 %53, i64 -9223372036854775807, i64 %52
  %55 = getelementptr inbounds %struct.nlm_res, ptr %4, i32 0, i32 2, i32 5, i32 13
  %56 = load i64, ptr %55, align 8
  %57 = icmp eq i64 %56, 9223372036854775807
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = sub i64 %56, %52
  %60 = add i64 %59, 1
  %61 = icmp eq i64 %60, -9223372036854775808
  %62 = select i1 %61, i64 -9223372036854775807, i64 %60
  br label %63

63:                                               ; preds = %58, %50
  %64 = phi i64 [ %62, %58 ], [ 0, %50 ]
  %65 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #6
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67, !prof !8

67:                                               ; preds = %63
  %68 = tail call i64 @llvm.bswap.i64(i64 %54) #6
  store i64 %68, ptr %65, align 1
  %69 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71, !prof !8

71:                                               ; preds = %67
  %72 = tail call i64 @llvm.bswap.i64(i64 %64) #6
  store i64 %72, ptr %69, align 1
  br label %73

73:                                               ; preds = %71, %67, %63, %47, %40, %35, %28, %23, %20, %14, %9, %2
  %74 = phi i1 [ false, %14 ], [ true, %71 ], [ true, %20 ], [ false, %47 ], [ false, %67 ], [ false, %23 ], [ false, %28 ], [ false, %35 ], [ false, %40 ], [ false, %63 ], [ false, %9 ], [ false, %2 ]
  ret i1 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_encode_res(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9, !prof !8

9:                                                ; preds = %2
  %10 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  store i32 %10, ptr %7, align 4
  %11 = load i32, ptr %5, align 4
  %12 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %11) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %12, ptr align 4 %4, i32 %15, i1 false) #6
  %16 = getelementptr inbounds %struct.nlm_res, ptr %4, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 %17, ptr %18, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = xor i1 %19, true
  br label %23

23:                                               ; preds = %21, %9, %2
  %24 = phi i1 [ %22, %21 ], [ false, %9 ], [ false, %2 ]
  ret i1 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nlm4svc_encode_shareres(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nlm_cookie, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9, !prof !8

9:                                                ; preds = %2
  %10 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  store i32 %10, ptr %7, align 4
  %11 = load i32, ptr %5, align 4
  %12 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %11) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %12, ptr align 4 %4, i32 %15, i1 false) #6
  %16 = getelementptr inbounds %struct.nlm_res, ptr %4, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  store i32 %17, ptr %18, align 4
  %21 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !8

23:                                               ; preds = %20
  store i32 0, ptr %21, align 4
  br label %24

24:                                               ; preds = %23, %20, %14, %9, %2
  %25 = phi i1 [ false, %14 ], [ true, %23 ], [ false, %20 ], [ false, %9 ], [ false, %2 ]
  ret i1 %25
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
