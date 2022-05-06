; ModuleID = '/llk/IR/fs/nfs/nfs3xdr.c_pt.bc'
source_filename = "../fs/nfs/nfs3xdr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.anon.156 = type { i32, i32 }
%struct.nfs_entry = type { i64, i64, i64, ptr, i32, i32, ptr, ptr, i8, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.128, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.128 = type { %struct.anon.130 }
%struct.anon.130 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs3_sattrargs = type { ptr, ptr, i32, %struct.timespec64 }
%struct.nfs3_diropargs = type { ptr, ptr, i32 }
%struct.nfs3_diropres = type { ptr, ptr, ptr }
%struct.nfs3_accessargs = type { ptr, i32 }
%struct.nfs3_accessres = type { ptr, i32 }
%struct.nfs3_readlinkargs = type { ptr, i32, i32, ptr }
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
%struct.nfs3_createargs = type { ptr, ptr, i32, ptr, i32, [2 x i32] }
%struct.nfs3_mkdirargs = type { ptr, ptr, i32, ptr }
%struct.nfs3_symlinkargs = type { ptr, ptr, i32, ptr, i32, ptr }
%struct.nfs3_mknodargs = type { ptr, ptr, i32, i32, ptr, i32 }
%struct.nfs_removeargs = type { %struct.nfs4_sequence_args, ptr, %struct.qstr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.anon.4 = type { i32, i32 }
%struct.nfs_removeres = type { %struct.nfs4_sequence_res, ptr, ptr, %struct.nfs4_change_info }
%struct.nfs4_change_info = type { i32, i64, i64 }
%struct.nfs_renameargs = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, ptr }
%struct.nfs_renameres = type { %struct.nfs4_sequence_res, ptr, %struct.nfs4_change_info, ptr, %struct.nfs4_change_info, ptr }
%struct.nfs3_linkargs = type { ptr, ptr, ptr, i32 }
%struct.nfs3_linkres = type { ptr, ptr }
%struct.nfs3_readdirargs = type { ptr, i64, [2 x i32], i8, i32, ptr }
%struct.nfs3_readdirres = type { ptr, ptr, i8 }
%struct.nfs_fsstat = type { ptr, i64, i64, i64, i64, i64, i64 }
%struct.nfs_fsinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i64, %struct.timespec64, i32, i32, [8 x i32], i32, i32, i32, i32 }
%struct.nfs_pathconf = type { ptr, i32, i32 }
%struct.nfs_commitargs = type { %struct.nfs4_sequence_args, ptr, i64, i32, ptr }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.nfs3_getaclargs = type { ptr, i32, ptr }
%struct.nfs3_getaclres = type { ptr, i32, i32, i32, ptr, ptr }
%struct.nfs3_setaclargs = type { ptr, i32, ptr, ptr, i32, i32, ptr }

@.str = private unnamed_addr constant [8 x i8] c"GETATTR\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SETATTR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"LOOKUP\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ACCESS\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"READLINK\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"CREATE\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"MKDIR\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"MKNOD\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"REMOVE\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"RMDIR\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"RENAME\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"READDIR\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"READDIRPLUS\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"FSSTAT\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"FSINFO\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"PATHCONF\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@nfs3_procedures = dso_local constant [22 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @nfs3_xdr_enc_getattr3args, ptr @nfs3_xdr_dec_getattr3res, i32 17, i32 22, i32 1, i32 1, ptr @.str }, %struct.rpc_procinfo { i32 2, ptr @nfs3_xdr_enc_setattr3args, ptr @nfs3_xdr_dec_setattr3res, i32 35, i32 30, i32 0, i32 2, ptr @.str.1 }, %struct.rpc_procinfo { i32 3, ptr @nfs3_xdr_enc_lookup3args, ptr @nfs3_xdr_dec_lookup3res, i32 81, i32 62, i32 2, i32 3, ptr @.str.2 }, %struct.rpc_procinfo { i32 4, ptr @nfs3_xdr_enc_access3args, ptr @nfs3_xdr_dec_access3res, i32 18, i32 24, i32 1, i32 4, ptr @.str.3 }, %struct.rpc_procinfo { i32 5, ptr @nfs3_xdr_enc_readlink3args, ptr @nfs3_xdr_dec_readlink3res, i32 17, i32 25, i32 3, i32 5, ptr @.str.4 }, %struct.rpc_procinfo { i32 6, ptr @nfs3_xdr_enc_read3args, ptr @nfs3_xdr_dec_read3res, i32 20, i32 27, i32 3, i32 6, ptr @.str.5 }, %struct.rpc_procinfo { i32 7, ptr @nfs3_xdr_enc_write3args, ptr @nfs3_xdr_dec_write3res, i32 22, i32 34, i32 4, i32 7, ptr @.str.6 }, %struct.rpc_procinfo { i32 8, ptr @nfs3_xdr_enc_create3args, ptr @nfs3_xdr_dec_create3res, i32 96, i32 70, i32 0, i32 8, ptr @.str.7 }, %struct.rpc_procinfo { i32 9, ptr @nfs3_xdr_enc_mkdir3args, ptr @nfs3_xdr_dec_create3res, i32 96, i32 70, i32 0, i32 9, ptr @.str.8 }, %struct.rpc_procinfo { i32 10, ptr @nfs3_xdr_enc_symlink3args, ptr @nfs3_xdr_dec_create3res, i32 97, i32 70, i32 0, i32 10, ptr @.str.9 }, %struct.rpc_procinfo { i32 11, ptr @nfs3_xdr_enc_mknod3args, ptr @nfs3_xdr_dec_create3res, i32 98, i32 70, i32 0, i32 11, ptr @.str.10 }, %struct.rpc_procinfo { i32 12, ptr @nfs3_xdr_enc_remove3args, ptr @nfs3_xdr_dec_remove3res, i32 81, i32 30, i32 0, i32 12, ptr @.str.11 }, %struct.rpc_procinfo { i32 13, ptr @nfs3_xdr_enc_lookup3args, ptr @nfs3_xdr_dec_setattr3res, i32 81, i32 30, i32 0, i32 13, ptr @.str.12 }, %struct.rpc_procinfo { i32 14, ptr @nfs3_xdr_enc_rename3args, ptr @nfs3_xdr_dec_rename3res, i32 162, i32 59, i32 0, i32 14, ptr @.str.13 }, %struct.rpc_procinfo { i32 15, ptr @nfs3_xdr_enc_link3args, ptr @nfs3_xdr_dec_link3res, i32 98, i32 52, i32 0, i32 15, ptr @.str.14 }, %struct.rpc_procinfo { i32 16, ptr @nfs3_xdr_enc_readdir3args, ptr @nfs3_xdr_dec_readdir3res, i32 22, i32 26, i32 3, i32 16, ptr @.str.15 }, %struct.rpc_procinfo { i32 17, ptr @nfs3_xdr_enc_readdirplus3args, ptr @nfs3_xdr_dec_readdir3res, i32 23, i32 26, i32 3, i32 17, ptr @.str.16 }, %struct.rpc_procinfo { i32 18, ptr @nfs3_xdr_enc_getattr3args, ptr @nfs3_xdr_dec_fsstat3res, i32 17, i32 36, i32 0, i32 18, ptr @.str.17 }, %struct.rpc_procinfo { i32 19, ptr @nfs3_xdr_enc_getattr3args, ptr @nfs3_xdr_dec_fsinfo3res, i32 17, i32 35, i32 0, i32 19, ptr @.str.18 }, %struct.rpc_procinfo { i32 20, ptr @nfs3_xdr_enc_getattr3args, ptr @nfs3_xdr_dec_pathconf3res, i32 17, i32 29, i32 0, i32 20, ptr @.str.19 }, %struct.rpc_procinfo { i32 21, ptr @nfs3_xdr_enc_commit3args, ptr @nfs3_xdr_dec_commit3res, i32 20, i32 32, i32 5, i32 21, ptr @.str.20 }], align 4
@nfs_version3_counts = internal global [22 x i32] zeroinitializer, align 4
@nfs_version3 = dso_local local_unnamed_addr constant %struct.rpc_version { i32 3, i32 22, ptr @nfs3_procedures, ptr @nfs_version3_counts }, align 4
@nfs3_acl_procedures = internal constant [3 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @nfs3_xdr_enc_getacl3args, ptr @nfs3_xdr_dec_getacl3res, i32 18, i32 59, i32 1, i32 0, ptr @.str.23 }, %struct.rpc_procinfo { i32 2, ptr @nfs3_xdr_enc_setacl3args, ptr @nfs3_xdr_dec_setacl3res, i32 52, i32 23, i32 0, i32 0, ptr @.str.24 }], align 4
@nfs3_acl_counts = internal global [3 x i32] zeroinitializer, align 4
@nfsacl_version3 = dso_local local_unnamed_addr constant %struct.rpc_version { i32 3, i32 3, ptr @nfs3_acl_procedures, ptr @nfs3_acl_counts }, align 4
@nfs_type2fmt = internal unnamed_addr constant [9 x i16] [i16 0, i16 -32768, i16 16384, i16 24576, i16 8192, i16 -24576, i16 -16384, i16 4096, i16 0], align 2
@__tracepoint_nfs_xdr_bad_filehandle = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@encode_nfs_fh3.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"fs/nfs/nfs3xdr.c\00", align 1
@__tracepoint_nfs_xdr_status = external dso_local global %struct.tracepoint, align 4
@nfs_errtbl = internal unnamed_addr constant [30 x %struct.anon.156] [%struct.anon.156 zeroinitializer, %struct.anon.156 { i32 1, i32 -1 }, %struct.anon.156 { i32 2, i32 -2 }, %struct.anon.156 { i32 5, i32 -5 }, %struct.anon.156 { i32 6, i32 -6 }, %struct.anon.156 { i32 13, i32 -13 }, %struct.anon.156 { i32 17, i32 -17 }, %struct.anon.156 { i32 18, i32 -18 }, %struct.anon.156 { i32 19, i32 -19 }, %struct.anon.156 { i32 20, i32 -20 }, %struct.anon.156 { i32 21, i32 -21 }, %struct.anon.156 { i32 22, i32 -22 }, %struct.anon.156 { i32 27, i32 -27 }, %struct.anon.156 { i32 28, i32 -28 }, %struct.anon.156 { i32 30, i32 -30 }, %struct.anon.156 { i32 31, i32 -31 }, %struct.anon.156 { i32 63, i32 -36 }, %struct.anon.156 { i32 66, i32 -39 }, %struct.anon.156 { i32 69, i32 -122 }, %struct.anon.156 { i32 70, i32 -116 }, %struct.anon.156 { i32 71, i32 -66 }, %struct.anon.156 { i32 10001, i32 -521 }, %struct.anon.156 { i32 10002, i32 -522 }, %struct.anon.156 { i32 10003, i32 -523 }, %struct.anon.156 { i32 10004, i32 -524 }, %struct.anon.156 { i32 10005, i32 -525 }, %struct.anon.156 { i32 10006, i32 -121 }, %struct.anon.156 { i32 10007, i32 -527 }, %struct.anon.156 { i32 10008, i32 -528 }, %struct.anon.156 { i32 -1, i32 -5 }], align 4
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@encode_filename3.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"GETACL\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"SETACL\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs3_decode_dirent(ptr noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nfs_entry, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef align 8 dereferenceable(56) %1, i32 56, i1 false)
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %102, label %7, !prof !8

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %102, label %13, !prof !8

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %102, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 5
  store i32 1, ptr %17, align 8
  br label %102

18:                                               ; preds = %7
  %19 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %102, label %21, !prof !8

21:                                               ; preds = %18
  %22 = load i64, ptr %19, align 1
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #8
  store i64 %23, ptr %1, align 8
  %24 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 3
  %25 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 4
  %26 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %102, label %28, !prof !8

28:                                               ; preds = %21
  %29 = load i32, ptr %26, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  %31 = icmp ugt i32 %30, 255
  br i1 %31, label %102, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %30) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %102, label %35, !prof !8

35:                                               ; preds = %32
  store ptr %33, ptr %24, align 4
  store i32 %30, ptr %25, align 4
  %36 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %102, label %38, !prof !8

38:                                               ; preds = %35
  %39 = load i64, ptr %36, align 1
  %40 = tail call i64 @llvm.bswap.i64(i64 %39) #8
  %41 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 8
  store i8 0, ptr %41, align 4
  br i1 %2, label %42, label %97

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 7
  %44 = load ptr, ptr %43, align 8
  store i32 0, ptr %44, align 8
  %45 = load ptr, ptr %43, align 8
  %46 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %102, label %48, !prof !8

48:                                               ; preds = %42
  %49 = load i32, ptr %46, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = tail call fastcc i32 @decode_fattr3(ptr noundef %0, ptr noundef %45) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %102, !prof !9

54:                                               ; preds = %51, %48
  %55 = load ptr, ptr %43, align 8
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 163455
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.nfs_fattr, ptr %55, i32 0, i32 1
  %61 = load i16, ptr %60, align 4
  %62 = lshr i16 %61, 12
  %63 = trunc i16 %62 to i8
  store i8 %63, ptr %41, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = getelementptr inbounds %struct.nfs_fattr, ptr %55, i32 0, i32 9
  %66 = load i64, ptr %65, align 8
  %67 = load i64, ptr %1, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.nfs_fattr, ptr %55, i32 0, i32 10
  store i64 %67, ptr %70, align 8
  %71 = load ptr, ptr %43, align 8
  %72 = load i32, ptr %71, align 8
  %73 = or i32 %72, 4194304
  store i32 %73, ptr %71, align 8
  br label %74

74:                                               ; preds = %69, %64
  %75 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %102, label %77, !prof !8

77:                                               ; preds = %74
  %78 = load i32, ptr %75, align 4
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 6
  %81 = load ptr, ptr %80, align 4
  br i1 %79, label %96, label %82

82:                                               ; preds = %77
  %83 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %102, label %85, !prof !8

85:                                               ; preds = %82
  %86 = load i32, ptr %83, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #8
  %88 = add i32 %87, -65
  %89 = icmp ult i32 %88, -64
  br i1 %89, label %101, label %90, !prof !8

90:                                               ; preds = %85
  %91 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %87) #8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %102, label %93, !prof !8

93:                                               ; preds = %90
  %94 = trunc i32 %87 to i16
  store i16 %94, ptr %81, align 2
  %95 = getelementptr inbounds %struct.nfs_fh, ptr %81, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %95, ptr nonnull align 4 %91, i32 %87, i1 false) #8
  br label %97

96:                                               ; preds = %77
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(130) %81, i8 0, i32 130, i1 false) #8
  br label %97

97:                                               ; preds = %96, %93, %38
  %98 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 1
  %99 = load i64, ptr %98, align 8
  %100 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 2
  store i64 %99, ptr %100, align 8
  store i64 %40, ptr %98, align 8
  br label %102

101:                                              ; preds = %85
  tail call fastcc void @trace_nfs_xdr_bad_filehandle(ptr noundef %0) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %4, i32 56, i1 false)
  br label %102

102:                                              ; preds = %101, %97, %90, %82, %74, %51, %42, %35, %32, %28, %21, %18, %16, %13, %10, %3
  %103 = phi i32 [ -523, %16 ], [ -11, %101 ], [ 0, %97 ], [ -11, %3 ], [ -11, %10 ], [ -11, %13 ], [ %52, %51 ], [ -11, %74 ], [ -5, %18 ], [ -5, %35 ], [ -36, %28 ], [ -5, %32 ], [ -5, %21 ], [ -5, %42 ], [ -5, %82 ], [ -5, %90 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4)
  ret i32 %103
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_getattr3args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i16, ptr %2, align 2
  %5 = icmp ugt i16 %4, 64
  %6 = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11, !prof !8

9:                                                ; preds = %3
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 422, i32 noundef 9, ptr noundef null) #8
  %10 = load i16, ptr %2, align 2
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i16 [ %10, %9 ], [ %4, %3 ]
  %13 = zext i16 %12 to i32
  %14 = add nuw nsw i32 %13, 4
  %15 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %14) #8
  %16 = getelementptr inbounds %struct.nfs_fh, ptr %2, i32 0, i32 1
  %17 = load i16, ptr %2, align 2
  %18 = zext i16 %17 to i32
  %19 = tail call ptr @xdr_encode_opaque(ptr noundef %15, ptr noundef %16, i32 noundef %18) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_getattr3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9
  br label %29

27:                                               ; preds = %6
  %28 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %2)
  br label %40

29:                                               ; preds = %29, %26
  %30 = phi i32 [ %36, %29 ], [ 0, %26 ]
  %31 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, -1
  %34 = icmp eq i32 %32, %10
  %35 = or i1 %33, %34
  %36 = add nuw nsw i32 %30, 1
  br i1 %35, label %37, label %29

37:                                               ; preds = %29
  %38 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %30, i32 1
  %39 = load i32, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %27, %3
  %41 = phi i32 [ %39, %37 ], [ %28, %27 ], [ -5, %3 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_setattr3args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8
  %5 = load i16, ptr %4, align 2
  %6 = icmp ugt i16 %5, 64
  %7 = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %3
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 422, i32 noundef 9, ptr noundef null) #8
  %11 = load i16, ptr %4, align 2
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i16 [ %11, %10 ], [ %5, %3 ]
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, 4
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %15) #8
  %17 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  %18 = load i16, ptr %4, align 2
  %19 = zext i16 %18 to i32
  %20 = tail call ptr @xdr_encode_opaque(ptr noundef %16, ptr noundef %17, i32 noundef %19) #8
  %21 = getelementptr inbounds %struct.nfs3_sattrargs, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call fastcc void @encode_sattr3(ptr noundef %1, ptr noundef %22)
  %23 = getelementptr inbounds %struct.nfs3_sattrargs, ptr %2, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %12
  %27 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #8
  %28 = getelementptr i32, ptr %27, i32 1
  store i32 16777216, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nfs3_sattrargs, ptr %2, i32 0, i32 3
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %33 = getelementptr i32, ptr %27, i32 2
  store i32 %32, ptr %28, align 4
  %34 = getelementptr inbounds %struct.nfs3_sattrargs, ptr %2, i32 0, i32 3, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  store i32 %36, ptr %33, align 4
  br label %39

37:                                               ; preds = %12
  %38 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  store i32 0, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_setattr3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9, %6
  %27 = phi i32 [ %10, %24 ], [ %10, %13 ], [ %10, %9 ], [ 0, %6 ]
  %28 = tail call fastcc i32 @decode_wcc_data(ptr noundef %1, ptr noundef %2)
  %29 = icmp eq i32 %28, 0
  %30 = icmp ne i32 %27, 0
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %43, !prof !12

32:                                               ; preds = %32, %26
  %33 = phi i32 [ %39, %32 ], [ 0, %26 ]
  %34 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, -1
  %37 = icmp eq i32 %35, %27
  %38 = or i1 %36, %37
  %39 = add nuw nsw i32 %33, 1
  br i1 %38, label %40, label %32

40:                                               ; preds = %32
  %41 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %33, i32 1
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %26, %3
  %44 = phi i32 [ %42, %40 ], [ %28, %26 ], [ -5, %3 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_lookup3args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nfs3_diropargs, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs3_diropargs, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %1, ptr noundef %4, ptr noundef %6, i32 noundef %8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_lookup3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %99, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %77

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %77, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %77

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.nfs3_diropres, ptr %2, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %99, label %31, !prof !8

31:                                               ; preds = %26
  %32 = load i32, ptr %29, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %34 = add i32 %33, -65
  %35 = icmp ult i32 %34, -64
  br i1 %35, label %39, label %36, !prof !8

36:                                               ; preds = %31
  %37 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %33) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %99, label %55, !prof !8

39:                                               ; preds = %31
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_bad_filehandle, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %99

42:                                               ; preds = %39
  %43 = tail call ptr @llvm.thread.pointer() #8
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 5
  %47 = getelementptr i32, ptr @__cpu_online_mask, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %45, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %99, label %53

53:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %54 = tail call i32 @__traceiter_nfs_xdr_bad_filehandle(ptr noundef null, ptr noundef %1, i32 noundef 10001) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %99

55:                                               ; preds = %36
  %56 = trunc i32 %33 to i16
  store i16 %56, ptr %28, align 2
  %57 = getelementptr inbounds %struct.nfs_fh, ptr %28, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %57, ptr nonnull align 4 %37, i32 %33, i1 false) #8
  %58 = getelementptr inbounds %struct.nfs3_diropres, ptr %2, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %99, label %62, !prof !8

62:                                               ; preds = %55
  %63 = load i32, ptr %60, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %59) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %99, !prof !9

68:                                               ; preds = %65, %62
  %69 = load ptr, ptr %2, align 4
  %70 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %99, label %72, !prof !8

72:                                               ; preds = %68
  %73 = load i32, ptr %70, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %99, label %75

75:                                               ; preds = %72
  %76 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %69) #8
  br label %99

77:                                               ; preds = %24, %13, %9
  %78 = load ptr, ptr %2, align 4
  %79 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %99, label %81, !prof !8

81:                                               ; preds = %77
  %82 = load i32, ptr %79, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %78) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %99, !prof !9

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %88, %87
  %89 = phi i32 [ %95, %88 ], [ 0, %87 ]
  %90 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %89
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, -1
  %93 = icmp eq i32 %91, %10
  %94 = or i1 %92, %93
  %95 = add nuw nsw i32 %89, 1
  br i1 %94, label %96, label %88

96:                                               ; preds = %88
  %97 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %89, i32 1
  %98 = load i32, ptr %97, align 4
  br label %99

99:                                               ; preds = %96, %84, %77, %75, %72, %68, %65, %55, %53, %42, %39, %36, %26, %3
  %100 = phi i32 [ %98, %96 ], [ %85, %84 ], [ %66, %65 ], [ -5, %3 ], [ %76, %75 ], [ -5, %68 ], [ 0, %72 ], [ -7, %53 ], [ -7, %42 ], [ -7, %39 ], [ -5, %36 ], [ -5, %26 ], [ -5, %55 ], [ -5, %77 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_access3args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = load i16, ptr %4, align 2
  %6 = icmp ugt i16 %5, 64
  %7 = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %3
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 422, i32 noundef 9, ptr noundef null) #8
  %11 = load i16, ptr %4, align 2
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i16 [ %11, %10 ], [ %5, %3 ]
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, 4
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %15) #8
  %17 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  %18 = load i16, ptr %4, align 2
  %19 = zext i16 %18 to i32
  %20 = tail call ptr @xdr_encode_opaque(ptr noundef %16, ptr noundef %17, i32 noundef %19) #8
  %21 = getelementptr inbounds %struct.nfs3_accessargs, ptr %2, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  store i32 %24, ptr %23, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_access3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %57, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9, %6
  %27 = phi i32 [ %10, %24 ], [ %10, %13 ], [ %10, %9 ], [ 0, %6 ]
  %28 = load ptr, ptr %2, align 4
  %29 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %57, label %31, !prof !8

31:                                               ; preds = %26
  %32 = load i32, ptr %29, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %28) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %57, !prof !9

37:                                               ; preds = %34, %31
  %38 = icmp eq i32 %27, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %37
  %40 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %57, label %42, !prof !8

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.nfs3_accessres, ptr %2, i32 0, i32 1
  %44 = load i32, ptr %40, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  store i32 %45, ptr %43, align 4
  br label %57

46:                                               ; preds = %46, %37
  %47 = phi i32 [ %53, %46 ], [ 0, %37 ]
  %48 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, -1
  %51 = icmp eq i32 %49, %27
  %52 = or i1 %50, %51
  %53 = add nuw nsw i32 %47, 1
  br i1 %52, label %54, label %46

54:                                               ; preds = %46
  %55 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %47, i32 1
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %42, %39, %34, %26, %3
  %58 = phi i32 [ %56, %54 ], [ %35, %34 ], [ -5, %3 ], [ 0, %42 ], [ -5, %39 ], [ -5, %26 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_readlink3args(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = load i16, ptr %4, align 2
  %6 = icmp ugt i16 %5, 64
  %7 = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %3
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 422, i32 noundef 9, ptr noundef null) #8
  %11 = load i16, ptr %4, align 2
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i16 [ %11, %10 ], [ %5, %3 ]
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, 4
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %15) #8
  %17 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  %18 = load i16, ptr %4, align 2
  %19 = zext i16 %18 to i32
  %20 = tail call ptr @xdr_encode_opaque(ptr noundef %16, ptr noundef %17, i32 noundef %19) #8
  %21 = getelementptr inbounds %struct.nfs3_readlinkargs, ptr %2, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nfs3_readlinkargs, ptr %2, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nfs3_readlinkargs, ptr %2, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef 24) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_readlink3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %67, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9, %6
  %27 = phi i32 [ %10, %24 ], [ %10, %13 ], [ %10, %9 ], [ 0, %6 ]
  %28 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %30, !prof !8

30:                                               ; preds = %26
  %31 = load i32, ptr %28, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %2) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %67, !prof !9

36:                                               ; preds = %33, %30
  %37 = icmp eq i32 %27, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %36
  %39 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %67, label %41, !prof !8

41:                                               ; preds = %38
  %42 = load i32, ptr %39, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %44 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.xdr_buf, ptr %45, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp uge i32 %43, %47
  %49 = icmp ugt i32 %43, 4096
  %50 = or i1 %49, %48
  br i1 %50, label %67, label %51, !prof !8

51:                                               ; preds = %41
  %52 = tail call i32 @xdr_read_pages(ptr noundef %1, i32 noundef %43) #8
  %53 = icmp ugt i32 %43, %52
  br i1 %53, label %67, label %54, !prof !8

54:                                               ; preds = %51
  %55 = load ptr, ptr %44, align 4
  tail call void @xdr_terminate_string(ptr noundef %55, i32 noundef %43) #8
  br label %67

56:                                               ; preds = %56, %36
  %57 = phi i32 [ %63, %56 ], [ 0, %36 ]
  %58 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, -1
  %61 = icmp eq i32 %59, %27
  %62 = or i1 %60, %61
  %63 = add nuw nsw i32 %57, 1
  br i1 %62, label %64, label %56

64:                                               ; preds = %56
  %65 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %57, i32 1
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %54, %51, %41, %38, %33, %26, %3
  %68 = phi i32 [ %66, %64 ], [ %34, %33 ], [ -5, %3 ], [ 0, %54 ], [ -5, %38 ], [ -36, %41 ], [ -5, %51 ], [ -5, %26 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_read3args(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load i16, ptr %7, align 2
  %9 = icmp ugt i16 %8, 64
  %10 = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %15, !prof !8

13:                                               ; preds = %3
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 422, i32 noundef 9, ptr noundef null) #8
  %14 = load i16, ptr %7, align 2
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi i16 [ %14, %13 ], [ %8, %3 ]
  %17 = icmp eq i32 %5, 0
  %18 = select i1 %17, i32 26, i32 %5
  %19 = zext i16 %16 to i32
  %20 = add nuw nsw i32 %19, 4
  %21 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %20) #8
  %22 = getelementptr inbounds %struct.nfs_fh, ptr %7, i32 0, i32 1
  %23 = load i16, ptr %7, align 2
  %24 = zext i16 %23 to i32
  %25 = tail call ptr @xdr_encode_opaque(ptr noundef %21, ptr noundef %22, i32 noundef %24) #8
  %26 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #8
  %27 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 5
  %28 = load i64, ptr %27, align 8
  %29 = tail call i64 @llvm.bswap.i64(i64 %28) #8
  store i64 %29, ptr %26, align 1
  %30 = getelementptr i32, ptr %26, i32 2
  %31 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  store i32 %33, ptr %30, align 4
  %34 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 8
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %31, align 8
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %35, i32 noundef %37, i32 noundef %38, i32 noundef %18) #8
  %39 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 2, i32 6
  %40 = load i32, ptr %39, align 8
  %41 = or i32 %40, 1
  store i32 %41, ptr %39, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_read3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call i32 @xdr_stream_pos(ptr noundef %1) #8
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %80, label %7, !prof !8

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10, !prof !9

10:                                               ; preds = %7
  %11 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #8
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %26 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %11) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %27

27:                                               ; preds = %25, %14, %10, %7
  %28 = phi i32 [ %11, %25 ], [ %11, %14 ], [ %11, %10 ], [ 0, %7 ]
  %29 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %80, label %33, !prof !8

33:                                               ; preds = %27
  %34 = load i32, ptr %31, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %30) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %80, !prof !9

39:                                               ; preds = %36, %33
  %40 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 3
  store i32 %28, ptr %40, align 8
  %41 = icmp eq i32 %28, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %39
  %43 = tail call i32 @xdr_stream_pos(ptr noundef %1) #8
  %44 = sub i32 %43, %4
  %45 = lshr i32 %44, 2
  %46 = add nuw nsw i32 %45, 3
  %47 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  %48 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 12) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %80, label %50, !prof !8

50:                                               ; preds = %42
  %51 = load i32, ptr %48, align 4
  %52 = getelementptr i32, ptr %48, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %51
  br i1 %54, label %55, label %80, !prof !9

55:                                               ; preds = %50
  %56 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  %57 = getelementptr i32, ptr %48, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  %60 = tail call i32 @xdr_read_pages(ptr noundef %1, i32 noundef %56) #8
  %61 = icmp ugt i32 %56, %60
  br i1 %61, label %68, label %62, !prof !8

62:                                               ; preds = %68, %55
  %63 = phi i32 [ 0, %68 ], [ %59, %55 ]
  %64 = phi i32 [ %60, %68 ], [ %56, %55 ]
  %65 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 4, i32 0, i32 1
  store i32 %63, ptr %65, align 4
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 2
  store i64 %66, ptr %67, align 8
  br label %80

68:                                               ; preds = %55
  br label %62

69:                                               ; preds = %69, %39
  %70 = phi i32 [ %76, %69 ], [ 0, %39 ]
  %71 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %70
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, -1
  %74 = icmp eq i32 %72, %28
  %75 = or i1 %73, %74
  %76 = add nuw nsw i32 %70, 1
  br i1 %75, label %77, label %69

77:                                               ; preds = %69
  %78 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %70, i32 1
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %62, %50, %42, %36, %27, %3
  %81 = phi i32 [ %79, %77 ], [ %37, %36 ], [ -5, %3 ], [ %64, %62 ], [ -5, %42 ], [ -5, %50 ], [ -5, %27 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_write3args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 2
  %7 = icmp ugt i16 %6, 64
  %8 = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %13, !prof !8

11:                                               ; preds = %3
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 422, i32 noundef 9, ptr noundef null) #8
  %12 = load i16, ptr %5, align 2
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i16 [ %12, %11 ], [ %6, %3 ]
  %15 = zext i16 %14 to i32
  %16 = add nuw nsw i32 %15, 4
  %17 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %16) #8
  %18 = getelementptr inbounds %struct.nfs_fh, ptr %5, i32 0, i32 1
  %19 = load i16, ptr %5, align 2
  %20 = zext i16 %19 to i32
  %21 = tail call ptr @xdr_encode_opaque(ptr noundef %17, ptr noundef %18, i32 noundef %20) #8
  %22 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 20) #8
  %23 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 5
  %24 = load i64, ptr %23, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #8
  store i64 %25, ptr %22, align 1
  %26 = getelementptr i32, ptr %22, i32 2
  %27 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  %30 = getelementptr i32, ptr %22, i32 3
  store i32 %29, ptr %26, align 4
  %31 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 9, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %34 = getelementptr i32, ptr %22, i32 4
  store i32 %33, ptr %30, align 4
  %35 = load i32, ptr %27, align 8
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  store i32 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %27, align 8
  tail call void @xdr_write_pages(ptr noundef %1, ptr noundef %38, i32 noundef %40, i32 noundef %41) #8
  %42 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.xdr_buf, ptr %43, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %45, 2
  store i32 %46, ptr %44, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_write3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9, %6
  %27 = phi i32 [ %10, %24 ], [ %10, %13 ], [ %10, %9 ], [ 0, %6 ]
  %28 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = tail call fastcc i32 @decode_wcc_data(ptr noundef %1, ptr noundef %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %71, !prof !9

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 3
  store i32 %27, ptr %33, align 8
  %34 = icmp eq i32 %27, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %71, label %38, !prof !8

38:                                               ; preds = %35
  %39 = getelementptr i32, ptr %36, i32 1
  %40 = load i32, ptr %36, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 2
  store i64 %42, ptr %43, align 8
  %44 = load i32, ptr %39, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  %46 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nfs_writeverf, ptr %47, i32 0, i32 1
  store i32 %45, ptr %48, align 4
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr inbounds %struct.nfs_writeverf, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, 2
  br i1 %52, label %71, label %53, !prof !8

53:                                               ; preds = %38
  %54 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %71, label %56, !prof !8

56:                                               ; preds = %53
  %57 = load i64, ptr %54, align 4
  store i64 %57, ptr %49, align 1
  %58 = load i64, ptr %43, align 8
  %59 = trunc i64 %58 to i32
  br label %71

60:                                               ; preds = %60, %32
  %61 = phi i32 [ %67, %60 ], [ 0, %32 ]
  %62 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, -1
  %65 = icmp eq i32 %63, %27
  %66 = or i1 %64, %65
  %67 = add nuw nsw i32 %61, 1
  br i1 %66, label %68, label %60

68:                                               ; preds = %60
  %69 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %61, i32 1
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %56, %53, %38, %35, %26, %3
  %72 = phi i32 [ %70, %68 ], [ %30, %26 ], [ -5, %3 ], [ %59, %56 ], [ -5, %35 ], [ -5, %38 ], [ -5, %53 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_create3args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nfs3_createargs, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs3_createargs, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %1, ptr noundef %4, ptr noundef %6, i32 noundef %8)
  %9 = getelementptr inbounds %struct.nfs3_createargs, ptr %2, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  store i32 %12, ptr %11, align 4
  %13 = load i32, ptr %9, align 4
  switch i32 %13, label %21 [
    i32 0, label %14
    i32 1, label %14
    i32 2, label %17
  ]

14:                                               ; preds = %3, %3
  %15 = getelementptr inbounds %struct.nfs3_createargs, ptr %2, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  tail call fastcc void @encode_sattr3(ptr noundef %1, ptr noundef %16) #8
  br label %22

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.nfs3_createargs, ptr %2, i32 0, i32 5
  %19 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #8
  %20 = load i64, ptr %18, align 4
  store i64 %20, ptr %19, align 4
  br label %22

21:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs3xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1032, 0\0A.popsection", ""() #8, !srcloc !15
  unreachable

22:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_create3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %100, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %85

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %85, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %85

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.nfs3_diropres, ptr %2, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %100, label %31, !prof !8

31:                                               ; preds = %26
  %32 = load i32, ptr %29, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %100, label %37, !prof !8

37:                                               ; preds = %34
  %38 = load i32, ptr %35, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  %40 = add i32 %39, -65
  %41 = icmp ult i32 %40, -64
  br i1 %41, label %48, label %42, !prof !8

42:                                               ; preds = %37
  %43 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %39) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %100, label %45, !prof !8

45:                                               ; preds = %42
  %46 = trunc i32 %39 to i16
  store i16 %46, ptr %28, align 2
  %47 = getelementptr inbounds %struct.nfs_fh, ptr %28, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %47, ptr nonnull align 4 %43, i32 %39, i1 false) #8
  br label %65

48:                                               ; preds = %37
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_bad_filehandle, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %100

51:                                               ; preds = %48
  %52 = tail call ptr @llvm.thread.pointer() #8
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %100, label %62

62:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %63 = tail call i32 @__traceiter_nfs_xdr_bad_filehandle(ptr noundef null, ptr noundef %1, i32 noundef 10001) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %100

64:                                               ; preds = %31
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(130) %28, i8 0, i32 130, i1 false) #8
  br label %65

65:                                               ; preds = %64, %45
  %66 = getelementptr inbounds %struct.nfs3_diropres, ptr %2, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %100, label %70, !prof !8

70:                                               ; preds = %65
  %71 = load i32, ptr %68, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %67) #8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %100, !prof !9

76:                                               ; preds = %73, %70
  %77 = load ptr, ptr %27, align 4
  %78 = load i16, ptr %77, align 2
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load ptr, ptr %66, align 4
  store i32 0, ptr %81, align 8
  br label %82

82:                                               ; preds = %80, %76
  %83 = load ptr, ptr %2, align 4
  %84 = tail call fastcc i32 @decode_wcc_data(ptr noundef %1, ptr noundef %83) #8
  br label %100

85:                                               ; preds = %24, %13, %9
  %86 = load ptr, ptr %2, align 4
  %87 = tail call fastcc i32 @decode_wcc_data(ptr noundef %1, ptr noundef %86)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %100, !prof !9

89:                                               ; preds = %89, %85
  %90 = phi i32 [ %96, %89 ], [ 0, %85 ]
  %91 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %90
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, -1
  %94 = icmp eq i32 %92, %10
  %95 = or i1 %93, %94
  %96 = add nuw nsw i32 %90, 1
  br i1 %95, label %97, label %89

97:                                               ; preds = %89
  %98 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %90, i32 1
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %85, %82, %73, %65, %62, %51, %48, %42, %34, %26, %3
  %101 = phi i32 [ %99, %97 ], [ %87, %85 ], [ -5, %3 ], [ %74, %73 ], [ %84, %82 ], [ -7, %62 ], [ -7, %51 ], [ -7, %48 ], [ -5, %42 ], [ -5, %34 ], [ -5, %26 ], [ -5, %65 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_mkdir3args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nfs3_mkdirargs, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs3_mkdirargs, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %1, ptr noundef %4, ptr noundef %6, i32 noundef %8)
  %9 = getelementptr inbounds %struct.nfs3_mkdirargs, ptr %2, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call fastcc void @encode_sattr3(ptr noundef %1, ptr noundef %10)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_symlink3args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nfs3_symlinkargs, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs3_symlinkargs, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %1, ptr noundef %4, ptr noundef %6, i32 noundef %8)
  %9 = getelementptr inbounds %struct.nfs3_symlinkargs, ptr %2, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call fastcc void @encode_sattr3(ptr noundef %1, ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.nfs3_symlinkargs, ptr %2, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs3_symlinkargs, ptr %2, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  store i32 %16, ptr %15, align 4
  tail call void @xdr_write_pages(ptr noundef %1, ptr noundef %12, i32 noundef 0, i32 noundef %14) #8
  %17 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.xdr_buf, ptr %18, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, 2
  store i32 %21, ptr %19, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_mknod3args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nfs3_mknodargs, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs3_mknodargs, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %1, ptr noundef %4, ptr noundef %6, i32 noundef %8)
  %9 = getelementptr inbounds %struct.nfs3_mknodargs, ptr %2, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  store i32 %12, ptr %11, align 4
  %13 = load i32, ptr %9, align 4
  switch i32 %13, label %28 [
    i32 4, label %14
    i32 3, label %14
    i32 6, label %25
    i32 7, label %25
    i32 1, label %29
    i32 2, label %29
  ]

14:                                               ; preds = %3, %3
  %15 = getelementptr inbounds %struct.nfs3_mknodargs, ptr %2, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call fastcc void @encode_sattr3(ptr noundef %1, ptr noundef %16) #8
  %17 = getelementptr inbounds %struct.nfs3_mknodargs, ptr %2, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #8
  %20 = lshr i32 %18, 20
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %22 = getelementptr i32, ptr %19, i32 1
  store i32 %21, ptr %19, align 4
  %23 = and i32 %18, 1048575
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  store i32 %24, ptr %22, align 4
  br label %29

25:                                               ; preds = %3, %3
  %26 = getelementptr inbounds %struct.nfs3_mknodargs, ptr %2, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  tail call fastcc void @encode_sattr3(ptr noundef %1, ptr noundef %27) #8
  br label %29

28:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs3xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1148, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

29:                                               ; preds = %25, %14, %3, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_remove3args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_removeargs, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nfs_removeargs, ptr %2, i32 0, i32 2
  %7 = getelementptr inbounds %struct.nfs_removeargs, ptr %2, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.anon.4, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %1, ptr noundef %5, ptr noundef %8, i32 noundef %10)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_remove3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9, %6
  %27 = phi i32 [ %10, %24 ], [ %10, %13 ], [ %10, %9 ], [ 0, %6 ]
  %28 = getelementptr inbounds %struct.nfs_removeres, ptr %2, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call fastcc i32 @decode_wcc_data(ptr noundef %1, ptr noundef %29)
  %31 = icmp eq i32 %30, 0
  %32 = icmp ne i32 %27, 0
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %45, !prof !12

34:                                               ; preds = %34, %26
  %35 = phi i32 [ %41, %34 ], [ 0, %26 ]
  %36 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, -1
  %39 = icmp eq i32 %37, %27
  %40 = or i1 %38, %39
  %41 = add nuw nsw i32 %35, 1
  br i1 %40, label %42, label %34

42:                                               ; preds = %34
  %43 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %35, i32 1
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %26, %3
  %46 = phi i32 [ %44, %42 ], [ %30, %26 ], [ -5, %3 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_rename3args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
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
  tail call fastcc void @encode_diropargs3(ptr noundef %1, ptr noundef %9, ptr noundef %11, i32 noundef %13)
  %14 = getelementptr inbounds %struct.nfs_renameargs, ptr %2, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.qstr, ptr %7, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.anon.4, ptr %7, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %1, ptr noundef %15, ptr noundef %17, i32 noundef %19)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_rename3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %50, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9, %6
  %27 = phi i32 [ %10, %24 ], [ %10, %13 ], [ %10, %9 ], [ 0, %6 ]
  %28 = getelementptr inbounds %struct.nfs_renameres, ptr %2, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = tail call fastcc i32 @decode_wcc_data(ptr noundef %1, ptr noundef %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %50, !prof !9

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.nfs_renameres, ptr %2, i32 0, i32 5
  %34 = load ptr, ptr %33, align 8
  %35 = tail call fastcc i32 @decode_wcc_data(ptr noundef %1, ptr noundef %34)
  %36 = icmp eq i32 %35, 0
  %37 = icmp ne i32 %27, 0
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %50, !prof !12

39:                                               ; preds = %39, %32
  %40 = phi i32 [ %46, %39 ], [ 0, %32 ]
  %41 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, -1
  %44 = icmp eq i32 %42, %27
  %45 = or i1 %43, %44
  %46 = add nuw nsw i32 %40, 1
  br i1 %45, label %47, label %39

47:                                               ; preds = %39
  %48 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %40, i32 1
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %32, %26, %3
  %51 = phi i32 [ %49, %47 ], [ %30, %26 ], [ %35, %32 ], [ -5, %3 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_link3args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = load i16, ptr %4, align 2
  %6 = icmp ugt i16 %5, 64
  %7 = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %3
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 422, i32 noundef 9, ptr noundef null) #8
  %11 = load i16, ptr %4, align 2
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i16 [ %11, %10 ], [ %5, %3 ]
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, 4
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %15) #8
  %17 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  %18 = load i16, ptr %4, align 2
  %19 = zext i16 %18 to i32
  %20 = tail call ptr @xdr_encode_opaque(ptr noundef %16, ptr noundef %17, i32 noundef %19) #8
  %21 = getelementptr inbounds %struct.nfs3_linkargs, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nfs3_linkargs, ptr %2, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nfs3_linkargs, ptr %2, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  tail call fastcc void @encode_diropargs3(ptr noundef %1, ptr noundef %22, ptr noundef %24, i32 noundef %26)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_link3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %55, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9, %6
  %27 = phi i32 [ %10, %24 ], [ %10, %13 ], [ %10, %9 ], [ 0, %6 ]
  %28 = getelementptr inbounds %struct.nfs3_linkres, ptr %2, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32, !prof !8

32:                                               ; preds = %26
  %33 = load i32, ptr %30, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %29) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %55, !prof !9

38:                                               ; preds = %35, %32
  %39 = load ptr, ptr %2, align 4
  %40 = tail call fastcc i32 @decode_wcc_data(ptr noundef %1, ptr noundef %39)
  %41 = icmp eq i32 %40, 0
  %42 = icmp ne i32 %27, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %55, !prof !12

44:                                               ; preds = %44, %38
  %45 = phi i32 [ %51, %44 ], [ 0, %38 ]
  %46 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, -1
  %49 = icmp eq i32 %47, %27
  %50 = or i1 %48, %49
  %51 = add nuw nsw i32 %45, 1
  br i1 %50, label %52, label %44

52:                                               ; preds = %44
  %53 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %45, i32 1
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %38, %35, %26, %3
  %56 = phi i32 [ %54, %52 ], [ %36, %35 ], [ %40, %38 ], [ -5, %3 ], [ -5, %26 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_readdir3args(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8
  %5 = load i16, ptr %4, align 2
  %6 = icmp ugt i16 %5, 64
  %7 = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %3
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 422, i32 noundef 9, ptr noundef null) #8
  %11 = load i16, ptr %4, align 2
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i16 [ %11, %10 ], [ %5, %3 ]
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, 4
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %15) #8
  %17 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  %18 = load i16, ptr %4, align 2
  %19 = zext i16 %18 to i32
  %20 = tail call ptr @xdr_encode_opaque(ptr noundef %16, ptr noundef %17, i32 noundef %19) #8
  %21 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 20) #8
  %22 = getelementptr inbounds %struct.nfs3_readdirargs, ptr %2, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #8
  store i64 %24, ptr %21, align 1
  %25 = getelementptr i32, ptr %21, i32 2
  %26 = getelementptr inbounds %struct.nfs3_readdirargs, ptr %2, i32 0, i32 2
  %27 = load i64, ptr %26, align 4
  store i64 %27, ptr %25, align 4
  %28 = getelementptr i32, ptr %21, i32 4
  %29 = getelementptr inbounds %struct.nfs3_readdirargs, ptr %2, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  store i32 %31, ptr %28, align 4
  %32 = getelementptr inbounds %struct.nfs3_readdirargs, ptr %2, i32 0, i32 5
  %33 = load ptr, ptr %32, align 8
  %34 = load i32, ptr %29, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %33, i32 noundef 0, i32 noundef %34, i32 noundef 25) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_readdir3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %70, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %48

26:                                               ; preds = %6
  %27 = load ptr, ptr %2, align 4
  %28 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %70, label %30, !prof !8

30:                                               ; preds = %26
  %31 = load i32, ptr %28, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %27) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %70, !prof !9

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.nfs3_readdirres, ptr %2, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %70, label %41, !prof !8

41:                                               ; preds = %36
  %42 = load i64, ptr %39, align 4
  store i64 %42, ptr %38, align 4
  %43 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.xdr_buf, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @xdr_read_pages(ptr noundef %1, i32 noundef %46) #8
  br label %70

48:                                               ; preds = %24, %13, %9
  %49 = load ptr, ptr %2, align 4
  %50 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %70, label %52, !prof !8

52:                                               ; preds = %48
  %53 = load i32, ptr %50, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %49) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %70, !prof !9

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %59, %58
  %60 = phi i32 [ %66, %59 ], [ 0, %58 ]
  %61 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, -1
  %64 = icmp eq i32 %62, %10
  %65 = or i1 %63, %64
  %66 = add nuw nsw i32 %60, 1
  br i1 %65, label %67, label %59

67:                                               ; preds = %59
  %68 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %60, i32 1
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %55, %48, %41, %36, %33, %26, %3
  %71 = phi i32 [ %69, %67 ], [ %56, %55 ], [ -5, %3 ], [ %34, %33 ], [ %47, %41 ], [ -5, %36 ], [ -5, %26 ], [ -5, %48 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_readdirplus3args(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8
  %5 = load i16, ptr %4, align 2
  %6 = icmp ugt i16 %5, 64
  %7 = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %3
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 422, i32 noundef 9, ptr noundef null) #8
  %11 = load i16, ptr %4, align 2
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i16 [ %11, %10 ], [ %5, %3 ]
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, 4
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %15) #8
  %17 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  %18 = load i16, ptr %4, align 2
  %19 = zext i16 %18 to i32
  %20 = tail call ptr @xdr_encode_opaque(ptr noundef %16, ptr noundef %17, i32 noundef %19) #8
  %21 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 24) #8
  %22 = getelementptr inbounds %struct.nfs3_readdirargs, ptr %2, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #8
  store i64 %24, ptr %21, align 1
  %25 = getelementptr i32, ptr %21, i32 2
  %26 = getelementptr inbounds %struct.nfs3_readdirargs, ptr %2, i32 0, i32 2
  %27 = load i64, ptr %26, align 4
  store i64 %27, ptr %25, align 4
  %28 = getelementptr i32, ptr %21, i32 4
  %29 = getelementptr inbounds %struct.nfs3_readdirargs, ptr %2, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 3
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %33 = getelementptr i32, ptr %21, i32 5
  store i32 %32, ptr %28, align 4
  %34 = load i32, ptr %29, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.nfs3_readdirargs, ptr %2, i32 0, i32 5
  %37 = load ptr, ptr %36, align 8
  %38 = load i32, ptr %29, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %37, i32 noundef 0, i32 noundef %38, i32 noundef 25) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_fsstat3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %77, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9, %6
  %27 = phi i32 [ %10, %24 ], [ %10, %13 ], [ %10, %9 ], [ 0, %6 ]
  %28 = load ptr, ptr %2, align 8
  %29 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %77, label %31, !prof !8

31:                                               ; preds = %26
  %32 = load i32, ptr %29, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %28) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %77, !prof !9

37:                                               ; preds = %34, %31
  %38 = icmp eq i32 %27, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %37
  %40 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 52) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %77, label %42, !prof !8

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.nfs_fsstat, ptr %2, i32 0, i32 1
  %44 = load i64, ptr %40, align 1
  %45 = tail call i64 @llvm.bswap.i64(i64 %44) #8
  store i64 %45, ptr %43, align 8
  %46 = getelementptr i32, ptr %40, i32 2
  %47 = getelementptr inbounds %struct.nfs_fsstat, ptr %2, i32 0, i32 2
  %48 = load i64, ptr %46, align 1
  %49 = tail call i64 @llvm.bswap.i64(i64 %48) #8
  store i64 %49, ptr %47, align 8
  %50 = getelementptr i32, ptr %40, i32 4
  %51 = getelementptr inbounds %struct.nfs_fsstat, ptr %2, i32 0, i32 3
  %52 = load i64, ptr %50, align 1
  %53 = tail call i64 @llvm.bswap.i64(i64 %52) #8
  store i64 %53, ptr %51, align 8
  %54 = getelementptr i32, ptr %40, i32 6
  %55 = getelementptr inbounds %struct.nfs_fsstat, ptr %2, i32 0, i32 4
  %56 = load i64, ptr %54, align 1
  %57 = tail call i64 @llvm.bswap.i64(i64 %56) #8
  store i64 %57, ptr %55, align 8
  %58 = getelementptr i32, ptr %40, i32 8
  %59 = getelementptr inbounds %struct.nfs_fsstat, ptr %2, i32 0, i32 5
  %60 = load i64, ptr %58, align 1
  %61 = tail call i64 @llvm.bswap.i64(i64 %60) #8
  store i64 %61, ptr %59, align 8
  %62 = getelementptr i32, ptr %40, i32 10
  %63 = getelementptr inbounds %struct.nfs_fsstat, ptr %2, i32 0, i32 6
  %64 = load i64, ptr %62, align 1
  %65 = tail call i64 @llvm.bswap.i64(i64 %64) #8
  store i64 %65, ptr %63, align 8
  br label %77

66:                                               ; preds = %66, %37
  %67 = phi i32 [ %73, %66 ], [ 0, %37 ]
  %68 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %67
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, -1
  %71 = icmp eq i32 %69, %27
  %72 = or i1 %70, %71
  %73 = add nuw nsw i32 %67, 1
  br i1 %72, label %74, label %66

74:                                               ; preds = %66
  %75 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %67, i32 1
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %42, %39, %34, %26, %3
  %78 = phi i32 [ %76, %74 ], [ %35, %34 ], [ -5, %3 ], [ 0, %42 ], [ -5, %39 ], [ -5, %26 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_fsinfo3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %96, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9, %6
  %27 = phi i32 [ %10, %24 ], [ %10, %13 ], [ %10, %9 ], [ 0, %6 ]
  %28 = load ptr, ptr %2, align 8
  %29 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %96, label %31, !prof !8

31:                                               ; preds = %26
  %32 = load i32, ptr %29, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %28) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %96, !prof !9

37:                                               ; preds = %34, %31
  %38 = icmp eq i32 %27, 0
  br i1 %38, label %39, label %85

39:                                               ; preds = %37
  %40 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 48) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %96, label %42, !prof !8

42:                                               ; preds = %39
  %43 = getelementptr i32, ptr %40, i32 1
  %44 = load i32, ptr %40, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  %46 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = getelementptr i32, ptr %40, i32 2
  %48 = load i32, ptr %43, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  %50 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 2
  store i32 %49, ptr %50, align 8
  %51 = getelementptr i32, ptr %40, i32 3
  %52 = load i32, ptr %47, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  %54 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 3
  store i32 %53, ptr %54, align 4
  %55 = getelementptr i32, ptr %40, i32 4
  %56 = load i32, ptr %51, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #8
  %58 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 4
  store i32 %57, ptr %58, align 8
  %59 = getelementptr i32, ptr %40, i32 5
  %60 = load i32, ptr %55, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #8
  %62 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 5
  store i32 %61, ptr %62, align 4
  %63 = getelementptr i32, ptr %40, i32 6
  %64 = load i32, ptr %59, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  %66 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 6
  store i32 %65, ptr %66, align 8
  %67 = getelementptr i32, ptr %40, i32 7
  %68 = load i32, ptr %63, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  %70 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 7
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 8
  %72 = load i64, ptr %67, align 1
  %73 = tail call i64 @llvm.bswap.i64(i64 %72) #8
  store i64 %73, ptr %71, align 8
  %74 = getelementptr i32, ptr %40, i32 9
  %75 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 9
  %76 = getelementptr i32, ptr %40, i32 10
  %77 = load i32, ptr %74, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #8
  %79 = zext i32 %78 to i64
  store i64 %79, ptr %75, align 8
  %80 = load i32, ptr %76, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #8
  %82 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 9, i32 1
  store i32 %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 10
  store i32 0, ptr %83, align 8
  %84 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 15
  store i32 4, ptr %84, align 8
  br label %96

85:                                               ; preds = %85, %37
  %86 = phi i32 [ %92, %85 ], [ 0, %37 ]
  %87 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, -1
  %90 = icmp eq i32 %88, %27
  %91 = or i1 %89, %90
  %92 = add nuw nsw i32 %86, 1
  br i1 %91, label %93, label %85

93:                                               ; preds = %85
  %94 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %86, i32 1
  %95 = load i32, ptr %94, align 4
  br label %96

96:                                               ; preds = %93, %42, %39, %34, %26, %3
  %97 = phi i32 [ %95, %93 ], [ %35, %34 ], [ -5, %3 ], [ 0, %42 ], [ -5, %39 ], [ -5, %26 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_pathconf3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %61, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9, %6
  %27 = phi i32 [ %10, %24 ], [ %10, %13 ], [ %10, %9 ], [ 0, %6 ]
  %28 = load ptr, ptr %2, align 4
  %29 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %61, label %31, !prof !8

31:                                               ; preds = %26
  %32 = load i32, ptr %29, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %28) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %61, !prof !9

37:                                               ; preds = %34, %31
  %38 = icmp eq i32 %27, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %37
  %40 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 24) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %61, label %42, !prof !8

42:                                               ; preds = %39
  %43 = getelementptr i32, ptr %40, i32 1
  %44 = load i32, ptr %40, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  %46 = getelementptr inbounds %struct.nfs_pathconf, ptr %2, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = load i32, ptr %43, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  %49 = getelementptr inbounds %struct.nfs_pathconf, ptr %2, i32 0, i32 2
  store i32 %48, ptr %49, align 4
  br label %61

50:                                               ; preds = %50, %37
  %51 = phi i32 [ %57, %50 ], [ 0, %37 ]
  %52 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, -1
  %55 = icmp eq i32 %53, %27
  %56 = or i1 %54, %55
  %57 = add nuw nsw i32 %51, 1
  br i1 %56, label %58, label %50

58:                                               ; preds = %50
  %59 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %51, i32 1
  %60 = load i32, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %42, %39, %34, %26, %3
  %62 = phi i32 [ %60, %58 ], [ %35, %34 ], [ -5, %3 ], [ 0, %42 ], [ -5, %39 ], [ -5, %26 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_commit3args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_commitargs, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 2
  %7 = icmp ugt i16 %6, 64
  %8 = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %13, !prof !8

11:                                               ; preds = %3
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 422, i32 noundef 9, ptr noundef null) #8
  %12 = load i16, ptr %5, align 2
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i16 [ %12, %11 ], [ %6, %3 ]
  %15 = zext i16 %14 to i32
  %16 = add nuw nsw i32 %15, 4
  %17 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %16) #8
  %18 = getelementptr inbounds %struct.nfs_fh, ptr %5, i32 0, i32 1
  %19 = load i16, ptr %5, align 2
  %20 = zext i16 %19 to i32
  %21 = tail call ptr @xdr_encode_opaque(ptr noundef %17, ptr noundef %18, i32 noundef %20) #8
  %22 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #8
  %23 = getelementptr inbounds %struct.nfs_commitargs, ptr %2, i32 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #8
  store i64 %25, ptr %22, align 1
  %26 = getelementptr i32, ptr %22, i32 2
  %27 = getelementptr inbounds %struct.nfs_commitargs, ptr %2, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  store i32 %29, ptr %26, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_commit3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nfs_commitres, ptr %2, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8, !prof !8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !9

11:                                               ; preds = %8
  %12 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call fastcc void @trace_nfs_xdr_status(ptr noundef %1, i32 noundef %12) #8
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ 0, %8 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.nfs_commitres, ptr %2, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call fastcc i32 @decode_wcc_data(ptr noundef %1, ptr noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39, !prof !9

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.nfs_commitres, ptr %2, i32 0, i32 1
  store i32 %14, ptr %20, align 4
  %21 = icmp eq i32 %14, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25, !prof !8

25:                                               ; preds = %22
  %26 = load i64, ptr %23, align 4
  store i64 %26, ptr %5, align 1
  %27 = getelementptr inbounds %struct.nfs_writeverf, ptr %5, i32 0, i32 1
  store i32 2, ptr %27, align 4
  br label %39

28:                                               ; preds = %28, %19
  %29 = phi i32 [ %35, %28 ], [ 0, %19 ]
  %30 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, -1
  %33 = icmp eq i32 %31, %14
  %34 = or i1 %32, %33
  %35 = add nuw nsw i32 %29, 1
  br i1 %34, label %36, label %28

36:                                               ; preds = %28
  %37 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %29, i32 1
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %25, %22, %13, %3
  %40 = phi i32 [ %38, %36 ], [ %17, %13 ], [ 0, %25 ], [ -5, %3 ], [ -5, %22 ]
  ret i32 %40
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_fattr3(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 84) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %99, label %5, !prof !8

5:                                                ; preds = %2
  %6 = getelementptr i32, ptr %3, i32 1
  %7 = load i32, ptr %3, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %9 = icmp ugt i32 %8, 7
  %10 = select i1 %9, i32 0, i32 %8
  %11 = getelementptr [9 x i16], ptr @nfs_type2fmt, i32 0, i32 %10
  %12 = load i16, ptr %11, align 2
  %13 = getelementptr i32, ptr %3, i32 2
  %14 = load i32, ptr %6, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %16 = trunc i32 %15 to i16
  %17 = and i16 %16, 4095
  %18 = or i16 %17, %12
  %19 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 1
  store i16 %18, ptr %19, align 4
  %20 = getelementptr i32, ptr %3, i32 3
  %21 = load i32, ptr %13, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %23 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 2
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 3
  %25 = load i32, ptr %20, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  store i32 %26, ptr %24, align 4
  %27 = icmp eq i32 %25, -1
  br i1 %27, label %99, label %28

28:                                               ; preds = %5
  %29 = getelementptr i32, ptr %3, i32 4
  %30 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 4
  %31 = load i32, ptr %29, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  store i32 %32, ptr %30, align 8
  %33 = icmp eq i32 %31, -1
  br i1 %33, label %99, label %34

34:                                               ; preds = %28
  %35 = getelementptr i32, ptr %3, i32 5
  %36 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 6
  %37 = load i64, ptr %35, align 1
  %38 = tail call i64 @llvm.bswap.i64(i64 %37) #8
  store i64 %38, ptr %36, align 8
  %39 = getelementptr i32, ptr %3, i32 7
  %40 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 7
  %41 = load i64, ptr %39, align 1
  %42 = tail call i64 @llvm.bswap.i64(i64 %41) #8
  store i64 %42, ptr %40, align 8
  %43 = getelementptr i32, ptr %3, i32 9
  %44 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 5
  %45 = getelementptr i32, ptr %3, i32 10
  %46 = load i32, ptr %43, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %48 = load i32, ptr %45, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  %50 = shl i32 %47, 20
  %51 = or i32 %50, %49
  %52 = lshr i32 %51, 20
  %53 = icmp eq i32 %52, %47
  %54 = icmp ult i32 %49, 1048576
  %55 = select i1 %53, i1 %54, i1 false
  %56 = select i1 %55, i32 %51, i32 0
  store i32 %56, ptr %44, align 4
  %57 = getelementptr i32, ptr %3, i32 11
  %58 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 8
  %59 = load i64, ptr %57, align 1
  %60 = tail call i64 @llvm.bswap.i64(i64 %59) #8
  store i64 %60, ptr %58, align 8
  %61 = getelementptr i32, ptr %3, i32 13
  %62 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 8, i32 1
  store i64 0, ptr %62, align 8
  %63 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 9
  %64 = load i64, ptr %61, align 1
  %65 = tail call i64 @llvm.bswap.i64(i64 %64) #8
  store i64 %65, ptr %63, align 8
  %66 = getelementptr i32, ptr %3, i32 15
  %67 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 11
  %68 = getelementptr i32, ptr %3, i32 16
  %69 = load i32, ptr %66, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #8
  %71 = zext i32 %70 to i64
  store i64 %71, ptr %67, align 8
  %72 = getelementptr i32, ptr %3, i32 17
  %73 = load i32, ptr %68, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  %75 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 11, i32 1
  store i32 %74, ptr %75, align 8
  %76 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 12
  %77 = getelementptr i32, ptr %3, i32 18
  %78 = load i32, ptr %72, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  %80 = zext i32 %79 to i64
  store i64 %80, ptr %76, align 8
  %81 = getelementptr i32, ptr %3, i32 19
  %82 = load i32, ptr %77, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #8
  %84 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 12, i32 1
  store i32 %83, ptr %84, align 8
  %85 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 13
  %86 = getelementptr i32, ptr %3, i32 20
  %87 = load i32, ptr %81, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #8
  %89 = zext i32 %88 to i64
  store i64 %89, ptr %85, align 8
  %90 = load i32, ptr %86, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #8
  %92 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 13, i32 1
  store i32 %91, ptr %92, align 8
  %93 = shl nuw nsw i64 %89, 30
  %94 = sext i32 %91 to i64
  %95 = add nsw i64 %93, %94
  %96 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 14
  store i64 %95, ptr %96, align 8
  %97 = load i32, ptr %1, align 8
  %98 = or i32 %97, 163455
  store i32 %98, ptr %1, align 8
  br label %99

99:                                               ; preds = %34, %28, %5, %2
  %100 = phi i32 [ 0, %34 ], [ -5, %2 ], [ -22, %5 ], [ -22, %28 ]
  ret i32 %100
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_xdr_bad_filehandle(ptr noundef %0) unnamed_addr #6 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_bad_filehandle, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #8
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %16 = tail call i32 @__traceiter_nfs_xdr_bad_filehandle(ptr noundef null, ptr noundef %0, i32 noundef 10001) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_xdr_bad_filehandle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_nfs_xdr_status(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #8
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %17 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %0, i32 noundef %1) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %18

18:                                               ; preds = %16, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_xdr_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_sattr3(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 24, i32 28
  %7 = and i32 %3, 2
  %8 = icmp eq i32 %7, 0
  %9 = add nuw nsw i32 %6, 4
  %10 = select i1 %8, i32 %6, i32 %9
  %11 = and i32 %3, 4
  %12 = icmp eq i32 %11, 0
  %13 = add nuw nsw i32 %10, 4
  %14 = select i1 %12, i32 %10, i32 %13
  %15 = and i32 %3, 8
  %16 = icmp eq i32 %15, 0
  %17 = add nuw nsw i32 %14, 8
  %18 = select i1 %16, i32 %14, i32 %17
  %19 = and i32 %3, 128
  %20 = icmp eq i32 %19, 0
  %21 = add nuw nsw i32 %18, 8
  %22 = select i1 %20, i32 %18, i32 %21
  %23 = and i32 %3, 256
  %24 = icmp eq i32 %23, 0
  %25 = add nuw nsw i32 %22, 8
  %26 = select i1 %24, i32 %22, i32 %25
  %27 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %26) #8
  %28 = load i32, ptr %1, align 8
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %2
  %32 = getelementptr i32, ptr %27, i32 1
  store i32 16777216, ptr %27, align 4
  %33 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 1
  %34 = load i16, ptr %33, align 4
  %35 = and i16 %34, 4095
  %36 = zext i16 %35 to i32
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  store i32 %37, ptr %32, align 4
  br label %39

38:                                               ; preds = %2
  store i32 0, ptr %27, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi ptr [ %32, %31 ], [ %27, %38 ]
  %41 = getelementptr i32, ptr %40, i32 1
  %42 = load i32, ptr %1, align 8
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr i32, ptr %40, i32 2
  br i1 %44, label %54, label %46

46:                                               ; preds = %39
  store i32 16777216, ptr %41, align 4
  %47 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, -1
  %50 = load i32, ptr @overflowuid, align 4
  %51 = select i1 %49, i32 %50, i32 %48
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = getelementptr i32, ptr %40, i32 3
  store i32 %52, ptr %45, align 4
  br label %55

54:                                               ; preds = %39
  store i32 0, ptr %41, align 4
  br label %55

55:                                               ; preds = %54, %46
  %56 = phi ptr [ %53, %46 ], [ %45, %54 ]
  %57 = load i32, ptr %1, align 8
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = getelementptr i32, ptr %56, i32 1
  store i32 16777216, ptr %56, align 4
  %62 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, -1
  %65 = load i32, ptr @overflowgid, align 4
  %66 = select i1 %64, i32 %65, i32 %63
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  store i32 %67, ptr %61, align 4
  br label %69

68:                                               ; preds = %55
  store i32 0, ptr %56, align 4
  br label %69

69:                                               ; preds = %68, %60
  %70 = phi ptr [ %61, %60 ], [ %56, %68 ]
  %71 = getelementptr i32, ptr %70, i32 1
  %72 = load i32, ptr %1, align 8
  %73 = and i32 %72, 8
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr i32, ptr %70, i32 2
  br i1 %74, label %81, label %76

76:                                               ; preds = %69
  store i32 16777216, ptr %71, align 4
  %77 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 4
  %78 = load i64, ptr %77, align 8
  %79 = tail call i64 @llvm.bswap.i64(i64 %78) #8
  store i64 %79, ptr %75, align 1
  %80 = getelementptr i32, ptr %70, i32 4
  br label %82

81:                                               ; preds = %69
  store i32 0, ptr %71, align 4
  br label %82

82:                                               ; preds = %81, %76
  %83 = phi ptr [ %80, %76 ], [ %75, %81 ]
  %84 = load i32, ptr %1, align 8
  %85 = and i32 %84, 128
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %82
  %88 = getelementptr i32, ptr %83, i32 1
  store i32 33554432, ptr %83, align 4
  %89 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 5
  %90 = load i64, ptr %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #8
  %93 = getelementptr i32, ptr %83, i32 2
  store i32 %92, ptr %88, align 4
  %94 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 5, i32 1
  %95 = load i32, ptr %94, align 8
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #8
  %97 = getelementptr i32, ptr %83, i32 3
  store i32 %96, ptr %93, align 4
  br label %104

98:                                               ; preds = %82
  %99 = and i32 %84, 16
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr i32, ptr %83, i32 1
  br i1 %100, label %103, label %102

102:                                              ; preds = %98
  store i32 16777216, ptr %83, align 4
  br label %104

103:                                              ; preds = %98
  store i32 0, ptr %83, align 4
  br label %104

104:                                              ; preds = %103, %102, %87
  %105 = phi ptr [ %97, %87 ], [ %101, %102 ], [ %101, %103 ]
  %106 = load i32, ptr %1, align 8
  %107 = and i32 %106, 256
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = getelementptr i32, ptr %105, i32 1
  store i32 33554432, ptr %105, align 4
  %111 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 6
  %112 = load i64, ptr %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #8
  %115 = getelementptr i32, ptr %105, i32 2
  store i32 %114, ptr %110, align 4
  %116 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 6, i32 1
  %117 = load i32, ptr %116, align 8
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #8
  store i32 %118, ptr %115, align 4
  br label %124

119:                                              ; preds = %104
  %120 = and i32 %106, 32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  store i32 16777216, ptr %105, align 4
  br label %124

123:                                              ; preds = %119
  store i32 0, ptr %105, align 4
  br label %124

124:                                              ; preds = %123, %122, %109
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_wcc_data(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5, !prof !8

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 24) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %47, label %11, !prof !8

11:                                               ; preds = %8
  %12 = load i32, ptr %1, align 8
  %13 = or i32 %12, 360576
  store i32 %13, ptr %1, align 8
  %14 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 16
  %15 = load i64, ptr %9, align 1
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #8
  store i64 %16, ptr %14, align 8
  %17 = getelementptr i32, ptr %9, i32 2
  %18 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 17
  %19 = getelementptr i32, ptr %9, i32 3
  %20 = load i32, ptr %17, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %22 = zext i32 %21 to i64
  store i64 %22, ptr %18, align 8
  %23 = getelementptr i32, ptr %9, i32 4
  %24 = load i32, ptr %19, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %26 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 17, i32 1
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 18
  %28 = getelementptr i32, ptr %9, i32 5
  %29 = load i32, ptr %23, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  %31 = zext i32 %30 to i64
  store i64 %31, ptr %27, align 8
  %32 = load i32, ptr %28, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %34 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 18, i32 1
  store i32 %33, ptr %34, align 8
  %35 = shl nuw nsw i64 %31, 30
  %36 = sext i32 %33 to i64
  %37 = add nsw i64 %35, %36
  %38 = getelementptr inbounds %struct.nfs_fattr, ptr %1, i32 0, i32 15
  store i64 %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %11, %5
  %40 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42, !prof !8

42:                                               ; preds = %39
  %43 = load i32, ptr %40, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call fastcc i32 @decode_fattr3(ptr noundef %0, ptr noundef %1) #8
  br label %47

47:                                               ; preds = %45, %42, %39, %8, %2
  %48 = phi i32 [ -5, %2 ], [ -5, %8 ], [ %46, %45 ], [ -5, %39 ], [ 0, %42 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_diropargs3(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i16, ptr %1, align 2
  %6 = icmp ugt i16 %5, 64
  %7 = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %4
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 422, i32 noundef 9, ptr noundef null) #8
  %11 = load i16, ptr %1, align 2
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i16 [ %11, %10 ], [ %5, %4 ]
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, 4
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %15) #8
  %17 = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %18 = load i16, ptr %1, align 2
  %19 = zext i16 %18 to i32
  %20 = tail call ptr @xdr_encode_opaque(ptr noundef %16, ptr noundef %17, i32 noundef %19) #8
  %21 = icmp ugt i32 %3, 255
  %22 = load i1, ptr @encode_filename3.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %12
  store i1 true, ptr @encode_filename3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 188, i32 noundef 9, ptr noundef null) #8
  br label %26

26:                                               ; preds = %25, %12
  %27 = add i32 %3, 4
  %28 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %27) #8
  %29 = tail call ptr @xdr_encode_opaque(ptr noundef %28, ptr noundef %2, i32 noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_prepare_reply_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_read_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_terminate_string(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_stream_pos(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_write_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_getacl3args(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = load i16, ptr %4, align 2
  %6 = icmp ugt i16 %5, 64
  %7 = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %3
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 422, i32 noundef 9, ptr noundef null) #8
  %11 = load i16, ptr %4, align 2
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i16 [ %11, %10 ], [ %5, %3 ]
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, 4
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %15) #8
  %17 = getelementptr inbounds %struct.nfs_fh, ptr %4, i32 0, i32 1
  %18 = load i16, ptr %4, align 2
  %19 = zext i16 %18 to i32
  %20 = tail call ptr @xdr_encode_opaque(ptr noundef %16, ptr noundef %17, i32 noundef %19) #8
  %21 = getelementptr inbounds %struct.nfs3_getaclargs, ptr %2, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  store i32 %24, ptr %23, align 4
  %25 = load i32, ptr %21, align 4
  %26 = and i32 %25, 5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.nfs3_getaclargs, ptr %2, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %30, i32 noundef 0, i32 noundef 28672, i32 noundef 58) #8
  %31 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 2, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = or i32 %32, 4
  store i32 %33, ptr %31, align 8
  br label %34

34:                                               ; preds = %28, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_getacl3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %87, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9
  br label %76

27:                                               ; preds = %6
  %28 = load ptr, ptr %2, align 4
  %29 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %74, label %31, !prof !8

31:                                               ; preds = %27
  %32 = load i32, ptr %29, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %28) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %74, !prof !9

37:                                               ; preds = %34, %31
  %38 = getelementptr inbounds %struct.nfs3_getaclres, ptr %2, i32 0, i32 1
  %39 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %74, label %41, !prof !8

41:                                               ; preds = %37
  %42 = load i32, ptr %39, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  store i32 %43, ptr %38, align 4
  %44 = icmp ult i32 %43, 16
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = tail call i32 @xdr_stream_pos(ptr noundef %1) #8
  %47 = load i32, ptr %38, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  %50 = getelementptr inbounds %struct.nfs3_getaclres, ptr %2, i32 0, i32 4
  %51 = select i1 %49, ptr null, ptr %50
  %52 = and i32 %47, 2
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %struct.nfs3_getaclres, ptr %2, i32 0, i32 2
  %55 = select i1 %53, ptr null, ptr %54
  %56 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @nfsacl_decode(ptr noundef %57, i32 noundef %46, ptr noundef %55, ptr noundef %51) #8
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %74, label %60, !prof !8

60:                                               ; preds = %45
  %61 = load i32, ptr %38, align 4
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.nfs3_getaclres, ptr %2, i32 0, i32 5
  %65 = select i1 %63, ptr null, ptr %64
  %66 = and i32 %61, 8
  %67 = icmp eq i32 %66, 0
  %68 = getelementptr inbounds %struct.nfs3_getaclres, ptr %2, i32 0, i32 3
  %69 = select i1 %67, ptr null, ptr %68
  %70 = load ptr, ptr %56, align 4
  %71 = add i32 %58, %46
  %72 = tail call i32 @nfsacl_decode(ptr noundef %70, i32 noundef %71, ptr noundef %69, ptr noundef %65) #8
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %87, label %74, !prof !8

74:                                               ; preds = %60, %45, %41, %37, %34, %27
  %75 = phi i32 [ %35, %34 ], [ -22, %41 ], [ %58, %45 ], [ 0, %60 ], [ -5, %37 ], [ -5, %27 ]
  br label %87

76:                                               ; preds = %76, %26
  %77 = phi i32 [ %83, %76 ], [ 0, %26 ]
  %78 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, -1
  %81 = icmp eq i32 %79, %10
  %82 = or i1 %80, %81
  %83 = add nuw nsw i32 %77, 1
  br i1 %82, label %84, label %76

84:                                               ; preds = %76
  %85 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %77, i32 1
  %86 = load i32, ptr %85, align 4
  br label %87

87:                                               ; preds = %84, %74, %60, %3
  %88 = phi i32 [ %86, %84 ], [ -5, %3 ], [ %75, %74 ], [ %72, %60 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs3_xdr_enc_setacl3args(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr i8, ptr %4, i32 -288
  %6 = load i16, ptr %5, align 2
  %7 = icmp ugt i16 %6, 64
  %8 = load i1, ptr @encode_nfs_fh3.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %13, !prof !8

11:                                               ; preds = %3
  store i1 true, ptr @encode_nfs_fh3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 422, i32 noundef 9, ptr noundef null) #8
  %12 = load i16, ptr %5, align 2
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i16 [ %12, %11 ], [ %6, %3 ]
  %15 = zext i16 %14 to i32
  %16 = add nuw nsw i32 %15, 4
  %17 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %16) #8
  %18 = getelementptr i8, ptr %4, i32 -286
  %19 = load i16, ptr %5, align 2
  %20 = zext i16 %19 to i32
  %21 = tail call ptr @xdr_encode_opaque(ptr noundef %17, ptr noundef %18, i32 noundef %20) #8
  %22 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  store i32 %25, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %2, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %2, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %2, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  tail call void @xdr_write_pages(ptr noundef %1, ptr noundef %33, i32 noundef 0, i32 noundef %35) #8
  br label %40

36:                                               ; preds = %13
  %37 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %2, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %38) #8
  br label %40

40:                                               ; preds = %36, %31
  %41 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %2, align 4
  %44 = load i32, ptr %22, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %2, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %40
  %51 = phi ptr [ %49, %47 ], [ null, %40 ]
  %52 = tail call i32 @nfsacl_encode(ptr noundef %42, i32 noundef %27, ptr noundef %43, ptr noundef %51, i32 noundef 1, i32 noundef 0) #8
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55, !prof !8

54:                                               ; preds = %50
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs3xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1361, 0\0A.popsection", ""() #8, !srcloc !17
  unreachable

55:                                               ; preds = %50
  %56 = load ptr, ptr %41, align 4
  %57 = add i32 %52, %27
  %58 = load ptr, ptr %2, align 4
  %59 = load i32, ptr %22, align 4
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.nfs3_setaclargs, ptr %2, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %55
  %66 = phi ptr [ %64, %62 ], [ null, %55 ]
  %67 = tail call i32 @nfsacl_encode(ptr noundef %56, i32 noundef %57, ptr noundef %58, ptr noundef %66, i32 noundef 1, i32 noundef 4096) #8
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70, !prof !8

69:                                               ; preds = %65
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs3xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1366, 0\0A.popsection", ""() #8, !srcloc !18
  unreachable

70:                                               ; preds = %65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs3_xdr_dec_setacl3res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9, !prof !9

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_xdr_status, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %25 = tail call i32 @__traceiter_nfs_xdr_status(ptr noundef null, ptr noundef %1, i32 noundef %10) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %26

26:                                               ; preds = %24, %13, %9
  br label %35

27:                                               ; preds = %6
  %28 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30, !prof !8

30:                                               ; preds = %27
  %31 = load i32, ptr %28, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @decode_fattr3(ptr noundef %1, ptr noundef %2) #8
  br label %46

35:                                               ; preds = %35, %26
  %36 = phi i32 [ %42, %35 ], [ 0, %26 ]
  %37 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, -1
  %40 = icmp eq i32 %38, %10
  %41 = or i1 %39, %40
  %42 = add nuw nsw i32 %36, 1
  br i1 %41, label %43, label %35

43:                                               ; preds = %35
  %44 = getelementptr [30 x %struct.anon.156], ptr @nfs_errtbl, i32 0, i32 %36, i32 1
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %33, %30, %27, %3
  %47 = phi i32 [ %45, %43 ], [ -5, %3 ], [ %34, %33 ], [ -5, %27 ], [ 0, %30 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsacl_decode(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfsacl_encode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }

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
!10 = !{i64 2157379565}
!11 = !{i64 2157379725}
!12 = !{!"branch_weights", i32 2000, i32 2002}
!13 = !{i64 2157396224}
!14 = !{i64 2157396400}
!15 = !{i64 2157556856, i64 2157557338, i64 2157556893, i64 2157556949, i64 2157556983, i64 2157557007, i64 2157557048, i64 2157557069, i64 2157557097, i64 2157557131}
!16 = !{i64 2157557769, i64 2157558251, i64 2157557806, i64 2157557862, i64 2157557896, i64 2157557920, i64 2157557961, i64 2157557982, i64 2157558010, i64 2157558044}
!17 = !{i64 2157559782, i64 2157560264, i64 2157559819, i64 2157559875, i64 2157559909, i64 2157559933, i64 2157559974, i64 2157559995, i64 2157560023, i64 2157560057}
!18 = !{i64 2157560812, i64 2157561294, i64 2157560849, i64 2157560905, i64 2157560939, i64 2157560963, i64 2157561004, i64 2157561025, i64 2157561053, i64 2157561087}
