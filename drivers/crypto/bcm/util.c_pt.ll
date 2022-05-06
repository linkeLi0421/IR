; ModuleID = '/llk/IR/drivers/crypto/bcm/util.c_pt.bc'
source_filename = "../drivers/crypto/bcm/util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bcm_device_private = type { ptr, %struct.spu_hw, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, [4 x %struct.atomic_t], [5 x [8 x %struct.atomic_t]], [12 x %struct.atomic_t], [12 x %struct.atomic_t], [3 x %struct.atomic_t], [4 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.mbox_client, ptr }
%struct.spu_hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_shash = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str.2 = private unnamed_addr constant [37 x i8] c"\013%s: Crypto %s allocation error %d\0A\00", align 1
@__func__.do_shash = private unnamed_addr constant [9 x i8] c"do_shash\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\013%s: Could not setkey %s shash\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\013%s: Could not init %s shash\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\013%s: Could not update1\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"\013%s: Could not update2\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\013%s: Could not generate %s hash\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"rc4\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"cbc(aes)\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"ecb(aes)\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"ofb(aes)\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"cfb(aes)\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"ctr(aes)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"xts(aes)\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"gcm(aes)\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"cbc(des)\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"ecb(des)\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"ctr(des)\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"des\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"cbc(des3_ede)\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"ecb(des3_ede)\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"ctr(des3_ede)\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"3des\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@iproc_priv = external dso_local global %struct.bcm_device_private, align 8
@.str.26 = private unnamed_addr constant [15 x i8] c"bcm_crypto_spu\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@spu_debugfs_stats = internal constant %struct.file_operations { ptr @__this_module, ptr null, ptr @spu_debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.28 = private unnamed_addr constant [27 x i8] c"Number of SPUs.........%u\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Current sessions.......%u\0A\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"Session count..........%u\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"Cipher setkey..........%u\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Cipher Ops.............%u\0A\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"  %-13s%11u\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Hash Ops...............%u\0A\00", align 1
@hash_alg_name = external dso_local local_unnamed_addr global [12 x ptr], align 4
@.str.35 = private unnamed_addr constant [27 x i8] c"HMAC setkey............%u\0A\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"HMAC Ops...............%u\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"AEAD setkey............%u\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"AEAD Ops...............%u\0A\00", align 1
@aead_alg_name = external dso_local local_unnamed_addr global [3 x ptr], align 4
@.str.39 = private unnamed_addr constant [29 x i8] c"Bytes of req data......%llu\0A\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"Bytes of resp data.....%llu\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"Mailbox full...........%u\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"Mailbox send failures..%u\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Check ICV errors.......%u\0A\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"SPU %d output FIFO high water.....%u\0A\00", align 1
@switch.table.spu_debugfs_read = private unnamed_addr constant [8 x ptr] [ptr @.str.10, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.15, ptr @.str.14], align 4
@switch.table.spu_debugfs_read.47 = private unnamed_addr constant [5 x ptr] [ptr @.str.18, ptr @.str.17, ptr @.str.20, ptr @.str.20, ptr @.str.19], align 4
@switch.table.spu_debugfs_read.48 = private unnamed_addr constant [5 x ptr] [ptr @.str.22, ptr @.str.21, ptr @.str.24, ptr @.str.24, ptr @.str.23], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spu_sg_at_offset(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %18, label %8

8:                                                ; preds = %13, %4
  %9 = phi i32 [ %16, %13 ], [ %6, %4 ]
  %10 = phi ptr [ %11, %13 ], [ %0, %4 ]
  %11 = tail call ptr @sg_next(ptr noundef %10) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %9
  %17 = icmp ugt i32 %16, %1
  br i1 %17, label %18, label %8

18:                                               ; preds = %13, %4
  %19 = phi ptr [ %0, %4 ], [ %11, %13 ]
  %20 = phi i32 [ 0, %4 ], [ %9, %13 ]
  %21 = sub i32 %1, %20
  store i32 %21, ptr %3, align 4
  store ptr %19, ptr %2, align 4
  br label %22

22:                                               ; preds = %18, %8
  %23 = phi i32 [ 0, %18 ], [ -22, %8 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sg_copy_part_to_buf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @sg_nents(ptr noundef %0) #10
  %6 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %0, i32 noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sg_copy_part_from_buf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @sg_nents(ptr noundef %0) #10
  %6 = tail call i32 @sg_pcopy_from_buffer(ptr noundef %0, i32 noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spu_sg_count(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.scatterlist, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %19, label %9

9:                                                ; preds = %14, %5
  %10 = phi i32 [ %17, %14 ], [ %7, %5 ]
  %11 = phi ptr [ %12, %14 ], [ %0, %5 ]
  %12 = tail call ptr @sg_next(ptr noundef nonnull %11) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %10
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %19, label %9

19:                                               ; preds = %14, %5
  %20 = phi i32 [ %7, %5 ], [ %16, %14 ]
  %21 = phi ptr [ %0, %5 ], [ %12, %14 ]
  %22 = phi i32 [ 0, %5 ], [ %10, %14 ]
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = add i32 %1, %2
  %26 = add i32 %22, %20
  %27 = sub i32 %25, %26
  %28 = tail call ptr @sg_next(ptr noundef nonnull %21) #10
  %29 = icmp ne ptr %28, null
  %30 = icmp sgt i32 %27, 0
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %44

32:                                               ; preds = %32, %24
  %33 = phi i32 [ %36, %32 ], [ 1, %24 ]
  %34 = phi i32 [ %39, %32 ], [ %27, %24 ]
  %35 = phi ptr [ %40, %32 ], [ %28, %24 ]
  %36 = add i32 %33, 1
  %37 = getelementptr inbounds %struct.scatterlist, ptr %35, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %34, %38
  %40 = tail call ptr @sg_next(ptr noundef nonnull %35) #10
  %41 = icmp ne ptr %40, null
  %42 = icmp sgt i32 %39, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %32, label %44, !llvm.loop !8

44:                                               ; preds = %32, %24, %19, %9, %3
  %45 = phi i32 [ 0, %3 ], [ 0, %19 ], [ 1, %24 ], [ %36, %32 ], [ 0, %9 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spu_msg_sg_add(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %57, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %2, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = zext i8 %3 to i32
  %12 = icmp eq i8 %3, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %43, %7
  %14 = phi ptr [ %45, %43 ], [ %9, %7 ]
  %15 = phi ptr [ %38, %43 ], [ %10, %7 ]
  %16 = phi i32 [ %39, %43 ], [ 0, %7 ]
  %17 = phi i32 [ %44, %43 ], [ 0, %7 ]
  %18 = phi i32 [ %41, %43 ], [ %8, %7 ]
  %19 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 %20, %18
  %22 = sub i32 %4, %16
  %23 = tail call i32 @llvm.umin.i32(i32 %21, i32 %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %18
  %29 = getelementptr %struct.scatterlist, ptr %15, i32 1
  %30 = load i32, ptr %14, align 4
  %31 = and i32 %30, -4
  %32 = load i32, ptr %15, align 4
  %33 = and i32 %32, 3
  %34 = or i32 %33, %31
  store i32 %34, ptr %15, align 4
  %35 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 1
  store i32 %28, ptr %35, align 4
  %36 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 2
  store i32 %23, ptr %36, align 4
  br label %37

37:                                               ; preds = %25, %13
  %38 = phi ptr [ %29, %25 ], [ %15, %13 ]
  %39 = add i32 %23, %16
  %40 = icmp eq i32 %39, %21
  %41 = select i1 %40, i32 0, i32 %18
  %42 = icmp eq i32 %39, %4
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = add nuw nsw i32 %17, 1
  %45 = tail call ptr @sg_next(ptr noundef %14) #10
  %46 = icmp eq i32 %44, %11
  br i1 %46, label %47, label %13

47:                                               ; preds = %43, %37, %7
  %48 = phi ptr [ %9, %7 ], [ %45, %43 ], [ %14, %37 ]
  %49 = phi i32 [ %8, %7 ], [ %41, %37 ], [ %41, %43 ]
  %50 = phi i32 [ 0, %7 ], [ %21, %37 ], [ %21, %43 ]
  %51 = phi i32 [ 0, %7 ], [ %23, %37 ], [ %23, %43 ]
  %52 = phi i32 [ 0, %7 ], [ %39, %43 ], [ %4, %37 ]
  %53 = phi ptr [ %10, %7 ], [ %38, %37 ], [ %38, %43 ]
  store ptr %53, ptr %0, align 4
  store ptr %48, ptr %1, align 4
  %54 = icmp ult i32 %51, %50
  %55 = add i32 %51, %49
  %56 = select i1 %54, i32 %55, i32 0
  store i32 %56, ptr %2, align 4
  br label %57

57:                                               ; preds = %47, %5
  %58 = phi i32 [ %52, %47 ], [ 0, %5 ]
  ret i32 %58
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @add_to_ctr(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i64, ptr %0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %6 = zext i32 %1 to i64
  %7 = add i64 %5, %6
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  store i64 %8, ptr %3, align 8
  %9 = icmp ult i64 %7, %5
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i64, ptr %0, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %13 = add i64 %12, 1
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  store i64 %14, ptr %0, align 8
  br label %15

15:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_shash(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = tail call ptr @crypto_alloc_shash(ptr noundef %0, i32 noundef 0, i32 noundef 0) #10
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.do_shash, ptr noundef %0, i32 noundef %12) #11
  br label %67

14:                                               ; preds = %8
  %15 = load i32, ptr %9, align 64
  %16 = add i32 %15, 8
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %63, label %19

19:                                               ; preds = %14
  store ptr %9, ptr %17, align 64
  %20 = icmp eq i32 %7, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @crypto_shash_setkey(ptr noundef %9, ptr noundef %6, i32 noundef %7) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 64
  br label %28

26:                                               ; preds = %21
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.do_shash, ptr noundef %0) #11
  br label %63

28:                                               ; preds = %24, %19
  %29 = phi ptr [ %25, %24 ], [ %9, %19 ]
  %30 = getelementptr inbounds %struct.crypto_shash, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 64
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.crypto_shash, ptr %29, i32 0, i32 2, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 -128
  %38 = load ptr, ptr %37, align 64
  %39 = tail call i32 %38(ptr noundef nonnull %17) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34, %28
  %42 = phi i32 [ %39, %34 ], [ -126, %28 ]
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.do_shash, ptr noundef %0) #11
  br label %63

44:                                               ; preds = %34
  %45 = tail call i32 @crypto_shash_update(ptr noundef nonnull %17, ptr noundef %2, i32 noundef %3) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.do_shash) #11
  br label %63

49:                                               ; preds = %44
  %50 = icmp ne ptr %4, null
  %51 = icmp ne i32 %5, 0
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = tail call i32 @crypto_shash_update(ptr noundef nonnull %17, ptr noundef nonnull %4, i32 noundef %5) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.do_shash) #11
  br label %63

58:                                               ; preds = %53, %49
  %59 = tail call i32 @crypto_shash_final(ptr noundef nonnull %17, ptr noundef %1) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.do_shash, ptr noundef %0) #11
  br label %63

63:                                               ; preds = %61, %58, %56, %47, %41, %26, %14
  %64 = phi ptr [ %17, %26 ], [ %17, %41 ], [ %17, %47 ], [ %17, %56 ], [ %17, %61 ], [ %17, %58 ], [ null, %14 ]
  %65 = phi i32 [ %22, %26 ], [ %42, %41 ], [ %45, %47 ], [ %54, %56 ], [ %59, %61 ], [ 0, %58 ], [ -12, %14 ]
  %66 = getelementptr inbounds %struct.crypto_shash, ptr %9, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %9, ptr noundef %66) #10
  tail call void @kfree(ptr noundef %64) #10
  br label %67

67:                                               ; preds = %63, %11
  %68 = phi i32 [ %12, %11 ], [ %65, %63 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @spu_alg_name(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  switch i32 %0, label %9 [
    i32 1, label %19
    i32 4, label %3
    i32 2, label %5
    i32 3, label %7
  ]

3:                                                ; preds = %2
  %4 = icmp ult i32 %1, 8
  br i1 %4, label %10, label %19

5:                                                ; preds = %2
  %6 = icmp ult i32 %1, 5
  br i1 %6, label %13, label %19

7:                                                ; preds = %2
  %8 = icmp ult i32 %1, 5
  br i1 %8, label %16, label %19

9:                                                ; preds = %2
  br label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds [8 x ptr], ptr @switch.table.spu_debugfs_read, i32 0, i32 %1
  %12 = load ptr, ptr %11, align 4
  br label %19

13:                                               ; preds = %5
  %14 = getelementptr inbounds [5 x ptr], ptr @switch.table.spu_debugfs_read.47, i32 0, i32 %1
  %15 = load ptr, ptr %14, align 4
  br label %19

16:                                               ; preds = %7
  %17 = getelementptr inbounds [5 x ptr], ptr @switch.table.spu_debugfs_read.48, i32 0, i32 %1
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %13, %10, %9, %7, %5, %3, %2
  %20 = phi ptr [ @.str.25, %9 ], [ @.str.8, %2 ], [ %12, %10 ], [ @.str.16, %3 ], [ %15, %13 ], [ @.str.20, %5 ], [ %18, %16 ], [ @.str.24, %7 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spu_setup_debugfs() local_unnamed_addr #0 {
  %1 = tail call zeroext i1 @debugfs_initialized() #10
  br i1 %1, label %2, label %13

2:                                                ; preds = %0
  %3 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.26, ptr noundef null) #10
  store ptr %6, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6), align 4
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %9 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 7), align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 256, ptr noundef %8, ptr noundef nonnull @iproc_priv, ptr noundef nonnull @spu_debugfs_stats) #10
  br label %13

13:                                               ; preds = %11, %7, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spu_free_debugfs() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6), align 4
  tail call void @debugfs_remove(ptr noundef %1) #10
  store ptr null, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @format_value_ccm(i32 noundef %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #6 {
  %4 = zext i8 %2 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %4, i1 false)
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = trunc i32 %0 to i8
  %8 = add nsw i32 %4, -1
  %9 = getelementptr i8, ptr %1, i32 %8
  store i8 %7, ptr %9, align 1
  %10 = icmp eq i8 %2, 1
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = lshr i32 %0, 8
  %13 = trunc i32 %12 to i8
  %14 = add nsw i32 %4, -2
  %15 = getelementptr i8, ptr %1, i32 %14
  store i8 %13, ptr %15, align 1
  %16 = icmp eq i8 %2, 2
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = lshr i32 %0, 16
  %19 = trunc i32 %18 to i8
  %20 = add nsw i32 %4, -3
  %21 = getelementptr i8, ptr %1, i32 %20
  store i8 %19, ptr %21, align 1
  %22 = icmp eq i8 %2, 3
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = lshr i32 %0, 24
  %25 = trunc i32 %24 to i8
  %26 = add nsw i32 %4, -4
  %27 = getelementptr i8, ptr %1, i32 %26
  store i8 %25, ptr %27, align 1
  br label %28

28:                                               ; preds = %23, %17, %11, %6, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spu_debugfs_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 2048) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %232, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.bcm_device_private, ptr %10, i32 0, i32 1, i32 23
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %6, i32 noundef 2048, ptr noundef nonnull @.str.28, i32 noundef %12) #10
  %14 = getelementptr i8, ptr %6, i32 %13
  %15 = sub i32 2048, %13
  %16 = getelementptr inbounds %struct.bcm_device_private, ptr %10, i32 0, i32 2
  %17 = load volatile i32, ptr %16, align 4
  %18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %14, i32 noundef %15, ptr noundef nonnull @.str.29, i32 noundef %17) #10
  %19 = add i32 %18, %13
  %20 = getelementptr i8, ptr %6, i32 %19
  %21 = sub i32 2048, %19
  %22 = getelementptr inbounds %struct.bcm_device_private, ptr %10, i32 0, i32 3
  %23 = load volatile i32, ptr %22, align 4
  %24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %20, i32 noundef %21, ptr noundef nonnull @.str.30, i32 noundef %23) #10
  %25 = add i32 %24, %19
  %26 = getelementptr i8, ptr %6, i32 %25
  %27 = sub i32 2048, %25
  %28 = getelementptr inbounds %struct.bcm_device_private, ptr %10, i32 0, i32 15
  %29 = load volatile i32, ptr %28, align 4
  %30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %26, i32 noundef %27, ptr noundef nonnull @.str.31, i32 noundef %29) #10
  %31 = add i32 %30, %25
  %32 = getelementptr i8, ptr %6, i32 %31
  %33 = sub i32 2048, %31
  %34 = getelementptr inbounds %struct.bcm_device_private, ptr %10, i32 0, i32 10
  %35 = load volatile i32, ptr %34, align 4
  %36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %32, i32 noundef %33, ptr noundef nonnull @.str.32, i32 noundef %35) #10
  %37 = add i32 %36, %31
  br label %38

38:                                               ; preds = %74, %8
  %39 = phi i32 [ 0, %8 ], [ %75, %74 ]
  %40 = phi i32 [ %37, %8 ], [ %71, %74 ]
  br label %41

41:                                               ; preds = %70, %38
  %42 = phi i32 [ 0, %38 ], [ %72, %70 ]
  %43 = phi i32 [ %40, %38 ], [ %71, %70 ]
  %44 = getelementptr %struct.bcm_device_private, ptr %10, i32 0, i32 11, i32 %39, i32 %42
  %45 = load volatile i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %41
  %48 = getelementptr i8, ptr %6, i32 %43
  %49 = sub i32 2048, %43
  switch i32 %39, label %56 [
    i32 1, label %66
    i32 4, label %50
    i32 2, label %52
    i32 3, label %54
  ]

50:                                               ; preds = %47
  %51 = icmp ult i32 %42, 8
  br i1 %51, label %57, label %66

52:                                               ; preds = %47
  %53 = icmp ult i32 %42, 5
  br i1 %53, label %60, label %66

54:                                               ; preds = %47
  %55 = icmp ult i32 %42, 5
  br i1 %55, label %63, label %66

56:                                               ; preds = %47
  br label %66

57:                                               ; preds = %50
  %58 = getelementptr inbounds [8 x ptr], ptr @switch.table.spu_debugfs_read, i32 0, i32 %42
  %59 = load ptr, ptr %58, align 4
  br label %66

60:                                               ; preds = %52
  %61 = getelementptr inbounds [5 x ptr], ptr @switch.table.spu_debugfs_read.47, i32 0, i32 %42
  %62 = load ptr, ptr %61, align 4
  br label %66

63:                                               ; preds = %54
  %64 = getelementptr inbounds [5 x ptr], ptr @switch.table.spu_debugfs_read.48, i32 0, i32 %42
  %65 = load ptr, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %60, %57, %56, %54, %52, %50, %47
  %67 = phi ptr [ @.str.25, %56 ], [ @.str.8, %47 ], [ %59, %57 ], [ @.str.16, %50 ], [ %62, %60 ], [ @.str.20, %52 ], [ %65, %63 ], [ @.str.24, %54 ]
  %68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %48, i32 noundef %49, ptr noundef nonnull @.str.33, ptr noundef nonnull %67, i32 noundef %45) #10
  %69 = add i32 %68, %43
  br label %70

70:                                               ; preds = %66, %41
  %71 = phi i32 [ %69, %66 ], [ %43, %41 ]
  %72 = add nuw nsw i32 %42, 1
  %73 = icmp eq i32 %72, 8
  br i1 %73, label %74, label %41

74:                                               ; preds = %70
  %75 = add nuw nsw i32 %39, 1
  %76 = icmp eq i32 %75, 5
  br i1 %76, label %77, label %38

77:                                               ; preds = %74
  %78 = getelementptr i8, ptr %6, i32 %71
  %79 = sub i32 2048, %71
  %80 = getelementptr %struct.bcm_device_private, ptr %10, i32 0, i32 10, i32 1
  %81 = load volatile i32, ptr %80, align 4
  %82 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %78, i32 noundef %79, ptr noundef nonnull @.str.34, i32 noundef %81) #10
  %83 = add i32 %82, %71
  br label %84

84:                                               ; preds = %97, %77
  %85 = phi i32 [ 0, %77 ], [ %99, %97 ]
  %86 = phi i32 [ %83, %77 ], [ %98, %97 ]
  %87 = getelementptr %struct.bcm_device_private, ptr %10, i32 0, i32 12, i32 %85
  %88 = load volatile i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %84
  %91 = getelementptr i8, ptr %6, i32 %86
  %92 = sub i32 2048, %86
  %93 = getelementptr [12 x ptr], ptr @hash_alg_name, i32 0, i32 %85
  %94 = load ptr, ptr %93, align 4
  %95 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %91, i32 noundef %92, ptr noundef nonnull @.str.33, ptr noundef %94, i32 noundef %88) #10
  %96 = add i32 %95, %86
  br label %97

97:                                               ; preds = %90, %84
  %98 = phi i32 [ %96, %90 ], [ %86, %84 ]
  %99 = add nuw nsw i32 %85, 1
  %100 = icmp eq i32 %99, 12
  br i1 %100, label %101, label %84

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %6, i32 %98
  %103 = sub i32 2048, %98
  %104 = getelementptr %struct.bcm_device_private, ptr %10, i32 0, i32 15, i32 2
  %105 = load volatile i32, ptr %104, align 4
  %106 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %102, i32 noundef %103, ptr noundef nonnull @.str.35, i32 noundef %105) #10
  %107 = add i32 %106, %98
  %108 = getelementptr i8, ptr %6, i32 %107
  %109 = sub i32 2048, %107
  %110 = getelementptr %struct.bcm_device_private, ptr %10, i32 0, i32 10, i32 2
  %111 = load volatile i32, ptr %110, align 4
  %112 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %108, i32 noundef %109, ptr noundef nonnull @.str.36, i32 noundef %111) #10
  %113 = add i32 %112, %107
  br label %114

114:                                              ; preds = %127, %101
  %115 = phi i32 [ 0, %101 ], [ %129, %127 ]
  %116 = phi i32 [ %113, %101 ], [ %128, %127 ]
  %117 = getelementptr %struct.bcm_device_private, ptr %10, i32 0, i32 13, i32 %115
  %118 = load volatile i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %114
  %121 = getelementptr i8, ptr %6, i32 %116
  %122 = sub i32 2048, %116
  %123 = getelementptr [12 x ptr], ptr @hash_alg_name, i32 0, i32 %115
  %124 = load ptr, ptr %123, align 4
  %125 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %121, i32 noundef %122, ptr noundef nonnull @.str.33, ptr noundef %124, i32 noundef %118) #10
  %126 = add i32 %125, %116
  br label %127

127:                                              ; preds = %120, %114
  %128 = phi i32 [ %126, %120 ], [ %116, %114 ]
  %129 = add nuw nsw i32 %115, 1
  %130 = icmp eq i32 %129, 12
  br i1 %130, label %131, label %114

131:                                              ; preds = %127
  %132 = getelementptr i8, ptr %6, i32 %128
  %133 = sub i32 2048, %128
  %134 = getelementptr %struct.bcm_device_private, ptr %10, i32 0, i32 15, i32 3
  %135 = load volatile i32, ptr %134, align 4
  %136 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %132, i32 noundef %133, ptr noundef nonnull @.str.37, i32 noundef %135) #10
  %137 = add i32 %136, %128
  %138 = getelementptr i8, ptr %6, i32 %137
  %139 = sub i32 2048, %137
  %140 = getelementptr %struct.bcm_device_private, ptr %10, i32 0, i32 10, i32 3
  %141 = load volatile i32, ptr %140, align 4
  %142 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %138, i32 noundef %139, ptr noundef nonnull @.str.38, i32 noundef %141) #10
  %143 = add i32 %142, %137
  %144 = getelementptr %struct.bcm_device_private, ptr %10, i32 0, i32 14, i32 0
  %145 = load volatile i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %131
  %148 = getelementptr i8, ptr %6, i32 %143
  %149 = sub i32 2048, %143
  %150 = load ptr, ptr @aead_alg_name, align 4
  %151 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %148, i32 noundef %149, ptr noundef nonnull @.str.33, ptr noundef %150, i32 noundef %145) #10
  %152 = add i32 %151, %143
  br label %153

153:                                              ; preds = %147, %131
  %154 = phi i32 [ %152, %147 ], [ %143, %131 ]
  %155 = getelementptr %struct.bcm_device_private, ptr %10, i32 0, i32 14, i32 1
  %156 = load volatile i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %153
  %159 = getelementptr i8, ptr %6, i32 %154
  %160 = sub i32 2048, %154
  %161 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @aead_alg_name, i32 0, i32 1), align 4
  %162 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %159, i32 noundef %160, ptr noundef nonnull @.str.33, ptr noundef %161, i32 noundef %156) #10
  %163 = add i32 %162, %154
  br label %164

164:                                              ; preds = %158, %153
  %165 = phi i32 [ %163, %158 ], [ %154, %153 ]
  %166 = getelementptr %struct.bcm_device_private, ptr %10, i32 0, i32 14, i32 2
  %167 = load volatile i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %164
  %170 = getelementptr i8, ptr %6, i32 %165
  %171 = sub i32 2048, %165
  %172 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @aead_alg_name, i32 0, i32 2), align 4
  %173 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %170, i32 noundef %171, ptr noundef nonnull @.str.33, ptr noundef %172, i32 noundef %167) #10
  %174 = add i32 %173, %165
  br label %175

175:                                              ; preds = %169, %164
  %176 = phi i32 [ %174, %169 ], [ %165, %164 ]
  %177 = getelementptr i8, ptr %6, i32 %176
  %178 = sub i32 2048, %176
  %179 = getelementptr inbounds %struct.bcm_device_private, ptr %10, i32 0, i32 9
  %180 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %179, ptr elementtype(i64) %179) #10, !srcloc !10
  %181 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %177, i32 noundef %178, ptr noundef nonnull @.str.39, i64 noundef %180) #10
  %182 = add i32 %181, %176
  %183 = getelementptr i8, ptr %6, i32 %182
  %184 = sub i32 2048, %182
  %185 = getelementptr inbounds %struct.bcm_device_private, ptr %10, i32 0, i32 8
  %186 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %185, ptr elementtype(i64) %185) #10, !srcloc !10
  %187 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %183, i32 noundef %184, ptr noundef nonnull @.str.40, i64 noundef %186) #10
  %188 = add i32 %187, %182
  %189 = getelementptr i8, ptr %6, i32 %188
  %190 = sub i32 2048, %188
  %191 = getelementptr inbounds %struct.bcm_device_private, ptr %10, i32 0, i32 16
  %192 = load volatile i32, ptr %191, align 4
  %193 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %189, i32 noundef %190, ptr noundef nonnull @.str.41, i32 noundef %192) #10
  %194 = add i32 %193, %188
  %195 = getelementptr i8, ptr %6, i32 %194
  %196 = sub i32 2048, %194
  %197 = getelementptr inbounds %struct.bcm_device_private, ptr %10, i32 0, i32 17
  %198 = load volatile i32, ptr %197, align 4
  %199 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %195, i32 noundef %196, ptr noundef nonnull @.str.42, i32 noundef %198) #10
  %200 = add i32 %199, %194
  %201 = getelementptr i8, ptr %6, i32 %200
  %202 = sub i32 2048, %200
  %203 = getelementptr inbounds %struct.bcm_device_private, ptr %10, i32 0, i32 18
  %204 = load volatile i32, ptr %203, align 4
  %205 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %201, i32 noundef %202, ptr noundef nonnull @.str.43, i32 noundef %204) #10
  %206 = add i32 %205, %200
  %207 = getelementptr inbounds %struct.bcm_device_private, ptr %10, i32 0, i32 1, i32 21
  %208 = load i32, ptr %207, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %228

210:                                              ; preds = %175
  %211 = load i32, ptr %11, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %228, label %213

213:                                              ; preds = %213, %210
  %214 = phi i32 [ %225, %213 ], [ 0, %210 ]
  %215 = phi i32 [ %224, %213 ], [ %206, %210 ]
  %216 = getelementptr %struct.bcm_device_private, ptr %10, i32 0, i32 1, i32 20, i32 %214
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr i8, ptr %217, i32 64
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %220 = and i32 %219, 511
  %221 = getelementptr i8, ptr %6, i32 %215
  %222 = sub i32 2048, %215
  %223 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %221, i32 noundef %222, ptr noundef nonnull @.str.44, i32 noundef %214, i32 noundef %220) #10
  %224 = add i32 %223, %215
  %225 = add nuw i32 %214, 1
  %226 = load i32, ptr %11, align 4
  %227 = icmp ult i32 %225, %226
  br i1 %227, label %213, label %228

228:                                              ; preds = %213, %210, %175
  %229 = phi i32 [ %206, %175 ], [ %206, %210 ], [ %224, %213 ]
  %230 = tail call i32 @llvm.smin.i32(i32 %229, i32 2048)
  %231 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %6, i32 noundef %230) #10
  tail call void @kfree(ptr noundef nonnull %6) #10
  br label %232

232:                                              ; preds = %228, %4
  %233 = phi i32 [ %231, %228 ], [ -12, %4 ]
  ret i32 %233
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.peeled.count", i32 1}
!10 = !{i64 841248, i64 841269}
!11 = !{i64 4587034}
!12 = !{i64 2152126487}
