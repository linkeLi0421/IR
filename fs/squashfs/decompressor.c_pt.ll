; ModuleID = '/llk/IR/fs/squashfs/decompressor.c_pt.bc'
source_filename = "../fs/squashfs/decompressor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.squashfs_decompressor = type { ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.squashfs_page_actor = type { ptr, i32, i32, i32 }

@decompressor = internal unnamed_addr constant [7 x ptr] [ptr @squashfs_zlib_comp_ops, ptr @squashfs_lz4_comp_ops, ptr @squashfs_lzo_comp_ops, ptr @squashfs_xz_comp_ops, ptr @squashfs_lzma_unsupported_comp_ops, ptr @squashfs_zstd_comp_ops, ptr @squashfs_unknown_comp_ops], align 4
@squashfs_zlib_comp_ops = external dso_local constant %struct.squashfs_decompressor, align 4
@squashfs_lz4_comp_ops = internal constant %struct.squashfs_decompressor { ptr null, ptr null, ptr null, ptr null, i32 5, ptr @.str, i32 0 }, align 4
@squashfs_lzo_comp_ops = external dso_local constant %struct.squashfs_decompressor, align 4
@squashfs_xz_comp_ops = external dso_local constant %struct.squashfs_decompressor, align 4
@squashfs_lzma_unsupported_comp_ops = internal constant %struct.squashfs_decompressor { ptr null, ptr null, ptr null, ptr null, i32 2, ptr @.str.1, i32 0 }, align 4
@squashfs_zstd_comp_ops = internal constant %struct.squashfs_decompressor { ptr null, ptr null, ptr null, ptr null, i32 6, ptr @.str.2, i32 0 }, align 4
@squashfs_unknown_comp_ops = internal constant %struct.squashfs_decompressor { ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.3, i32 0 }, align 4
@.str = private unnamed_addr constant [4 x i8] c"lz4\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lzma\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @squashfs_lookup_decompressor(i32 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %11, %2 ]
  %4 = getelementptr [7 x ptr], ptr @decompressor, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.squashfs_decompressor, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i32 %7, %0
  %10 = or i1 %8, %9
  %11 = add i32 %3, 1
  br i1 %10, label %12, label %2

12:                                               ; preds = %2
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @squashfs_decompressor_setup(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store ptr null, ptr %3, align 4
  %6 = and i16 %1, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4096) #6
  store ptr %10, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 16) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.squashfs_page_actor, ptr %14, i32 0, i32 2
  store i32 4096, ptr %17, align 8
  store ptr %3, ptr %14, align 8
  %18 = getelementptr inbounds %struct.squashfs_page_actor, ptr %14, i32 0, i32 1
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.squashfs_page_actor, ptr %14, i32 0, i32 3
  store i32 0, ptr %19, align 4
  %20 = call i32 @squashfs_read_data(ptr noundef %0, i64 noundef 96, i32 noundef 0, ptr noundef null, ptr noundef nonnull %14) #5
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = inttoptr i32 %20 to ptr
  br label %34

24:                                               ; preds = %16, %2
  %25 = phi ptr [ %14, %16 ], [ null, %2 ]
  %26 = phi i32 [ %20, %16 ], [ 0, %2 ]
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct.squashfs_decompressor, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %3, align 4
  %33 = call ptr %29(ptr noundef %5, ptr noundef %32, i32 noundef %26) #5
  br label %34

34:                                               ; preds = %31, %24, %22, %12, %8
  %35 = phi ptr [ %23, %22 ], [ inttoptr (i32 -12 to ptr), %8 ], [ inttoptr (i32 -12 to ptr), %12 ], [ %33, %31 ], [ null, %24 ]
  %36 = phi ptr [ %14, %22 ], [ null, %8 ], [ null, %12 ], [ %25, %31 ], [ %25, %24 ]
  call void @kfree(ptr noundef %36) #5
  %37 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %37) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %38 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = call ptr @squashfs_decompressor_create(ptr noundef %5, ptr noundef %35) #5
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call void @kfree(ptr noundef %35) #5
  br label %43

43:                                               ; preds = %42, %39, %34
  %44 = phi ptr [ %35, %34 ], [ %40, %42 ], [ %40, %39 ]
  ret ptr %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_decompressor_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
