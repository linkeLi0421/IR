; ModuleID = '/llk/IR/drivers/crypto/amlogic/amlogic-gxl-cipher.c_pt.bc'
source_filename = "../drivers/crypto/amlogic/amlogic-gxl-cipher.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.meson_dev = type { ptr, ptr, ptr, ptr, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.meson_flow = type { ptr, %struct.completion, i32, i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.65, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.65 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.3, %union.anon.18, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.18 = type { %struct.atomic_t }
%struct.meson_desc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"ERROR: Cannot allocate fallback for %s %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid ivsize=%d vs len=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Cannot DMA MAP KEY IV\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid SG count %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"DMA timeout for flow %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @meson_skdecrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 0, ptr %4, align 64
  %5 = tail call fastcc zeroext i1 @meson_cipher_need_fallback(ptr noundef %0)
  br i1 %5, label %6, label %38

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 16
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2
  %9 = getelementptr i8, ptr %7, i32 92
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_skcipher, ptr %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 3
  store ptr %11, ptr %12, align 16
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 1
  store ptr %16, ptr %19, align 8
  %20 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 2
  store ptr %18, ptr %20, align 4
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 4
  store i32 %14, ptr %21, align 4
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %0, align 64
  %27 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 2
  store ptr %23, ptr %29, align 8
  %30 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 3
  store ptr %25, ptr %30, align 4
  store i32 %26, ptr %8, align 64
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 1
  store ptr %28, ptr %31, align 4
  %32 = load i32, ptr %4, align 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %8) #8
  br label %52

36:                                               ; preds = %6
  %37 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %8) #8
  br label %52

38:                                               ; preds = %1
  %39 = getelementptr i8, ptr %3, i32 88
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.meson_dev, ptr %40, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #8, !srcloc !9
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #8, !srcloc !10
  %43 = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %44 = srem i32 %43, 2
  %45 = load ptr, ptr %39, align 4
  %46 = getelementptr inbounds %struct.meson_dev, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr %struct.meson_flow, ptr %47, i32 %44
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  store i32 %44, ptr %50, align 4
  %51 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %49, ptr noundef %0) #8
  br label %52

52:                                               ; preds = %38, %36, %34
  %53 = phi i32 [ %51, %38 ], [ %35, %34 ], [ %37, %36 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @meson_cipher_need_fallback(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @sg_nents(ptr noundef %3) #8
  %10 = tail call i32 @sg_nents(ptr noundef %5) #8
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %8
  %13 = tail call i32 @sg_nents(ptr noundef %3) #8
  %14 = icmp sgt i32 %13, 61
  br i1 %14, label %52, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @sg_nents(ptr noundef %5) #8
  %17 = icmp sgt i32 %16, 61
  br i1 %17, label %52, label %18

18:                                               ; preds = %15
  %19 = icmp ne ptr %3, null
  %20 = icmp ne ptr %5, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %52

22:                                               ; preds = %46, %18
  %23 = phi ptr [ %48, %46 ], [ %5, %18 ]
  %24 = phi ptr [ %47, %46 ], [ %3, %18 ]
  %25 = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 15
  %33 = icmp eq i32 %32, 0
  %34 = icmp eq i32 %26, %31
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = tail call ptr @sg_next(ptr noundef nonnull %24) #8
  %48 = tail call ptr @sg_next(ptr noundef nonnull %23) #8
  %49 = icmp ne ptr %47, null
  %50 = icmp ne ptr %48, null
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %22, label %52

52:                                               ; preds = %46, %41, %36, %29, %22, %18, %15, %12, %8, %1
  %53 = phi i1 [ true, %1 ], [ true, %8 ], [ true, %15 ], [ true, %12 ], [ false, %18 ], [ true, %22 ], [ true, %29 ], [ true, %36 ], [ true, %41 ], [ false, %46 ]
  ret i1 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @meson_skencrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  store i32 1, ptr %4, align 64
  %5 = tail call fastcc zeroext i1 @meson_cipher_need_fallback(ptr noundef %0)
  br i1 %5, label %6, label %38

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 16
  %8 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2
  %9 = getelementptr i8, ptr %7, i32 92
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.crypto_skcipher, ptr %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 3
  store ptr %11, ptr %12, align 16
  %13 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 1
  store ptr %16, ptr %19, align 8
  %20 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 2
  store ptr %18, ptr %20, align 4
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 4
  store i32 %14, ptr %21, align 4
  %22 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %0, align 64
  %27 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 2
  store ptr %23, ptr %29, align 8
  %30 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 3
  store ptr %25, ptr %30, align 4
  store i32 %26, ptr %8, align 64
  %31 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 1
  store ptr %28, ptr %31, align 4
  %32 = load i32, ptr %4, align 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %8) #8
  br label %52

36:                                               ; preds = %6
  %37 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %8) #8
  br label %52

38:                                               ; preds = %1
  %39 = getelementptr i8, ptr %3, i32 88
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.meson_dev, ptr %40, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #8, !srcloc !9
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #8, !srcloc !10
  %43 = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %44 = srem i32 %43, 2
  %45 = load ptr, ptr %39, align 4
  %46 = getelementptr inbounds %struct.meson_dev, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr %struct.meson_flow, ptr %47, i32 %44
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 1, i32 1
  store i32 %44, ptr %50, align 4
  %51 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %49, ptr noundef %0) #8
  br label %52

52:                                               ; preds = %38, %36, %34
  %53 = phi i32 [ %51, %38 ], [ %35, %34 ], [ %37, %36 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @meson_cipher_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = getelementptr %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  %6 = getelementptr i8, ptr %4, i32 384
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 8
  store ptr %7, ptr %8, align 4
  %9 = tail call ptr @crypto_alloc_skcipher(ptr noundef %5, i32 noundef 0, i32 noundef 256) #8
  %10 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 12
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.meson_dev, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef %5, i32 noundef %16) #9
  %17 = load ptr, ptr %10, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %25

19:                                               ; preds = %1
  %20 = getelementptr i8, ptr %0, i32 -64
  %21 = load i32, ptr %9, align 64
  %22 = add i32 %21, 128
  store i32 %22, ptr %20, align 64
  %23 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 2
  store ptr @meson_handle_cipher_request, ptr %23, align 4
  store ptr null, ptr %2, align 4
  %24 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 1
  store ptr null, ptr %24, align 4
  br label %25

25:                                               ; preds = %19, %12
  %26 = phi i32 [ %18, %12 ], [ 0, %19 ]
  ret i32 %26
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_handle_cipher_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -16
  %4 = getelementptr i8, ptr %1, i32 16
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr i8, ptr %1, i32 48
  %7 = getelementptr i8, ptr %5, i32 88
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %5, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %1, i32 52
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %1, i32 -8
  %14 = getelementptr i8, ptr %1, i32 -4
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 2, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3521, i32 noundef 48) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %223, label %18

18:                                               ; preds = %2
  %19 = getelementptr i8, ptr %5, i32 76
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %5, i32 80
  %22 = load i32, ptr %21, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %16, ptr align 4 %20, i32 %22, i1 false) #8
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr i8, ptr %23, i32 -36
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %1, i32 -12
  %27 = load ptr, ptr %26, align 4
  %28 = icmp ne ptr %27, null
  %29 = icmp ne i32 %25, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %48

31:                                               ; preds = %18
  %32 = load i32, ptr %3, align 64
  %33 = icmp ugt i32 %25, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.meson_dev, ptr %8, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.1, i32 noundef %25, i32 noundef %32) #9
  br label %220

37:                                               ; preds = %31
  %38 = getelementptr i8, ptr %16, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %38, ptr nonnull align 1 %27, i32 %25, i1 false) #8
  %39 = load i32, ptr %6, align 64
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %220, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %3, align 64
  %46 = sub i32 %45, %25
  %47 = load ptr, ptr %13, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef nonnull %42, ptr noundef %47, i32 noundef %46, i32 noundef %25, i32 noundef 0) #8
  br label %52

48:                                               ; preds = %18
  %49 = load i32, ptr %21, align 4
  %50 = icmp eq i32 %49, 24
  %51 = select i1 %50, i32 32, i32 %49
  br label %52

52:                                               ; preds = %48, %44, %37
  %53 = phi ptr [ null, %37 ], [ %42, %44 ], [ null, %48 ]
  %54 = phi i32 [ 48, %37 ], [ 48, %44 ], [ %51, %48 ]
  %55 = getelementptr inbounds %struct.meson_dev, ptr %8, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %16) #8
  %58 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %59 = xor i1 %58, true
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %70, !prof !12

61:                                               ; preds = %52
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %62 = tail call ptr @dev_driver_string(ptr noundef %56) #8
  %63 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load ptr, ptr %56, align 4
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi ptr [ %67, %66 ], [ %64, %61 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %62, ptr noundef %69) #8
  br label %70

70:                                               ; preds = %68, %52
  br i1 %57, label %84, label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr @mem_map, align 4
  %73 = ptrtoint ptr %16 to i32
  %74 = add i32 %73, 1073741824
  %75 = lshr i32 %74, 12
  %76 = getelementptr %struct.page, ptr %72, i32 %75
  %77 = and i32 %73, 4088
  %78 = tail call i32 @dma_map_page_attrs(ptr noundef %56, ptr noundef %76, i32 noundef %77, i32 noundef %54, i32 noundef 1, i32 noundef 0) #8
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %84, label %80

80:                                               ; preds = %71
  %81 = icmp eq i32 %54, 0
  br i1 %81, label %103, label %82

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.meson_dev, ptr %8, i32 0, i32 3
  br label %86

84:                                               ; preds = %71, %70
  %85 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.2) #9
  br label %220

86:                                               ; preds = %86, %82
  %87 = phi i32 [ 0, %82 ], [ %101, %86 ]
  %88 = phi i32 [ 0, %82 ], [ %100, %86 ]
  %89 = load ptr, ptr %83, align 4
  %90 = getelementptr %struct.meson_flow, ptr %89, i32 %12, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr %struct.meson_desc, ptr %91, i32 %87
  %93 = getelementptr inbounds i8, ptr %92, i32 4
  store i64 0, ptr %93, align 4
  %94 = sub i32 %54, %88
  %95 = tail call i32 @llvm.umin.i32(i32 %94, i32 16) #8
  %96 = shl i32 %87, 4
  %97 = add i32 %96, %78
  %98 = getelementptr %struct.meson_desc, ptr %91, i32 %87, i32 1
  store i32 %97, ptr %98, align 4
  %99 = getelementptr %struct.meson_desc, ptr %91, i32 %87, i32 2
  store i32 %96, ptr %99, align 4
  store i32 -2146435056, ptr %92, align 4
  %100 = add i32 %95, %88
  %101 = add i32 %87, 1
  %102 = icmp ugt i32 %54, %100
  br i1 %102, label %86, label %103

103:                                              ; preds = %86, %80
  %104 = phi i32 [ 0, %80 ], [ %101, %86 ]
  %105 = load ptr, ptr %13, align 8
  %106 = load ptr, ptr %14, align 4
  %107 = icmp eq ptr %105, %106
  %108 = load ptr, ptr %55, align 4
  %109 = tail call i32 @sg_nents(ptr noundef %105) #8
  br i1 %107, label %110, label %115

110:                                              ; preds = %103
  %111 = tail call i32 @dma_map_sg_attrs(ptr noundef %108, ptr noundef %105, i32 noundef %109, i32 noundef 0, i32 noundef 0) #8
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.3, i32 noundef %111) #9
  br label %220

115:                                              ; preds = %103
  %116 = tail call i32 @dma_map_sg_attrs(ptr noundef %108, ptr noundef %105, i32 noundef %109, i32 noundef 1, i32 noundef 0) #8
  %117 = icmp ugt i32 %116, 61
  %118 = load ptr, ptr %55, align 4
  br i1 %117, label %119, label %120

119:                                              ; preds = %115
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.3, i32 noundef %116) #9
  br label %220

120:                                              ; preds = %115
  %121 = load ptr, ptr %14, align 4
  %122 = tail call i32 @sg_nents(ptr noundef %121) #8
  %123 = tail call i32 @dma_map_sg_attrs(ptr noundef %118, ptr noundef %121, i32 noundef %122, i32 noundef 2, i32 noundef 0) #8
  %124 = icmp ugt i32 %123, 61
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.3, i32 noundef %123) #9
  br label %220

127:                                              ; preds = %120, %110
  %128 = load ptr, ptr %13, align 8
  %129 = icmp eq ptr %128, null
  br i1 %129, label %173, label %130

130:                                              ; preds = %127
  %131 = load i32, ptr %3, align 64
  %132 = load ptr, ptr %14, align 4
  %133 = getelementptr inbounds %struct.meson_dev, ptr %8, i32 0, i32 3
  %134 = getelementptr i8, ptr %5, i32 84
  %135 = getelementptr i8, ptr %10, i32 -124
  br label %136

136:                                              ; preds = %136, %130
  %137 = phi i32 [ %104, %130 ], [ %169, %136 ]
  %138 = phi ptr [ %132, %130 ], [ %171, %136 ]
  %139 = phi ptr [ %128, %130 ], [ %170, %136 ]
  %140 = phi i32 [ %131, %130 ], [ %164, %136 ]
  %141 = load ptr, ptr %133, align 4
  %142 = getelementptr %struct.meson_flow, ptr %141, i32 %12, i32 5
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr %struct.meson_desc, ptr %143, i32 %137
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %144, i8 0, i32 12, i1 false) #8
  %145 = getelementptr inbounds %struct.scatterlist, ptr %139, i32 0, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr %struct.meson_desc, ptr %143, i32 %137, i32 1
  store i32 %146, ptr %147, align 4
  %148 = getelementptr inbounds %struct.scatterlist, ptr %138, i32 0, i32 3
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr %struct.meson_desc, ptr %143, i32 %137, i32 2
  store i32 %149, ptr %150, align 4
  %151 = getelementptr inbounds %struct.scatterlist, ptr %139, i32 0, i32 4
  %152 = load i32, ptr %151, align 4
  %153 = tail call i32 @llvm.umin.i32(i32 %140, i32 %152) #8
  %154 = load i32, ptr %134, align 4
  %155 = shl i32 %154, 20
  %156 = or i32 %155, %153
  %157 = load i32, ptr %135, align 4
  %158 = shl i32 %157, 26
  %159 = or i32 %156, %158
  %160 = load i32, ptr %6, align 64
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %161, i32 -2147483648, i32 -1879048192
  %163 = or i32 %159, %162
  %164 = sub i32 %140, %153
  %165 = tail call ptr @sg_next(ptr noundef nonnull %139) #8
  %166 = icmp eq ptr %165, null
  %167 = or i32 %163, 262144
  %168 = select i1 %166, i32 %167, i32 %163
  store i32 %168, ptr %144, align 4
  %169 = add i32 %137, 1
  %170 = tail call ptr @sg_next(ptr noundef nonnull %139) #8
  %171 = tail call ptr @sg_next(ptr noundef %138) #8
  %172 = icmp eq ptr %170, null
  br i1 %172, label %173, label %136

173:                                              ; preds = %136, %127
  %174 = getelementptr inbounds %struct.meson_dev, ptr %8, i32 0, i32 3
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr %struct.meson_flow, ptr %175, i32 %12, i32 1
  store i32 0, ptr %176, align 4
  %177 = load ptr, ptr %174, align 4
  %178 = getelementptr %struct.meson_flow, ptr %177, i32 %12, i32 2
  store i32 0, ptr %178, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %179 = load ptr, ptr %174, align 4
  %180 = getelementptr %struct.meson_flow, ptr %179, i32 %12, i32 4
  %181 = load i32, ptr %180, align 4
  %182 = or i32 %181, 2
  %183 = load ptr, ptr %8, align 4
  %184 = shl i32 %12, 2
  %185 = getelementptr i8, ptr %183, i32 %184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %182) #8, !srcloc !14
  %186 = load ptr, ptr %174, align 4
  %187 = getelementptr %struct.meson_flow, ptr %186, i32 %12, i32 1
  %188 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %187, i32 noundef 50) #8
  %189 = load ptr, ptr %174, align 4
  %190 = getelementptr %struct.meson_flow, ptr %189, i32 %12, i32 2
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %173
  %194 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %194, ptr noundef nonnull @.str.4, i32 noundef %12) #9
  br label %195

195:                                              ; preds = %193, %173
  %196 = phi i32 [ -22, %193 ], [ 0, %173 ]
  %197 = load ptr, ptr %55, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %197, i32 noundef %78, i32 noundef %54, i32 noundef 1, i32 noundef 0) #8
  %198 = load ptr, ptr %13, align 8
  %199 = load ptr, ptr %14, align 4
  %200 = icmp eq ptr %198, %199
  %201 = load ptr, ptr %55, align 4
  %202 = tail call i32 @sg_nents(ptr noundef %198) #8
  br i1 %200, label %203, label %204

203:                                              ; preds = %195
  tail call void @dma_unmap_sg_attrs(ptr noundef %201, ptr noundef %198, i32 noundef %202, i32 noundef 0, i32 noundef 0) #8
  br label %208

204:                                              ; preds = %195
  tail call void @dma_unmap_sg_attrs(ptr noundef %201, ptr noundef %198, i32 noundef %202, i32 noundef 1, i32 noundef 0) #8
  %205 = load ptr, ptr %55, align 4
  %206 = load ptr, ptr %14, align 4
  %207 = tail call i32 @sg_nents(ptr noundef %206) #8
  tail call void @dma_unmap_sg_attrs(ptr noundef %205, ptr noundef %206, i32 noundef %207, i32 noundef 2, i32 noundef 0) #8
  br label %208

208:                                              ; preds = %204, %203
  %209 = load ptr, ptr %26, align 4
  %210 = icmp ne ptr %209, null
  %211 = select i1 %210, i1 %29, i1 false
  br i1 %211, label %212, label %220

212:                                              ; preds = %208
  %213 = load i32, ptr %6, align 64
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %209, ptr align 64 %53, i32 %25, i1 false) #8
  br label %220

216:                                              ; preds = %212
  %217 = load ptr, ptr %14, align 4
  %218 = load i32, ptr %3, align 64
  %219 = sub i32 %218, %25
  tail call void @scatterwalk_map_and_copy(ptr noundef nonnull %209, ptr noundef %217, i32 noundef %219, i32 noundef %25, i32 noundef 0) #8
  br label %220

220:                                              ; preds = %216, %215, %208, %125, %119, %113, %84, %41, %34
  %221 = phi i32 [ -22, %34 ], [ -12, %84 ], [ -22, %113 ], [ %196, %215 ], [ %196, %216 ], [ %196, %208 ], [ -22, %119 ], [ -22, %125 ], [ -12, %41 ]
  %222 = phi ptr [ null, %34 ], [ %53, %84 ], [ %53, %113 ], [ %53, %215 ], [ %53, %216 ], [ %53, %208 ], [ %53, %119 ], [ %53, %125 ], [ null, %41 ]
  tail call void @kfree_sensitive(ptr noundef nonnull %16) #8
  tail call void @kfree_sensitive(ptr noundef %222) #8
  br label %223

223:                                              ; preds = %220, %2
  %224 = phi i32 [ %221, %220 ], [ -12, %2 ]
  tail call void @crypto_finalize_skcipher_request(ptr noundef %0, ptr noundef %3, i32 noundef %224) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @meson_cipher_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree_sensitive(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %5, ptr noundef %6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @meson_aes_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %2, label %18 [
    i32 16, label %6
    i32 24, label %4
    i32 32, label %5
  ]

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5, %4, %3
  %7 = phi i32 [ 10, %5 ], [ 9, %4 ], [ 8, %3 ]
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 16
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 8
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree_sensitive(ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 12
  store i32 %2, ptr %11, align 4
  %12 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %2, i32 noundef 3265) #8
  store ptr %12, ptr %9, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 24
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @crypto_skcipher_setkey(ptr noundef %16, ptr noundef %1, i32 noundef %2) #8
  br label %18

18:                                               ; preds = %14, %6, %3
  %19 = phi i32 [ %17, %14 ], [ -22, %3 ], [ -12, %6 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_skcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{i64 2147955893}
!9 = !{i64 282804, i64 2147784370, i64 2147784396, i64 2147784443, i64 2147784465, i64 2147784493, i64 2147784513}
!10 = !{i64 2147858755, i64 2147858787, i64 2147858816, i64 2147858850, i64 2147858881, i64 2147858904}
!11 = !{i64 2147956096}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2153082014}
!14 = !{i64 3172251}
