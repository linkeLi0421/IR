; ModuleID = '/llk/IR/drivers/crypto/marvell/cesa/tdma.c_pt.bc'
source_filename = "../drivers/crypto/marvell/cesa/tdma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mv_cesa_sg_dma_iter = type { i32, ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mv_cesa_dma_iter = type { i32, i32, i32 }
%struct.mv_cesa_engine = type { i32, ptr, %union.anon, i32, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, %struct.crypto_queue, %struct.atomic_t, %struct.mv_cesa_tdma_chain, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mv_cesa_tdma_chain = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mv_cesa_req = type { ptr, %struct.mv_cesa_tdma_chain }
%struct.mv_cesa_tdma_desc = type { i32, %union.anon.3, %union.anon.4, i32, i32, ptr, %union.anon.5, i32 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { ptr }
%struct.mv_cesa_dev = type { ptr, ptr, ptr, i32, %struct.spinlock, ptr, ptr }
%struct.mv_cesa_dev_dma = type { ptr, ptr, ptr, ptr }
%struct.mv_cesa_sec_accel_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.mv_cesa_req_ops = type { ptr, ptr, ptr, ptr }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"drivers/crypto/marvell/cesa/tdma.c\00", align 1
@cesa_dev = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @mv_cesa_req_dma_iter_next_transfer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %2
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %2
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.scatterlist, ptr %5, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %7
  %18 = load i32, ptr %5, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  store i32 0, ptr %11, align 4
  %22 = tail call ptr @sg_next(ptr noundef nonnull %5) #8
  store ptr %22, ptr %4, align 4
  %23 = load i32, ptr %8, align 4
  br label %24

24:                                               ; preds = %21, %7
  %25 = phi i32 [ %23, %21 ], [ %10, %7 ]
  %26 = getelementptr inbounds %struct.mv_cesa_dma_iter, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp ne i32 %25, %27
  br label %29

29:                                               ; preds = %24, %17, %3
  %30 = phi i1 [ false, %3 ], [ false, %17 ], [ %28, %24 ]
  ret i1 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mv_cesa_dma_step(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.mv_cesa_engine, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 56840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #8, !srcloc !8
  %6 = getelementptr inbounds %struct.mv_cesa_engine, ptr %2, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 128
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 56868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 128) #8, !srcloc !8
  store i32 128, ptr %6, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 6404) #8, !srcloc !8
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 56840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 10880) #8, !srcloc !8
  %17 = getelementptr inbounds %struct.mv_cesa_req, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %21, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !8
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 56832
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !11

28:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef null) #8
  br label %29

29:                                               ; preds = %28, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr i8, ptr %30, i32 56832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 1) #8, !srcloc !8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mv_cesa_dma_cleanup(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mv_cesa_req, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %21, %1
  %6 = phi ptr [ %23, %21 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %6, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 134217727
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = load ptr, ptr @cesa_dev, align 4
  %13 = getelementptr inbounds %struct.mv_cesa_dev, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %6, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %6, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  tail call void @dma_pool_free(ptr noundef %16, ptr noundef %18, i32 noundef %20) #8
  br label %21

21:                                               ; preds = %11, %5
  %22 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %6, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr @cesa_dev, align 4
  %25 = getelementptr inbounds %struct.mv_cesa_dev, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %6, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  tail call void @dma_pool_free(ptr noundef %27, ptr noundef nonnull %6, i32 noundef %29) #8
  %30 = icmp eq ptr %23, null
  br i1 %30, label %31, label %5

31:                                               ; preds = %21, %1
  store ptr null, ptr %2, align 4
  %32 = getelementptr inbounds %struct.mv_cesa_req, ptr %0, i32 0, i32 1, i32 1
  store ptr null, ptr %32, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mv_cesa_dma_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.mv_cesa_req, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %58, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mv_cesa_engine, ptr %1, i32 0, i32 3
  br label %8

8:                                                ; preds = %54, %6
  %9 = phi ptr [ %4, %6 ], [ %56, %54 ]
  %10 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %9, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %9, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %7, align 4
  %17 = add i32 %16, %15
  store i32 %17, ptr %14, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = and i32 %11, 1073741824
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %9, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %7, align 4
  %25 = add i32 %24, %23
  store i32 %25, ptr %22, align 4
  br label %26

26:                                               ; preds = %21, %18
  %27 = and i32 %11, 134217727
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %54

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %9, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %7, align 4
  %33 = and i32 %32, 2047
  %34 = add nuw nsw i32 %33, 128
  %35 = mul nuw nsw i32 %34, 65537
  %36 = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %31, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = add nuw nsw i32 %33, 32
  %38 = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %31, i32 0, i32 3
  store i32 %37, ptr %38, align 4
  %39 = add nuw nsw i32 %33, 64
  %40 = shl nuw nsw i32 %39, 16
  %41 = or i32 %40, %39
  %42 = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %31, i32 0, i32 4
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %31, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, -65536
  %46 = or i32 %45, %34
  store i32 %46, ptr %43, align 4
  %47 = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %31, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, -65536
  %50 = add nuw nsw i32 %33, 96
  %51 = or i32 %49, %50
  store i32 %51, ptr %47, align 4
  %52 = or i32 %40, %37
  %53 = getelementptr inbounds %struct.mv_cesa_sec_accel_desc, ptr %31, i32 0, i32 7
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %29, %26
  %55 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %9, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %8

58:                                               ; preds = %54, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @mv_cesa_tdma_chain(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 13, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %5, i1 %8, i1 false
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mv_cesa_req, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %3, align 4
  %13 = getelementptr inbounds %struct.mv_cesa_req, ptr %1, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr %14, ptr %6, align 4
  br label %36

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 13, i32 1
  %17 = getelementptr inbounds %struct.mv_cesa_req, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %7, i32 0, i32 5
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mv_cesa_req, ptr %1, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  store ptr %21, ptr %16, align 4
  %22 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %7, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 268435456
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %15
  %27 = load ptr, ptr %17, align 4
  %28 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %27, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 134217728
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %27, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %7, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %32, %26, %15, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_tdma_process(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 2160
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %8 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 4
  %11 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 5
  %12 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 13, i32 1
  %13 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 14
  %14 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 14, i32 1
  br label %15

15:                                               ; preds = %63, %2
  %16 = phi ptr [ %9, %2 ], [ %21, %63 ]
  %17 = phi ptr [ null, %2 ], [ %64, %63 ]
  %18 = icmp eq ptr %16, null
  br i1 %18, label %69, label %19

19:                                               ; preds = %15
  call void @_raw_spin_lock_bh(ptr noundef %10) #8
  %20 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %16, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %10) #8
  %22 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %16, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 536870912
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %63, label %26

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4
  call void @_raw_spin_lock_bh(ptr noundef %10) #8
  %27 = icmp eq ptr %17, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = load ptr, ptr %11, align 4
  br label %32

30:                                               ; preds = %26
  %31 = call ptr @mv_cesa_dequeue_req_locked(ptr noundef %0, ptr noundef nonnull %3) #8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %31, %30 ], [ %29, %28 ]
  %34 = load ptr, ptr %20, align 4
  store ptr %34, ptr %8, align 4
  store ptr null, ptr %20, align 4
  %35 = load ptr, ptr %8, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store ptr null, ptr %12, align 4
  br label %38

38:                                               ; preds = %37, %32
  call void @_raw_spin_unlock_bh(ptr noundef %10) #8
  %39 = getelementptr inbounds %struct.crypto_async_request, ptr %33, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.crypto_tfm, ptr %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %16, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %7
  %45 = select i1 %44, i32 %1, i32 128
  %46 = load ptr, ptr %41, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 %47(ptr noundef %33, i32 noundef %45) #8
  %49 = load ptr, ptr %41, align 4
  %50 = getelementptr inbounds %struct.mv_cesa_req_ops, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  call void %51(ptr noundef %33) #8
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load ptr, ptr %14, align 4
  store ptr %33, ptr %14, align 4
  store ptr %13, ptr %33, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %54, ptr %55, align 4
  store volatile ptr %33, ptr %54, align 4
  br label %56

56:                                               ; preds = %53, %38
  %57 = load ptr, ptr %3, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.crypto_async_request, ptr %57, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  call void %61(ptr noundef nonnull %57, i32 noundef -115) #8
  br label %62

62:                                               ; preds = %59, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br i1 %52, label %63, label %68

63:                                               ; preds = %62, %19
  %64 = phi ptr [ %33, %62 ], [ %17, %19 ]
  %65 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %16, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, %7
  br i1 %67, label %69, label %15

68:                                               ; preds = %62
  call void @_raw_spin_lock_bh(ptr noundef %10) #8
  store ptr %33, ptr %11, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %10) #8
  br label %69

69:                                               ; preds = %68, %63, %15
  %70 = phi i32 [ %48, %68 ], [ 0, %63 ], [ 0, %15 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_cesa_dequeue_req_locked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_dma_add_result_op(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !14
  %7 = load ptr, ptr @cesa_dev, align 4
  %8 = getelementptr inbounds %struct.mv_cesa_dev, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = or i32 %4, 256
  %12 = call ptr @dma_pool_alloc(ptr noundef %10, i32 noundef %11, ptr noundef nonnull %6) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %31

15:                                               ; preds = %5
  %16 = load i32, ptr %6, align 4
  %17 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %12, i32 0, i32 4
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mv_cesa_tdma_chain, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %19, i32 0, i32 3
  store i32 %16, ptr %22, align 4
  %23 = load ptr, ptr %18, align 4
  %24 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %23, i32 0, i32 5
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi ptr [ %24, %21 ], [ %0, %15 ]
  store ptr %12, ptr %26, align 4
  store ptr %12, ptr %18, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %27 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %0, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %56, label %34

31:                                               ; preds = %25, %14
  %32 = phi ptr [ inttoptr (i32 -12 to ptr), %14 ], [ %12, %25 ]
  %33 = ptrtoint ptr %32 to i32
  br label %56

34:                                               ; preds = %40, %28
  %35 = phi ptr [ %42, %40 ], [ %29, %28 ]
  %36 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %35, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 134217727
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %35, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %34

44:                                               ; preds = %34
  %45 = or i32 %2, -2147483648
  store i32 %45, ptr %12, align 4
  %46 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %12, i32 0, i32 1
  store i32 %1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %35, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %12, i32 0, i32 2
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %35, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %12, i32 0, i32 6
  store ptr %51, ptr %52, align 4
  %53 = and i32 %3, -1073741824
  %54 = or i32 %53, 3
  %55 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %12, i32 0, i32 7
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %44, %40, %31, %28
  %57 = phi i32 [ %33, %31 ], [ 0, %44 ], [ -5, %28 ], [ -5, %40 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mv_cesa_dma_add_op(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !14
  %7 = load ptr, ptr @cesa_dev, align 4
  %8 = getelementptr inbounds %struct.mv_cesa_dev, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = or i32 %3, 256
  %12 = call ptr @dma_pool_alloc(ptr noundef %10, i32 noundef %11, ptr noundef nonnull %5) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %44

15:                                               ; preds = %4
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %12, i32 0, i32 4
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mv_cesa_tdma_chain, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %19, i32 0, i32 3
  store i32 %16, ptr %22, align 4
  %23 = load ptr, ptr %18, align 4
  %24 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %23, i32 0, i32 5
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi ptr [ %24, %21 ], [ %0, %15 ]
  store ptr %12, ptr %26, align 4
  store ptr %12, ptr %18, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %27 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %44, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @cesa_dev, align 4
  %30 = getelementptr inbounds %struct.mv_cesa_dev, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mv_cesa_dev_dma, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = call ptr @dma_pool_alloc(ptr noundef %33, i32 noundef %3, ptr noundef nonnull %6) #8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %34, ptr noundef align 4 dereferenceable(128) %1, i32 128, i1 false)
  %37 = load ptr, ptr %18, align 4
  %38 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %37, i32 0, i32 6
  store ptr %34, ptr %38, align 4
  %39 = select i1 %2, i32 -2147483616, i32 -2147483520
  store i32 %39, ptr %37, align 4
  %40 = load i32, ptr %6, align 4
  %41 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %37, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %37, i32 0, i32 2
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %37, i32 0, i32 7
  store i32 -2147483646, ptr %43, align 4
  br label %44

44:                                               ; preds = %36, %28, %25, %14
  %45 = phi ptr [ %34, %36 ], [ inttoptr (i32 -12 to ptr), %14 ], [ %12, %25 ], [ inttoptr (i32 -12 to ptr), %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret ptr %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_dma_add_data_transfer(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !14
  %8 = load ptr, ptr @cesa_dev, align 4
  %9 = getelementptr inbounds %struct.mv_cesa_dev, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = or i32 %5, 256
  %13 = call ptr @dma_pool_alloc(ptr noundef %11, i32 noundef %12, ptr noundef nonnull %7) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br label %29

16:                                               ; preds = %6
  %17 = load i32, ptr %7, align 4
  %18 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %13, i32 0, i32 4
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mv_cesa_tdma_chain, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %20, i32 0, i32 3
  store i32 %17, ptr %23, align 4
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %24, i32 0, i32 5
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi ptr [ %25, %22 ], [ %0, %16 ]
  store ptr %13, ptr %27, align 4
  store ptr %13, ptr %19, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %28 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %15
  %30 = phi ptr [ inttoptr (i32 -12 to ptr), %15 ], [ %13, %26 ]
  %31 = ptrtoint ptr %30 to i32
  br label %39

32:                                               ; preds = %26
  %33 = or i32 %3, -2147483648
  store i32 %33, ptr %13, align 4
  %34 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %13, i32 0, i32 1
  store i32 %2, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %13, i32 0, i32 2
  store i32 %1, ptr %35, align 4
  %36 = and i32 %4, -1073741824
  %37 = or i32 %36, 1
  %38 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %13, i32 0, i32 7
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %32, %29
  %40 = phi i32 [ %31, %29 ], [ 0, %32 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_dma_add_dummy_launch(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !14
  %4 = load ptr, ptr @cesa_dev, align 4
  %5 = getelementptr inbounds %struct.mv_cesa_dev, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = or i32 %1, 256
  %9 = call ptr @dma_pool_alloc(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %3) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4
  %13 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %9, i32 0, i32 4
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mv_cesa_tdma_chain, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %15, i32 0, i32 3
  store i32 %12, ptr %18, align 4
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %19, i32 0, i32 5
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi ptr [ %20, %17 ], [ %0, %11 ]
  store ptr %9, ptr %22, align 4
  store ptr %9, ptr %14, align 4
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi ptr [ %9, %21 ], [ inttoptr (i32 -12 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %26 = ptrtoint ptr %24 to i32
  %27 = select i1 %25, i32 %26, i32 0
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_dma_add_dummy_end(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !14
  %4 = load ptr, ptr @cesa_dev, align 4
  %5 = getelementptr inbounds %struct.mv_cesa_dev, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = or i32 %1, 256
  %9 = call ptr @dma_pool_alloc(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %3) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %25

12:                                               ; preds = %2
  %13 = load i32, ptr %3, align 4
  %14 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %9, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mv_cesa_tdma_chain, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %16, i32 0, i32 3
  store i32 %13, ptr %19, align 4
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %20, i32 0, i32 5
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi ptr [ %21, %18 ], [ %0, %12 ]
  store ptr %9, ptr %23, align 4
  store ptr %9, ptr %15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %24 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %11
  %26 = phi ptr [ inttoptr (i32 -12 to ptr), %11 ], [ %9, %22 ]
  %27 = ptrtoint ptr %26 to i32
  br label %29

28:                                               ; preds = %22
  store i32 -2147483648, ptr %9, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ %27, %25 ], [ 0, %28 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_dma_add_op_transfers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = load i32, ptr %2, align 4
  %7 = icmp eq i32 %6, 1
  %8 = getelementptr inbounds %struct.mv_cesa_dma_iter, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, ptr %2, i32 0, i32 3
  %10 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, ptr %2, i32 0, i32 2
  %12 = or i32 %3, 256
  %13 = getelementptr inbounds %struct.mv_cesa_tdma_chain, ptr %0, i32 0, i32 1
  %14 = select i1 %7, i32 -2147483647, i32 1073741825
  %15 = load i32, ptr %8, align 4
  %16 = load i32, ptr %9, align 4
  %17 = load ptr, ptr %10, align 4
  br label %18

18:                                               ; preds = %92, %4
  %19 = phi i32 [ %93, %92 ], [ %6, %4 ]
  %20 = phi ptr [ %88, %92 ], [ %17, %4 ]
  %21 = phi i32 [ %89, %92 ], [ %16, %4 ]
  %22 = phi i32 [ %90, %92 ], [ %15, %4 ]
  %23 = sub i32 %22, %21
  %24 = getelementptr inbounds %struct.scatterlist, ptr %20, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %11, align 4
  %27 = sub i32 %25, %26
  %28 = call i32 @llvm.umin.i32(i32 %23, i32 %27) #8
  %29 = icmp eq i32 %19, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = add i32 %21, 128
  %32 = getelementptr inbounds %struct.scatterlist, ptr %20, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %26
  br label %40

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.scatterlist, ptr %20, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %26
  %39 = add i32 %21, 128
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i32 [ %31, %30 ], [ %38, %35 ]
  %42 = phi i32 [ %34, %30 ], [ %39, %35 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !14
  %43 = load ptr, ptr @cesa_dev, align 4
  %44 = getelementptr inbounds %struct.mv_cesa_dev, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = call ptr @dma_pool_alloc(ptr noundef %46, i32 noundef %12, ptr noundef nonnull %5) #8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %69

50:                                               ; preds = %40
  %51 = load i32, ptr %5, align 4
  %52 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %47, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  %53 = load ptr, ptr %13, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %53, i32 0, i32 3
  store i32 %51, ptr %56, align 4
  %57 = load ptr, ptr %13, align 4
  %58 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %57, i32 0, i32 5
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi ptr [ %58, %55 ], [ %0, %50 ]
  store ptr %47, ptr %60, align 4
  store ptr %47, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %61 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = or i32 %28, -2147483648
  store i32 %63, ptr %47, align 4
  %64 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %47, i32 0, i32 1
  store i32 %42, ptr %64, align 4
  %65 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %47, i32 0, i32 2
  store i32 %41, ptr %65, align 4
  %66 = getelementptr inbounds %struct.mv_cesa_tdma_desc, ptr %47, i32 0, i32 7
  store i32 %14, ptr %66, align 4
  %67 = load ptr, ptr %10, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %94, label %72

69:                                               ; preds = %59, %49
  %70 = phi ptr [ inttoptr (i32 -12 to ptr), %49 ], [ %47, %59 ]
  %71 = ptrtoint ptr %70 to i32
  br label %94

72:                                               ; preds = %62
  %73 = load i32, ptr %9, align 4
  %74 = add i32 %73, %28
  store i32 %74, ptr %9, align 4
  %75 = load i32, ptr %11, align 4
  %76 = add i32 %75, %28
  store i32 %76, ptr %11, align 4
  %77 = getelementptr inbounds %struct.scatterlist, ptr %67, i32 0, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load i32, ptr %67, align 4
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  store i32 0, ptr %11, align 4
  %85 = call ptr @sg_next(ptr noundef nonnull %67) #8
  store ptr %85, ptr %10, align 4
  %86 = load i32, ptr %9, align 4
  br label %87

87:                                               ; preds = %84, %72
  %88 = phi ptr [ %85, %84 ], [ %67, %72 ]
  %89 = phi i32 [ %86, %84 ], [ %74, %72 ]
  %90 = load i32, ptr %8, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = load i32, ptr %2, align 4
  br label %18

94:                                               ; preds = %87, %80, %69, %62
  %95 = phi i32 [ %71, %69 ], [ 0, %87 ], [ 0, %62 ], [ 0, %80 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mv_cesa_sg_copy(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.sg_mapping_iter, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %8, i8 0, i32 44, i1 false), !annotation !14
  %9 = select i1 %6, i32 5, i32 3
  call void @sg_miter_start(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %2, i32 noundef %9) #8
  %10 = call zeroext i1 @sg_miter_skip(ptr noundef nonnull %8, i32 noundef %5) #8
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.sg_mapping_iter, ptr %8, i32 0, i32 2
  %15 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 10
  %16 = getelementptr inbounds %struct.sg_mapping_iter, ptr %8, i32 0, i32 1
  %17 = getelementptr inbounds %struct.mv_cesa_engine, ptr %0, i32 0, i32 2
  br label %18

18:                                               ; preds = %41, %13
  %19 = phi i32 [ 0, %13 ], [ %42, %41 ]
  %20 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %8) #8
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load i32, ptr %14, align 4
  %23 = sub i32 %4, %19
  %24 = call i32 @llvm.umin.i32(i32 %22, i32 %23)
  %25 = load ptr, ptr %15, align 4
  %26 = icmp eq ptr %25, null
  br i1 %6, label %27, label %34

27:                                               ; preds = %21
  %28 = load ptr, ptr %17, align 4
  %29 = getelementptr i8, ptr %28, i32 %3
  %30 = getelementptr i8, ptr %29, i32 %19
  %31 = load ptr, ptr %16, align 4
  br i1 %26, label %33, label %32

32:                                               ; preds = %27
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr align 1 %31, i32 %24, i1 false)
  br label %41

33:                                               ; preds = %27
  call void @mmiocpy(ptr noundef %30, ptr noundef %31, i32 noundef %24) #8
  br label %41

34:                                               ; preds = %21
  %35 = load ptr, ptr %16, align 4
  %36 = load ptr, ptr %17, align 4
  %37 = getelementptr i8, ptr %36, i32 %3
  %38 = getelementptr i8, ptr %37, i32 %19
  br i1 %26, label %40, label %39

39:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr align 1 %38, i32 %24, i1 false)
  br label %41

40:                                               ; preds = %34
  call void @mmiocpy(ptr noundef %35, ptr noundef %38, i32 noundef %24) #8
  br label %41

41:                                               ; preds = %40, %39, %33, %32
  %42 = add i32 %24, %19
  %43 = icmp ult i32 %42, %4
  br i1 %43, label %18, label %44

44:                                               ; preds = %41, %18, %11
  %45 = phi i32 [ 0, %11 ], [ %42, %41 ], [ %19, %18 ]
  call void @sg_miter_stop(ptr noundef nonnull %8) #8
  br label %46

46:                                               ; preds = %44, %7
  %47 = phi i32 [ %45, %44 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %8) #8
  ret i32 %47
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_skip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 4767764}
!9 = !{i64 4768182}
!10 = !{i64 2152356151}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2152356840}
!13 = !{i64 2152359435}
!14 = !{!"auto-init"}
