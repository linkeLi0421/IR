; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_iommu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_iommu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.iommu_flush_ops = type { ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.msm_mmu = type { ptr, ptr, ptr, ptr, i32 }
%struct.msm_iommu_pagetable = type { %struct.msm_mmu, ptr, ptr, i32, i32 }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.75 }
%union.anon.75 = type { %struct.anon.82 }
%struct.anon.82 = type { [4 x i64], i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msm_iommu = type { %struct.msm_mmu, ptr, %struct.atomic_t }
%struct.adreno_smmu_fault_info = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }

@pagetable_funcs = internal constant %struct.msm_mmu_funcs { ptr null, ptr @msm_iommu_pagetable_map, ptr @msm_iommu_pagetable_unmap, ptr @msm_iommu_pagetable_destroy, ptr null }, align 4
@null_tlb_ops = internal constant %struct.iommu_flush_ops { ptr @msm_iommu_tlb_flush_all, ptr @msm_iommu_tlb_flush_walk, ptr @msm_iommu_tlb_add_page }, align 4
@funcs = internal constant %struct.msm_mmu_funcs { ptr @msm_iommu_detach, ptr @msm_iommu_map, ptr @msm_iommu_unmap, ptr @msm_iommu_destroy, ptr @msm_iommu_resume_translation }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@msm_fault_handler._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.msm_fault_handler = private unnamed_addr constant [18 x i8] c"msm_fault_handler\00", align 1
@.str = private unnamed_addr constant [35 x i8] c"\014*** fault: iova=%16lx, flags=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/msm/msm_iommu.c\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @msm_iommu_pagetable_params(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.msm_mmu, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %1, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = icmp eq ptr %2, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %2, align 4
  br label %17

17:                                               ; preds = %14, %12, %3
  %18 = phi i32 [ -22, %3 ], [ 0, %14 ], [ 0, %12 ]
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_iommu_pagetable_create(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.io_pgtable_cfg, align 8
  %3 = getelementptr inbounds %struct.msm_mmu, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %55, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.adreno_smmu_priv, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr %11(ptr noundef nonnull %7) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %55, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.msm_iommu, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @iommu_set_fault_handler(ptr noundef %16, ptr noundef nonnull @msm_fault_handler, ptr noundef %0) #9
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 36) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.msm_mmu, ptr %18, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  store ptr @pagetable_funcs, ptr %18, align 8
  %23 = getelementptr inbounds %struct.msm_mmu, ptr %18, i32 0, i32 4
  store i32 2, ptr %23, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %12, i32 72, i1 false)
  %24 = load i32, ptr %2, align 8
  %25 = and i32 %24, -33
  store i32 %25, ptr %2, align 8
  %26 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %2, i32 0, i32 5
  store ptr @null_tlb_ops, ptr %26, align 4
  %27 = load ptr, ptr %15, align 4
  %28 = call ptr @alloc_io_pgtable_ops(i32 noundef 2, ptr noundef nonnull %2, ptr noundef %27) #9
  %29 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %18, i32 0, i32 2
  store ptr %28, ptr %29, align 8
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  call void @kfree(ptr noundef nonnull %18) #9
  br label %55

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.msm_iommu, ptr %0, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #9, !srcloc !9
  %34 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #9, !srcloc !10
  %35 = extractvalue { i32, i32 } %34, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.adreno_smmu_priv, ptr %6, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %6, align 4
  call void %39(ptr noundef %40, i1 noundef zeroext true) #9
  %41 = getelementptr inbounds %struct.adreno_smmu_priv, ptr %6, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %6, align 4
  %44 = call i32 %42(ptr noundef %43, ptr noundef nonnull %2) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  call void @free_io_pgtable_ops(ptr noundef nonnull %28) #9
  call void @kfree(ptr noundef nonnull %18) #9
  %47 = inttoptr i32 %44 to ptr
  br label %55

48:                                               ; preds = %37, %32
  %49 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %18, i32 0, i32 1
  store ptr %0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %2, i32 0, i32 7
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %18, i32 0, i32 3
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %18, i32 0, i32 4
  store i32 0, ptr %54, align 8
  br label %55

55:                                               ; preds = %48, %46, %31, %14, %9, %1
  %56 = phi ptr [ %47, %46 ], [ %18, %48 ], [ inttoptr (i32 -12 to ptr), %31 ], [ inttoptr (i32 -19 to ptr), %9 ], [ inttoptr (i32 -12 to ptr), %14 ], [ inttoptr (i32 -19 to ptr), %1 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  ret ptr %56
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_set_fault_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_fault_handler(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #2 {
  %6 = alloca %struct.adreno_smmu_fault_info, align 8
  %7 = getelementptr inbounds %struct.msm_mmu, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !12
  %11 = getelementptr inbounds %struct.adreno_smmu_priv, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr %10, align 4
  call void %12(ptr noundef %15, ptr noundef nonnull %6) #9
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %6, %14 ], [ null, %5 ]
  %18 = getelementptr inbounds %struct.msm_mmu, ptr %4, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.msm_mmu, ptr %4, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 %19(ptr noundef %23, i32 noundef %2, i32 noundef %3, ptr noundef %17) #9
  br label %30

25:                                               ; preds = %16
  %26 = call i32 @___ratelimit(ptr noundef nonnull @msm_fault_handler._rs, ptr noundef nonnull @__func__.msm_fault_handler) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %2, i32 noundef %3) #11
  br label %30

30:                                               ; preds = %28, %25, %21
  %31 = phi i32 [ %24, %21 ], [ 0, %28 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #9
  ret i32 %31
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_io_pgtable_ops(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_io_pgtable_ops(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_iommu_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 28) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.msm_iommu, ptr %6, i32 0, i32 1
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.msm_mmu, ptr %6, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr @funcs, ptr %6, align 8
  %11 = getelementptr inbounds %struct.msm_mmu, ptr %6, i32 0, i32 4
  store i32 1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.msm_iommu, ptr %6, i32 0, i32 2
  store volatile i32 0, ptr %12, align 8
  %13 = tail call i32 @iommu_attach_device(ptr noundef nonnull %1, ptr noundef %0) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #9
  %16 = inttoptr i32 %13 to ptr
  br label %17

17:                                               ; preds = %15, %8, %4, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %8 ], [ inttoptr (i32 -19 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_iommu_pagetable_map(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sg_table, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %81, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %2, align 4
  br label %13

13:                                               ; preds = %74, %11
  %14 = phi i32 [ %77, %74 ], [ 0, %11 ]
  %15 = phi i64 [ %76, %74 ], [ %1, %11 ]
  %16 = phi i32 [ %75, %74 ], [ 0, %11 ]
  %17 = phi ptr [ %78, %74 ], [ %12, %11 ]
  %18 = getelementptr inbounds %struct.scatterlist, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %74, label %21

21:                                               ; preds = %13
  %22 = load i32, ptr %17, align 4
  %23 = and i32 %22, 33554428
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = sub i32 %23, %25
  %27 = lshr exact i32 %26, 5
  %28 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %29 = add i32 %27, %28
  %30 = shl i32 %29, 12
  %31 = getelementptr inbounds %struct.scatterlist, ptr %17, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %30, %32
  br label %34

34:                                               ; preds = %68, %21
  %35 = phi i32 [ %69, %68 ], [ %33, %21 ]
  %36 = phi i32 [ %71, %68 ], [ %19, %21 ]
  %37 = phi i64 [ %70, %68 ], [ %15, %21 ]
  %38 = phi i32 [ %72, %68 ], [ %16, %21 ]
  %39 = load ptr, ptr %7, align 4
  %40 = trunc i64 %37 to i32
  %41 = tail call i32 %39(ptr noundef %7, i32 noundef %40, i32 noundef %35, i32 noundef 4096, i32 noundef %4, i32 noundef 3264) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %34
  %44 = load ptr, ptr %6, align 4
  %45 = icmp eq i32 %38, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.io_pgtable_ops, ptr %44, i32 0, i32 2
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ %1, %46 ], [ %54, %48 ]
  %50 = phi i32 [ %38, %46 ], [ %55, %48 ]
  %51 = load ptr, ptr %47, align 4
  %52 = trunc i64 %49 to i32
  %53 = tail call i32 %51(ptr noundef %44, i32 noundef %52, i32 noundef 4096, ptr noundef null) #9
  %54 = add i64 %49, 4096
  %55 = add i32 %50, -4096
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %48

57:                                               ; preds = %48, %43
  %58 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.msm_iommu, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.iommu_domain, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.iommu_ops, ptr %63, i32 0, i32 9
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %81, label %67

67:                                               ; preds = %57
  tail call void %65(ptr noundef %61) #9
  br label %81

68:                                               ; preds = %34
  %69 = add i32 %35, 4096
  %70 = add i64 %37, 4096
  %71 = add i32 %36, -4096
  %72 = add i32 %38, 4096
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %74, label %34

74:                                               ; preds = %68, %13
  %75 = phi i32 [ %16, %13 ], [ %72, %68 ]
  %76 = phi i64 [ %15, %13 ], [ %70, %68 ]
  %77 = add nuw i32 %14, 1
  %78 = tail call ptr @sg_next(ptr noundef %17) #9
  %79 = load i32, ptr %8, align 4
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %13, label %81

81:                                               ; preds = %74, %67, %57, %5
  %82 = phi i32 [ -22, %57 ], [ -22, %67 ], [ 0, %5 ], [ 0, %74 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_iommu_pagetable_unmap(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.io_pgtable_ops, ptr %5, i32 0, i32 2
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i64 [ %1, %7 ], [ %17, %9 ]
  %11 = phi i32 [ %2, %7 ], [ %18, %9 ]
  %12 = phi i32 [ 0, %7 ], [ %16, %9 ]
  %13 = load ptr, ptr %8, align 4
  %14 = trunc i64 %10 to i32
  %15 = tail call i32 %13(ptr noundef %5, i32 noundef %14, i32 noundef 4096, ptr noundef null) #9
  %16 = add i32 %15, %12
  %17 = add i64 %10, 4096
  %18 = add i32 %11, -4096
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %9

20:                                               ; preds = %9, %3
  %21 = phi i32 [ 0, %3 ], [ %16, %9 ]
  %22 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.msm_iommu, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.iommu_domain, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.iommu_ops, ptr %27, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  tail call void %29(ptr noundef %25) #9
  br label %32

32:                                               ; preds = %31, %20
  %33 = icmp eq i32 %21, 0
  %34 = select i1 %33, i32 0, i32 -22
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_iommu_pagetable_destroy(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_mmu, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.msm_iommu, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #9, !srcloc !9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #9, !srcloc !14
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.adreno_smmu_priv, ptr %7, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = tail call i32 %14(ptr noundef %15, ptr noundef null) #9
  br label %17

17:                                               ; preds = %12, %1
  %18 = getelementptr inbounds %struct.msm_iommu_pagetable, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void @free_io_pgtable_ops(ptr noundef %19) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @msm_iommu_tlb_flush_all(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @msm_iommu_tlb_flush_walk(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @msm_iommu_tlb_add_page(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) #7 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_iommu_detach(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.msm_iommu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_mmu, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @iommu_detach_device(ptr noundef %3, ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_iommu_map(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = trunc i64 %1 to i32
  %7 = getelementptr inbounds %struct.msm_iommu, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.sg_table, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @iommu_map_sg(ptr noundef %8, i32 noundef %6, ptr noundef %9, i32 noundef %11, i32 noundef %4) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !16

14:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 267, i32 noundef 9, ptr noundef null) #9
  br label %15

15:                                               ; preds = %14, %5
  %16 = icmp eq i32 %12, %3
  %17 = select i1 %16, i32 0, i32 -22
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_iommu_unmap(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #2 {
  %4 = trunc i64 %1 to i32
  %5 = getelementptr inbounds %struct.msm_iommu, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @iommu_unmap(ptr noundef %6, i32 noundef %4, i32 noundef %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_iommu_destroy(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.msm_iommu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @iommu_domain_free(ptr noundef %3) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_iommu_resume_translation(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.msm_mmu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.adreno_smmu_priv, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %8, i1 noundef zeroext true) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map_sg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #4

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!8 = !{i64 2147980744}
!9 = !{i64 380739, i64 2147870710, i64 2147870736, i64 2147870783, i64 2147870805, i64 2147870833, i64 2147870853}
!10 = !{i64 2147883606, i64 2147883638, i64 2147883667, i64 2147883701, i64 2147883732, i64 2147883755}
!11 = !{i64 2147980947}
!12 = !{!"auto-init"}
!13 = !{i64 2147983577}
!14 = !{i64 2147885963, i64 2147885995, i64 2147886024, i64 2147886058, i64 2147886089, i64 2147886112}
!15 = !{i64 2147983780}
!16 = !{!"branch_weights", i32 1, i32 2000}
