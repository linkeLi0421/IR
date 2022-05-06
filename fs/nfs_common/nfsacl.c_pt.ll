; ModuleID = '/llk/IR/fs/nfs_common/nfsacl.c_pt.bc'
source_filename = "../fs/nfs_common/nfsacl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfsacl_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22nfsacl_encode\22\09\09\09\09\09"
module asm "__kstrtabns_nfsacl_encode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_stream_encode_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_stream_encode_acl\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_stream_encode_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfsacl_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22nfsacl_decode\22\09\09\09\09\09"
module asm "__kstrtabns_nfsacl_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_stream_decode_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_stream_decode_acl\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_stream_decode_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfsacl_encode_desc = type { %struct.xdr_array2_desc, i32, ptr, i32, %struct.kuid_t, %struct.kgid_t }
%struct.xdr_array2_desc = type { i32, i32, i32, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.nfsacl_simple_acl = type { %struct.posix_acl, [4 x %struct.posix_acl_entry] }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.posix_acl_entry = type { i16, i16, %union.anon.64 }
%union.anon.64 = type { %struct.kuid_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.nfsacl_decode_desc = type { %struct.xdr_array2_desc, i32, ptr }

@__UNIQUE_ID_file227 = internal constant [35 x i8] c"nfs_acl.file=fs/nfs_common/nfs_acl\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [20 x i8] c"nfs_acl.license=GPL\00", section ".modinfo", align 1
@__kstrtab_nfsacl_encode = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfsacl_encode = external dso_local constant [0 x i8], align 1
@__ksymtab_nfsacl_encode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfsacl_encode to i32), ptr @__kstrtab_nfsacl_encode, ptr @__kstrtabns_nfsacl_encode }, section "___ksymtab_gpl+nfsacl_encode", align 4
@__kstrtab_nfs_stream_encode_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_stream_encode_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_stream_encode_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_stream_encode_acl to i32), ptr @__kstrtab_nfs_stream_encode_acl, ptr @__kstrtabns_nfs_stream_encode_acl }, section "___ksymtab_gpl+nfs_stream_encode_acl", align 4
@__kstrtab_nfsacl_decode = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfsacl_decode = external dso_local constant [0 x i8], align 1
@__ksymtab_nfsacl_decode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfsacl_decode to i32), ptr @__kstrtab_nfsacl_decode, ptr @__kstrtabns_nfsacl_decode }, section "___ksymtab_gpl+nfsacl_decode", align 4
@__kstrtab_nfs_stream_decode_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_stream_decode_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_stream_decode_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_stream_decode_acl to i32), ptr @__kstrtab_nfs_stream_decode_acl, ptr @__kstrtabns_nfs_stream_decode_acl }, section "___ksymtab_gpl+nfs_stream_decode_acl", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__ksymtab_nfs_stream_decode_acl, ptr @__ksymtab_nfs_stream_encode_acl, ptr @__ksymtab_nfsacl_decode, ptr @__ksymtab_nfsacl_encode], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfsacl_encode(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.nfsacl_encode_desc, align 4
  %8 = alloca %struct.nfsacl_simple_acl, align 4
  %9 = icmp ne ptr %3, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.posix_acl, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = tail call i32 @llvm.smax.i32(i32 %12, i32 4)
  %15 = select i1 %13, i32 0, i32 %14
  br label %16

16:                                               ; preds = %10, %6
  %17 = phi i32 [ 0, %6 ], [ %15, %10 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #8
  store i32 12, ptr %7, align 4
  %18 = getelementptr inbounds %struct.xdr_array2_desc, ptr %7, i32 0, i32 1
  %19 = icmp ne i32 %4, 0
  %20 = select i1 %19, i32 %17, i32 0
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.xdr_array2_desc, ptr %7, i32 0, i32 2
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.xdr_array2_desc, ptr %7, i32 0, i32 3
  store ptr @xdr_nfsace_encode, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %7, i32 0, i32 1
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %7, i32 0, i32 2
  store ptr %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %7, i32 0, i32 3
  store i32 %5, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %7, i32 0, i32 4
  %27 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %7, i32 0, i32 5
  %30 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 3
  %31 = load i32, ptr %30, align 8
  store i32 %31, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %8, i8 0, i32 48, i1 false), !annotation !8
  %32 = icmp ugt i32 %17, 1024
  br i1 %32, label %62, label %33

33:                                               ; preds = %16
  %34 = tail call i32 @xdr_encode_word(ptr noundef %0, i32 noundef %1, i32 noundef %17) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %33
  %37 = and i1 %9, %19
  br i1 %37, label %38, label %53

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.posix_acl, ptr %3, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  call void @posix_acl_init(ptr noundef nonnull %8, i32 noundef 4) #8
  %43 = getelementptr inbounds %struct.posix_acl, ptr %8, i32 0, i32 3
  %44 = getelementptr inbounds %struct.posix_acl, ptr %3, i32 0, i32 3
  %45 = load i64, ptr %44, align 4
  store i64 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.posix_acl, ptr %8, i32 1, i32 1, i32 1
  %47 = getelementptr %struct.posix_acl, ptr %3, i32 1, i32 1, i32 1
  %48 = load i64, ptr %47, align 4
  store i64 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.posix_acl, ptr %8, i32 2
  store i64 %48, ptr %49, align 4
  store i16 16, ptr %49, align 4
  %50 = getelementptr inbounds %struct.posix_acl, ptr %8, i32 2, i32 1, i32 1
  %51 = getelementptr %struct.posix_acl, ptr %3, i32 2
  %52 = load i64, ptr %51, align 4
  store i64 %52, ptr %50, align 4
  store ptr %8, ptr %24, align 4
  br label %53

53:                                               ; preds = %42, %38, %36
  %54 = add i32 %1, 4
  %55 = call i32 @xdr_encode_array2(ptr noundef %0, i32 noundef %54, ptr noundef nonnull %7) #8
  %56 = icmp eq i32 %55, 0
  %57 = load i32, ptr %7, align 4
  %58 = load i32, ptr %18, align 4
  %59 = mul i32 %58, %57
  %60 = add i32 %59, 8
  %61 = select i1 %56, i32 %60, i32 %55
  br label %62

62:                                               ; preds = %53, %33, %16
  %63 = phi i32 [ %61, %53 ], [ -22, %33 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #8
  ret i32 %63
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @xdr_nfsace_encode(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  %8 = getelementptr %struct.posix_acl, ptr %4, i32 0, i32 3, i32 %6
  %9 = load i16, ptr %8, align 4
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, %10
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  store i32 %14, ptr %1, align 4
  %15 = load i16, ptr %8, align 4
  %16 = sext i16 %15 to i32
  switch i32 %16, label %29 [
    i32 1, label %17
    i32 4, label %19
    i32 2, label %21
    i32 8, label %23
  ]

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %0, i32 0, i32 4
  br label %25

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %0, i32 0, i32 5
  br label %25

21:                                               ; preds = %2
  %22 = getelementptr %struct.posix_acl, ptr %4, i32 0, i32 3, i32 %6, i32 2
  br label %25

23:                                               ; preds = %2
  %24 = getelementptr %struct.posix_acl, ptr %4, i32 0, i32 3, i32 %6, i32 2
  br label %25

25:                                               ; preds = %23, %21, %19, %17
  %26 = phi ptr [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ]
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  br label %29

29:                                               ; preds = %25, %2
  %30 = phi i32 [ 0, %2 ], [ %28, %25 ]
  %31 = getelementptr i32, ptr %1, i32 1
  store i32 %30, ptr %31, align 4
  %32 = getelementptr i32, ptr %1, i32 2
  %33 = getelementptr %struct.posix_acl, ptr %4, i32 0, i32 3, i32 %6, i32 1
  %34 = load i16, ptr %33, align 2
  %35 = and i16 %34, 7
  %36 = zext i16 %35 to i32
  %37 = shl nuw nsw i32 %36, 24
  store i32 %37, ptr %32, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_encode_word(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_acl_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_encode_array2(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs_stream_encode_acl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.nfsacl_encode_desc, align 4
  %7 = alloca %struct.nfsacl_simple_acl, align 4
  %8 = icmp ne ptr %2, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.posix_acl, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = tail call i32 @llvm.smax.i32(i32 %11, i32 4)
  %14 = select i1 %12, i32 0, i32 %13
  br label %15

15:                                               ; preds = %9, %5
  %16 = phi i32 [ 0, %5 ], [ %14, %9 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #8
  store i32 12, ptr %6, align 4
  %17 = getelementptr inbounds %struct.xdr_array2_desc, ptr %6, i32 0, i32 1
  %18 = icmp ne i32 %3, 0
  %19 = select i1 %18, i32 %16, i32 0
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.xdr_array2_desc, ptr %6, i32 0, i32 2
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.xdr_array2_desc, ptr %6, i32 0, i32 3
  store ptr @xdr_nfsace_encode, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %6, i32 0, i32 1
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %6, i32 0, i32 2
  store ptr %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %6, i32 0, i32 3
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %6, i32 0, i32 4
  %26 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %6, i32 0, i32 5
  %29 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  store i32 %30, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %7, i8 0, i32 48, i1 false), !annotation !8
  %31 = icmp ugt i32 %16, 1024
  br i1 %31, label %65, label %32

32:                                               ; preds = %15
  %33 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %65, label %35, !prof !9

35:                                               ; preds = %32
  %36 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  store i32 %36, ptr %33, align 4
  %37 = and i1 %8, %18
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.posix_acl, ptr %2, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  call void @posix_acl_init(ptr noundef nonnull %7, i32 noundef 4) #8
  %43 = getelementptr inbounds %struct.posix_acl, ptr %7, i32 0, i32 3
  %44 = getelementptr inbounds %struct.posix_acl, ptr %2, i32 0, i32 3
  %45 = load i64, ptr %44, align 4
  store i64 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.posix_acl, ptr %7, i32 1, i32 1, i32 1
  %47 = getelementptr %struct.posix_acl, ptr %2, i32 1, i32 1, i32 1
  %48 = load i64, ptr %47, align 4
  store i64 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.posix_acl, ptr %7, i32 2
  store i64 %48, ptr %49, align 4
  store i16 16, ptr %49, align 4
  %50 = getelementptr inbounds %struct.posix_acl, ptr %7, i32 2, i32 1, i32 1
  %51 = getelementptr %struct.posix_acl, ptr %2, i32 2
  %52 = load i64, ptr %51, align 4
  store i64 %52, ptr %50, align 4
  store ptr %7, ptr %23, align 4
  br label %53

53:                                               ; preds = %42, %38, %35
  %54 = call i32 @xdr_stream_pos(ptr noundef %0) #8
  %55 = load i32, ptr %17, align 4
  %56 = mul i32 %55, 12
  %57 = add i32 %56, 4
  %58 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %57) #8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 @xdr_encode_array2(ptr noundef %62, i32 noundef %54, ptr noundef nonnull %6) #8
  %64 = icmp eq i32 %63, 0
  br label %65

65:                                               ; preds = %60, %53, %32, %15
  %66 = phi i1 [ false, %15 ], [ false, %53 ], [ %64, %60 ], [ false, %32 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #8
  ret i1 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_stream_pos(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfsacl_decode(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) #0 {
  %5 = alloca %struct.nfsacl_decode_desc, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  store i32 12, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xdr_array2_desc, ptr %5, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xdr_array2_desc, ptr %5, i32 0, i32 3
  %9 = icmp eq ptr %3, null
  %10 = select i1 %9, ptr null, ptr @xdr_nfsace_decode
  store ptr %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %5, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %5, i32 0, i32 2
  store ptr null, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %13 = call i32 @xdr_decode_word(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6) #8
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr %6, align 4
  %16 = icmp ugt i32 %15, 1024
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %90, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.xdr_array2_desc, ptr %5, i32 0, i32 2
  store i32 %15, ptr %19, align 4
  %20 = add i32 %1, 4
  %21 = call i32 @xdr_decode_array2(ptr noundef %0, i32 noundef %20, ptr noundef nonnull %5) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %90

23:                                               ; preds = %18
  br i1 %9, label %81, label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %6, align 4
  %26 = load i32, ptr %7, align 4
  %27 = icmp eq i32 %25, %26
  %28 = load ptr, ptr %12, align 4
  %29 = icmp eq ptr %28, null
  br i1 %27, label %30, label %71

30:                                               ; preds = %24
  br i1 %29, label %69, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.posix_acl, ptr %28, i32 0, i32 3
  %33 = getelementptr inbounds %struct.posix_acl, ptr %28, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  call void @sort(ptr noundef %32, i32 noundef %34, i32 noundef 8, ptr noundef nonnull @cmp_acl_entry, ptr noundef null) #8
  %35 = load i32, ptr %33, align 4
  %36 = getelementptr %struct.posix_acl_entry, ptr %32, i32 %35
  %37 = icmp ult ptr %32, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %46, %31
  %39 = phi ptr [ %48, %46 ], [ null, %31 ]
  %40 = phi ptr [ %47, %46 ], [ null, %31 ]
  %41 = phi ptr [ %49, %46 ], [ %32, %31 ]
  %42 = load i16, ptr %41, align 4
  %43 = sext i16 %42 to i32
  switch i32 %43, label %46 [
    i32 16, label %45
    i32 4, label %44
  ]

44:                                               ; preds = %38
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %44, %38
  %47 = phi ptr [ %40, %38 ], [ %41, %44 ], [ %40, %45 ]
  %48 = phi ptr [ %39, %38 ], [ %39, %44 ], [ %41, %45 ]
  %49 = getelementptr %struct.posix_acl_entry, ptr %41, i32 1
  %50 = icmp ult ptr %49, %36
  br i1 %50, label %38, label %51

51:                                               ; preds = %46
  %52 = icmp eq i32 %35, 4
  %53 = icmp ne ptr %47, null
  %54 = select i1 %52, i1 %53, i1 false
  %55 = icmp ne ptr %48, null
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.posix_acl_entry, ptr %48, i32 0, i32 1
  %59 = load i16, ptr %58, align 2
  %60 = getelementptr inbounds %struct.posix_acl_entry, ptr %47, i32 0, i32 1
  %61 = load i16, ptr %60, align 2
  %62 = icmp eq i16 %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = getelementptr %struct.posix_acl_entry, ptr %48, i32 1
  %65 = ptrtoint ptr %48 to i32
  %66 = ptrtoint ptr %32 to i32
  %67 = add i32 %66, 24
  %68 = sub i32 %67, %65
  call void @llvm.memmove.p0.p0.i32(ptr nonnull align 4 %48, ptr align 4 %64, i32 %68, i1 false) #8
  store i32 3, ptr %33, align 4
  br label %69

69:                                               ; preds = %63, %57, %51, %31, %30
  %70 = load ptr, ptr %12, align 4
  store ptr %70, ptr %3, align 4
  br label %81

71:                                               ; preds = %24
  br i1 %29, label %90, label %72

72:                                               ; preds = %71
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %28) #8, !srcloc !11
  %73 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #8, !srcloc !12
  %74 = extractvalue { i32, i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = icmp sgt i32 %74, 0
  br i1 %77, label %90, label %78, !prof !13

78:                                               ; preds = %76
  call void @refcount_warn_saturate(ptr noundef nonnull %28, i32 noundef 3) #8
  br label %90

79:                                               ; preds = %72
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %80 = getelementptr inbounds %struct.posix_acl, ptr %28, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %80, ptr noundef nonnull inttoptr (i32 4 to ptr)) #8
  br label %90

81:                                               ; preds = %69, %23
  %82 = icmp eq ptr %2, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = load i32, ptr %6, align 4
  store i32 %84, ptr %2, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = load i32, ptr %5, align 4
  %87 = load i32, ptr %7, align 4
  %88 = mul i32 %87, %86
  %89 = add i32 %88, 8
  br label %90

90:                                               ; preds = %85, %79, %78, %76, %71, %18, %4
  %91 = phi i32 [ %89, %85 ], [ -22, %4 ], [ %21, %18 ], [ -22, %71 ], [ -22, %76 ], [ -22, %78 ], [ -22, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xdr_nfsace_decode(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.xdr_array2_desc, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 1024
  br i1 %12, label %47, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @posix_acl_alloc(i32 noundef %11, i32 noundef 3264) #8
  store ptr %14, ptr %3, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %47, label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %8, %6 ], [ 0, %13 ]
  %18 = phi ptr [ %4, %6 ], [ %14, %13 ]
  %19 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %0, i32 0, i32 1
  %20 = add i32 %17, 1
  store i32 %20, ptr %19, align 4
  %21 = getelementptr %struct.posix_acl, ptr %18, i32 0, i32 3, i32 %17
  %22 = getelementptr i32, ptr %1, i32 1
  %23 = load i32, ptr %1, align 4
  %24 = and i32 %23, -1048577
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr %21, align 4
  %27 = getelementptr i32, ptr %1, i32 2
  %28 = load i32, ptr %22, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = load i32, ptr %27, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = trunc i32 %31 to i16
  %33 = getelementptr %struct.posix_acl, ptr %18, i32 0, i32 3, i32 %17, i32 1
  store i16 %32, ptr %33, align 2
  %34 = shl i32 %25, 16
  %35 = ashr exact i32 %34, 16
  switch i32 %35, label %47 [
    i32 2, label %36
    i32 8, label %39
    i32 1, label %42
    i32 4, label %42
    i32 32, label %42
    i32 16, label %44
  ]

36:                                               ; preds = %16
  %37 = getelementptr %struct.posix_acl, ptr %18, i32 0, i32 3, i32 %17, i32 2
  store i32 %29, ptr %37, align 4
  %38 = icmp eq i32 %28, -1
  br i1 %38, label %47, label %46

39:                                               ; preds = %16
  %40 = getelementptr %struct.posix_acl, ptr %18, i32 0, i32 3, i32 %17, i32 2
  store i32 %29, ptr %40, align 4
  %41 = icmp eq i32 %28, -1
  br i1 %41, label %47, label %46

42:                                               ; preds = %16, %16, %16
  %43 = icmp ult i16 %32, 8
  br i1 %43, label %46, label %47

44:                                               ; preds = %16
  %45 = and i16 %32, 7
  store i16 %45, ptr %33, align 2
  br label %46

46:                                               ; preds = %44, %42, %39, %36
  br label %47

47:                                               ; preds = %46, %42, %39, %36, %16, %13, %9
  %48 = phi i32 [ 0, %46 ], [ -22, %9 ], [ -12, %13 ], [ -22, %36 ], [ -22, %39 ], [ -22, %42 ], [ -22, %16 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_decode_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_decode_array2(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs_stream_decode_acl(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) #0 {
  %4 = alloca %struct.nfsacl_decode_desc, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  store i32 12, ptr %4, align 4
  %5 = getelementptr inbounds %struct.xdr_array2_desc, ptr %4, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.xdr_array2_desc, ptr %4, i32 0, i32 2
  %7 = getelementptr inbounds %struct.xdr_array2_desc, ptr %4, i32 0, i32 3
  %8 = icmp eq ptr %2, null
  %9 = select i1 %8, ptr null, ptr @xdr_nfsace_decode
  store ptr %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %4, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %4, i32 0, i32 2
  store ptr null, ptr %11, align 4
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %89, label %14, !prof !9

14:                                               ; preds = %3
  %15 = load i32, ptr %12, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  %17 = icmp ugt i32 %16, 1024
  br i1 %17, label %89, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @xdr_stream_pos(ptr noundef %0) #8
  %20 = mul nuw nsw i32 %16, 12
  %21 = add nuw nsw i32 %20, 4
  %22 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %21) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %89, label %24

24:                                               ; preds = %18
  store i32 %16, ptr %6, align 4
  %25 = getelementptr inbounds %struct.xdr_stream, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @xdr_decode_array2(ptr noundef %26, i32 noundef %19, ptr noundef nonnull %4) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %89

29:                                               ; preds = %24
  br i1 %8, label %86, label %30

30:                                               ; preds = %29
  %31 = load i32, ptr %5, align 4
  %32 = icmp eq i32 %16, %31
  %33 = load ptr, ptr %11, align 4
  %34 = icmp eq ptr %33, null
  br i1 %32, label %35, label %76

35:                                               ; preds = %30
  br i1 %34, label %74, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.posix_acl, ptr %33, i32 0, i32 3
  %38 = getelementptr inbounds %struct.posix_acl, ptr %33, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  call void @sort(ptr noundef %37, i32 noundef %39, i32 noundef 8, ptr noundef nonnull @cmp_acl_entry, ptr noundef null) #8
  %40 = load i32, ptr %38, align 4
  %41 = getelementptr %struct.posix_acl_entry, ptr %37, i32 %40
  %42 = icmp ult ptr %37, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %51, %36
  %44 = phi ptr [ %53, %51 ], [ null, %36 ]
  %45 = phi ptr [ %52, %51 ], [ null, %36 ]
  %46 = phi ptr [ %54, %51 ], [ %37, %36 ]
  %47 = load i16, ptr %46, align 4
  %48 = sext i16 %47 to i32
  switch i32 %48, label %51 [
    i32 16, label %50
    i32 4, label %49
  ]

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %49, %43
  %52 = phi ptr [ %45, %43 ], [ %46, %49 ], [ %45, %50 ]
  %53 = phi ptr [ %44, %43 ], [ %44, %49 ], [ %46, %50 ]
  %54 = getelementptr %struct.posix_acl_entry, ptr %46, i32 1
  %55 = icmp ult ptr %54, %41
  br i1 %55, label %43, label %56

56:                                               ; preds = %51
  %57 = icmp eq i32 %40, 4
  %58 = icmp ne ptr %52, null
  %59 = select i1 %57, i1 %58, i1 false
  %60 = icmp ne ptr %53, null
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.posix_acl_entry, ptr %53, i32 0, i32 1
  %64 = load i16, ptr %63, align 2
  %65 = getelementptr inbounds %struct.posix_acl_entry, ptr %52, i32 0, i32 1
  %66 = load i16, ptr %65, align 2
  %67 = icmp eq i16 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = getelementptr %struct.posix_acl_entry, ptr %53, i32 1
  %70 = ptrtoint ptr %53 to i32
  %71 = ptrtoint ptr %37 to i32
  %72 = add i32 %71, 24
  %73 = sub i32 %72, %70
  call void @llvm.memmove.p0.p0.i32(ptr nonnull align 4 %53, ptr align 4 %69, i32 %73, i1 false) #8
  store i32 3, ptr %38, align 4
  br label %74

74:                                               ; preds = %68, %62, %56, %36, %35
  %75 = load ptr, ptr %11, align 4
  store ptr %75, ptr %2, align 4
  br label %86

76:                                               ; preds = %30
  br i1 %34, label %89, label %77

77:                                               ; preds = %76
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %33) #8, !srcloc !11
  %78 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %33, ptr nonnull %33, i32 1, ptr nonnull elementtype(i32) %33) #8, !srcloc !12
  %79 = extractvalue { i32, i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = icmp sgt i32 %79, 0
  br i1 %82, label %89, label %83, !prof !13

83:                                               ; preds = %81
  call void @refcount_warn_saturate(ptr noundef nonnull %33, i32 noundef 3) #8
  br label %89

84:                                               ; preds = %77
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %85 = getelementptr inbounds %struct.posix_acl, ptr %33, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %85, ptr noundef nonnull inttoptr (i32 4 to ptr)) #8
  br label %89

86:                                               ; preds = %74, %29
  %87 = icmp eq ptr %1, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %86
  store i32 %16, ptr %1, align 4
  br label %89

89:                                               ; preds = %88, %86, %84, %83, %81, %76, %24, %18, %14, %3
  %90 = phi i1 [ false, %14 ], [ false, %18 ], [ false, %24 ], [ true, %88 ], [ true, %86 ], [ false, %76 ], [ false, %81 ], [ false, %83 ], [ false, %84 ], [ false, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret i1 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_alloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cmp_acl_entry(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load i16, ptr %0, align 4
  %4 = load i16, ptr %1, align 4
  %5 = icmp eq i16 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = sext i16 %3 to i32
  %8 = sext i16 %4 to i32
  %9 = sub nsw i32 %7, %8
  br label %28

10:                                               ; preds = %2
  switch i16 %3, label %27 [
    i16 2, label %11
    i16 8, label %19
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.posix_acl_entry, ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds %struct.posix_acl_entry, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %12, align 4
  %15 = load i32, ptr %13, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = icmp ult i32 %14, %15
  br i1 %18, label %28, label %27

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.posix_acl_entry, ptr %0, i32 0, i32 2
  %21 = getelementptr inbounds %struct.posix_acl_entry, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %20, align 4
  %23 = load i32, ptr %21, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = icmp ult i32 %22, %23
  br i1 %26, label %28, label %27

27:                                               ; preds = %25, %17, %10
  br label %28

28:                                               ; preds = %27, %25, %19, %17, %11, %6
  %29 = phi i32 [ %9, %6 ], [ 0, %27 ], [ 1, %11 ], [ -1, %17 ], [ 1, %19 ], [ -1, %25 ]
  ret i32 %29
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148154247}
!11 = !{i64 551181, i64 2148041152, i64 2148041178, i64 2148041225, i64 2148041247, i64 2148041275, i64 2148041295}
!12 = !{i64 2148056382, i64 2148056414, i64 2148056443, i64 2148056477, i64 2148056508, i64 2148056531}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149003694}
