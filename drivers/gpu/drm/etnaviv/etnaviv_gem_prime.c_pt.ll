; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.etnaviv_gem_ops = type { ptr, ptr, ptr, ptr }
%struct.etnaviv_gem_object = type { %struct.drm_gem_object, ptr, %struct.mutex, i32, %struct.list_head, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.list_head, i32, %struct.etnaviv_gem_userptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.etnaviv_gem_userptr = type { i32, ptr, i8 }
%struct.dma_buf_map = type { %union.anon.73, i8 }
%union.anon.73 = type { ptr }

@__UNIQUE_ID_import_ns281 = internal constant [18 x i8] c"import_ns=DMA_BUF\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c\00", align 1
@etnaviv_gem_prime_ops = internal constant %struct.etnaviv_gem_ops { ptr null, ptr @etnaviv_gem_prime_release, ptr @etnaviv_gem_prime_vmap_impl, ptr @etnaviv_gem_prime_mmap_obj }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_import_ns281], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @etnaviv_gem_prime_get_sg_table(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 22, i32 noundef 9, ptr noundef null) #4
  br label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 12
  %10 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @drm_prime_pages_to_sg(ptr noundef %11, ptr noundef nonnull %3, i32 noundef %9) #4
  br label %13

13:                                               ; preds = %6, %5
  %14 = phi ptr [ inttoptr (i32 -22 to ptr), %5 ], [ %12, %6 ]
  ret ptr %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_prime_pages_to_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_prime_vmap(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @etnaviv_gem_vmap(ptr noundef %0) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  store ptr %3, ptr %1, align 4
  %6 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  store i8 0, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %5 ], [ -12, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_vmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_gem_prime_pin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %6) #4
  %7 = tail call ptr @etnaviv_gem_get_pages(ptr noundef %0) #4
  tail call void @mutex_unlock(ptr noundef %6) #4
  br label %8

8:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_get_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_gem_prime_unpin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %6) #4
  tail call void @etnaviv_gem_put_pages(ptr noundef %0) #4
  tail call void @mutex_unlock(ptr noundef %6) #4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_gem_put_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @etnaviv_gem_prime_import_sg_table(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store ptr null, ptr %4, align 4, !annotation !9
  %5 = load ptr, ptr %1, align 4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 4095
  %8 = and i32 %7, -4096
  %9 = call i32 @etnaviv_gem_new_private(ptr noundef %0, i32 noundef %8, i32 noundef 131072, ptr noundef nonnull @etnaviv_gem_prime_ops, ptr noundef nonnull %4) #4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = inttoptr i32 %9 to ptr
  br label %42

13:                                               ; preds = %3
  %14 = lshr i32 %7, 12
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %15, i32 0, i32 9
  store ptr %2, ptr %16, align 4
  %17 = shl nuw nsw i32 %14, 2
  %18 = call noalias ptr @kvmalloc_node(i32 noundef %17, i32 noundef 3264, i32 noundef -1) #5
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %19, i32 0, i32 8
  store ptr %18, ptr %20, align 8
  %21 = icmp eq ptr %18, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %13
  %23 = call i32 @drm_prime_sg_to_page_array(ptr noundef %2, ptr noundef nonnull %18, i32 noundef %14) #4
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr %4, align 4
  br i1 %24, label %26, label %28

26:                                               ; preds = %22
  call void @etnaviv_gem_obj_add(ptr noundef %0, ptr noundef %25) #4
  %27 = load ptr, ptr %4, align 4
  br label %42

28:                                               ; preds = %22
  %29 = inttoptr i32 %23 to ptr
  br label %30

30:                                               ; preds = %28, %13
  %31 = phi ptr [ %25, %28 ], [ %19, %13 ]
  %32 = phi ptr [ %29, %28 ], [ inttoptr (i32 -12 to ptr), %13 ]
  %33 = icmp eq ptr %31, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %31) #4, !srcloc !11
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %31, ptr nonnull %31, i32 1, ptr nonnull elementtype(i32) %31) #4, !srcloc !12
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = icmp sgt i32 %36, 0
  br i1 %39, label %42, label %40, !prof !13

40:                                               ; preds = %38
  call void @refcount_warn_saturate(ptr noundef nonnull %31, i32 noundef 3) #4
  br label %42

41:                                               ; preds = %34
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  call void @drm_gem_object_free(ptr noundef nonnull %31) #4
  br label %42

42:                                               ; preds = %41, %40, %38, %30, %26, %11
  %43 = phi ptr [ %12, %11 ], [ %27, %26 ], [ %32, %30 ], [ %32, %38 ], [ %32, %40 ], [ %32, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_new_private(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_sg_to_page_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_gem_obj_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @etnaviv_gem_prime_release(ptr noundef %0) #0 {
  %2 = alloca %struct.dma_buf_map, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  store i64 0, ptr %2, align 8, !annotation !9
  %3 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %2, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  call void @dma_buf_vunmap(ptr noundef %9, ptr noundef nonnull %2) #4
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  call void @kvfree(ptr noundef %12) #4
  %13 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  call void @drm_prime_gem_destroy(ptr noundef %0, ptr noundef %14) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @etnaviv_gem_prime_vmap_impl(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.dma_buf_map, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  store i64 0, ptr %2, align 8, !annotation !9
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @dma_buf_vmap(ptr noundef %5, ptr noundef nonnull %2) #4
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %2, align 8
  %9 = select i1 %7, ptr %8, ptr null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_gem_prime_mmap_obj(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @dma_buf_mmap(ptr noundef %4, ptr noundef %1, i32 noundef 0) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_vmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_mmap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

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
!9 = !{!"auto-init"}
!10 = !{i64 2148194815}
!11 = !{i64 590952, i64 2148080923, i64 2148080949, i64 2148080996, i64 2148081018, i64 2148081046, i64 2148081066}
!12 = !{i64 2148096950, i64 2148096982, i64 2148097011, i64 2148097045, i64 2148097076, i64 2148097099}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149450130}
