; ModuleID = '/llk/IR/kernel/dma/ops_helpers.c_pt.bc'
source_filename = "../kernel/dma/ops_helpers.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dma_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.58 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@arm_dma_ops = external dso_local local_unnamed_addr constant %struct.dma_map_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_common_get_sgtable(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %2) #5
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call ptr @vmalloc_to_page(ptr noundef %2) #5
  br label %16

10:                                               ; preds = %6
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %2 to i32
  %13 = add i32 %12, 1073741824
  %14 = lshr i32 %13, 12
  %15 = getelementptr %struct.page, ptr %11, i32 %14
  br label %16

16:                                               ; preds = %10, %8
  %17 = phi ptr [ %9, %8 ], [ %15, %10 ]
  %18 = tail call i32 @sg_alloc_table(ptr noundef %1, i32 noundef 1, i32 noundef 3264) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

25:                                               ; preds = %20
  %26 = add i32 %4, 4095
  %27 = and i32 %26, -4096
  %28 = load ptr, ptr %1, align 4
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 3
  %31 = or i32 %30, %21
  store i32 %31, ptr %28, align 4
  %32 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 1
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 2
  store i32 %27, ptr %33, align 4
  br label %34

34:                                               ; preds = %25, %16
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_common_mmap(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %1, align 4
  %11 = sub i32 %9, %10
  %12 = lshr i32 %11, 12
  %13 = add i32 %4, 4095
  %14 = lshr i32 %13, 12
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %2) #5
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = tail call ptr @vmalloc_to_page(ptr noundef %2) #5
  br label %26

20:                                               ; preds = %6
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %2 to i32
  %23 = add i32 %22, 1073741824
  %24 = lshr i32 %23, 12
  %25 = getelementptr %struct.page, ptr %21, i32 %24
  br label %26

26:                                               ; preds = %20, %18
  %27 = phi ptr [ %19, %18 ], [ %25, %20 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 -6, ptr %7, align 4
  %28 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @dma_pgprot(ptr noundef %0, i32 noundef %29, i32 noundef %5) #5
  store i32 %30, ptr %28, align 4
  %31 = call i32 @dma_mmap_from_dev_coherent(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %7) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, ptr %7, align 4
  br label %54

35:                                               ; preds = %26
  %36 = icmp ule i32 %14, %16
  %37 = sub i32 %14, %16
  %38 = icmp ugt i32 %12, %37
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %1, align 4
  %42 = load ptr, ptr @mem_map, align 4
  %43 = ptrtoint ptr %27 to i32
  %44 = ptrtoint ptr %42 to i32
  %45 = sub i32 %43, %44
  %46 = ashr exact i32 %45, 5
  %47 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %48 = load i32, ptr %15, align 4
  %49 = add i32 %48, %47
  %50 = add i32 %49, %46
  %51 = and i32 %11, -4096
  %52 = load i32, ptr %28, align 4
  %53 = call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %41, i32 noundef %50, i32 noundef %51, i32 noundef %52) #5
  br label %54

54:                                               ; preds = %40, %35, %33
  %55 = phi i32 [ %34, %33 ], [ %53, %40 ], [ -6, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_pgprot(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_from_dev_coherent(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_common_alloc_pages(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @arm_dma_ops, ptr %7
  %10 = tail call ptr @dma_alloc_contiguous(ptr noundef %0, i32 noundef %1, i32 noundef %4) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = add i32 %1, -1
  %14 = icmp ult i32 %13, 4096
  %15 = lshr i32 %13, 12
  %16 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 false) #5, !range !10
  %17 = sub nuw nsw i32 32, %16
  %18 = select i1 %14, i32 0, i32 %17
  %19 = tail call ptr @__alloc_pages(i32 noundef %4, i32 noundef %18, i32 noundef 0, ptr noundef null) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %12, %5
  %22 = phi ptr [ %19, %12 ], [ %10, %5 ]
  %23 = getelementptr inbounds %struct.dma_map_ops, ptr %9, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %0, ptr noundef nonnull %22, i32 noundef 0, i32 noundef %1, i32 noundef %3, i32 noundef 32) #5
  store i32 %25, ptr %2, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void @dma_free_contiguous(ptr noundef %0, ptr noundef nonnull %22, i32 noundef %1) #5
  br label %30

28:                                               ; preds = %21
  %29 = tail call ptr @page_address(ptr noundef nonnull %22) #5
  tail call void @llvm.memset.p0.i32(ptr align 1 %29, i8 0, i32 %1, i1 false)
  br label %30

30:                                               ; preds = %28, %27, %12
  %31 = phi ptr [ null, %27 ], [ %22, %28 ], [ null, %12 ]
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_contiguous(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_contiguous(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_common_free_pages(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @arm_dma_ops, ptr %7
  %10 = getelementptr inbounds %struct.dma_map_ops, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  tail call void %11(ptr noundef %0, i32 noundef %3, i32 noundef %1, i32 noundef %4, i32 noundef 32) #5
  br label %14

14:                                               ; preds = %13, %5
  tail call void @dma_free_contiguous(ptr noundef %0, ptr noundef %2, i32 noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2152523451, i64 2152523943, i64 2152523488, i64 2152523544, i64 2152523578, i64 2152523602, i64 2152523643, i64 2152523664, i64 2152523692, i64 2152523726}
!10 = !{i32 0, i32 33}
