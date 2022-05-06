; ModuleID = '/llk/IR/fs/nfs/nfs2xdr.c_pt.bc'
source_filename = "../fs/nfs/nfs2xdr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.anon.155 = type { i32, i32 }
%struct.nfs_entry = type { i64, i64, i64, ptr, i32, i32, ptr, ptr, i8, ptr }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.nfs_sattrargs = type { ptr, ptr }
%struct.nfs_diropargs = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs_diropok = type { ptr, ptr }
%struct.nfs_readlinkargs = type { ptr, i32, i32, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.133 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs4_stateid_struct = type { %union.anon.131, i32 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, [12 x i8] }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { ptr, [3 x i32], i32 }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.148, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.148 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.135 }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.nfs_createargs = type { ptr, ptr, i32, ptr }
%struct.nfs_removeargs = type { %struct.nfs4_sequence_args, ptr, %struct.qstr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.anon.4 = type { i32, i32 }
%struct.nfs_renameargs = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, ptr }
%struct.nfs_linkargs = type { ptr, ptr, ptr, i32 }
%struct.nfs_symlinkargs = type { ptr, ptr, i32, ptr, i32, ptr }
%struct.nfs_readdirargs = type { ptr, i32, i32, ptr }
%struct.nfs2_fsstat = type { i32, i32, i32, i32, i32 }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.128, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.128 = type { %struct.anon.130 }
%struct.anon.130 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.anon.129 = type { i32, i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }

@.str = private unnamed_addr constant [8 x i8] c"GETATTR\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SETATTR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"LOOKUP\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"READLINK\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"CREATE\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"REMOVE\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"RENAME\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"MKDIR\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"RMDIR\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"READDIR\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"STATFS\00", align 1
@nfs_procedures = dso_local constant [18 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @nfs2_xdr_enc_fhandle, ptr @nfs2_xdr_dec_attrstat, i32 8, i32 18, i32 1, i32 1, ptr @.str }, %struct.rpc_procinfo { i32 2, ptr @nfs2_xdr_enc_sattrargs, ptr @nfs2_xdr_dec_attrstat, i32 16, i32 18, i32 0, i32 2, ptr @.str.1 }, %struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 4, ptr @nfs2_xdr_enc_diropargs, ptr @nfs2_xdr_dec_diropres, i32 72, i32 26, i32 2, i32 4, ptr @.str.2 }, %struct.rpc_procinfo { i32 5, ptr @nfs2_xdr_enc_readlinkargs, ptr @nfs2_xdr_dec_readlinkres, i32 8, i32 3, i32 3, i32 5, ptr @.str.3 }, %struct.rpc_procinfo { i32 6, ptr @nfs2_xdr_enc_readargs, ptr @nfs2_xdr_dec_readres, i32 11, i32 20, i32 3, i32 6, ptr @.str.4 }, %struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 8, ptr @nfs2_xdr_enc_writeargs, ptr @nfs2_xdr_dec_writeres, i32 12, i32 18, i32 4, i32 8, ptr @.str.5 }, %struct.rpc_procinfo { i32 9, ptr @nfs2_xdr_enc_createargs, ptr @nfs2_xdr_dec_diropres, i32 80, i32 26, i32 0, i32 9, ptr @.str.6 }, %struct.rpc_procinfo { i32 10, ptr @nfs2_xdr_enc_removeargs, ptr @nfs2_xdr_dec_stat, i32 72, i32 1, i32 0, i32 10, ptr @.str.7 }, %struct.rpc_procinfo { i32 11, ptr @nfs2_xdr_enc_renameargs, ptr @nfs2_xdr_dec_stat, i32 144, i32 1, i32 0, i32 11, ptr @.str.8 }, %struct.rpc_procinfo { i32 12, ptr @nfs2_xdr_enc_linkargs, ptr @nfs2_xdr_dec_stat, i32 80, i32 1, i32 0, i32 12, ptr @.str.9 }, %struct.rpc_procinfo { i32 13, ptr @nfs2_xdr_enc_symlinkargs, ptr @nfs2_xdr_dec_stat, i32 81, i32 1, i32 0, i32 13, ptr @.str.10 }, %struct.rpc_procinfo { i32 14, ptr @nfs2_xdr_enc_createargs, ptr @nfs2_xdr_dec_diropres, i32 80, i32 26, i32 0, i32 14, ptr @.str.11 }, %struct.rpc_procinfo { i32 15, ptr @nfs2_xdr_enc_diropargs, ptr @nfs2_xdr_dec_stat, i32 72, i32 1, i32 0, i32 15, ptr @.str.12 }, %struct.rpc_procinfo { i32 16, ptr @nfs2_xdr_enc_readdirargs, ptr @nfs2_xdr_dec_readdirres, i32 10, i32 2, i32 3, i32 16, ptr @.str.13 }, %struct.rpc_procinfo { i32 17, ptr @nfs2_xdr_enc_fhandle, ptr @nfs2_xdr_dec_statfsres, i32 8, i32 6, i32 0, i32 17, ptr @.str.14 }], align 4
@nfs_version2_counts = internal global [18 x i32] zeroinitializer, align 4
@nfs_version2 = dso_local local_unnamed_addr constant %struct.rpc_version { i32 2, i32 18, ptr @nfs_procedures, ptr @nfs_version2_counts }, align 4
@__tracepoint_nfs_xdr_status = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nfs_errtbl = internal unnamed_addr constant [30 x %struct.anon.155] [%struct.anon.155 zeroinitializer, %struct.anon.155 { i32 1, i32 -1 }, %struct.anon.155 { i32 2, i32 -2 }, %struct.anon.155 { i32 5, i32 -5 }, %struct.anon.155 { i32 6, i32 -6 }, %struct.anon.155 { i32 13, i32 -13 }, %struct.anon.155 { i32 17, i32 -17 }, %struct.anon.155 { i32 18, i32 -18 }, %struct.anon.155 { i32 19, i32 -19 }, %struct.anon.155 { i32 20, i32 -20 }, %struct.anon.155 { i32 21, i32 -21 }, %struct.anon.155 { i32 22, i32 -22 }, %struct.anon.155 { i32 27, i32 -27 }, %struct.anon.155 { i32 28, i32 -28 }, %struct.anon.155 { i32 30, i32 -30 }, %struct.anon.155 { i32 31, i32 -31 }, %struct.anon.155 { i32 63, i32 -36 }, %struct.anon.155 { i32 66, i32 -39 }, %struct.anon.155 { i32 69, i32 -122 }, %struct.anon.155 { i32 70, i32 -116 }, %struct.anon.155 { i32 71, i32 -66 }, %struct.anon.155 { i32 10001, i32 -521 }, %struct.anon.155 { i32 10002, i32 -522 }, %struct.anon.155 { i32 10003, i32 -523 }, %struct.anon.155 { i32 10004, i32 -524 }, %struct.anon.155 { i32 10005, i32 -525 }, %struct.anon.155 { i32 10006, i32 -121 }, %struct.anon.155 { i32 10007, i32 -527 }, %struct.anon.155 { i32 10008, i32 -528 }, %struct.anon.155 { i32 -1, i32 -5 }], align 4
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@encode_filename.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"fs/nfs/nfs2xdr.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs2_decode_dirent(ptr noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  %9 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #5
  %10 = icmp eq ptr %9, null
  br i1 %8, label %11, label %17

11:                                               ; preds = %6
  br i1 %10, label %44, label %12, !prof !8

12:                                               ; preds = %11
  %13 = load i32, ptr %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 5
  store i32 1, ptr %16, align 8
  br label %44

17:                                               ; preds = %6
  br i1 %10, label %44, label %18, !prof !8

18:                                               ; preds = %17
  %19 = load i32, ptr %9, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %21 = zext i32 %20 to i64
  store i64 %21, ptr %1, align 8
  %22 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 3
  %23 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 4
  %24 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26, !prof !8

26:                                               ; preds = %18
  %27 = load i32, ptr %24, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %29 = icmp ugt i32 %28, 255
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %28) #5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33, !prof !8

33:                                               ; preds = %30
  store ptr %31, ptr %22, align 4
  store i32 %28, ptr %23, align 4
  %34 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 2
  store i64 %35, ptr %36, align 8
  %37 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39, !prof !8

39:                                               ; preds = %33
  %40 = load i32, ptr %37, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  %42 = zext i32 %41 to i64
  store i64 %42, ptr %34, align 8
  %43 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 8
  store i8 0, ptr %43, align 4
  br label %44

44:                                               ; preds = %39, %33, %30, %26, %18, %17, %15, %12, %11, %3
  %45 = phi i32 [ -523, %15 ], [ 0, %39 ], [ -11, %3 ], [ -11, %11 ], [ -11, %12 ], [ -11, %17 ], [ -11, %33 ], [ -36, %26 ], [ -5, %30 ], [ -5, %18 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_fhandle(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %5 = getelementptr inbounds %struct.nfs_fh, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %4, ptr noundef align 2 dereferenceable(32) %5, i32 32, i1 false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_attrstat(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call fastcc i32 @decode_attrstat(ptr noundef %1, ptr noundef %2, ptr noundef null)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_sattrargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %6 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %5, ptr noundef align 2 dereferenceable(32) %6, i32 32, i1 false) #5
  %7 = getelementptr inbounds %struct.nfs_sattrargs, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call fastcc void @encode_sattr(ptr noundef %1, ptr noundef %8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_diropargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nfs_diropargs, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_diropargs, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %10 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %9, ptr noundef align 2 dereferenceable(32) %10, i32 32, i1 false) #5
  %11 = icmp ugt i32 %8, 255
  %12 = load i1, ptr @encode_filename.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %3
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %16

16:                                               ; preds = %15, %3
  %17 = add i32 %8, 4
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %17) #5
  %19 = tail call ptr @xdr_encode_opaque(ptr noundef %18, ptr noundef %6, i32 noundef %8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_diropres(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %25, %14, %9
  br label %36

14:                                               ; preds = %9
  %15 = tail call ptr @llvm.thread.pointer() #5
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %13, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  %26 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  br label %13

27:                                               ; preds = %6
  %28 = load ptr, ptr %2, align 4
  %29 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 32) #5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31, !prof !8

31:                                               ; preds = %27
  store i16 32, ptr %28, align 2
  %32 = getelementptr inbounds %struct.nfs_fh, ptr %28, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(32) %32, ptr noundef nonnull align 4 dereferenceable(32) %29, i32 32, i1 false) #5
  %33 = getelementptr inbounds %struct.nfs_diropok, ptr %2, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call fastcc i32 @decode_fattr(ptr noundef %1, ptr noundef %34) #5
  br label %47

36:                                               ; preds = %36, %13
  %37 = phi i32 [ %43, %36 ], [ 0, %13 ]
  %38 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, -1
  %41 = icmp eq i32 %39, %10
  %42 = or i1 %40, %41
  %43 = add nuw nsw i32 %37, 1
  br i1 %42, label %44, label %36

44:                                               ; preds = %36
  %45 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %37, i32 1
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %31, %27, %3
  %48 = phi i32 [ %46, %44 ], [ -5, %3 ], [ %35, %31 ], [ -5, %27 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_readlinkargs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %6 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %5, ptr noundef align 2 dereferenceable(32) %6, i32 32, i1 false) #5
  %7 = getelementptr inbounds %struct.nfs_readlinkargs, ptr %2, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_readlinkargs, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_readlinkargs, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef 2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_readlinkres(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %56, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #5
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9
  br label %45

27:                                               ; preds = %6
  %28 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %56, label %30, !prof !8

30:                                               ; preds = %27
  %31 = load i32, ptr %28, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  %33 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.xdr_buf, ptr %34, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp uge i32 %32, %36
  %38 = icmp ugt i32 %32, 1024
  %39 = or i1 %38, %37
  br i1 %39, label %56, label %40, !prof !8

40:                                               ; preds = %30
  %41 = tail call i32 @xdr_read_pages(ptr noundef %1, i32 noundef %32) #5
  %42 = icmp ugt i32 %32, %41
  br i1 %42, label %56, label %43, !prof !8

43:                                               ; preds = %40
  %44 = load ptr, ptr %33, align 4
  tail call void @xdr_terminate_string(ptr noundef %44, i32 noundef %32) #5
  br label %56

45:                                               ; preds = %45, %26
  %46 = phi i32 [ %52, %45 ], [ 0, %26 ]
  %47 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, -1
  %50 = icmp eq i32 %48, %10
  %51 = or i1 %49, %50
  %52 = add nuw nsw i32 %46, 1
  br i1 %51, label %53, label %45

53:                                               ; preds = %45
  %54 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %46, i32 1
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %53, %43, %40, %30, %27, %3
  %57 = phi i32 [ %55, %53 ], [ -5, %3 ], [ 0, %43 ], [ -5, %27 ], [ -36, %30 ], [ -5, %40 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_readargs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 5
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %12 = getelementptr inbounds %struct.nfs_fh, ptr %10, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %11, ptr noundef align 2 dereferenceable(32) %12, i32 32, i1 false) #5
  %13 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %15 = getelementptr i32, ptr %13, i32 1
  store i32 %14, ptr %13, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %17 = getelementptr i32, ptr %13, i32 2
  store i32 %16, ptr %15, align 4
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %7, align 8
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %19, i32 noundef %21, i32 noundef %22, i32 noundef 19) #5
  %23 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 2, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = or i32 %24, 1
  store i32 %25, ptr %23, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_readres(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %59, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15, !prof !9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 3
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = tail call fastcc i32 @decode_fattr(ptr noundef %1, ptr noundef %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %59, !prof !9

15:                                               ; preds = %6
  %16 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #5
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  %31 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %16) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  br label %32

32:                                               ; preds = %30, %19, %15
  %33 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 3
  store i32 %16, ptr %33, align 8
  br label %48

34:                                               ; preds = %9
  %35 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %59, label %37, !prof !8

37:                                               ; preds = %34
  %38 = load i32, ptr %35, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %40 = tail call i32 @xdr_read_pages(ptr noundef %1, i32 noundef %39) #5
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %47, label %42, !prof !8

42:                                               ; preds = %47, %37
  %43 = phi i32 [ %40, %47 ], [ %39, %37 ]
  %44 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 4, i32 0, i32 1
  store i32 0, ptr %44, align 4
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 2
  store i64 %45, ptr %46, align 8
  br label %59

47:                                               ; preds = %37
  br label %42

48:                                               ; preds = %48, %32
  %49 = phi i32 [ %55, %48 ], [ 0, %32 ]
  %50 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, -1
  %53 = icmp eq i32 %51, %16
  %54 = or i1 %52, %53
  %55 = add nuw nsw i32 %49, 1
  br i1 %54, label %56, label %48

56:                                               ; preds = %48
  %57 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %49, i32 1
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %56, %42, %34, %9, %3
  %60 = phi i32 [ %58, %56 ], [ %13, %9 ], [ -5, %3 ], [ %43, %42 ], [ -5, %34 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_writeargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 5
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %12 = getelementptr inbounds %struct.nfs_fh, ptr %10, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %11, ptr noundef align 2 dereferenceable(32) %12, i32 32, i1 false) #5
  %13 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %15 = getelementptr i32, ptr %13, i32 1
  store i32 %14, ptr %13, align 4
  %16 = getelementptr i32, ptr %13, i32 2
  store i32 %14, ptr %15, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %18 = getelementptr i32, ptr %13, i32 3
  store i32 %17, ptr %16, align 4
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  tail call void @xdr_write_pages(ptr noundef %1, ptr noundef %20, i32 noundef %22, i32 noundef %8) #5
  %23 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.xdr_buf, ptr %24, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 2
  store i32 %27, ptr %25, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_writeres(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_writeverf, ptr %5, i32 0, i32 1
  store i32 2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 3
  %10 = tail call fastcc i32 @decode_attrstat(ptr noundef %1, ptr noundef %8, ptr noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_createargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nfs_createargs, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_createargs, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %10 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %9, ptr noundef align 2 dereferenceable(32) %10, i32 32, i1 false) #5
  %11 = icmp ugt i32 %8, 255
  %12 = load i1, ptr @encode_filename.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %3
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %16

16:                                               ; preds = %15, %3
  %17 = add i32 %8, 4
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %17) #5
  %19 = tail call ptr @xdr_encode_opaque(ptr noundef %18, ptr noundef %6, i32 noundef %8) #5
  %20 = getelementptr inbounds %struct.nfs_createargs, ptr %2, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call fastcc void @encode_sattr(ptr noundef %1, ptr noundef %21)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_removeargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_removeargs, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nfs_removeargs, ptr %2, i32 0, i32 2
  %7 = getelementptr inbounds %struct.nfs_removeargs, ptr %2, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.anon.4, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %12 = getelementptr inbounds %struct.nfs_fh, ptr %5, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %11, ptr noundef align 2 dereferenceable(32) %12, i32 32, i1 false) #5
  %13 = icmp ugt i32 %10, 255
  %14 = load i1, ptr @encode_filename.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %3
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %18

18:                                               ; preds = %17, %3
  %19 = add i32 %10, 4
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %19) #5
  %21 = tail call ptr @xdr_encode_opaque(ptr noundef %20, ptr noundef %8, i32 noundef %10) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_stat(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %38, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #5
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9
  br label %27

27:                                               ; preds = %27, %26
  %28 = phi i32 [ %34, %27 ], [ 0, %26 ]
  %29 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, -1
  %32 = icmp eq i32 %30, %10
  %33 = or i1 %31, %32
  %34 = add nuw nsw i32 %28, 1
  br i1 %33, label %35, label %27

35:                                               ; preds = %27
  %36 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %28, i32 1
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %6, %3
  %39 = phi i32 [ %37, %35 ], [ 0, %6 ], [ -5, %3 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_renameargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_renameargs, ptr %2, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_renameargs, ptr %2, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_renameargs, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.qstr, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.anon.4, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %15 = getelementptr inbounds %struct.nfs_fh, ptr %9, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %14, ptr noundef align 2 dereferenceable(32) %15, i32 32, i1 false) #5
  %16 = icmp ugt i32 %13, 255
  %17 = load i1, ptr @encode_filename.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %3
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %21

21:                                               ; preds = %20, %3
  %22 = add i32 %13, 4
  %23 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %22) #5
  %24 = tail call ptr @xdr_encode_opaque(ptr noundef %23, ptr noundef %11, i32 noundef %13) #5
  %25 = getelementptr inbounds %struct.nfs_renameargs, ptr %2, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.qstr, ptr %7, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.anon.4, ptr %7, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %32 = getelementptr inbounds %struct.nfs_fh, ptr %26, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %31, ptr noundef align 2 dereferenceable(32) %32, i32 32, i1 false) #5
  %33 = icmp ugt i32 %30, 255
  %34 = load i1, ptr @encode_filename.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !8

37:                                               ; preds = %21
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %38

38:                                               ; preds = %37, %21
  %39 = add i32 %30, 4
  %40 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %39) #5
  %41 = tail call ptr @xdr_encode_opaque(ptr noundef %40, ptr noundef %28, i32 noundef %30) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_linkargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %6 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %5, ptr noundef align 2 dereferenceable(32) %6, i32 32, i1 false) #5
  %7 = getelementptr inbounds %struct.nfs_linkargs, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfs_linkargs, ptr %2, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfs_linkargs, ptr %2, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %14 = getelementptr inbounds %struct.nfs_fh, ptr %8, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %13, ptr noundef align 2 dereferenceable(32) %14, i32 32, i1 false) #5
  %15 = icmp ugt i32 %12, 255
  %16 = load i1, ptr @encode_filename.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %3
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %20

20:                                               ; preds = %19, %3
  %21 = add i32 %12, 4
  %22 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %21) #5
  %23 = tail call ptr @xdr_encode_opaque(ptr noundef %22, ptr noundef %10, i32 noundef %12) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_symlinkargs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %10 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %9, ptr noundef align 2 dereferenceable(32) %10, i32 32, i1 false) #5
  %11 = icmp ugt i32 %8, 255
  %12 = load i1, ptr @encode_filename.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %3
  store i1 true, ptr @encode_filename.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 388, i32 noundef 9, ptr noundef null) #5
  br label %16

16:                                               ; preds = %15, %3
  %17 = add i32 %8, 4
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %17) #5
  %19 = tail call ptr @xdr_encode_opaque(ptr noundef %18, ptr noundef %6, i32 noundef %8) #5
  %20 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %2, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %2, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  store i32 %25, ptr %24, align 4
  tail call void @xdr_write_pages(ptr noundef %1, ptr noundef %21, i32 noundef 0, i32 noundef %23) #5
  %26 = getelementptr inbounds %struct.nfs_symlinkargs, ptr %2, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  tail call fastcc void @encode_sattr(ptr noundef %1, ptr noundef %27)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs2_xdr_enc_readdirargs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #5
  %6 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %5, ptr noundef align 2 dereferenceable(32) %6, i32 32, i1 false) #5
  %7 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #5
  %8 = getelementptr inbounds %struct.nfs_readdirargs, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %11 = getelementptr i32, ptr %7, i32 1
  store i32 %10, ptr %7, align 4
  %12 = getelementptr inbounds %struct.nfs_readdirargs, ptr %2, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  store i32 %14, ptr %11, align 4
  %15 = getelementptr inbounds %struct.nfs_readdirargs, ptr %2, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %12, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %16, i32 noundef 0, i32 noundef %17, i32 noundef 1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_readdirres(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #5
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9
  br label %33

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.xdr_buf, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @xdr_read_pages(ptr noundef %1, i32 noundef %31) #5
  br label %44

33:                                               ; preds = %33, %26
  %34 = phi i32 [ %40, %33 ], [ 0, %26 ]
  %35 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, -1
  %38 = icmp eq i32 %36, %10
  %39 = or i1 %37, %38
  %40 = add nuw nsw i32 %34, 1
  br i1 %39, label %41, label %33

41:                                               ; preds = %33
  %42 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %34, i32 1
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %27, %3
  %45 = phi i32 [ %43, %41 ], [ %32, %27 ], [ -5, %3 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs2_xdr_dec_statfsres(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %60, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #5
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9
  br label %49

27:                                               ; preds = %6
  %28 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 20) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %60, label %30, !prof !8

30:                                               ; preds = %27
  %31 = getelementptr i32, ptr %28, i32 1
  %32 = load i32, ptr %28, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  store i32 %33, ptr %2, align 4
  %34 = getelementptr i32, ptr %28, i32 2
  %35 = load i32, ptr %31, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  %37 = getelementptr inbounds %struct.nfs2_fsstat, ptr %2, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr i32, ptr %28, i32 3
  %39 = load i32, ptr %34, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  %41 = getelementptr inbounds %struct.nfs2_fsstat, ptr %2, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  %42 = getelementptr i32, ptr %28, i32 4
  %43 = load i32, ptr %38, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  %45 = getelementptr inbounds %struct.nfs2_fsstat, ptr %2, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  %46 = load i32, ptr %42, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  %48 = getelementptr inbounds %struct.nfs2_fsstat, ptr %2, i32 0, i32 4
  store i32 %47, ptr %48, align 4
  br label %60

49:                                               ; preds = %49, %26
  %50 = phi i32 [ %56, %49 ], [ 0, %26 ]
  %51 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, -1
  %54 = icmp eq i32 %52, %10
  %55 = or i1 %53, %54
  %56 = add nuw nsw i32 %50, 1
  br i1 %55, label %57, label %49

57:                                               ; preds = %49
  %58 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %50, i32 1
  %59 = load i32, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %30, %27, %3
  %61 = phi i32 [ %59, %57 ], [ -5, %3 ], [ 0, %30 ], [ -5, %27 ]
  ret i32 %61
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attrstat(ptr noundef %0, ptr nocapture noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #5
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %0, i32 noundef %10) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9, %6
  %27 = phi i32 [ %10, %24 ], [ %10, %13 ], [ %10, %9 ], [ 0, %6 ]
  %28 = icmp eq ptr %2, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 %27, ptr %2, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = tail call fastcc i32 @decode_fattr(ptr noundef %0, ptr noundef %1)
  br label %45

34:                                               ; preds = %34, %30
  %35 = phi i32 [ %41, %34 ], [ 0, %30 ]
  %36 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, -1
  %39 = icmp eq i32 %37, %27
  %40 = or i1 %38, %39
  %41 = add nuw nsw i32 %35, 1
  br i1 %40, label %42, label %34

42:                                               ; preds = %34
  %43 = getelementptr [30 x %struct.anon.155], ptr @nfs_errtbl, i32 0, i32 %35, i32 1
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %32, %3
  %46 = phi i32 [ %44, %42 ], [ %33, %32 ], [ -5, %3 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_fattr(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 68) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %111, label %5, !prof !8

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 8
  %7 = or i32 %6, 163199
  store i32 %7, ptr %1, align 8
  %8 = load i32, ptr %3, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %10 = icmp ugt i32 %9, 8
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11, %5
  %13 = phi i32 [ 7, %11 ], [ %9, %5 ]
  %14 = getelementptr i32, ptr %3, i32 1
  %15 = getelementptr i32, ptr %3, i32 2
  %16 = load i32, ptr %14, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 1
  store i16 %18, ptr %19, align 4
  %20 = getelementptr i32, ptr %3, i32 3
  %21 = load i32, ptr %15, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  %23 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 2
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 3
  %25 = load i32, ptr %20, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  store i32 %26, ptr %24, align 4
  %27 = icmp eq i32 %25, -1
  br i1 %27, label %111, label %28

28:                                               ; preds = %12
  %29 = getelementptr i32, ptr %3, i32 4
  %30 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 4
  %31 = load i32, ptr %29, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  store i32 %32, ptr %30, align 8
  %33 = icmp eq i32 %31, -1
  br i1 %33, label %111, label %34

34:                                               ; preds = %28
  %35 = getelementptr i32, ptr %3, i32 5
  %36 = getelementptr i32, ptr %3, i32 6
  %37 = load i32, ptr %35, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 6
  store i64 %39, ptr %40, align 8
  %41 = getelementptr i32, ptr %3, i32 7
  %42 = load i32, ptr %36, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  %44 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 7
  store i32 %43, ptr %44, align 8
  %45 = getelementptr i32, ptr %3, i32 8
  %46 = load i32, ptr %41, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  %48 = and i32 %47, 255
  %49 = lshr i32 %47, 12
  %50 = and i32 %49, 1048320
  %51 = or i32 %50, %48
  %52 = shl i32 %47, 12
  %53 = and i32 %52, -1048576
  %54 = or i32 %51, %53
  %55 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 5
  store i32 %54, ptr %55, align 4
  %56 = icmp eq i32 %13, 4
  %57 = icmp eq i32 %46, -1
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %34
  %60 = and i16 %18, 4095
  %61 = or i16 %60, 4096
  store i16 %61, ptr %19, align 4
  store i32 0, ptr %55, align 4
  br label %62

62:                                               ; preds = %59, %34
  %63 = getelementptr i32, ptr %3, i32 9
  %64 = load i32, ptr %45, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #5
  %66 = getelementptr inbounds %struct.anon.129, ptr %44, i32 0, i32 1
  store i32 %65, ptr %66, align 4
  %67 = getelementptr i32, ptr %3, i32 10
  %68 = load i32, ptr %63, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #5
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 8
  store i64 %70, ptr %71, align 8
  %72 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 8, i32 1
  store i64 0, ptr %72, align 8
  %73 = getelementptr i32, ptr %3, i32 11
  %74 = load i32, ptr %67, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #5
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 9
  store i64 %76, ptr %77, align 8
  %78 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 11
  %79 = getelementptr i32, ptr %3, i32 12
  %80 = load i32, ptr %73, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #5
  %82 = zext i32 %81 to i64
  store i64 %82, ptr %78, align 8
  %83 = getelementptr i32, ptr %3, i32 13
  %84 = load i32, ptr %79, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #5
  %86 = mul i32 %85, 1000
  %87 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 11, i32 1
  store i32 %86, ptr %87, align 8
  %88 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 12
  %89 = getelementptr i32, ptr %3, i32 14
  %90 = load i32, ptr %83, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  %92 = zext i32 %91 to i64
  store i64 %92, ptr %88, align 8
  %93 = getelementptr i32, ptr %3, i32 15
  %94 = load i32, ptr %89, align 4
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #5
  %96 = mul i32 %95, 1000
  %97 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 12, i32 1
  store i32 %96, ptr %97, align 8
  %98 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 13
  %99 = getelementptr i32, ptr %3, i32 16
  %100 = load i32, ptr %93, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #5
  %102 = zext i32 %101 to i64
  store i64 %102, ptr %98, align 8
  %103 = load i32, ptr %99, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #5
  %105 = mul i32 %104, 1000
  %106 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 13, i32 1
  store i32 %105, ptr %106, align 8
  %107 = shl nuw nsw i64 %102, 30
  %108 = sext i32 %105 to i64
  %109 = add nsw i64 %107, %108
  %110 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 14
  store i64 %109, ptr %110, align 8
  br label %111

111:                                              ; preds = %62, %28, %12, %2
  %112 = phi i32 [ 0, %62 ], [ -5, %2 ], [ -22, %12 ], [ -22, %28 ]
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_xdr_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_sattr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 32) #5
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %11, %7 ], [ -1, %2 ]
  %14 = getelementptr i32, ptr %3, i32 1
  store i32 %13, ptr %3, align 4
  %15 = load i32, ptr %1, align 8
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, -1
  %22 = load i32, ptr @overflowuid, align 4
  %23 = select i1 %21, i32 %22, i32 %20
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  br label %25

25:                                               ; preds = %18, %12
  %26 = phi i32 [ %24, %18 ], [ -1, %12 ]
  %27 = getelementptr i32, ptr %3, i32 2
  store i32 %26, ptr %14, align 4
  %28 = load i32, ptr %1, align 8
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, -1
  %35 = load i32, ptr @overflowgid, align 4
  %36 = select i1 %34, i32 %35, i32 %33
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  br label %38

38:                                               ; preds = %31, %25
  %39 = phi i32 [ %37, %31 ], [ -1, %25 ]
  %40 = getelementptr i32, ptr %3, i32 3
  store i32 %39, ptr %27, align 4
  %41 = load i32, ptr %1, align 8
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 4
  %46 = load i64, ptr %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i32 [ %48, %44 ], [ -1, %38 ]
  %51 = getelementptr i32, ptr %3, i32 4
  store i32 %50, ptr %40, align 4
  %52 = load i32, ptr %1, align 8
  %53 = and i32 %52, 128
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 5
  %57 = load i64, ptr %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #5
  store i32 %59, ptr %51, align 4
  %60 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 5, i32 1
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 0
  %63 = sdiv i32 %61, 1000
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #5
  %65 = select i1 %62, i32 0, i32 %64
  %66 = getelementptr i32, ptr %3, i32 5
  store i32 %65, ptr %66, align 4
  br label %78

67:                                               ; preds = %49
  %68 = and i32 %52, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 5
  %72 = load i64, ptr %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #5
  %75 = getelementptr i32, ptr %3, i32 5
  store i32 %74, ptr %51, align 4
  store i32 1078071040, ptr %75, align 4
  br label %78

76:                                               ; preds = %67
  %77 = getelementptr i32, ptr %3, i32 5
  store i32 -1, ptr %51, align 4
  store i32 -1, ptr %77, align 4
  br label %78

78:                                               ; preds = %76, %70, %55
  %79 = getelementptr i32, ptr %3, i32 6
  %80 = load i32, ptr %1, align 8
  %81 = and i32 %80, 256
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 6
  %85 = load i64, ptr %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #5
  store i32 %87, ptr %79, align 4
  %88 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 6, i32 1
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 0
  %91 = sdiv i32 %89, 1000
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #5
  %93 = select i1 %90, i32 0, i32 %92
  %94 = getelementptr i32, ptr %3, i32 7
  store i32 %93, ptr %94, align 4
  br label %106

95:                                               ; preds = %78
  %96 = and i32 %80, 32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 6
  %100 = load i64, ptr %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #5
  %103 = getelementptr i32, ptr %3, i32 7
  store i32 %102, ptr %79, align 4
  store i32 1078071040, ptr %103, align 4
  br label %106

104:                                              ; preds = %95
  %105 = getelementptr i32, ptr %3, i32 7
  store i32 -1, ptr %79, align 4
  store i32 -1, ptr %105, align 4
  br label %106

106:                                              ; preds = %104, %98, %83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_prepare_reply_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_read_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_terminate_string(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_write_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2157348839}
!11 = !{i64 2157348999}
